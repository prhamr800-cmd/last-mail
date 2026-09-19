package com.digikala.dms.model.domain;

import android.support.annotation.IntRange;

/* JADX INFO: loaded from: classes2.dex */
public class UserFeedback {
    private static final int RATE_MAX = 10;
    private static final int RATE_MIN = 0;
    private int userRate;

    public UserFeedback(@IntRange(from = 0, to = 10) int userRate) {
        this.userRate = userRate;
    }

    public int getUserRate() {
        return this.userRate;
    }

    public void setUserRate(@IntRange(from = 0, to = 10) int userRate) {
        this.userRate = userRate;
    }
}
