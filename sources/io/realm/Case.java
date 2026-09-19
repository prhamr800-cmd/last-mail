package io.realm;

/* JADX INFO: loaded from: classes2.dex */
public enum Case {
    SENSITIVE(true),
    INSENSITIVE(false);

    private final boolean value;

    Case(boolean value) {
        this.value = value;
    }

    public boolean getValue() {
        return this.value;
    }
}
