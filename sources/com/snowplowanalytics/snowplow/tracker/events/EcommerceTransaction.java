package com.snowplowanalytics.snowplow.tracker.events;

import com.snowplowanalytics.snowplow.tracker.constants.Parameters;
import com.snowplowanalytics.snowplow.tracker.constants.TrackerConstants;
import com.snowplowanalytics.snowplow.tracker.events.AbstractEvent;
import com.snowplowanalytics.snowplow.tracker.payload.TrackerPayload;
import com.snowplowanalytics.snowplow.tracker.utils.Preconditions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class EcommerceTransaction extends AbstractEvent {
    private final String affiliation;
    private final String city;
    private final String country;
    private final String currency;
    private final List<EcommerceTransactionItem> items;
    private final String orderId;
    private final Double shipping;
    private final String state;
    private final Double taxValue;
    private final Double totalValue;

    public static abstract class Builder<T extends Builder<T>> extends AbstractEvent.Builder<T> {
        private String affiliation;
        private String city;
        private String country;
        private String currency;
        private List<EcommerceTransactionItem> items;
        private String orderId;
        private Double shipping;
        private String state;
        private Double taxValue;
        private Double totalValue;

        public T orderId(String orderId) {
            this.orderId = orderId;
            return self();
        }

        public T totalValue(Double totalValue) {
            this.totalValue = totalValue;
            return self();
        }

        public T affiliation(String affiliation) {
            this.affiliation = affiliation;
            return self();
        }

        public T taxValue(Double taxValue) {
            this.taxValue = taxValue;
            return self();
        }

        public T shipping(Double shipping) {
            this.shipping = shipping;
            return self();
        }

        public T city(String city) {
            this.city = city;
            return self();
        }

        public T state(String state) {
            this.state = state;
            return self();
        }

        public T country(String country) {
            this.country = country;
            return self();
        }

        public T currency(String currency) {
            this.currency = currency;
            return self();
        }

        public T items(List<EcommerceTransactionItem> items) {
            this.items = items;
            return self();
        }

        public T items(EcommerceTransactionItem... itemArgs) {
            List<EcommerceTransactionItem> items = new ArrayList<>();
            Collections.addAll(items, itemArgs);
            this.items = items;
            return self();
        }

        public EcommerceTransaction build() {
            return new EcommerceTransaction(this);
        }
    }

    private static class Builder2 extends Builder<Builder2> {
        private Builder2() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.snowplowanalytics.snowplow.tracker.events.AbstractEvent.Builder
        public Builder2 self() {
            return this;
        }
    }

    public static Builder<?> builder() {
        return new Builder2();
    }

    protected EcommerceTransaction(Builder<?> builder) {
        super(builder);
        Preconditions.checkNotNull(((Builder) builder).orderId);
        Preconditions.checkNotNull(((Builder) builder).totalValue);
        Preconditions.checkNotNull(((Builder) builder).items);
        Preconditions.checkArgument(!((Builder) builder).orderId.isEmpty(), "orderId cannot be empty");
        this.orderId = ((Builder) builder).orderId;
        this.totalValue = ((Builder) builder).totalValue;
        this.affiliation = ((Builder) builder).affiliation;
        this.taxValue = ((Builder) builder).taxValue;
        this.shipping = ((Builder) builder).shipping;
        this.city = ((Builder) builder).city;
        this.state = ((Builder) builder).state;
        this.country = ((Builder) builder).country;
        this.currency = ((Builder) builder).currency;
        this.items = ((Builder) builder).items;
    }

    @Override // com.snowplowanalytics.snowplow.tracker.events.AbstractEvent, com.snowplowanalytics.snowplow.tracker.events.Event
    public TrackerPayload getPayload() {
        String string;
        TrackerPayload payload = new TrackerPayload();
        payload.add(Parameters.EVENT, TrackerConstants.EVENT_ECOMM);
        payload.add(Parameters.TR_ID, this.orderId);
        payload.add(Parameters.TR_TOTAL, Double.toString(this.totalValue.doubleValue()));
        payload.add(Parameters.TR_AFFILIATION, this.affiliation);
        if (this.taxValue == null) {
            string = null;
        } else {
            string = Double.toString(this.taxValue.doubleValue());
        }
        payload.add(Parameters.TR_TAX, string);
        payload.add(Parameters.TR_SHIPPING, this.shipping != null ? Double.toString(this.shipping.doubleValue()) : null);
        payload.add(Parameters.TR_CITY, this.city);
        payload.add(Parameters.TR_STATE, this.state);
        payload.add(Parameters.TR_COUNTRY, this.country);
        payload.add(Parameters.TR_CURRENCY, this.currency);
        return putDefaultParams(payload);
    }

    public List<EcommerceTransactionItem> getItems() {
        return this.items;
    }
}
