package com.snowplowanalytics.snowplow.tracker.events;

import com.snowplowanalytics.snowplow.tracker.constants.Parameters;
import com.snowplowanalytics.snowplow.tracker.constants.TrackerConstants;
import com.snowplowanalytics.snowplow.tracker.events.AbstractEvent;
import com.snowplowanalytics.snowplow.tracker.payload.TrackerPayload;
import com.snowplowanalytics.snowplow.tracker.utils.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public class EcommerceTransactionItem extends AbstractEvent {
    private final String category;
    private final String currency;
    private final String itemId;
    private final String name;
    private final Double price;
    private final Integer quantity;
    private final String sku;

    public static abstract class Builder<T extends Builder<T>> extends AbstractEvent.Builder<T> {
        private String category;
        private String currency;
        private String itemId;
        private String name;
        private Double price;
        private Integer quantity;
        private String sku;

        public T itemId(String itemId) {
            this.itemId = itemId;
            return self();
        }

        public T sku(String sku) {
            this.sku = sku;
            return self();
        }

        public T price(Double price) {
            this.price = price;
            return self();
        }

        public T quantity(Integer quantity) {
            this.quantity = quantity;
            return self();
        }

        public T name(String name) {
            this.name = name;
            return self();
        }

        public T category(String category) {
            this.category = category;
            return self();
        }

        public T currency(String currency) {
            this.currency = currency;
            return self();
        }

        public EcommerceTransactionItem build() {
            return new EcommerceTransactionItem(this);
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

    private EcommerceTransactionItem(Builder<?> builder) {
        super(builder);
        Preconditions.checkNotNull(((Builder) builder).itemId);
        Preconditions.checkNotNull(((Builder) builder).sku);
        Preconditions.checkNotNull(((Builder) builder).price);
        Preconditions.checkNotNull(((Builder) builder).quantity);
        Preconditions.checkArgument(!((Builder) builder).itemId.isEmpty(), "itemId cannot be empty");
        Preconditions.checkArgument(!((Builder) builder).sku.isEmpty(), "sku cannot be empty");
        this.itemId = ((Builder) builder).itemId;
        this.sku = ((Builder) builder).sku;
        this.price = ((Builder) builder).price;
        this.quantity = ((Builder) builder).quantity;
        this.name = ((Builder) builder).name;
        this.category = ((Builder) builder).category;
        this.currency = ((Builder) builder).currency;
    }

    public void setDeviceCreatedTimestamp(long deviceCreatedTimestamp) {
        this.deviceCreatedTimestamp = deviceCreatedTimestamp;
    }

    @Override // com.snowplowanalytics.snowplow.tracker.events.AbstractEvent, com.snowplowanalytics.snowplow.tracker.events.Event
    public TrackerPayload getPayload() {
        TrackerPayload payload = new TrackerPayload();
        payload.add(Parameters.EVENT, TrackerConstants.EVENT_ECOMM_ITEM);
        payload.add("dtm", Long.toString(this.deviceCreatedTimestamp));
        payload.add(Parameters.TI_ITEM_ID, this.itemId);
        payload.add(Parameters.TI_ITEM_SKU, this.sku);
        payload.add(Parameters.TI_ITEM_NAME, this.name);
        payload.add(Parameters.TI_ITEM_CATEGORY, this.category);
        payload.add(Parameters.TI_ITEM_PRICE, Double.toString(this.price.doubleValue()));
        payload.add(Parameters.TI_ITEM_QUANTITY, Integer.toString(this.quantity.intValue()));
        payload.add(Parameters.TI_ITEM_CURRENCY, this.currency);
        return putDefaultParams(payload);
    }
}
