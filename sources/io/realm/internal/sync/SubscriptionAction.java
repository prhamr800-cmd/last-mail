package io.realm.internal.sync;

/* JADX INFO: loaded from: classes2.dex */
public class SubscriptionAction {
    private final String subscriptionName;
    public static final SubscriptionAction NO_SUBSCRIPTION = new SubscriptionAction(null);
    public static final SubscriptionAction ANONYMOUS_SUBSCRIPTION = new SubscriptionAction("");

    public static SubscriptionAction create(String subscriptionName) {
        return new SubscriptionAction(subscriptionName);
    }

    private SubscriptionAction(String name) {
        this.subscriptionName = name;
    }

    public boolean shouldCreateSubscriptions() {
        return this.subscriptionName != null;
    }

    public String getName() {
        return this.subscriptionName;
    }
}
