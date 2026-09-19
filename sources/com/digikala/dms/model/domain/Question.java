package com.digikala.dms.model.domain;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes2.dex */
public class Question {

    @SerializedName("Content")
    private String context;

    @SerializedName("Id")
    private String id;

    public String getId() {
        return this.id;
    }

    public Question(String id, String context, int rateRange) {
        this.id = id;
        this.context = context;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getContext() {
        return this.context;
    }

    public void setContext(String context) {
        this.context = context;
    }
}
