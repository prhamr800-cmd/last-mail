package io.realm.permissions;

/* JADX INFO: loaded from: classes2.dex */
public enum AccessLevel {
    NONE(false, false, false),
    READ(true, false, false),
    WRITE(true, true, false),
    ADMIN(true, true, true);

    private final boolean mayManage;
    private final boolean mayRead;
    private final boolean mayWrite;

    AccessLevel(boolean mayRead, boolean mayWrite, boolean mayManage) {
        this.mayRead = mayRead;
        this.mayWrite = mayWrite;
        this.mayManage = mayManage;
    }

    public boolean mayRead() {
        return this.mayRead;
    }

    public boolean mayWrite() {
        return this.mayWrite;
    }

    public boolean mayManage() {
        return this.mayManage;
    }
}
