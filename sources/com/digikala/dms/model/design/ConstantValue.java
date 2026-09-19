package com.digikala.dms.model.design;

import com.digikala.dms.model.domain.CardType;
import com.digikala.dms.model.domain.RejectReason;
import com.digikala.dms.model.domain.UnprocessedReason;
import com.google.gson.annotations.SerializedName;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ConstantValue {

    @SerializedName("Tracking")
    private TrackingType tracking;

    @SerializedName("AnswersPerQuestion")
    private List<QuestionAnswer> answersPerQuestion = null;

    @SerializedName("Credentials")
    private List<CardType> credentials = null;

    @SerializedName("CancellationReasons")
    private List<RejectReason> cancellationReasons = null;

    @SerializedName("UnprocessedReasons")
    private List<UnprocessedReason> unprocessedReasons = null;

    public List<CardType> getCredentials() {
        return this.credentials;
    }

    public void setCredentials(List<CardType> credentials) {
        this.credentials = credentials;
    }

    public TrackingType getTracking() {
        return this.tracking;
    }

    public void setTracking(TrackingType tracking) {
        this.tracking = tracking;
    }

    public List<RejectReason> getCancellationReasons() {
        return this.cancellationReasons;
    }

    public void setCancellationReasons(List<RejectReason> cancellationReasons) {
        this.cancellationReasons = cancellationReasons;
    }

    public List<UnprocessedReason> getUnprocessedReasons() {
        return this.unprocessedReasons;
    }

    public void setUnprocessedReasons(List<UnprocessedReason> unprocessedReasons) {
        this.unprocessedReasons = unprocessedReasons;
    }

    public List<QuestionAnswer> getAnswersPerQuestion() {
        return this.answersPerQuestion;
    }

    public void setAnswersPerQuestion(List<QuestionAnswer> answersPerQuestion) {
        this.answersPerQuestion = answersPerQuestion;
    }
}
