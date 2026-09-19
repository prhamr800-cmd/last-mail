package com.digikala.dms.model.design;

import com.digikala.dms.model.domain.CardType;
import com.digikala.dms.model.domain.Courier;
import com.google.gson.annotations.SerializedName;
import io.realm.com_digikala_dms_model_design_QuestionRealmProxy;
import io.realm.com_digikala_dms_model_domain_CardTypeRealmProxy;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class LoginResult {

    @SerializedName("DateTime")
    private String DateTime;

    @SerializedName("Token")
    private String authToken;

    @SerializedName(com_digikala_dms_model_domain_CardTypeRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME)
    private List<CardType> cardTypes;

    @SerializedName("Account")
    private Courier courier;

    @SerializedName(com_digikala_dms_model_design_QuestionRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME)
    private com.digikala.dms.model.domain.Question question;

    @SerializedName("TrackingType")
    private TrackingType trackingType;

    public String getAuthToken() {
        return this.authToken;
    }

    public void setAuthToken(String authToken) {
        this.authToken = authToken;
    }

    public Courier getCourier() {
        return this.courier;
    }

    public void setCourier(Courier courier) {
        this.courier = courier;
    }

    public com.digikala.dms.model.domain.Question getQuestion() {
        return this.question;
    }

    public void setQuestion(com.digikala.dms.model.domain.Question question) {
        this.question = question;
    }

    public List<CardType> getCardTypes() {
        return this.cardTypes;
    }

    public void setCardTypes(List<CardType> cardTypes) {
        this.cardTypes = cardTypes;
    }

    public TrackingType getTrackingType() {
        return this.trackingType;
    }

    public void setTrackingType(TrackingType trackingType) {
        this.trackingType = trackingType;
    }

    public String getDateTime() {
        return this.DateTime;
    }

    public void setDateTime(String dateTime) {
        this.DateTime = dateTime;
    }
}
