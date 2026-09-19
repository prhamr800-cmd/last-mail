package io.realm.rx;

import io.realm.OrderedCollectionChangeSet;
import io.realm.OrderedRealmCollection;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public class CollectionChange<E extends OrderedRealmCollection> {
    private final OrderedCollectionChangeSet changeset;
    private final E collection;

    public CollectionChange(E collection, @Nullable OrderedCollectionChangeSet changeset) {
        this.collection = collection;
        this.changeset = changeset;
    }

    public E getCollection() {
        return this.collection;
    }

    @Nullable
    public OrderedCollectionChangeSet getChangeset() {
        return this.changeset;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        CollectionChange<?> that = (CollectionChange) o;
        if (this.collection.equals(that.collection)) {
            return this.changeset != null ? this.changeset.equals(that.changeset) : that.changeset == null;
        }
        return false;
    }

    public int hashCode() {
        int result = this.collection.hashCode();
        return (result * 31) + (this.changeset != null ? this.changeset.hashCode() : 0);
    }
}
