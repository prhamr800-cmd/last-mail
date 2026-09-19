package io.realm.internal;

import io.realm.OrderedCollectionChangeSet;
import io.realm.internal.sync.OsSubscription;
import java.util.Arrays;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public class OsCollectionChangeSet implements OrderedCollectionChangeSet, NativeObject {
    public static final int MAX_ARRAY_LENGTH = 2147483639;
    public static final int TYPE_DELETION = 0;
    public static final int TYPE_INSERTION = 1;
    public static final int TYPE_MODIFICATION = 2;
    private static long finalizerPtr = nativeGetFinalizerPtr();
    private final boolean firstAsyncCallback;
    protected final boolean isPartialRealm;
    private final long nativePtr;
    protected final OsSubscription subscription;

    private static native long nativeGetFinalizerPtr();

    private static native int[] nativeGetIndices(long j, int i);

    private static native int[] nativeGetRanges(long j, int i);

    public OsCollectionChangeSet(long nativePtr, boolean firstAsyncCallback) {
        this(nativePtr, firstAsyncCallback, null, false);
    }

    public OsCollectionChangeSet(long nativePtr, boolean firstAsyncCallback, @Nullable OsSubscription subscription, boolean isPartialRealm) {
        this.nativePtr = nativePtr;
        this.firstAsyncCallback = firstAsyncCallback;
        this.subscription = subscription;
        this.isPartialRealm = isPartialRealm;
        NativeContext.dummyContext.addReference(this);
    }

    @Override // io.realm.OrderedCollectionChangeSet
    public OrderedCollectionChangeSet.State getState() {
        throw new UnsupportedOperationException("This method should be overridden in a subclass");
    }

    @Override // io.realm.OrderedCollectionChangeSet
    public int[] getDeletions() {
        return nativeGetIndices(this.nativePtr, 0);
    }

    @Override // io.realm.OrderedCollectionChangeSet
    public int[] getInsertions() {
        return nativeGetIndices(this.nativePtr, 1);
    }

    @Override // io.realm.OrderedCollectionChangeSet
    public int[] getChanges() {
        return nativeGetIndices(this.nativePtr, 2);
    }

    @Override // io.realm.OrderedCollectionChangeSet
    public OrderedCollectionChangeSet.Range[] getDeletionRanges() {
        return longArrayToRangeArray(nativeGetRanges(this.nativePtr, 0));
    }

    @Override // io.realm.OrderedCollectionChangeSet
    public OrderedCollectionChangeSet.Range[] getInsertionRanges() {
        return longArrayToRangeArray(nativeGetRanges(this.nativePtr, 1));
    }

    @Override // io.realm.OrderedCollectionChangeSet
    public OrderedCollectionChangeSet.Range[] getChangeRanges() {
        return longArrayToRangeArray(nativeGetRanges(this.nativePtr, 2));
    }

    @Override // io.realm.OrderedCollectionChangeSet
    public Throwable getError() {
        if (this.subscription != null && this.subscription.getState() == OsSubscription.SubscriptionState.ERROR) {
            return this.subscription.getError();
        }
        return null;
    }

    @Override // io.realm.OrderedCollectionChangeSet
    public boolean isCompleteResult() {
        throw new UnsupportedOperationException("This method should be overridden in a subclass");
    }

    public boolean isRemoteDataLoaded() {
        if (this.isPartialRealm) {
            return this.subscription != null && this.subscription.getState() == OsSubscription.SubscriptionState.COMPLETE;
        }
        return true;
    }

    public boolean isFirstAsyncCallback() {
        return this.firstAsyncCallback;
    }

    public boolean isEmpty() {
        return this.nativePtr == 0;
    }

    private OrderedCollectionChangeSet.Range[] longArrayToRangeArray(int[] longArray) {
        if (longArray == null) {
            return new OrderedCollectionChangeSet.Range[0];
        }
        OrderedCollectionChangeSet.Range[] ranges = new OrderedCollectionChangeSet.Range[longArray.length / 2];
        for (int i = 0; i < ranges.length; i++) {
            ranges[i] = new OrderedCollectionChangeSet.Range(longArray[i * 2], longArray[(i * 2) + 1]);
        }
        return ranges;
    }

    public String toString() {
        if (this.nativePtr == 0) {
            return "Change set is empty.";
        }
        String string = "Deletion Ranges: " + Arrays.toString(getDeletionRanges()) + "\nInsertion Ranges: " + Arrays.toString(getInsertionRanges()) + "\nChange Ranges: " + Arrays.toString(getChangeRanges());
        return string;
    }

    public long getNativePtr() {
        return this.nativePtr;
    }

    public long getNativeFinalizerPtr() {
        return finalizerPtr;
    }
}
