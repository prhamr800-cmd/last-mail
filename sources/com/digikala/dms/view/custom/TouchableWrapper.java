package com.digikala.dms.view.custom;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes2.dex */
public class TouchableWrapper extends FrameLayout {
    private OnTouchCallBack onTouchCallBack;

    public interface OnTouchCallBack {
        void onTouch(boolean z);
    }

    public TouchableWrapper(Context context) {
        super(context);
    }

    public TouchableWrapper(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent event) {
        switch (event.getAction()) {
            case 0:
                this.onTouchCallBack.onTouch(true);
                break;
            case 1:
                this.onTouchCallBack.onTouch(false);
                break;
        }
        return super.dispatchTouchEvent(event);
    }

    public void setOnTouchCallBack(OnTouchCallBack onTouchCallBack) {
        this.onTouchCallBack = onTouchCallBack;
    }
}
