package com.digikala.dms.model.design;

import java.util.Calendar;

/* JADX INFO: loaded from: classes2.dex */
public class TimeTracker {
    public static final int STATE_EARLY = 2;
    public static final int STATE_LATE = 1;
    public static final int STATE_ON_TIME = 0;
    private int diffTime;
    private int state;

    public int getState() {
        return this.state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public int getDiffTime() {
        return this.diffTime;
    }

    public void setDiffTime(int diffTime) {
        this.diffTime = diffTime;
    }

    public static TimeTracker getDeliveryTimeTracker(String timeScope) throws Exception {
        String[] timeScopeSplitted = timeScope.split("-");
        int startTime = Integer.parseInt(timeScopeSplitted[0].trim()) * 60;
        int endTime = Integer.parseInt(timeScopeSplitted[1].trim()) * 60;
        int currentHour = Calendar.getInstance().get(11) * 60;
        int currentMinute = Calendar.getInstance().get(12);
        int now = currentHour + currentMinute;
        TimeTracker timeTrack = new TimeTracker();
        if (now <= endTime && now >= startTime) {
            timeTrack.setState(0);
        } else if (now > endTime) {
            timeTrack.setState(1);
            timeTrack.setDiffTime(now - endTime);
        } else {
            timeTrack.setState(2);
            timeTrack.setDiffTime(startTime - now);
        }
        return timeTrack;
    }
}
