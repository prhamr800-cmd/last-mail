package io.realm;

import android.annotation.TargetApi;
import android.util.JsonReader;
import android.util.JsonToken;
import com.crashlytics.android.answers.Answers;
import com.digikala.dms.model.design.Answer;
import com.digikala.dms.model.design.Question;
import com.digikala.dms.model.design.QuestionAnswer;
import io.realm.BaseRealm;
import io.realm.com_digikala_dms_model_design_AnswerRealmProxy;
import io.realm.com_digikala_dms_model_design_QuestionRealmProxy;
import io.realm.internal.ColumnInfo;
import io.realm.internal.OsList;
import io.realm.internal.OsObject;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.Row;
import io.realm.internal.Table;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class com_digikala_dms_model_design_QuestionAnswerRealmProxy extends QuestionAnswer implements RealmObjectProxy, com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface {
    private static final OsObjectSchemaInfo expectedObjectSchemaInfo = createExpectedObjectSchemaInfo();
    private RealmList<Answer> AnswersRealmList;
    private QuestionAnswerColumnInfo columnInfo;
    private ProxyState<QuestionAnswer> proxyState;

    public static final class ClassNameHelper {
        public static final String INTERNAL_CLASS_NAME = "QuestionAnswer";
    }

    static final class QuestionAnswerColumnInfo extends ColumnInfo {
        long AnswersIndex;
        long questionIndex;

        QuestionAnswerColumnInfo(OsSchemaInfo schemaInfo) {
            super(2);
            OsObjectSchemaInfo objectSchemaInfo = schemaInfo.getObjectSchemaInfo(ClassNameHelper.INTERNAL_CLASS_NAME);
            this.questionIndex = addColumnDetails("question", "question", objectSchemaInfo);
            this.AnswersIndex = addColumnDetails(Answers.TAG, Answers.TAG, objectSchemaInfo);
        }

        QuestionAnswerColumnInfo(ColumnInfo src, boolean mutable) {
            super(src, mutable);
            copy(src, this);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final ColumnInfo copy(boolean mutable) {
            return new QuestionAnswerColumnInfo(this, mutable);
        }

        @Override // io.realm.internal.ColumnInfo
        protected final void copy(ColumnInfo rawSrc, ColumnInfo rawDst) {
            QuestionAnswerColumnInfo src = (QuestionAnswerColumnInfo) rawSrc;
            QuestionAnswerColumnInfo dst = (QuestionAnswerColumnInfo) rawDst;
            dst.questionIndex = src.questionIndex;
            dst.AnswersIndex = src.AnswersIndex;
        }
    }

    com_digikala_dms_model_design_QuestionAnswerRealmProxy() {
        this.proxyState.setConstructionFinished();
    }

    @Override // io.realm.internal.RealmObjectProxy
    public void realm$injectObjectContext() {
        if (this.proxyState != null) {
            return;
        }
        BaseRealm.RealmObjectContext context = BaseRealm.objectContext.get();
        this.columnInfo = (QuestionAnswerColumnInfo) context.getColumnInfo();
        this.proxyState = new ProxyState<>(this);
        this.proxyState.setRealm$realm(context.getRealm());
        this.proxyState.setRow$realm(context.getRow());
        this.proxyState.setAcceptDefaultValue$realm(context.getAcceptDefaultValue());
        this.proxyState.setExcludeFields$realm(context.getExcludeFields());
    }

    @Override // com.digikala.dms.model.design.QuestionAnswer, io.realm.com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface
    public Question realmGet$question() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.proxyState.getRow$realm().isNullLink(this.columnInfo.questionIndex)) {
            return null;
        }
        return (Question) this.proxyState.getRealm$realm().get(Question.class, this.proxyState.getRow$realm().getLink(this.columnInfo.questionIndex), false, Collections.emptyList());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.digikala.dms.model.design.QuestionAnswer, io.realm.com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface
    public void realmSet$question(Question question) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm()) {
                return;
            }
            Question question2 = question;
            if (this.proxyState.getExcludeFields$realm().contains("question")) {
                return;
            }
            if (question != 0) {
                boolean zIsManaged = RealmObject.isManaged(question);
                question2 = question;
                if (!zIsManaged) {
                    question2 = (Question) ((Realm) this.proxyState.getRealm$realm()).copyToRealm(question);
                }
            }
            Row row$realm = this.proxyState.getRow$realm();
            if (question2 == null) {
                row$realm.nullifyLink(this.columnInfo.questionIndex);
                return;
            } else {
                this.proxyState.checkValidObject(question2);
                row$realm.getTable().setLink(this.columnInfo.questionIndex, row$realm.getIndex(), ((RealmObjectProxy) question2).realmGet$proxyState().getRow$realm().getIndex(), true);
                return;
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        if (question == 0) {
            this.proxyState.getRow$realm().nullifyLink(this.columnInfo.questionIndex);
        } else {
            this.proxyState.checkValidObject(question);
            this.proxyState.getRow$realm().setLink(this.columnInfo.questionIndex, ((RealmObjectProxy) question).realmGet$proxyState().getRow$realm().getIndex());
        }
    }

    @Override // com.digikala.dms.model.design.QuestionAnswer, io.realm.com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface
    public RealmList<Answer> realmGet$Answers() {
        this.proxyState.getRealm$realm().checkIfValid();
        if (this.AnswersRealmList != null) {
            return this.AnswersRealmList;
        }
        OsList osList = this.proxyState.getRow$realm().getModelList(this.columnInfo.AnswersIndex);
        this.AnswersRealmList = new RealmList<>(Answer.class, osList, this.proxyState.getRealm$realm());
        return this.AnswersRealmList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0, types: [io.realm.RealmList, io.realm.RealmList<com.digikala.dms.model.design.Answer>] */
    /* JADX WARN: Type inference failed for: r9v1, types: [io.realm.RealmList] */
    /* JADX WARN: Type inference failed for: r9v2, types: [io.realm.RealmList] */
    @Override // com.digikala.dms.model.design.QuestionAnswer, io.realm.com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface
    public void realmSet$Answers(RealmList<Answer> realmList) {
        if (this.proxyState.isUnderConstruction()) {
            if (!this.proxyState.getAcceptDefaultValue$realm() || this.proxyState.getExcludeFields$realm().contains(Answers.TAG)) {
                return;
            }
            if (realmList != 0 && !realmList.isManaged()) {
                Realm realm = (Realm) this.proxyState.getRealm$realm();
                realmList = new RealmList();
                for (Answer item : realmList) {
                    if (item == null || RealmObject.isManaged(item)) {
                        realmList.add(item);
                    } else {
                        realmList.add(realm.copyToRealm(item));
                    }
                }
            }
        }
        this.proxyState.getRealm$realm().checkIfValid();
        OsList osList = this.proxyState.getRow$realm().getModelList(this.columnInfo.AnswersIndex);
        int i = 0;
        if (realmList != 0 && realmList.size() == osList.size()) {
            int objects = realmList.size();
            while (i < objects) {
                RealmModel realmModel = (Answer) realmList.get(i);
                this.proxyState.checkValidObject(realmModel);
                osList.setRow(i, ((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex());
                i++;
            }
            return;
        }
        osList.removeAll();
        if (realmList == 0) {
            return;
        }
        int objects2 = realmList.size();
        while (i < objects2) {
            RealmModel realmModel2 = (Answer) realmList.get(i);
            this.proxyState.checkValidObject(realmModel2);
            osList.addRow(((RealmObjectProxy) realmModel2).realmGet$proxyState().getRow$realm().getIndex());
            i++;
        }
    }

    private static OsObjectSchemaInfo createExpectedObjectSchemaInfo() {
        OsObjectSchemaInfo.Builder builder = new OsObjectSchemaInfo.Builder(ClassNameHelper.INTERNAL_CLASS_NAME, 2, 0);
        builder.addPersistedLinkProperty("question", RealmFieldType.OBJECT, com_digikala_dms_model_design_QuestionRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME);
        builder.addPersistedLinkProperty(Answers.TAG, RealmFieldType.LIST, com_digikala_dms_model_design_AnswerRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME);
        return builder.build();
    }

    public static OsObjectSchemaInfo getExpectedObjectSchemaInfo() {
        return expectedObjectSchemaInfo;
    }

    public static QuestionAnswerColumnInfo createColumnInfo(OsSchemaInfo schemaInfo) {
        return new QuestionAnswerColumnInfo(schemaInfo);
    }

    public static String getSimpleClassName() {
        return ClassNameHelper.INTERNAL_CLASS_NAME;
    }

    public static QuestionAnswer createOrUpdateUsingJsonObject(Realm realm, JSONObject json, boolean update) throws JSONException {
        List<String> excludeFields = new ArrayList<>(2);
        if (json.has("question")) {
            excludeFields.add("question");
        }
        if (json.has(Answers.TAG)) {
            excludeFields.add(Answers.TAG);
        }
        QuestionAnswer obj = (QuestionAnswer) realm.createObjectInternal(QuestionAnswer.class, true, excludeFields);
        QuestionAnswer objProxy = obj;
        if (json.has("question")) {
            if (json.isNull("question")) {
                objProxy.realmSet$question(null);
            } else {
                Question questionObj = com_digikala_dms_model_design_QuestionRealmProxy.createOrUpdateUsingJsonObject(realm, json.getJSONObject("question"), update);
                objProxy.realmSet$question(questionObj);
            }
        }
        if (json.has(Answers.TAG)) {
            if (json.isNull(Answers.TAG)) {
                objProxy.realmSet$Answers(null);
            } else {
                objProxy.realmGet$Answers().clear();
                JSONArray array = json.getJSONArray(Answers.TAG);
                for (int i = 0; i < array.length(); i++) {
                    Answer item = com_digikala_dms_model_design_AnswerRealmProxy.createOrUpdateUsingJsonObject(realm, array.getJSONObject(i), update);
                    objProxy.realmGet$Answers().add(item);
                }
            }
        }
        return obj;
    }

    @TargetApi(11)
    public static QuestionAnswer createUsingJsonStream(Realm realm, JsonReader reader) throws IOException {
        QuestionAnswer obj = new QuestionAnswer();
        QuestionAnswer objProxy = obj;
        reader.beginObject();
        while (reader.hasNext()) {
            String name = reader.nextName();
            if (name.equals("question")) {
                if (reader.peek() == JsonToken.NULL) {
                    reader.skipValue();
                    objProxy.realmSet$question(null);
                } else {
                    Question questionObj = com_digikala_dms_model_design_QuestionRealmProxy.createUsingJsonStream(realm, reader);
                    objProxy.realmSet$question(questionObj);
                }
            } else if (name.equals(Answers.TAG)) {
                if (reader.peek() == JsonToken.NULL) {
                    reader.skipValue();
                    objProxy.realmSet$Answers(null);
                } else {
                    objProxy.realmSet$Answers(new RealmList<>());
                    reader.beginArray();
                    while (reader.hasNext()) {
                        Answer item = com_digikala_dms_model_design_AnswerRealmProxy.createUsingJsonStream(realm, reader);
                        objProxy.realmGet$Answers().add(item);
                    }
                    reader.endArray();
                }
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        return (QuestionAnswer) realm.copyToRealm(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static QuestionAnswer copyOrUpdate(Realm realm, QuestionAnswer questionAnswer, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        if ((questionAnswer instanceof RealmObjectProxy) && ((RealmObjectProxy) questionAnswer).realmGet$proxyState().getRealm$realm() != null) {
            BaseRealm otherRealm = ((RealmObjectProxy) questionAnswer).realmGet$proxyState().getRealm$realm();
            if (otherRealm.threadId != realm.threadId) {
                throw new IllegalArgumentException("Objects which belong to Realm instances in other threads cannot be copied into this Realm instance.");
            }
            if (otherRealm.getPath().equals(realm.getPath())) {
                return questionAnswer;
            }
        }
        BaseRealm.objectContext.get();
        RealmModel realmModel = (RealmObjectProxy) cache.get(questionAnswer);
        if (realmModel != null) {
            return (QuestionAnswer) realmModel;
        }
        return copy(realm, questionAnswer, update, cache);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static QuestionAnswer copy(Realm realm, QuestionAnswer newObject, boolean update, Map<RealmModel, RealmObjectProxy> cache) {
        RealmModel realmModel = (RealmObjectProxy) cache.get(newObject);
        if (realmModel != null) {
            return (QuestionAnswer) realmModel;
        }
        QuestionAnswer questionAnswer = (QuestionAnswer) realm.createObjectInternal(QuestionAnswer.class, false, Collections.emptyList());
        cache.put(newObject, (RealmObjectProxy) questionAnswer);
        QuestionAnswer realmObjectSource = newObject;
        QuestionAnswer realmObjectCopy = questionAnswer;
        Question questionObj = realmObjectSource.realmGet$question();
        if (questionObj == null) {
            realmObjectCopy.realmSet$question(null);
        } else {
            Question cachequestion = (Question) cache.get(questionObj);
            if (cachequestion != null) {
                realmObjectCopy.realmSet$question(cachequestion);
            } else {
                realmObjectCopy.realmSet$question(com_digikala_dms_model_design_QuestionRealmProxy.copyOrUpdate(realm, questionObj, update, cache));
            }
        }
        RealmList<Answer> AnswersList = realmObjectSource.realmGet$Answers();
        if (AnswersList != null) {
            RealmList<Answer> AnswersRealmList = realmObjectCopy.realmGet$Answers();
            AnswersRealmList.clear();
            for (int i = 0; i < AnswersList.size(); i++) {
                Answer AnswersItem = AnswersList.get(i);
                Answer cacheAnswers = (Answer) cache.get(AnswersItem);
                if (cacheAnswers != null) {
                    AnswersRealmList.add(cacheAnswers);
                } else {
                    AnswersRealmList.add(com_digikala_dms_model_design_AnswerRealmProxy.copyOrUpdate(realm, AnswersItem, update, cache));
                }
            }
        }
        return questionAnswer;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insert(Realm realm, QuestionAnswer questionAnswer, Map<RealmModel, Long> cache) {
        long tableNativePtr;
        if (!(questionAnswer instanceof RealmObjectProxy) || ((RealmObjectProxy) questionAnswer).realmGet$proxyState().getRealm$realm() == null || !((RealmObjectProxy) questionAnswer).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            Table table = realm.getTable(QuestionAnswer.class);
            long tableNativePtr2 = table.getNativePtr();
            QuestionAnswerColumnInfo columnInfo = (QuestionAnswerColumnInfo) realm.getSchema().getColumnInfo(QuestionAnswer.class);
            long rowIndex = OsObject.createRow(table);
            cache.put(questionAnswer, Long.valueOf(rowIndex));
            Question questionObj = questionAnswer.realmGet$question();
            if (questionObj != null) {
                Long cachequestion = cache.get(questionObj);
                if (cachequestion == null) {
                    cachequestion = Long.valueOf(com_digikala_dms_model_design_QuestionRealmProxy.insert(realm, questionObj, cache));
                }
                tableNativePtr = rowIndex;
                Table.nativeSetLink(tableNativePtr2, columnInfo.questionIndex, rowIndex, cachequestion.longValue(), false);
            } else {
                tableNativePtr = rowIndex;
            }
            RealmList<Answer> AnswersList = questionAnswer.realmGet$Answers();
            if (AnswersList != null) {
                OsList AnswersOsList = new OsList(table.getUncheckedRow(tableNativePtr), columnInfo.AnswersIndex);
                for (Answer AnswersItem : AnswersList) {
                    Long cacheItemIndexAnswers = cache.get(AnswersItem);
                    if (cacheItemIndexAnswers == null) {
                        cacheItemIndexAnswers = Long.valueOf(com_digikala_dms_model_design_AnswerRealmProxy.insert(realm, AnswersItem, cache));
                    }
                    AnswersOsList.addRow(cacheItemIndexAnswers.longValue());
                }
            }
            return tableNativePtr;
        }
        return ((RealmObjectProxy) questionAnswer).realmGet$proxyState().getRow$realm().getIndex();
    }

    public static void insert(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        long tableNativePtr;
        long tableNativePtr2;
        Table table = realm.getTable(QuestionAnswer.class);
        long tableNativePtr3 = table.getNativePtr();
        QuestionAnswerColumnInfo columnInfo = (QuestionAnswerColumnInfo) realm.getSchema().getColumnInfo(QuestionAnswer.class);
        while (objects.hasNext()) {
            RealmModel realmModel = (QuestionAnswer) objects.next();
            if (cache.containsKey(realmModel)) {
                tableNativePtr = tableNativePtr3;
            } else if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                tableNativePtr = tableNativePtr3;
            } else {
                long rowIndex = OsObject.createRow(table);
                cache.put(realmModel, Long.valueOf(rowIndex));
                Question questionObj = ((com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface) realmModel).realmGet$question();
                if (questionObj != null) {
                    Long cachequestion = cache.get(questionObj);
                    if (cachequestion == null) {
                        cachequestion = Long.valueOf(com_digikala_dms_model_design_QuestionRealmProxy.insert(realm, questionObj, cache));
                    }
                    tableNativePtr = tableNativePtr3;
                    tableNativePtr2 = rowIndex;
                    table.setLink(columnInfo.questionIndex, rowIndex, cachequestion.longValue(), false);
                } else {
                    tableNativePtr = tableNativePtr3;
                    tableNativePtr2 = rowIndex;
                }
                RealmList<Answer> AnswersList = ((com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface) realmModel).realmGet$Answers();
                if (AnswersList != null) {
                    OsList AnswersOsList = new OsList(table.getUncheckedRow(tableNativePtr2), columnInfo.AnswersIndex);
                    for (Answer AnswersItem : AnswersList) {
                        Long cacheItemIndexAnswers = cache.get(AnswersItem);
                        if (cacheItemIndexAnswers == null) {
                            cacheItemIndexAnswers = Long.valueOf(com_digikala_dms_model_design_AnswerRealmProxy.insert(realm, AnswersItem, cache));
                        }
                        AnswersOsList.addRow(cacheItemIndexAnswers.longValue());
                    }
                }
            }
            tableNativePtr3 = tableNativePtr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long insertOrUpdate(Realm realm, QuestionAnswer questionAnswer, Map<RealmModel, Long> cache) {
        long rowIndex;
        if (!(questionAnswer instanceof RealmObjectProxy) || ((RealmObjectProxy) questionAnswer).realmGet$proxyState().getRealm$realm() == null || !((RealmObjectProxy) questionAnswer).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
            Table table = realm.getTable(QuestionAnswer.class);
            long tableNativePtr = table.getNativePtr();
            QuestionAnswerColumnInfo columnInfo = (QuestionAnswerColumnInfo) realm.getSchema().getColumnInfo(QuestionAnswer.class);
            long rowIndex2 = OsObject.createRow(table);
            cache.put(questionAnswer, Long.valueOf(rowIndex2));
            Question questionObj = questionAnswer.realmGet$question();
            if (questionObj != null) {
                Long cachequestion = cache.get(questionObj);
                if (cachequestion == null) {
                    cachequestion = Long.valueOf(com_digikala_dms_model_design_QuestionRealmProxy.insertOrUpdate(realm, questionObj, cache));
                }
                rowIndex = rowIndex2;
                Table.nativeSetLink(tableNativePtr, columnInfo.questionIndex, rowIndex2, cachequestion.longValue(), false);
            } else {
                rowIndex = rowIndex2;
                Table.nativeNullifyLink(tableNativePtr, columnInfo.questionIndex, rowIndex);
            }
            long rowIndex3 = rowIndex;
            OsList AnswersOsList = new OsList(table.getUncheckedRow(rowIndex3), columnInfo.AnswersIndex);
            RealmList<Answer> AnswersList = questionAnswer.realmGet$Answers();
            if (AnswersList != null && AnswersList.size() == AnswersOsList.size()) {
                int objects = AnswersList.size();
                int i = 0;
                while (i < objects) {
                    Answer AnswersItem = AnswersList.get(i);
                    Long cacheItemIndexAnswers = cache.get(AnswersItem);
                    if (cacheItemIndexAnswers == null) {
                        cacheItemIndexAnswers = Long.valueOf(com_digikala_dms_model_design_AnswerRealmProxy.insertOrUpdate(realm, AnswersItem, cache));
                    }
                    AnswersOsList.setRow(i, cacheItemIndexAnswers.longValue());
                    i++;
                    tableNativePtr = tableNativePtr;
                    columnInfo = columnInfo;
                }
            } else {
                AnswersOsList.removeAll();
                if (AnswersList != null) {
                    for (Answer AnswersItem2 : AnswersList) {
                        Long cacheItemIndexAnswers2 = cache.get(AnswersItem2);
                        if (cacheItemIndexAnswers2 == null) {
                            cacheItemIndexAnswers2 = Long.valueOf(com_digikala_dms_model_design_AnswerRealmProxy.insertOrUpdate(realm, AnswersItem2, cache));
                        }
                        AnswersOsList.addRow(cacheItemIndexAnswers2.longValue());
                    }
                }
            }
            return rowIndex3;
        }
        return ((RealmObjectProxy) questionAnswer).realmGet$proxyState().getRow$realm().getIndex();
    }

    public static void insertOrUpdate(Realm realm, Iterator<? extends RealmModel> objects, Map<RealmModel, Long> cache) {
        long rowIndex;
        long tableNativePtr;
        Table table = realm.getTable(QuestionAnswer.class);
        long tableNativePtr2 = table.getNativePtr();
        QuestionAnswerColumnInfo columnInfo = (QuestionAnswerColumnInfo) realm.getSchema().getColumnInfo(QuestionAnswer.class);
        while (objects.hasNext()) {
            RealmModel realmModel = (QuestionAnswer) objects.next();
            if (cache.containsKey(realmModel)) {
                tableNativePtr = tableNativePtr2;
            } else if ((realmModel instanceof RealmObjectProxy) && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != null && ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm().getPath().equals(realm.getPath())) {
                cache.put(realmModel, Long.valueOf(((RealmObjectProxy) realmModel).realmGet$proxyState().getRow$realm().getIndex()));
                tableNativePtr = tableNativePtr2;
            } else {
                long rowIndex2 = OsObject.createRow(table);
                cache.put(realmModel, Long.valueOf(rowIndex2));
                Question questionObj = ((com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface) realmModel).realmGet$question();
                if (questionObj != null) {
                    Long cachequestion = cache.get(questionObj);
                    if (cachequestion == null) {
                        cachequestion = Long.valueOf(com_digikala_dms_model_design_QuestionRealmProxy.insertOrUpdate(realm, questionObj, cache));
                    }
                    rowIndex = rowIndex2;
                    Table.nativeSetLink(tableNativePtr2, columnInfo.questionIndex, rowIndex2, cachequestion.longValue(), false);
                } else {
                    rowIndex = rowIndex2;
                    Table.nativeNullifyLink(tableNativePtr2, columnInfo.questionIndex, rowIndex);
                }
                long rowIndex3 = rowIndex;
                OsList AnswersOsList = new OsList(table.getUncheckedRow(rowIndex3), columnInfo.AnswersIndex);
                RealmList<Answer> AnswersList = ((com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface) realmModel).realmGet$Answers();
                if (AnswersList != null && AnswersList.size() == AnswersOsList.size()) {
                    int objectCount = AnswersList.size();
                    int i = 0;
                    while (i < objectCount) {
                        Answer AnswersItem = AnswersList.get(i);
                        Long cacheItemIndexAnswers = cache.get(AnswersItem);
                        if (cacheItemIndexAnswers == null) {
                            cacheItemIndexAnswers = Long.valueOf(com_digikala_dms_model_design_AnswerRealmProxy.insertOrUpdate(realm, AnswersItem, cache));
                        }
                        AnswersOsList.setRow(i, cacheItemIndexAnswers.longValue());
                        i++;
                        rowIndex3 = rowIndex3;
                        tableNativePtr2 = tableNativePtr2;
                    }
                    tableNativePtr = tableNativePtr2;
                } else {
                    tableNativePtr = tableNativePtr2;
                    AnswersOsList.removeAll();
                    if (AnswersList != null) {
                        for (Answer AnswersItem2 : AnswersList) {
                            Long cacheItemIndexAnswers2 = cache.get(AnswersItem2);
                            if (cacheItemIndexAnswers2 == null) {
                                cacheItemIndexAnswers2 = Long.valueOf(com_digikala_dms_model_design_AnswerRealmProxy.insertOrUpdate(realm, AnswersItem2, cache));
                            }
                            AnswersOsList.addRow(cacheItemIndexAnswers2.longValue());
                        }
                    }
                }
            }
            tableNativePtr2 = tableNativePtr;
        }
    }

    public static QuestionAnswer createDetachedCopy(QuestionAnswer realmObject, int currentDepth, int maxDepth, Map<RealmModel, RealmObjectProxy.CacheData<RealmModel>> cache) {
        QuestionAnswer unmanagedObject;
        if (currentDepth > maxDepth || realmObject == null) {
            return null;
        }
        RealmObjectProxy.CacheData<RealmModel> cachedObject = cache.get(realmObject);
        if (cachedObject == null) {
            unmanagedObject = new QuestionAnswer();
            cache.put(realmObject, new RealmObjectProxy.CacheData<>(currentDepth, unmanagedObject));
        } else {
            if (currentDepth >= cachedObject.minDepth) {
                return (QuestionAnswer) cachedObject.object;
            }
            unmanagedObject = (QuestionAnswer) cachedObject.object;
            cachedObject.minDepth = currentDepth;
        }
        com_digikala_dms_model_design_QuestionAnswerRealmProxyInterface unmanagedCopy = unmanagedObject;
        QuestionAnswer realmSource = realmObject;
        unmanagedCopy.realmSet$question(com_digikala_dms_model_design_QuestionRealmProxy.createDetachedCopy(realmSource.realmGet$question(), currentDepth + 1, maxDepth, cache));
        if (currentDepth == maxDepth) {
            unmanagedCopy.realmSet$Answers(null);
        } else {
            RealmList<Answer> managedAnswersList = realmSource.realmGet$Answers();
            RealmList<Answer> unmanagedAnswersList = new RealmList<>();
            unmanagedCopy.realmSet$Answers(unmanagedAnswersList);
            int nextDepth = currentDepth + 1;
            int size = managedAnswersList.size();
            for (int i = 0; i < size; i++) {
                Answer item = com_digikala_dms_model_design_AnswerRealmProxy.createDetachedCopy(managedAnswersList.get(i), nextDepth, maxDepth, cache);
                unmanagedAnswersList.add(item);
            }
        }
        return unmanagedObject;
    }

    public String toString() {
        if (!RealmObject.isValid(this)) {
            return "Invalid object";
        }
        StringBuilder stringBuilder = new StringBuilder("QuestionAnswer = proxy[");
        stringBuilder.append("{question:");
        stringBuilder.append(realmGet$question() != null ? com_digikala_dms_model_design_QuestionRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME : "null");
        stringBuilder.append("}");
        stringBuilder.append(",");
        stringBuilder.append("{Answers:");
        stringBuilder.append("RealmList<Answer>[");
        stringBuilder.append(realmGet$Answers().size());
        stringBuilder.append("]");
        stringBuilder.append("}");
        stringBuilder.append("]");
        return stringBuilder.toString();
    }

    @Override // io.realm.internal.RealmObjectProxy
    public ProxyState<?> realmGet$proxyState() {
        return this.proxyState;
    }

    public int hashCode() {
        String realmName = this.proxyState.getRealm$realm().getPath();
        String tableName = this.proxyState.getRow$realm().getTable().getName();
        long rowIndex = this.proxyState.getRow$realm().getIndex();
        int result = (17 * 31) + (realmName != null ? realmName.hashCode() : 0);
        return (((result * 31) + (tableName != null ? tableName.hashCode() : 0)) * 31) + ((int) ((rowIndex >>> 32) ^ rowIndex));
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        com_digikala_dms_model_design_QuestionAnswerRealmProxy aQuestionAnswer = (com_digikala_dms_model_design_QuestionAnswerRealmProxy) o;
        String path = this.proxyState.getRealm$realm().getPath();
        String otherPath = aQuestionAnswer.proxyState.getRealm$realm().getPath();
        if (path == null ? otherPath != null : !path.equals(otherPath)) {
            return false;
        }
        String tableName = this.proxyState.getRow$realm().getTable().getName();
        String otherTableName = aQuestionAnswer.proxyState.getRow$realm().getTable().getName();
        if (tableName == null ? otherTableName != null : !tableName.equals(otherTableName)) {
            return false;
        }
        if (this.proxyState.getRow$realm().getIndex() == aQuestionAnswer.proxyState.getRow$realm().getIndex()) {
            return true;
        }
        return false;
    }
}
