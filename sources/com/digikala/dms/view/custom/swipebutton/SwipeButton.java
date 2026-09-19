package com.digikala.dms.view.custom.swipebutton;

import android.content.Context;
import android.graphics.LinearGradient;
import android.graphics.Shader;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RectShape;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.widget.Button;

/* JADX INFO: loaded from: classes2.dex */
public class SwipeButton extends Button {
    private boolean confirmThresholdCrossed;
    private String originalButtonText;
    private SwipeButtonCustomItems swipeButtonCustomItems;
    private boolean swipeTextShown;
    private boolean swiping;
    private float x1;
    private float x2Start;
    private float y1;

    public SwipeButton(Context context) {
        super(context);
        this.swiping = false;
    }

    public SwipeButton(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.swiping = false;
    }

    public SwipeButton(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.swiping = false;
    }

    public void setSwipeButtonCustomItems(SwipeButtonCustomItems swipeButtonCustomItems) {
        this.swipeButtonCustomItems = swipeButtonCustomItems;
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        switch (event.getAction()) {
            case 0:
                float x2 = event.getX();
                this.x1 = x2;
                this.y1 = event.getY();
                this.originalButtonText = getText().toString();
                this.confirmThresholdCrossed = false;
                if (!this.swipeTextShown) {
                    setText(this.swipeButtonCustomItems.getButtonPressText());
                    this.swipeTextShown = true;
                }
                this.swipeButtonCustomItems.onButtonPress();
                break;
            case 1:
                this.swiping = false;
                float x22 = event.getX();
                int buttonColor = this.swipeButtonCustomItems.getPostConfirmationColor();
                CharSequence actionConfirmText = this.swipeButtonCustomItems.getActionConfirmText() == null ? this.originalButtonText : this.swipeButtonCustomItems.getActionConfirmText();
                setBackgroundDrawable(null);
                setBackgroundColor(buttonColor);
                this.swipeTextShown = false;
                double d = x22 - this.x2Start;
                double width = getWidth();
                double actionConfirmDistanceFraction = this.swipeButtonCustomItems.getActionConfirmDistanceFraction();
                Double.isNaN(width);
                if (d <= width * actionConfirmDistanceFraction) {
                    Log.d("CONFIRMATION", "Action not confirmed");
                    setText(this.originalButtonText);
                    this.swipeButtonCustomItems.onSwipeCancel();
                    this.confirmThresholdCrossed = false;
                } else {
                    Log.d("CONFIRMATION", "Action confirmed");
                    setText(actionConfirmText);
                }
                break;
            case 2:
                float x23 = event.getX();
                event.getY();
                if (!this.swiping) {
                    this.x2Start = event.getX();
                    this.swiping = true;
                }
                if (this.x1 < x23 && !this.confirmThresholdCrossed) {
                    setBackgroundDrawable(null);
                    ShapeDrawable mDrawable = new ShapeDrawable(new RectShape());
                    int gradientColor1 = this.swipeButtonCustomItems.getGradientColor1();
                    int gradientColor2 = this.swipeButtonCustomItems.getGradientColor2();
                    int gradientColor2Width = this.swipeButtonCustomItems.getGradientColor2Width();
                    int gradientColor3 = this.swipeButtonCustomItems.getGradientColor3();
                    double actionConfirmDistanceFraction2 = this.swipeButtonCustomItems.getActionConfirmDistanceFraction();
                    Shader shader = new LinearGradient(x23, 0.0f, x23 - gradientColor2Width, 0.0f, new int[]{gradientColor3, gradientColor2, gradientColor1}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP);
                    mDrawable.getPaint().setShader(shader);
                    setBackgroundDrawable(mDrawable);
                    if (!this.swipeTextShown) {
                        setText(this.swipeButtonCustomItems.getButtonPressText());
                        this.swipeTextShown = true;
                    }
                    double d2 = x23 - this.x2Start;
                    double width2 = getWidth();
                    Double.isNaN(width2);
                    if (d2 > width2 * actionConfirmDistanceFraction2) {
                        Log.d("CONFIRMATION", "Action Confirmed!");
                        this.swipeButtonCustomItems.onSwipeConfirm();
                        this.confirmThresholdCrossed = true;
                    }
                }
                break;
        }
        return super.onTouchEvent(event);
    }
}
