package com.digikala.dms.view.custom.swipebutton;

/* JADX INFO: loaded from: classes2.dex */
public abstract class SwipeButtonCustomItems {
    public int gradientColor1 = -13421773;
    public int gradientColor2 = -10066330;
    public int gradientColor2Width = 50;
    public int gradientColor3 = -7829368;
    public int postConfirmationColor = -7829368;
    public double actionConfirmDistanceFraction = 0.7d;
    public String buttonPressText = ">>   SWIPE TO CONFIRM   >> ";
    public String actionConfirmText = null;

    public abstract void onSwipeConfirm();

    public int getGradientColor1() {
        return this.gradientColor1;
    }

    public SwipeButtonCustomItems setGradientColor1(int gradientColor1) {
        this.gradientColor1 = gradientColor1;
        return this;
    }

    public int getGradientColor2() {
        return this.gradientColor2;
    }

    public SwipeButtonCustomItems setGradientColor2(int gradientColor2) {
        this.gradientColor2 = gradientColor2;
        return this;
    }

    public int getGradientColor2Width() {
        return this.gradientColor2Width;
    }

    public SwipeButtonCustomItems setGradientColor2Width(int gradientColor2Width) {
        this.gradientColor2Width = gradientColor2Width;
        return this;
    }

    public int getGradientColor3() {
        return this.gradientColor3;
    }

    public SwipeButtonCustomItems setGradientColor3(int gradientColor3) {
        this.gradientColor3 = gradientColor3;
        return this;
    }

    public double getActionConfirmDistanceFraction() {
        return this.actionConfirmDistanceFraction;
    }

    public SwipeButtonCustomItems setActionConfirmDistanceFraction(double actionConfirmDistanceFraction) {
        this.actionConfirmDistanceFraction = actionConfirmDistanceFraction;
        return this;
    }

    public String getButtonPressText() {
        return this.buttonPressText;
    }

    public SwipeButtonCustomItems setButtonPressText(String buttonPressText) {
        this.buttonPressText = buttonPressText;
        return this;
    }

    public String getActionConfirmText() {
        return this.actionConfirmText;
    }

    public SwipeButtonCustomItems setActionConfirmText(String actionConfirmText) {
        this.actionConfirmText = actionConfirmText;
        return this;
    }

    public int getPostConfirmationColor() {
        return this.postConfirmationColor;
    }

    public SwipeButtonCustomItems setPostConfirmationColor(int postConfirmationColor) {
        this.postConfirmationColor = postConfirmationColor;
        return this;
    }

    public void onButtonPress() {
    }

    public void onSwipeCancel() {
    }
}
