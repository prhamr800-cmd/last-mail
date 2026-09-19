package com.digikala.dms.helper;

import android.graphics.Typeface;
import android.util.Log;
import com.digikala.dms.core.App;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class TypeFaceHelper {
    public static final int FONT_DEFAULT_LOCALE = 1;
    public static final int FONT_IRAN_SANS_BOLD = 5;
    public static final int FONT_IRAN_SANS_REGULAR = 4;
    public static final int FONT_ROBOTO_BOLD = 3;
    public static final int FONT_ROBOTO_REGULAR = 2;
    private static final String LANGUAGE_ENGLISH = "en";
    private static final String LANGUAGE_PERSIAN = "fa";
    private static final String TAG_DEBUG = TypeFaceHelper.class.getSimpleName();
    private static TypeFaceHelper sInstance;
    private Typeface mIranSansBoldTypeface;
    private Typeface mIranSansRegularTypeface;
    private Typeface mRobotoBoldTypeface;
    private Typeface mRobotoRegularTypeface;

    private TypeFaceHelper() {
    }

    public static synchronized TypeFaceHelper getInstance() {
        if (sInstance == null) {
            sInstance = new TypeFaceHelper();
            sInstance.init();
        }
        return sInstance;
    }

    private void init() {
        this.mRobotoRegularTypeface = Typeface.createFromAsset(App.getApplication().getAssets(), "fonts/Roboto-Regular.ttf");
        this.mRobotoBoldTypeface = Typeface.createFromAsset(App.getApplication().getAssets(), "fonts/Roboto-Bold.ttf");
        this.mIranSansRegularTypeface = Typeface.createFromAsset(App.getApplication().getAssets(), "fonts/IRANSansMobile.ttf");
        this.mIranSansBoldTypeface = Typeface.createFromAsset(App.getApplication().getAssets(), "fonts/IRANSansMobile_Bold.ttf");
    }

    public Typeface getTypeFace(int font) {
        switch (font) {
            case 1:
                return getDefaultFontBasedOnLocale();
            case 2:
                return this.mRobotoRegularTypeface;
            case 3:
                return this.mRobotoBoldTypeface;
            case 4:
                return this.mIranSansRegularTypeface;
            case 5:
                return this.mIranSansBoldTypeface;
            default:
                Log.e(TAG_DEBUG, "Can not get typeface: Invalid Font!");
                return null;
        }
    }

    private Typeface getDefaultFontBasedOnLocale() {
        String language = Locale.getDefault().getLanguage();
        if (language.equals(LANGUAGE_ENGLISH)) {
            return this.mRobotoRegularTypeface;
        }
        if (language.equals(LANGUAGE_PERSIAN)) {
            return this.mIranSansRegularTypeface;
        }
        return null;
    }
}
