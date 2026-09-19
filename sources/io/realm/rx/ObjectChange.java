package io.realm.rx;

import io.realm.ObjectChangeSet;
import io.realm.RealmModel;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public class ObjectChange<E extends RealmModel> {
    private final ObjectChangeSet changeset;
    private final E object;

    public ObjectChange(E object, @Nullable ObjectChangeSet changeset) {
        this.object = object;
        this.changeset = changeset;
    }

    public E getObject() {
        return this.object;
    }

    @Nullable
    public ObjectChangeSet getChangeset() {
        return this.changeset;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        ObjectChange<?> that = (ObjectChange) o;
        if (this.object.equals(that.object)) {
            return this.changeset != null ? this.changeset.equals(that.changeset) : that.changeset == null;
        }
        return false;
    }

    public int hashCode() {
        int result = this.object.hashCode();
        return (result * 31) + (this.changeset != null ? this.changeset.hashCode() : 0);
    }

    public String toString() {
        return "ObjectChange{object=" + this.object + ", changeset=" + this.changeset + '}';
    }
}
