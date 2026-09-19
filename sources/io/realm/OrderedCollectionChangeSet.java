package io.realm;

import java.util.Locale;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public interface OrderedCollectionChangeSet {

    public enum State {
        INITIAL,
        UPDATE,
        ERROR
    }

    Range[] getChangeRanges();

    int[] getChanges();

    Range[] getDeletionRanges();

    int[] getDeletions();

    @Nullable
    Throwable getError();

    Range[] getInsertionRanges();

    int[] getInsertions();

    State getState();

    boolean isCompleteResult();

    public static class Range {
        public final int length;
        public final int startIndex;

        public Range(int startIndex, int length) {
            this.startIndex = startIndex;
            this.length = length;
        }

        public String toString() {
            return String.format(Locale.ENGLISH, "startIndex: %d, length: %d", Integer.valueOf(this.startIndex), Integer.valueOf(this.length));
        }
    }
}
