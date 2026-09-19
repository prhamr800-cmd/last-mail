package io.realm;

import android.util.JsonReader;
import com.digikala.dms.model.design.Answer;
import com.digikala.dms.model.design.Question;
import com.digikala.dms.model.design.QuestionAnswer;
import com.digikala.dms.model.design.ReturnedProduct;
import com.digikala.dms.model.design.SerialItems;
import com.digikala.dms.model.domain.BasketItems;
import com.digikala.dms.model.domain.Batch;
import com.digikala.dms.model.domain.BatchItem;
import com.digikala.dms.model.domain.CardType;
import com.digikala.dms.model.domain.Courier;
import com.digikala.dms.model.domain.DistributionCenter;
import com.digikala.dms.model.domain.LatLong;
import com.digikala.dms.model.domain.Rate;
import com.digikala.dms.model.domain.RejectReason;
import com.digikala.dms.model.domain.ServerMessages;
import com.digikala.dms.model.domain.ServerNotification;
import com.digikala.dms.model.domain.Shipment;
import com.digikala.dms.model.domain.ShipmentItem;
import com.digikala.dms.model.domain.ShippingCostConfig;
import com.digikala.dms.model.domain.UnprocessedReason;
import io.realm.BaseRealm;
import io.realm.annotations.RealmModule;
import io.realm.com_digikala_dms_model_design_AnswerRealmProxy;
import io.realm.com_digikala_dms_model_design_QuestionAnswerRealmProxy;
import io.realm.com_digikala_dms_model_design_QuestionRealmProxy;
import io.realm.com_digikala_dms_model_design_ReturnedProductRealmProxy;
import io.realm.com_digikala_dms_model_design_SerialItemsRealmProxy;
import io.realm.com_digikala_dms_model_domain_BasketItemsRealmProxy;
import io.realm.com_digikala_dms_model_domain_BatchItemRealmProxy;
import io.realm.com_digikala_dms_model_domain_BatchRealmProxy;
import io.realm.com_digikala_dms_model_domain_CardTypeRealmProxy;
import io.realm.com_digikala_dms_model_domain_CourierRealmProxy;
import io.realm.com_digikala_dms_model_domain_DistributionCenterRealmProxy;
import io.realm.com_digikala_dms_model_domain_LatLongRealmProxy;
import io.realm.com_digikala_dms_model_domain_RateRealmProxy;
import io.realm.com_digikala_dms_model_domain_RejectReasonRealmProxy;
import io.realm.com_digikala_dms_model_domain_ServerMessagesRealmProxy;
import io.realm.com_digikala_dms_model_domain_ServerNotificationRealmProxy;
import io.realm.com_digikala_dms_model_domain_ShipmentItemRealmProxy;
import io.realm.com_digikala_dms_model_domain_ShipmentRealmProxy;
import io.realm.com_digikala_dms_model_domain_ShippingCostConfigRealmProxy;
import io.realm.com_digikala_dms_model_domain_UnprocessedReasonRealmProxy;
import io.realm.internal.ColumnInfo;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.RealmProxyMediator;
import io.realm.internal.Row;
import java.io.IOException;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@RealmModule
class DefaultRealmModuleMediator extends RealmProxyMediator {
    private static final Set<Class<? extends RealmModel>> MODEL_CLASSES;

    @Override // io.realm.internal.RealmProxyMediator
    public boolean transformerApplied() {
        return true;
    }

    DefaultRealmModuleMediator() {
    }

