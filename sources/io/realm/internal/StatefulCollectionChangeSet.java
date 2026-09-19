package io.realm.internal;

import io.realm.OrderedCollectionChangeSet;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public class StatefulCollectionChangeSet implements OrderedCollectionChangeSet {
    private final OrderedCollectionChangeSet changeset;
    private final Throwable error;
    private final boolean remoteDataSynchronized;
    private final OrderedCollectionChangeSet.State state;

    public StatefulCollectionChangeSet(OsCollectionChangeSet backingChangeset) {
        this.changeset = backingChangeset;
        boolean isInitial = backingChangeset.isFirstAsyncCallback();
        this.remoteDataSynchronized = backingChangeset.isRemoteDataLoaded();
        this.error = backingChangeset.getError();
        if (this.error != null) {
            this.state = OrderedCollectionChangeSet.State.ERROR;
        } else {
            this.state = isInitial ? OrderedCollectionChangeSet.State.INITIAL : OrderedCollectionChangeSet.State.UPDATE;
        }
    }

    @Override // io.realm.OrderedCollectionChangeSet
    public OrderedCollectionChangeSet.State getState() {
        return this.state;
    }

    @Override // io.realm.OrderedCollectionChangeSet
    public int[] getDeletions() {
        return this.changeset.getDeletions();
    }

    @Override // io.realm.OrderedCollectionChangeSet
    public int[] getInsertions() {
        return this.changeset.getInsertions();
    }

    @Override // io.realm.OrderedCollectionChangeSet
    public int[] getChanges() {
        return this.changeset.getChanges();
    }

    @Override // io.realm.OrderedCollectionChangeSet
    public OrderedCollectionChangeSet.Range[] getDeletionRanges() {
        return this.changeset.getDeletionRanges();
    }

    @Override // io.realm.OrderedCollectionChangeSet
    public OrderedCollectionChangeSet.Range[] getInsertionRanges() {
        return this.changeset.getInsertionRanges();
    }

    @Override // io.realm.OrderedCollectionChangeSet
    public OrderedCollectionChangeSet.Range[] getChangeRanges() {
        return this.changeset.getChangeRanges();
    }

    @Override // io.realm.OrderedCollectionChangeSet
    @Nullable
    public Throwable getError() {
        return this.error;
    }

    @Override // io.realm.OrderedCollectionChangeSet
    public boolean isCompleteResult() {
        return this.remoteDataSynchronized;
    }
}
