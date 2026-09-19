package com.digikala.dms.core;

import android.util.Log;
import com.digikala.dms.model.domain.Courier;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import io.realm.DynamicRealm;
import io.realm.FieldAttribute;
import io.realm.RealmMigration;
import io.realm.RealmSchema;
import io.realm.com_digikala_dms_model_domain_CardTypeRealmProxy;
import io.realm.com_digikala_dms_model_domain_CourierRealmProxy;
import io.realm.com_digikala_dms_model_domain_ServerMessagesRealmProxy;
import io.realm.com_digikala_dms_model_domain_ServerNotificationRealmProxy;
import io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxy;
import io.realm.com_digikala_dms_model_domain_ShipmentRealmProxy;

/* JADX INFO: loaded from: classes.dex */
public class DMSRealmMigration implements RealmMigration {
    @Override // io.realm.RealmMigration
    public void migrate(DynamicRealm realm, long oldVersion, long newVersion) {
        RealmSchema schema = realm.getSchema();
        Log.e("TAG", "migrate oldVersion: " + oldVersion);
        if (oldVersion == 0) {
            schema.get(com_digikala_dms_model_domain_CourierRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME).addField(Courier.COLUMN_NOTIFICATION_TOKEN, String.class, new FieldAttribute[0]);
            schema.create(com_digikala_dms_model_domain_ServerNotificationRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME).addField("id", String.class, new FieldAttribute[0]).addField("status", String.class, new FieldAttribute[0]);
            schema.create(com_digikala_dms_model_domain_ServerMessagesRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME).addField("id", String.class, new FieldAttribute[0]).addField(SettingsJsonConstants.PROMPT_TITLE_KEY, String.class, new FieldAttribute[0]).addField("message", String.class, new FieldAttribute[0]).addField("date", Long.class, new FieldAttribute[0]).addField("seen", Boolean.class, new FieldAttribute[0]);
            schema.create(com_digikala_dms_model_domain_CardTypeRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME).addField("id", String.class, new FieldAttribute[0]).addField(SettingsJsonConstants.PROMPT_TITLE_KEY, String.class, new FieldAttribute[0]);
            schema.get(com_digikala_dms_model_domain_ShipmentRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME).addField("cardTypeId", String.class, new FieldAttribute[0]).addField("cardNumber", String.class, new FieldAttribute[0]).addField("comment", String.class, new FieldAttribute[0]);
            long j = oldVersion + 1;
            return;
        }
        if (oldVersion == 1) {
            if (schema.get(com_digikala_dms_model_domain_ShipmentRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME).hasField("rejectReasons")) {
                schema.get(com_digikala_dms_model_domain_ShipmentRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME).removeField("rejectReasons");
            }
            if (schema.get(com_digikala_dms_model_domain_ShipmentItemRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME).hasField("rejectReasons")) {
                schema.get(com_digikala_dms_model_domain_ShipmentItemRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME).removeField("rejectReasons");
            }
            if (!schema.get(com_digikala_dms_model_domain_CourierRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME).hasField("userName")) {
                schema.get(com_digikala_dms_model_domain_CourierRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME).addField("userName", String.class, new FieldAttribute[0]);
            }
            long j2 = oldVersion + 1;
            return;
        }
        if (oldVersion != 2) {
            if (oldVersion == 3) {
                schema.get(com_digikala_dms_model_domain_ShipmentRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME).addField("autoRefundable", Boolean.class, new FieldAttribute[0]);
                long j3 = oldVersion + 1;
                return;
            }
            return;
        }
        try {
            if (schema.get(com_digikala_dms_model_domain_ShipmentRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME).hasField("rejectReasons")) {
                schema.get(com_digikala_dms_model_domain_ShipmentRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME).removeField("rejectReasons");
            }
            if (schema.get(com_digikala_dms_model_domain_ShipmentItemRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME).hasField("rejectReasons")) {
                schema.get(com_digikala_dms_model_domain_ShipmentItemRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME).removeField("rejectReasons");
            }
            if (!schema.get(com_digikala_dms_model_domain_CourierRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME).hasField("userName")) {
                schema.get(com_digikala_dms_model_domain_CourierRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME).addField("userName", String.class, new FieldAttribute[0]);
            }
        } catch (Exception e) {
        }
        long j4 = oldVersion + 1;
    }
}
