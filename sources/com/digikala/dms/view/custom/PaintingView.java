package com.digikala.dms.view.custom;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.View;
import java.io.ByteArrayOutputStream;

/* JADX INFO: loaded from: classes2.dex */
public class PaintingView extends View {
    private static final int COLOR_BACKGROUND = -1;
    private static final int COLOR_PAINT = -16777216;
    private static final int QUALITY_PNG = 100;
    private static final int WIDTH_STROKE = 5;
    private Paint mPaint;
    private Path mPath;

    public PaintingView(Context context) {
        super(context);
        init();
    }

    public PaintingView(Context context, AttributeSet attrs) {
        super(context, attrs);
        init();
    }

    public PaintingView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init();
    }

    private void init() {
        setFocusable(true);
        setFocusableInTouchMode(true);
        setBackgroundColor(-1);
        this.mPaint = new Paint();
        this.mPaint.setColor(-16777216);
        this.mPaint.setAntiAlias(true);
        this.mPaint.setStrokeWidth(5.0f);
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setStrokeJoin(Paint.Join.ROUND);
        this.mPaint.setStrokeCap(Paint.Cap.ROUND);
        this.mPath = new Path();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        float x = event.getX();
        float y = event.getY();
        switch (event.getAction()) {
            case 0:
                setDrawingCacheEnabled(false);
                this.mPath.moveTo(x, y);
                postInvalidate();
                return true;
            case 1:
                setDrawingCacheEnabled(true);
                return false;
            case 2:
                this.mPath.lineTo(x, y);
                postInvalidate();
                return true;
            default:
                return false;
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.drawPath(this.mPath, this.mPaint);
    }

    public void clearCanvas() {
        destroyDrawingCache();
        setDrawingCacheEnabled(false);
        this.mPath = new Path();
        postInvalidate();
    }

    public Bitmap getPainting() {
        return getDrawingCache();
    }

    public String getBase64Painting() {
        Bitmap bmp = getPainting();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (bmp != null) {
            bmp.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
            return Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
        }
        return "";
    }
}
