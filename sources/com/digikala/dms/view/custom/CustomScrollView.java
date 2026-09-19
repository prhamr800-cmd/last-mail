package com.digikala.dms.view.custom;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ScrollView;

/* JADX INFO: loaded from: classes2.dex */
public class CustomScrollView extends ScrollView {
    private boolean enableScrolling;

    public boolean isEnableScrolling() {
        return this.enableScrolling;
    }

    public void setEnableScrolling(boolean enableScrolling) {
        this.enableScrolling = enableScrolling;
    }

    public CustomScrollView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.enableScrolling = true;
    }

    public CustomScrollView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.enableScrolling = true;
    }

    public CustomScrollView(Context context) {
        super(context);
        this.enableScrolling = true;
    }

    @Override // android.widget.ScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        return isEnableScrolling() && super.onInterceptTouchEvent(ev);
    }

    @Override // android.widget.ScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        return isEnableScrolling() && super.onTouchEvent(ev);
    }
}