    static {
        Set<Class<? extends RealmModel>> modelClasses = new HashSet<>(20);
        modelClasses.add(Answer.class);
        modelClasses.add(QuestionAnswer.class);
        modelClasses.add(ReturnedProduct.class);
        modelClasses.add(Question.class);
        modelClasses.add(SerialItems.class);
        modelClasses.add(Shipment.class);
        modelClasses.add(DistributionCenter.class);
        modelClasses.add(RejectReason.class);
        modelClasses.add(CardType.class);
        modelClasses.add(BasketItems.class);
        modelClasses.add(LatLong.class);
        modelClasses.add(ServerNotification.class);
        modelClasses.add(ShipmentItem.class);
        modelClasses.add(Batch.class);
        modelClasses.add(ServerMessages.class);
        modelClasses.add(Courier.class);
        modelClasses.add(ShippingCostConfig.class);
        modelClasses.add(UnprocessedReason.class);
        modelClasses.add(BatchItem.class);
        modelClasses.add(Rate.class);
        MODEL_CLASSES = Collections.unmodifiableSet(modelClasses);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public Map<Class<? extends RealmModel>, OsObjectSchemaInfo> getExpectedObjectSchemaInfoMap() {
        Map<Class<? extends RealmModel>, OsObjectSchemaInfo> infoMap = new HashMap<>(20);
        infoMap.put(Answer.class, com_digikala_dms_model_design_AnswerRealmProxy.getExpectedObjectSchemaInfo());
        infoMap.put(QuestionAnswer.class, com_digikala_dms_model_design_QuestionAnswerRealmProxy.getExpectedObjectSchemaInfo());
        infoMap.put(ReturnedProduct.class, com_digikala_dms_model_design_ReturnedProductRealmProxy.getExpectedObjectSchemaInfo());
        infoMap.put(Question.class, com_digikala_dms_model_design_QuestionRealmProxy.getExpectedObjectSchemaInfo());
        infoMap.put(SerialItems.class, com_digikala_dms_model_design_SerialItemsRealmProxy.getExpectedObjectSchemaInfo());
        infoMap.put(Shipment.class, com_digikala_dms_model_domain_ShipmentRealmProxy.getExpectedObjectSchemaInfo());
        infoMap.put(DistributionCenter.class, com_digikala_dms_model_domain_DistributionCenterRealmProxy.getExpectedObjectSchemaInfo());
        infoMap.put(RejectReason.class, com_digikala_dms_model_domain_RejectReasonRealmProxy.getExpectedObjectSchemaInfo());
        infoMap.put(CardType.class, com_digikala_dms_model_domain_CardTypeRealmProxy.getExpectedObjectSchemaInfo());
        infoMap.put(BasketItems.class, com_digikala_dms_model_domain_BasketItemsRealmProxy.getExpectedObjectSchemaInfo());
        infoMap.put(LatLong.class, com_digikala_dms_model_domain_LatLongRealmProxy.getExpectedObjectSchemaInfo());
        infoMap.put(ServerNotification.class, com_digikala_dms_model_domain_ServerNotificationRealmProxy.getExpectedObjectSchemaInfo());
        infoMap.put(ShipmentItem.class, com_digikala_dms_model_domain_ShipmentItemRealmProxy.getExpectedObjectSchemaInfo());
        infoMap.put(Batch.class, com_digikala_dms_model_domain_BatchRealmProxy.getExpectedObjectSchemaInfo());
        infoMap.put(ServerMessages.class, com_digikala_dms_model_domain_ServerMessagesRealmProxy.getExpectedObjectSchemaInfo());
        infoMap.put(Courier.class, com_digikala_dms_model_domain_CourierRealmProxy.getExpectedObjectSchemaInfo());
        infoMap.put(ShippingCostConfig.class, com_digikala_dms_model_domain_ShippingCostConfigRealmProxy.getExpectedObjectSchemaInfo());
        infoMap.put(UnprocessedReason.class, com_digikala_dms_model_domain_UnprocessedReasonRealmProxy.getExpectedObjectSchemaInfo());
        infoMap.put(BatchItem.class, com_digikala_dms_model_domain_BatchItemRealmProxy.getExpectedObjectSchemaInfo());
        infoMap.put(Rate.class, com_digikala_dms_model_domain_RateRealmProxy.getExpectedObjectSchemaInfo());
        return infoMap;
    }

    @Override // io.realm.internal.RealmProxyMediator
    public ColumnInfo createColumnInfo(Class<? extends RealmModel> clazz, OsSchemaInfo schemaInfo) {
        checkClass(clazz);
        if (clazz.equals(Answer.class)) {
            return com_digikala_dms_model_design_AnswerRealmProxy.createColumnInfo(schemaInfo);
        }
        if (clazz.equals(QuestionAnswer.class)) {
            return com_digikala_dms_model_design_QuestionAnswerRealmProxy.createColumnInfo(schemaInfo);
        }
        if (clazz.equals(ReturnedProduct.class)) {
            return com_digikala_dms_model_design_ReturnedProductRealmProxy.createColumnInfo(schemaInfo);
        }
        if (clazz.equals(Question.class)) {
            return com_digikala_dms_model_design_QuestionRealmProxy.createColumnInfo(schemaInfo);
        }
        if (clazz.equals(SerialItems.class)) {
            return com_digikala_dms_model_design_SerialItemsRealmProxy.createColumnInfo(schemaInfo);
        }
        if (clazz.equals(Shipment.class)) {
            return com_digikala_dms_model_domain_ShipmentRealmProxy.createColumnInfo(schemaInfo);
        }
        if (clazz.equals(DistributionCenter.class)) {
            return com_digikala_dms_model_domain_DistributionCenterRealmProxy.createColumnInfo(schemaInfo);
        }
        if (clazz.equals(RejectReason.class)) {
            return com_digikala_dms_model_domain_RejectReasonRealmProxy.createColumnInfo(schemaInfo);
        }
        if (clazz.equals(CardType.class)) {
            return com_digikala_dms_model_domain_CardTypeRealmProxy.createColumnInfo(schemaInfo);
        }
        if (clazz.equals(BasketItems.class)) {
            return com_digikala_dms_model_domain_BasketItemsRealmProxy.createColumnInfo(schemaInfo);
        }
        if (clazz.equals(LatLong.class)) {
            return com_digikala_dms_model_domain_LatLongRealmProxy.createColumnInfo(schemaInfo);
        }
        if (clazz.equals(ServerNotification.class)) {
            return com_digikala_dms_model_domain_ServerNotificationRealmProxy.createColumnInfo(schemaInfo);
        }
        if (clazz.equals(ShipmentItem.class)) {
            return com_digikala_dms_model_domain_ShipmentItemRealmProxy.createColumnInfo(schemaInfo);
        }
        if (clazz.equals(Batch.class)) {
            return com_digikala_dms_model_domain_BatchRealmProxy.createColumnInfo(schemaInfo);
        }
        if (clazz.equals(ServerMessages.class)) {
            return com_digikala_dms_model_domain_ServerMessagesRealmProxy.createColumnInfo(schemaInfo);
        }
        if (clazz.equals(Courier.class)) {
            return com_digikala_dms_model_domain_CourierRealmProxy.createColumnInfo(schemaInfo);
        }
        if (clazz.equals(ShippingCostConfig.class)) {
            return com_digikala_dms_model_domain_ShippingCostConfigRealmProxy.createColumnInfo(schemaInfo);
        }
        if (clazz.equals(UnprocessedReason.class)) {
            return com_digikala_dms_model_domain_UnprocessedReasonRealmProxy.createColumnInfo(schemaInfo);
        }
        if (clazz.equals(BatchItem.class)) {
            return com_digikala_dms_model_domain_BatchItemRealmProxy.createColumnInfo(schemaInfo);
        }
        if (clazz.equals(Rate.class)) {
            return com_digikala_dms_model_domain_RateRealmProxy.createColumnInfo(schemaInfo);
        }
        throw getMissingProxyClassException(clazz);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public String getSimpleClassNameImpl(Class<? extends RealmModel> clazz) {
        checkClass(clazz);
        if (clazz.equals(Answer.class)) {
            return com_digikala_dms_model_design_AnswerRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (clazz.equals(QuestionAnswer.class)) {
            return com_digikala_dms_model_design_QuestionAnswerRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (clazz.equals(ReturnedProduct.class)) {
            return com_digikala_dms_model_design_ReturnedProductRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (clazz.equals(Question.class)) {
            return com_digikala_dms_model_design_QuestionRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (clazz.equals(SerialItems.class)) {
            return com_digikala_dms_model_design_SerialItemsRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (clazz.equals(Shipment.class)) {
            return com_digikala_dms_model_domain_ShipmentRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (clazz.equals(DistributionCenter.class)) {
            return com_digikala_dms_model_domain_DistributionCenterRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (clazz.equals(RejectReason.class)) {
            return com_digikala_dms_model_domain_RejectReasonRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (clazz.equals(CardType.class)) {
            return com_digikala_dms_model_domain_CardTypeRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (clazz.equals(BasketItems.class)) {
            return com_digikala_dms_model_domain_BasketItemsRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (clazz.equals(LatLong.class)) {
            return com_digikala_dms_model_domain_LatLongRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (clazz.equals(ServerNotification.class)) {
            return com_digikala_dms_model_domain_ServerNotificationRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (clazz.equals(ShipmentItem.class)) {
            return com_digikala_dms_model_domain_ShipmentItemRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (clazz.equals(Batch.class)) {
            return com_digikala_dms_model_domain_BatchRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (clazz.equals(ServerMessages.class)) {
            return com_digikala_dms_model_domain_ServerMessagesRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (clazz.equals(Courier.class)) {
            return com_digikala_dms_model_domain_CourierRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (clazz.equals(ShippingCostConfig.class)) {
            return com_digikala_dms_model_domain_ShippingCostConfigRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (clazz.equals(UnprocessedReason.class)) {
            return com_digikala_dms_model_domain_UnprocessedReasonRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (clazz.equals(BatchItem.class)) {
            return com_digikala_dms_model_domain_BatchItemRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        if (clazz.equals(Rate.class)) {
            return com_digikala_dms_model_domain_RateRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME;
        }
        throw getMissingProxyClassException(clazz);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E newInstance(Class<E> clazz, Object baseRealm, Row row, ColumnInfo columnInfo, boolean acceptDefaultValue, List<String> excludeFields) {
        BaseRealm.RealmObjectContext objectContext = BaseRealm.objectContext.get();
        try {
            objectContext.set((BaseRealm) baseRealm, row, columnInfo, acceptDefaultValue, excludeFields);
            checkClass(clazz);
            if (clazz.equals(Answer.class)) {
                return clazz.cast(new com_digikala_dms_model_design_AnswerRealmProxy());
            }
            if (clazz.equals(QuestionAnswer.class)) {
                return clazz.cast(new com_digikala_dms_model_design_QuestionAnswerRealmProxy());
            }
            if (clazz.equals(ReturnedProduct.class)) {
                return clazz.cast(new com_digikala_dms_model_design_ReturnedProductRealmProxy());
            }
            if (clazz.equals(Question.class)) {
                return clazz.cast(new com_digikala_dms_model_design_QuestionRealmProxy());
            }
            if (clazz.equals(SerialItems.class)) {
                return clazz.cast(new com_digikala_dms_model_design_SerialItemsRealmProxy());
            }
            if (clazz.equals(Shipment.class)) {
                return clazz.cast(new com_digikala_dms_model_domain_ShipmentRealmProxy());
            }
            if (clazz.equals(DistributionCenter.class)) {
                return clazz.cast(new com_digikala_dms_model_domain_DistributionCenterRealmProxy());
            }
            if (clazz.equals(RejectReason.class)) {
                return clazz.cast(new com_digikala_dms_model_domain_RejectReasonRealmProxy());
            }
            if (clazz.equals(CardType.class)) {
                return clazz.cast(new com_digikala_dms_model_domain_CardTypeRealmProxy());
            }
            if (clazz.equals(BasketItems.class)) {
                return clazz.cast(new com_digikala_dms_model_domain_BasketItemsRealmProxy());
            }
            if (clazz.equals(LatLong.class)) {
                return clazz.cast(new com_digikala_dms_model_domain_LatLongRealmProxy());
            }
            if (clazz.equals(ServerNotification.class)) {
                return clazz.cast(new com_digikala_dms_model_domain_ServerNotificationRealmProxy());
            }
            if (clazz.equals(ShipmentItem.class)) {
                return clazz.cast(new com_digikala_dms_model_domain_ShipmentItemRealmProxy());
            }
            if (clazz.equals(Batch.class)) {
                return clazz.cast(new com_digikala_dms_model_domain_BatchRealmProxy());
            }
            if (clazz.equals(ServerMessages.class)) {
                return clazz.cast(new com_digikala_dms_model_domain_ServerMessagesRealmProxy());
            }
            if (clazz.equals(Courier.class)) {
                return clazz.cast(new com_digikala_dms_model_domain_CourierRealmProxy());
            }
            if (clazz.equals(ShippingCostConfig.class)) {
                return clazz.cast(new com_digikala_dms_model_domain_ShippingCostConfigRealmProxy());
            }
            if (clazz.equals(UnprocessedReason.class)) {
                return clazz.cast(new com_digikala_dms_model_domain_UnprocessedReasonRealmProxy());
            }
            if (clazz.equals(BatchItem.class)) {
                return clazz.cast(new com_digikala_dms_model_domain_BatchItemRealmProxy());
            }
            if (clazz.equals(Rate.class)) {
                return clazz.cast(new com_digikala_dms_model_domain_RateRealmProxy());
            }
            throw getMissingProxyClassException((Class<? extends RealmModel>) clazz);
        } finally {
            objectContext.clear();
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    public Set<Class<? extends RealmModel>> getModelClasses() {
        return MODEL_CLASSES;
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E copyOrUpdate(Realm realm, E obj, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        Class<?> superclass = obj instanceof RealmObjectProxy ? obj.getClass().getSuperclass() : obj.getClass();
        if (superclass.equals(Answer.class)) {
            return (E) superclass.cast(com_digikala_dms_model_design_AnswerRealmProxy.copyOrUpdate(realm, (Answer) obj, update, cache));
        }
        if (superclass.equals(QuestionAnswer.class)) {
            return (E) superclass.cast(com_digikala_dms_model_design_QuestionAnswerRealmProxy.copyOrUpdate(realm, (QuestionAnswer) obj, update, cache));
        }
        if (superclass.equals(ReturnedProduct.class)) {
            return (E) superclass.cast(com_digikala_dms_model_design_ReturnedProductRealmProxy.copyOrUpdate(realm, (ReturnedProduct) obj, update, cache));
        }
        if (superclass.equals(Question.class)) {
            return (E) superclass.cast(com_digikala_dms_model_design_QuestionRealmProxy.copyOrUpdate(realm, (Question) obj, update, cache));
        }
        if (superclass.equals(SerialItems.class)) {
            return (E) superclass.cast(com_digikala_dms_model_design_SerialItemsRealmProxy.copyOrUpdate(realm, (SerialItems) obj, update, cache));
        }
        if (superclass.equals(Shipment.class)) {
            return (E) superclass.cast(com_digikala_dms_model_domain_ShipmentRealmProxy.copyOrUpdate(realm, (Shipment) obj, update, cache));
        }
        if (superclass.equals(DistributionCenter.class)) {
            return (E) superclass.cast(com_digikala_dms_model_domain_DistributionCenterRealmProxy.copyOrUpdate(realm, (DistributionCenter) obj, update, cache));
        }
        if (superclass.equals(RejectReason.class)) {
            return (E) superclass.cast(com_digikala_dms_model_domain_RejectReasonRealmProxy.copyOrUpdate(realm, (RejectReason) obj, update, cache));
        }
        if (superclass.equals(CardType.class)) {
            return (E) superclass.cast(com_digikala_dms_model_domain_CardTypeRealmProxy.copyOrUpdate(realm, (CardType) obj, update, cache));
        }
        if (superclass.equals(BasketItems.class)) {
            return (E) superclass.cast(com_digikala_dms_model_domain_BasketItemsRealmProxy.copyOrUpdate(realm, (BasketItems) obj, update, cache));
        }
        if (superclass.equals(LatLong.class)) {
            return (E) superclass.cast(com_digikala_dms_model_domain_LatLongRealmProxy.copyOrUpdate(realm, (LatLong) obj, update, cache));
        }
        if (superclass.equals(ServerNotification.class)) {
            return (E) superclass.cast(com_digikala_dms_model_domain_ServerNotificationRealmProxy.copyOrUpdate(realm, (ServerNotification) obj, update, cache));
        }
        if (superclass.equals(ShipmentItem.class)) {
            return (E) superclass.cast(com_digikala_dms_model_domain_ShipmentItemRealmProxy.copyOrUpdate(realm, (ShipmentItem) obj, update, cache));
        }
        if (superclass.equals(Batch.class)) {
            return (E) superclass.cast(com_digikala_dms_model_domain_BatchRealmProxy.copyOrUpdate(realm, (Batch) obj, update, cache));
        }
        if (superclass.equals(ServerMessages.class)) {
            return (E) superclass.cast(com_digikala_dms_model_domain_ServerMessagesRealmProxy.copyOrUpdate(realm, (ServerMessages) obj, update, cache));
        }
        if (superclass.equals(Courier.class)) {
            return (E) superclass.cast(com_digikala_dms_model_domain_CourierRealmProxy.copyOrUpdate(realm, (Courier) obj, update, cache));
        }
        if (superclass.equals(ShippingCostConfig.class)) {
            return (E) superclass.cast(com_digikala_dms_model_domain_ShippingCostConfigRealmProxy.copyOrUpdate(realm, (ShippingCostConfig) obj, update, cache));
        }
        if (superclass.equals(UnprocessedReason.class)) {
            return (E) superclass.cast(com_digikala_dms_model_domain_UnprocessedReasonRealmProxy.copyOrUpdate(realm, (UnprocessedReason) obj, update, cache));
        }
        if (superclass.equals(BatchItem.class)) {
            return (E) superclass.cast(com_digikala_dms_model_domain_BatchItemRealmProxy.copyOrUpdate(realm, (BatchItem) obj, update, cache));
        }
        if (superclass.equals(Rate.class)) {
            return (E) superclass.cast(com_digikala_dms_model_domain_RateRealmProxy.copyOrUpdate(realm, (Rate) obj, update, cache));
        }
        throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insert(Realm realm, RealmModel object, Map<RealmModel, Long> cache) {
        Class<?> superclass = object instanceof RealmObjectProxy ? object.getClass().getSuperclass() : object.getClass();
        if (superclass.equals(Answer.class)) {
            com_digikala_dms_model_design_AnswerRealmProxy.insert(realm, (Answer) object, cache);
            return;
        }
        if (superclass.equals(QuestionAnswer.class)) {
            com_digikala_dms_model_design_QuestionAnswerRealmProxy.insert(realm, (QuestionAnswer) object, cache);
            return;
        }
        if (superclass.equals(ReturnedProduct.class)) {
            com_digikala_dms_model_design_ReturnedProductRealmProxy.insert(realm, (ReturnedProduct) object, cache);
            return;
        }
        if (superclass.equals(Question.class)) {
            com_digikala_dms_model_design_QuestionRealmProxy.insert(realm, (Question) object, cache);
            return;
        }
        if (superclass.equals(SerialItems.class)) {
            com_digikala_dms_model_design_SerialItemsRealmProxy.insert(realm, (SerialItems) object, cache);
            return;
        }
        if (superclass.equals(Shipment.class)) {
            com_digikala_dms_model_domain_ShipmentRealmProxy.insert(realm, (Shipment) object, cache);
            return;
        }
        if (superclass.equals(DistributionCenter.class)) {
            com_digikala_dms_model_domain_DistributionCenterRealmProxy.insert(realm, (DistributionCenter) object, cache);
            return;
        }
        if (superclass.equals(RejectReason.class)) {
            com_digikala_dms_model_domain_RejectReasonRealmProxy.insert(realm, (RejectReason) object, cache);
            return;
        }
        if (superclass.equals(CardType.class)) {
            com_digikala_dms_model_domain_CardTypeRealmProxy.insert(realm, (CardType) object, cache);
            return;
        }
        if (superclass.equals(BasketItems.class)) {
            com_digikala_dms_model_domain_BasketItemsRealmProxy.insert(realm, (BasketItems) object, cache);
            return;
        }
        if (superclass.equals(LatLong.class)) {
            com_digikala_dms_model_domain_LatLongRealmProxy.insert(realm, (LatLong) object, cache);
            return;
        }
        if (superclass.equals(ServerNotification.class)) {
            com_digikala_dms_model_domain_ServerNotificationRealmProxy.insert(realm, (ServerNotification) object, cache);
            return;
        }
        if (superclass.equals(ShipmentItem.class)) {
            com_digikala_dms_model_domain_ShipmentItemRealmProxy.insert(realm, (ShipmentItem) object, cache);
            return;
        }
        if (superclass.equals(Batch.class)) {
            com_digikala_dms_model_domain_BatchRealmProxy.insert(realm, (Batch) object, cache);
            return;
        }
        if (superclass.equals(ServerMessages.class)) {
            com_digikala_dms_model_domain_ServerMessagesRealmProxy.insert(realm, (ServerMessages) object, cache);
            return;
        }
        if (superclass.equals(Courier.class)) {
            com_digikala_dms_model_domain_CourierRealmProxy.insert(realm, (Courier) object, cache);
            return;
        }
        if (superclass.equals(ShippingCostConfig.class)) {
            com_digikala_dms_model_domain_ShippingCostConfigRealmProxy.insert(realm, (ShippingCostConfig) object, cache);
            return;
        }
        if (superclass.equals(UnprocessedReason.class)) {
            com_digikala_dms_model_domain_UnprocessedReasonRealmProxy.insert(realm, (UnprocessedReason) object, cache);
        } else if (superclass.equals(BatchItem.class)) {
            com_digikala_dms_model_domain_BatchItemRealmProxy.insert(realm, (BatchItem) object, cache);
        } else {
            if (superclass.equals(Rate.class)) {
                com_digikala_dms_model_domain_RateRealmProxy.insert(realm, (Rate) object, cache);
                return;
            }
            throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insert(Realm realm, Collection<? extends RealmModel> objects) {
        Iterator<? extends RealmModel> iterator = objects.iterator();
        Map<RealmModel, Long> cache = new HashMap<>(objects.size());
        if (iterator.hasNext()) {
            RealmModel object = iterator.next();
            Class<?> superclass = object instanceof RealmObjectProxy ? object.getClass().getSuperclass() : object.getClass();
            if (superclass.equals(Answer.class)) {
                com_digikala_dms_model_design_AnswerRealmProxy.insert(realm, (Answer) object, cache);
            } else if (superclass.equals(QuestionAnswer.class)) {
                com_digikala_dms_model_design_QuestionAnswerRealmProxy.insert(realm, (QuestionAnswer) object, cache);
            } else if (superclass.equals(ReturnedProduct.class)) {
                com_digikala_dms_model_design_ReturnedProductRealmProxy.insert(realm, (ReturnedProduct) object, cache);
            } else if (superclass.equals(Question.class)) {
                com_digikala_dms_model_design_QuestionRealmProxy.insert(realm, (Question) object, cache);
            } else if (superclass.equals(SerialItems.class)) {
                com_digikala_dms_model_design_SerialItemsRealmProxy.insert(realm, (SerialItems) object, cache);
            } else if (superclass.equals(Shipment.class)) {
                com_digikala_dms_model_domain_ShipmentRealmProxy.insert(realm, (Shipment) object, cache);
            } else if (superclass.equals(DistributionCenter.class)) {
                com_digikala_dms_model_domain_DistributionCenterRealmProxy.insert(realm, (DistributionCenter) object, cache);
            } else if (superclass.equals(RejectReason.class)) {
                com_digikala_dms_model_domain_RejectReasonRealmProxy.insert(realm, (RejectReason) object, cache);
            } else if (superclass.equals(CardType.class)) {
                com_digikala_dms_model_domain_CardTypeRealmProxy.insert(realm, (CardType) object, cache);
            } else if (superclass.equals(BasketItems.class)) {
                com_digikala_dms_model_domain_BasketItemsRealmProxy.insert(realm, (BasketItems) object, cache);
            } else if (superclass.equals(LatLong.class)) {
                com_digikala_dms_model_domain_LatLongRealmProxy.insert(realm, (LatLong) object, cache);
            } else if (superclass.equals(ServerNotification.class)) {
                com_digikala_dms_model_domain_ServerNotificationRealmProxy.insert(realm, (ServerNotification) object, cache);
            } else if (superclass.equals(ShipmentItem.class)) {
                com_digikala_dms_model_domain_ShipmentItemRealmProxy.insert(realm, (ShipmentItem) object, cache);
            } else if (superclass.equals(Batch.class)) {
                com_digikala_dms_model_domain_BatchRealmProxy.insert(realm, (Batch) object, cache);
            } else if (superclass.equals(ServerMessages.class)) {
                com_digikala_dms_model_domain_ServerMessagesRealmProxy.insert(realm, (ServerMessages) object, cache);
            } else if (superclass.equals(Courier.class)) {
                com_digikala_dms_model_domain_CourierRealmProxy.insert(realm, (Courier) object, cache);
            } else if (superclass.equals(ShippingCostConfig.class)) {
                com_digikala_dms_model_domain_ShippingCostConfigRealmProxy.insert(realm, (ShippingCostConfig) object, cache);
            } else if (superclass.equals(UnprocessedReason.class)) {
                com_digikala_dms_model_domain_UnprocessedReasonRealmProxy.insert(realm, (UnprocessedReason) object, cache);
            } else if (superclass.equals(BatchItem.class)) {
                com_digikala_dms_model_domain_BatchItemRealmProxy.insert(realm, (BatchItem) object, cache);
            } else if (superclass.equals(Rate.class)) {
                com_digikala_dms_model_domain_RateRealmProxy.insert(realm, (Rate) object, cache);
            } else {
                throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
            if (iterator.hasNext()) {
                if (superclass.equals(Answer.class)) {
                    com_digikala_dms_model_design_AnswerRealmProxy.insert(realm, iterator, cache);
                    return;
                }
                if (superclass.equals(QuestionAnswer.class)) {
                    com_digikala_dms_model_design_QuestionAnswerRealmProxy.insert(realm, iterator, cache);
                    return;
                }
                if (superclass.equals(ReturnedProduct.class)) {
                    com_digikala_dms_model_design_ReturnedProductRealmProxy.insert(realm, iterator, cache);
                    return;
                }
                if (superclass.equals(Question.class)) {
                    com_digikala_dms_model_design_QuestionRealmProxy.insert(realm, iterator, cache);
                    return;
                }
                if (superclass.equals(SerialItems.class)) {
                    com_digikala_dms_model_design_SerialItemsRealmProxy.insert(realm, iterator, cache);
                    return;
                }
                if (superclass.equals(Shipment.class)) {
                    com_digikala_dms_model_domain_ShipmentRealmProxy.insert(realm, iterator, cache);
                    return;
                }
                if (superclass.equals(DistributionCenter.class)) {
                    com_digikala_dms_model_domain_DistributionCenterRealmProxy.insert(realm, iterator, cache);
                    return;
                }
                if (superclass.equals(RejectReason.class)) {
                    com_digikala_dms_model_domain_RejectReasonRealmProxy.insert(realm, iterator, cache);
                    return;
                }
                if (superclass.equals(CardType.class)) {
                    com_digikala_dms_model_domain_CardTypeRealmProxy.insert(realm, iterator, cache);
                    return;
                }
                if (superclass.equals(BasketItems.class)) {
                    com_digikala_dms_model_domain_BasketItemsRealmProxy.insert(realm, iterator, cache);
                    return;
                }
                if (superclass.equals(LatLong.class)) {
                    com_digikala_dms_model_domain_LatLongRealmProxy.insert(realm, iterator, cache);
                    return;
                }
                if (superclass.equals(ServerNotification.class)) {
                    com_digikala_dms_model_domain_ServerNotificationRealmProxy.insert(realm, iterator, cache);
                    return;
                }
                if (superclass.equals(ShipmentItem.class)) {
                    com_digikala_dms_model_domain_ShipmentItemRealmProxy.insert(realm, iterator, cache);
                    return;
                }
                if (superclass.equals(Batch.class)) {
                    com_digikala_dms_model_domain_BatchRealmProxy.insert(realm, iterator, cache);
                    return;
                }
                if (superclass.equals(ServerMessages.class)) {
                    com_digikala_dms_model_domain_ServerMessagesRealmProxy.insert(realm, iterator, cache);
                    return;
                }
                if (superclass.equals(Courier.class)) {
                    com_digikala_dms_model_domain_CourierRealmProxy.insert(realm, iterator, cache);
                    return;
                }
                if (superclass.equals(ShippingCostConfig.class)) {
                    com_digikala_dms_model_domain_ShippingCostConfigRealmProxy.insert(realm, iterator, cache);
                    return;
                }
                if (superclass.equals(UnprocessedReason.class)) {
                    com_digikala_dms_model_domain_UnprocessedReasonRealmProxy.insert(realm, iterator, cache);
                } else if (superclass.equals(BatchItem.class)) {
                    com_digikala_dms_model_domain_BatchItemRealmProxy.insert(realm, iterator, cache);
                } else {
                    if (superclass.equals(Rate.class)) {
                        com_digikala_dms_model_domain_RateRealmProxy.insert(realm, iterator, cache);
                        return;
                    }
                    throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
                }
            }
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insertOrUpdate(Realm realm, RealmModel obj, Map<RealmModel, Long> cache) {
        Class<?> superclass = obj instanceof RealmObjectProxy ? obj.getClass().getSuperclass() : obj.getClass();
        if (superclass.equals(Answer.class)) {
            com_digikala_dms_model_design_AnswerRealmProxy.insertOrUpdate(realm, (Answer) obj, cache);
            return;
        }
        if (superclass.equals(QuestionAnswer.class)) {
            com_digikala_dms_model_design_QuestionAnswerRealmProxy.insertOrUpdate(realm, (QuestionAnswer) obj, cache);
            return;
        }
        if (superclass.equals(ReturnedProduct.class)) {
            com_digikala_dms_model_design_ReturnedProductRealmProxy.insertOrUpdate(realm, (ReturnedProduct) obj, cache);
            return;
        }
        if (superclass.equals(Question.class)) {
            com_digikala_dms_model_design_QuestionRealmProxy.insertOrUpdate(realm, (Question) obj, cache);
            return;
        }
        if (superclass.equals(SerialItems.class)) {
            com_digikala_dms_model_design_SerialItemsRealmProxy.insertOrUpdate(realm, (SerialItems) obj, cache);
            return;
        }
        if (superclass.equals(Shipment.class)) {
            com_digikala_dms_model_domain_ShipmentRealmProxy.insertOrUpdate(realm, (Shipment) obj, cache);
            return;
        }
        if (superclass.equals(DistributionCenter.class)) {
            com_digikala_dms_model_domain_DistributionCenterRealmProxy.insertOrUpdate(realm, (DistributionCenter) obj, cache);
            return;
        }
        if (superclass.equals(RejectReason.class)) {
            com_digikala_dms_model_domain_RejectReasonRealmProxy.insertOrUpdate(realm, (RejectReason) obj, cache);
            return;
        }
        if (superclass.equals(CardType.class)) {
            com_digikala_dms_model_domain_CardTypeRealmProxy.insertOrUpdate(realm, (CardType) obj, cache);
            return;
        }
        if (superclass.equals(BasketItems.class)) {
            com_digikala_dms_model_domain_BasketItemsRealmProxy.insertOrUpdate(realm, (BasketItems) obj, cache);
            return;
        }
        if (superclass.equals(LatLong.class)) {
            com_digikala_dms_model_domain_LatLongRealmProxy.insertOrUpdate(realm, (LatLong) obj, cache);
            return;
        }
        if (superclass.equals(ServerNotification.class)) {
            com_digikala_dms_model_domain_ServerNotificationRealmProxy.insertOrUpdate(realm, (ServerNotification) obj, cache);
            return;
        }
        if (superclass.equals(ShipmentItem.class)) {
            com_digikala_dms_model_domain_ShipmentItemRealmProxy.insertOrUpdate(realm, (ShipmentItem) obj, cache);
            return;
        }
        if (superclass.equals(Batch.class)) {
            com_digikala_dms_model_domain_BatchRealmProxy.insertOrUpdate(realm, (Batch) obj, cache);
            return;
        }
        if (superclass.equals(ServerMessages.class)) {
            com_digikala_dms_model_domain_ServerMessagesRealmProxy.insertOrUpdate(realm, (ServerMessages) obj, cache);
            return;
        }
        if (superclass.equals(Courier.class)) {
            com_digikala_dms_model_domain_CourierRealmProxy.insertOrUpdate(realm, (Courier) obj, cache);
            return;
        }
        if (superclass.equals(ShippingCostConfig.class)) {
            com_digikala_dms_model_domain_ShippingCostConfigRealmProxy.insertOrUpdate(realm, (ShippingCostConfig) obj, cache);
            return;
        }
        if (superclass.equals(UnprocessedReason.class)) {
            com_digikala_dms_model_domain_UnprocessedReasonRealmProxy.insertOrUpdate(realm, (UnprocessedReason) obj, cache);
        } else if (superclass.equals(BatchItem.class)) {
            com_digikala_dms_model_domain_BatchItemRealmProxy.insertOrUpdate(realm, (BatchItem) obj, cache);
        } else {
            if (superclass.equals(Rate.class)) {
                com_digikala_dms_model_domain_RateRealmProxy.insertOrUpdate(realm, (Rate) obj, cache);
                return;
            }
            throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    public void insertOrUpdate(Realm realm, Collection<? extends RealmModel> objects) {
        Iterator<? extends RealmModel> iterator = objects.iterator();
        Map<RealmModel, Long> cache = new HashMap<>(objects.size());
        if (iterator.hasNext()) {
            RealmModel object = iterator.next();
            Class<?> superclass = object instanceof RealmObjectProxy ? object.getClass().getSuperclass() : object.getClass();
            if (superclass.equals(Answer.class)) {
                com_digikala_dms_model_design_AnswerRealmProxy.insertOrUpdate(realm, (Answer) object, cache);
            } else if (superclass.equals(QuestionAnswer.class)) {
                com_digikala_dms_model_design_QuestionAnswerRealmProxy.insertOrUpdate(realm, (QuestionAnswer) object, cache);
            } else if (superclass.equals(ReturnedProduct.class)) {
                com_digikala_dms_model_design_ReturnedProductRealmProxy.insertOrUpdate(realm, (ReturnedProduct) object, cache);
            } else if (superclass.equals(Question.class)) {
                com_digikala_dms_model_design_QuestionRealmProxy.insertOrUpdate(realm, (Question) object, cache);
            } else if (superclass.equals(SerialItems.class)) {
                com_digikala_dms_model_design_SerialItemsRealmProxy.insertOrUpdate(realm, (SerialItems) object, cache);
            } else if (superclass.equals(Shipment.class)) {
                com_digikala_dms_model_domain_ShipmentRealmProxy.insertOrUpdate(realm, (Shipment) object, cache);
            } else if (superclass.equals(DistributionCenter.class)) {
                com_digikala_dms_model_domain_DistributionCenterRealmProxy.insertOrUpdate(realm, (DistributionCenter) object, cache);
            } else if (superclass.equals(RejectReason.class)) {
                com_digikala_dms_model_domain_RejectReasonRealmProxy.insertOrUpdate(realm, (RejectReason) object, cache);
            } else if (superclass.equals(CardType.class)) {
                com_digikala_dms_model_domain_CardTypeRealmProxy.insertOrUpdate(realm, (CardType) object, cache);
            } else if (superclass.equals(BasketItems.class)) {
                com_digikala_dms_model_domain_BasketItemsRealmProxy.insertOrUpdate(realm, (BasketItems) object, cache);
            } else if (superclass.equals(LatLong.class)) {
                com_digikala_dms_model_domain_LatLongRealmProxy.insertOrUpdate(realm, (LatLong) object, cache);
            } else if (superclass.equals(ServerNotification.class)) {
                com_digikala_dms_model_domain_ServerNotificationRealmProxy.insertOrUpdate(realm, (ServerNotification) object, cache);
            } else if (superclass.equals(ShipmentItem.class)) {
                com_digikala_dms_model_domain_ShipmentItemRealmProxy.insertOrUpdate(realm, (ShipmentItem) object, cache);
            } else if (superclass.equals(Batch.class)) {
                com_digikala_dms_model_domain_BatchRealmProxy.insertOrUpdate(realm, (Batch) object, cache);
            } else if (superclass.equals(ServerMessages.class)) {
                com_digikala_dms_model_domain_ServerMessagesRealmProxy.insertOrUpdate(realm, (ServerMessages) object, cache);
            } else if (superclass.equals(Courier.class)) {
                com_digikala_dms_model_domain_CourierRealmProxy.insertOrUpdate(realm, (Courier) object, cache);
            } else if (superclass.equals(ShippingCostConfig.class)) {
                com_digikala_dms_model_domain_ShippingCostConfigRealmProxy.insertOrUpdate(realm, (ShippingCostConfig) object, cache);
            } else if (superclass.equals(UnprocessedReason.class)) {
                com_digikala_dms_model_domain_UnprocessedReasonRealmProxy.insertOrUpdate(realm, (UnprocessedReason) object, cache);
            } else if (superclass.equals(BatchItem.class)) {
                com_digikala_dms_model_domain_BatchItemRealmProxy.insertOrUpdate(realm, (BatchItem) object, cache);
            } else if (superclass.equals(Rate.class)) {
                com_digikala_dms_model_domain_RateRealmProxy.insertOrUpdate(realm, (Rate) object, cache);
            } else {
                throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
            }
            if (iterator.hasNext()) {
                if (superclass.equals(Answer.class)) {
                    com_digikala_dms_model_design_AnswerRealmProxy.insertOrUpdate(realm, iterator, cache);
                    return;
                }
                if (superclass.equals(QuestionAnswer.class)) {
                    com_digikala_dms_model_design_QuestionAnswerRealmProxy.insertOrUpdate(realm, iterator, cache);
                    return;
                }
                if (superclass.equals(ReturnedProduct.class)) {
                    com_digikala_dms_model_design_ReturnedProductRealmProxy.insertOrUpdate(realm, iterator, cache);
                    return;
                }
                if (superclass.equals(Question.class)) {
                    com_digikala_dms_model_design_QuestionRealmProxy.insertOrUpdate(realm, iterator, cache);
                    return;
                }
                if (superclass.equals(SerialItems.class)) {
                    com_digikala_dms_model_design_SerialItemsRealmProxy.insertOrUpdate(realm, iterator, cache);
                    return;
                }
                if (superclass.equals(Shipment.class)) {
                    com_digikala_dms_model_domain_ShipmentRealmProxy.insertOrUpdate(realm, iterator, cache);
                    return;
                }
                if (superclass.equals(DistributionCenter.class)) {
                    com_digikala_dms_model_domain_DistributionCenterRealmProxy.insertOrUpdate(realm, iterator, cache);
                    return;
                }
                if (superclass.equals(RejectReason.class)) {
                    com_digikala_dms_model_domain_RejectReasonRealmProxy.insertOrUpdate(realm, iterator, cache);
                    return;
                }
                if (superclass.equals(CardType.class)) {
                    com_digikala_dms_model_domain_CardTypeRealmProxy.insertOrUpdate(realm, iterator, cache);
                    return;
                }
                if (superclass.equals(BasketItems.class)) {
                    com_digikala_dms_model_domain_BasketItemsRealmProxy.insertOrUpdate(realm, iterator, cache);
                    return;
                }
                if (superclass.equals(LatLong.class)) {
                    com_digikala_dms_model_domain_LatLongRealmProxy.insertOrUpdate(realm, iterator, cache);
                    return;
                }
                if (superclass.equals(ServerNotification.class)) {
                    com_digikala_dms_model_domain_ServerNotificationRealmProxy.insertOrUpdate(realm, iterator, cache);
                    return;
                }
                if (superclass.equals(ShipmentItem.class)) {
                    com_digikala_dms_model_domain_ShipmentItemRealmProxy.insertOrUpdate(realm, iterator, cache);
                    return;
                }
                if (superclass.equals(Batch.class)) {
                    com_digikala_dms_model_domain_BatchRealmProxy.insertOrUpdate(realm, iterator, cache);
                    return;
                }
                if (superclass.equals(ServerMessages.class)) {
                    com_digikala_dms_model_domain_ServerMessagesRealmProxy.insertOrUpdate(realm, iterator, cache);
                    return;
                }
                if (superclass.equals(Courier.class)) {
                    com_digikala_dms_model_domain_CourierRealmProxy.insertOrUpdate(realm, iterator, cache);
                    return;
                }
                if (superclass.equals(ShippingCostConfig.class)) {
                    com_digikala_dms_model_domain_ShippingCostConfigRealmProxy.insertOrUpdate(realm, iterator, cache);
                    return;
                }
                if (superclass.equals(UnprocessedReason.class)) {
                    com_digikala_dms_model_domain_UnprocessedReasonRealmProxy.insertOrUpdate(realm, iterator, cache);
                } else if (superclass.equals(BatchItem.class)) {
                    com_digikala_dms_model_domain_BatchItemRealmProxy.insertOrUpdate(realm, iterator, cache);
                } else {
                    if (superclass.equals(Rate.class)) {
                        com_digikala_dms_model_domain_RateRealmProxy.insertOrUpdate(realm, iterator, cache);
                        return;
                    }
                    throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
                }
            }
        }
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createOrUpdateUsingJsonObject(Class<E> clazz, Realm realm, JSONObject json, boolean update) throws JSONException {
        checkClass(clazz);
        if (clazz.equals(Answer.class)) {
            return clazz.cast(com_digikala_dms_model_design_AnswerRealmProxy.createOrUpdateUsingJsonObject(realm, json, update));
        }
        if (clazz.equals(QuestionAnswer.class)) {
            return clazz.cast(com_digikala_dms_model_design_QuestionAnswerRealmProxy.createOrUpdateUsingJsonObject(realm, json, update));
        }
        if (clazz.equals(ReturnedProduct.class)) {
            return clazz.cast(com_digikala_dms_model_design_ReturnedProductRealmProxy.createOrUpdateUsingJsonObject(realm, json, update));
        }
        if (clazz.equals(Question.class)) {
            return clazz.cast(com_digikala_dms_model_design_QuestionRealmProxy.createOrUpdateUsingJsonObject(realm, json, update));
        }
        if (clazz.equals(SerialItems.class)) {
            return clazz.cast(com_digikala_dms_model_design_SerialItemsRealmProxy.createOrUpdateUsingJsonObject(realm, json, update));
        }
        if (clazz.equals(Shipment.class)) {
            return clazz.cast(com_digikala_dms_model_domain_ShipmentRealmProxy.createOrUpdateUsingJsonObject(realm, json, update));
        }
        if (clazz.equals(DistributionCenter.class)) {
            return clazz.cast(com_digikala_dms_model_domain_DistributionCenterRealmProxy.createOrUpdateUsingJsonObject(realm, json, update));
        }
        if (clazz.equals(RejectReason.class)) {
            return clazz.cast(com_digikala_dms_model_domain_RejectReasonRealmProxy.createOrUpdateUsingJsonObject(realm, json, update));
        }
        if (clazz.equals(CardType.class)) {
            return clazz.cast(com_digikala_dms_model_domain_CardTypeRealmProxy.createOrUpdateUsingJsonObject(realm, json, update));
        }
        if (clazz.equals(BasketItems.class)) {
            return clazz.cast(com_digikala_dms_model_domain_BasketItemsRealmProxy.createOrUpdateUsingJsonObject(realm, json, update));
        }
        if (clazz.equals(LatLong.class)) {
            return clazz.cast(com_digikala_dms_model_domain_LatLongRealmProxy.createOrUpdateUsingJsonObject(realm, json, update));
        }
        if (clazz.equals(ServerNotification.class)) {
            return clazz.cast(com_digikala_dms_model_domain_ServerNotificationRealmProxy.createOrUpdateUsingJsonObject(realm, json, update));
        }
        if (clazz.equals(ShipmentItem.class)) {
            return clazz.cast(com_digikala_dms_model_domain_ShipmentItemRealmProxy.createOrUpdateUsingJsonObject(realm, json, update));
        }
        if (clazz.equals(Batch.class)) {
            return clazz.cast(com_digikala_dms_model_domain_BatchRealmProxy.createOrUpdateUsingJsonObject(realm, json, update));
        }
        if (clazz.equals(ServerMessages.class)) {
            return clazz.cast(com_digikala_dms_model_domain_ServerMessagesRealmProxy.createOrUpdateUsingJsonObject(realm, json, update));
        }
        if (clazz.equals(Courier.class)) {
            return clazz.cast(com_digikala_dms_model_domain_CourierRealmProxy.createOrUpdateUsingJsonObject(realm, json, update));
        }
        if (clazz.equals(ShippingCostConfig.class)) {
            return clazz.cast(com_digikala_dms_model_domain_ShippingCostConfigRealmProxy.createOrUpdateUsingJsonObject(realm, json, update));
        }
        if (clazz.equals(UnprocessedReason.class)) {
            return clazz.cast(com_digikala_dms_model_domain_UnprocessedReasonRealmProxy.createOrUpdateUsingJsonObject(realm, json, update));
        }
        if (clazz.equals(BatchItem.class)) {
            return clazz.cast(com_digikala_dms_model_domain_BatchItemRealmProxy.createOrUpdateUsingJsonObject(realm, json, update));
        }
        if (clazz.equals(Rate.class)) {
            return clazz.cast(com_digikala_dms_model_domain_RateRealmProxy.createOrUpdateUsingJsonObject(realm, json, update));
        }
        throw getMissingProxyClassException((Class<? extends RealmModel>) clazz);
    }

    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createUsingJsonStream(Class<E> clazz, Realm realm, JsonReader reader) throws IOException {
        checkClass(clazz);
        if (clazz.equals(Answer.class)) {
            return clazz.cast(com_digikala_dms_model_design_AnswerRealmProxy.createUsingJsonStream(realm, reader));
        }
        if (clazz.equals(QuestionAnswer.class)) {
            return clazz.cast(com_digikala_dms_model_design_QuestionAnswerRealmProxy.createUsingJsonStream(realm, reader));
        }
        if (clazz.equals(ReturnedProduct.class)) {
            return clazz.cast(com_digikala_dms_model_design_ReturnedProductRealmProxy.createUsingJsonStream(realm, reader));
        }
        if (clazz.equals(Question.class)) {
            return clazz.cast(com_digikala_dms_model_design_QuestionRealmProxy.createUsingJsonStream(realm, reader));
        }
        if (clazz.equals(SerialItems.class)) {
            return clazz.cast(com_digikala_dms_model_design_SerialItemsRealmProxy.createUsingJsonStream(realm, reader));
        }
        if (clazz.equals(Shipment.class)) {
            return clazz.cast(com_digikala_dms_model_domain_ShipmentRealmProxy.createUsingJsonStream(realm, reader));
        }
        if (clazz.equals(DistributionCenter.class)) {
            return clazz.cast(com_digikala_dms_model_domain_DistributionCenterRealmProxy.createUsingJsonStream(realm, reader));
        }
        if (clazz.equals(RejectReason.class)) {
            return clazz.cast(com_digikala_dms_model_domain_RejectReasonRealmProxy.createUsingJsonStream(realm, reader));
        }
        if (clazz.equals(CardType.class)) {
            return clazz.cast(com_digikala_dms_model_domain_CardTypeRealmProxy.createUsingJsonStream(realm, reader));
        }
        if (clazz.equals(BasketItems.class)) {
            return clazz.cast(com_digikala_dms_model_domain_BasketItemsRealmProxy.createUsingJsonStream(realm, reader));
        }
        if (clazz.equals(LatLong.class)) {
            return clazz.cast(com_digikala_dms_model_domain_LatLongRealmProxy.createUsingJsonStream(realm, reader));
        }
        if (clazz.equals(ServerNotification.class)) {
            return clazz.cast(com_digikala_dms_model_domain_ServerNotificationRealmProxy.createUsingJsonStream(realm, reader));
        }
        if (clazz.equals(ShipmentItem.class)) {
            return clazz.cast(com_digikala_dms_model_domain_ShipmentItemRealmProxy.createUsingJsonStream(realm, reader));
        }
        if (clazz.equals(Batch.class)) {
            return clazz.cast(com_digikala_dms_model_domain_BatchRealmProxy.createUsingJsonStream(realm, reader));
        }
        if (clazz.equals(ServerMessages.class)) {
            return clazz.cast(com_digikala_dms_model_domain_ServerMessagesRealmProxy.createUsingJsonStream(realm, reader));
        }
        if (clazz.equals(Courier.class)) {
            return clazz.cast(com_digikala_dms_model_domain_CourierRealmProxy.createUsingJsonStream(realm, reader));
        }
        if (clazz.equals(ShippingCostConfig.class)) {
            return clazz.cast(com_digikala_dms_model_domain_ShippingCostConfigRealmProxy.createUsingJsonStream(realm, reader));
        }
        if (clazz.equals(UnprocessedReason.class)) {
            return clazz.cast(com_digikala_dms_model_domain_UnprocessedReasonRealmProxy.createUsingJsonStream(realm, reader));
        }
        if (clazz.equals(BatchItem.class)) {
            return clazz.cast(com_digikala_dms_model_domain_BatchItemRealmProxy.createUsingJsonStream(realm, reader));
        }
        if (clazz.equals(Rate.class)) {
            return clazz.cast(com_digikala_dms_model_domain_RateRealmProxy.createUsingJsonStream(realm, reader));
        }
        throw getMissingProxyClassException((Class<? extends RealmModel>) clazz);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.realm.internal.RealmProxyMediator
    public <E extends RealmModel> E createDetachedCopy(E realmObject, int maxDepth, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> cache) {
        Class<? super Object> superclass = realmObject.getClass().getSuperclass();
        if (superclass.equals(Answer.class)) {
            return (E) superclass.cast(com_digikala_dms_model_design_AnswerRealmProxy.createDetachedCopy((Answer) realmObject, 0, maxDepth, cache));
        }
        if (superclass.equals(QuestionAnswer.class)) {
            return (E) superclass.cast(com_digikala_dms_model_design_QuestionAnswerRealmProxy.createDetachedCopy((QuestionAnswer) realmObject, 0, maxDepth, cache));
        }
        if (superclass.equals(ReturnedProduct.class)) {
            return (E) superclass.cast(com_digikala_dms_model_design_ReturnedProductRealmProxy.createDetachedCopy((ReturnedProduct) realmObject, 0, maxDepth, cache));
        }
        if (superclass.equals(Question.class)) {
            return (E) superclass.cast(com_digikala_dms_model_design_QuestionRealmProxy.createDetachedCopy((Question) realmObject, 0, maxDepth, cache));
        }
        if (superclass.equals(SerialItems.class)) {
            return (E) superclass.cast(com_digikala_dms_model_design_SerialItemsRealmProxy.createDetachedCopy((SerialItems) realmObject, 0, maxDepth, cache));
        }
        if (superclass.equals(Shipment.class)) {
            return (E) superclass.cast(com_digikala_dms_model_domain_ShipmentRealmProxy.createDetachedCopy((Shipment) realmObject, 0, maxDepth, cache));
        }
        if (superclass.equals(DistributionCenter.class)) {
            return (E) superclass.cast(com_digikala_dms_model_domain_DistributionCenterRealmProxy.createDetachedCopy((DistributionCenter) realmObject, 0, maxDepth, cache));
        }
        if (superclass.equals(RejectReason.class)) {
            return (E) superclass.cast(com_digikala_dms_model_domain_RejectReasonRealmProxy.createDetachedCopy((RejectReason) realmObject, 0, maxDepth, cache));
        }
        if (superclass.equals(CardType.class)) {
            return (E) superclass.cast(com_digikala_dms_model_domain_CardTypeRealmProxy.createDetachedCopy((CardType) realmObject, 0, maxDepth, cache));
        }
        if (superclass.equals(BasketItems.class)) {
            return (E) superclass.cast(com_digikala_dms_model_domain_BasketItemsRealmProxy.createDetachedCopy((BasketItems) realmObject, 0, maxDepth, cache));
        }
        if (superclass.equals(LatLong.class)) {
            return (E) superclass.cast(com_digikala_dms_model_domain_LatLongRealmProxy.createDetachedCopy((LatLong) realmObject, 0, maxDepth, cache));
        }
        if (superclass.equals(ServerNotification.class)) {
            return (E) superclass.cast(com_digikala_dms_model_domain_ServerNotificationRealmProxy.createDetachedCopy((ServerNotification) realmObject, 0, maxDepth, cache));
        }
        if (superclass.equals(ShipmentItem.class)) {
            return (E) superclass.cast(com_digikala_dms_model_domain_ShipmentItemRealmProxy.createDetachedCopy((ShipmentItem) realmObject, 0, maxDepth, cache));
        }
        if (superclass.equals(Batch.class)) {
            return (E) superclass.cast(com_digikala_dms_model_domain_BatchRealmProxy.createDetachedCopy((Batch) realmObject, 0, maxDepth, cache));
        }
        if (superclass.equals(ServerMessages.class)) {
            return (E) superclass.cast(com_digikala_dms_model_domain_ServerMessagesRealmProxy.createDetachedCopy((ServerMessages) realmObject, 0, maxDepth, cache));
        }
        if (superclass.equals(Courier.class)) {
            return (E) superclass.cast(com_digikala_dms_model_domain_CourierRealmProxy.createDetachedCopy((Courier) realmObject, 0, maxDepth, cache));
        }
        if (superclass.equals(ShippingCostConfig.class)) {
            return (E) superclass.cast(com_digikala_dms_model_domain_ShippingCostConfigRealmProxy.createDetachedCopy((ShippingCostConfig) realmObject, 0, maxDepth, cache));
        }
        if (superclass.equals(UnprocessedReason.class)) {
            return (E) superclass.cast(com_digikala_dms_model_domain_UnprocessedReasonRealmProxy.createDetachedCopy((UnprocessedReason) realmObject, 0, maxDepth, cache));
        }
        if (superclass.equals(BatchItem.class)) {
            return (E) superclass.cast(com_digikala_dms_model_domain_BatchItemRealmProxy.createDetachedCopy((BatchItem) realmObject, 0, maxDepth, cache));
        }
        if (superclass.equals(Rate.class)) {
            return (E) superclass.cast(com_digikala_dms_model_domain_RateRealmProxy.createDetachedCopy((Rate) realmObject, 0, maxDepth, cache));
        }
        throw getMissingProxyClassException((Class<? extends RealmModel>) superclass);
    }
}
