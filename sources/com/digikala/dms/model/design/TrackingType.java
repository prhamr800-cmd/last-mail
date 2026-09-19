package com.digikala.dms.model.design;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes2.dex */
public class TrackingType {

    @SerializedName("HasTrack")
    private Boolean hasTrack;

    @SerializedName("TimeInterval")
    private Integer timeInterval;

    public TrackingType(Boolean hasTrack, Integer timeInterval) {
        this.hasTrack = hasTrack;
        this.timeInterval = timeInterval;
    }

    public Boolean getHasTrack() {
        return this.hasTrack;
    }

    public void setHasTrack(Boolean hasTrack) {
        this.hasTrack = hasTrack;
    }

    public Integer getTimeInterval() {
        return this.timeInterval;
    }

    public void setTimeInterval(Integer timeInterval) {
        this.timeInterval = timeInterval;
    }
}
