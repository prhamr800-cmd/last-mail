package io.realm.internal;

import io.realm.RealmChangeListener;
import io.realm.internal.ObservableCollection;
import io.realm.internal.sync.OsSubscription;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public class SubscriptionAwareOsResults extends OsResults {
    private boolean collectionChanged;
    private long delayedNotificationPtr;
    private boolean firstCallback;
    private OsSubscription subscription;
    private boolean subscriptionChanged;

    public static SubscriptionAwareOsResults createFromQuery(OsSharedRealm sharedRealm, TableQuery query, @Nullable SortDescriptor sortDescriptor, @Nullable SortDescriptor distinctDescriptor, String subscriptionName) {
        query.validateQuery();
        long ptr = nativeCreateResults(sharedRealm.getNativePtr(), query.getNativePtr(), sortDescriptor, distinctDescriptor);
        return new SubscriptionAwareOsResults(sharedRealm, query.getTable(), ptr, subscriptionName);
    }

    SubscriptionAwareOsResults(OsSharedRealm sharedRealm, Table table, long nativePtr, String subscriptionName) {
        super(sharedRealm, table, nativePtr);
        this.delayedNotificationPtr = 0L;
        this.subscription = null;
        this.collectionChanged = false;
        this.firstCallback = true;
        this.subscription = new OsSubscription(this, subscriptionName);
        this.subscription.addChangeListener(new RealmChangeListener<OsSubscription>() { // from class: io.realm.internal.SubscriptionAwareOsResults.1
            @Override // io.realm.RealmChangeListener
            public void onChange(OsSubscription o) {
                SubscriptionAwareOsResults.this.subscriptionChanged = true;
            }
        });
        RealmNotifier notifier = sharedRealm.realmNotifier;
        notifier.addBeginSendingNotificationsCallback(new Runnable() { // from class: io.realm.internal.SubscriptionAwareOsResults.2
            @Override // java.lang.Runnable
            public void run() {
                SubscriptionAwareOsResults.this.subscriptionChanged = false;
                SubscriptionAwareOsResults.this.collectionChanged = false;
                SubscriptionAwareOsResults.this.delayedNotificationPtr = 0L;
            }
        });
        notifier.addFinishedSendingNotificationsCallback(new Runnable() { // from class: io.realm.internal.SubscriptionAwareOsResults.3
            @Override // java.lang.Runnable
            public void run() {
                if (SubscriptionAwareOsResults.this.collectionChanged || SubscriptionAwareOsResults.this.subscriptionChanged) {
                    SubscriptionAwareOsResults.this.triggerDelayedChangeListener();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void triggerDelayedChangeListener() {
        OsCollectionChangeSet changeset;
        OsSubscription subscription = this.subscriptionChanged ? this.subscription : null;
        if (this.delayedNotificationPtr == 0 && subscription != null && subscription.getState() != OsSubscription.SubscriptionState.ERROR && subscription.getState() != OsSubscription.SubscriptionState.COMPLETE) {
            return;
        }
        if (this.delayedNotificationPtr == 0) {
            changeset = new EmptyLoadChangeSet(subscription, this.firstCallback, true);
        } else {
            changeset = new OsCollectionChangeSet(this.delayedNotificationPtr, this.firstCallback, subscription, true);
        }
        if (changeset.isEmpty() && isLoaded()) {
            return;
        }
        this.loaded = true;
        this.firstCallback = false;
        this.observerPairs.foreach(new ObservableCollection.Callback(changeset));
    }

    @Override // io.realm.internal.OsResults, io.realm.internal.ObservableCollection
    public void notifyChangeListeners(long nativeChangeSetPtr) {
        this.collectionChanged = true;
        this.delayedNotificationPtr = nativeChangeSetPtr;
    }
}
