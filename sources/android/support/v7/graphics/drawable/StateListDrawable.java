package android.support.v7.graphics.drawable;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.v4.content.res.TypedArrayUtils;
import android.support.v7.appcompat.R;
import android.support.v7.graphics.drawable.DrawableContainer;
import android.util.AttributeSet;
import android.util.StateSet;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes2.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
class StateListDrawable extends DrawableContainer {
    private static final boolean DEBUG = false;
    private static final String TAG = "StateListDrawable";
    private boolean mMutated;
    private StateListState mStateListState;

    StateListDrawable() {
        this(null, null);
    }

    public void addState(int[] stateSet, Drawable drawable) {
        if (drawable != null) {
            this.mStateListState.addStateSet(stateSet, drawable);
            onStateChange(getState());
        }
    }

    @Override // android.support.v7.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // android.support.v7.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] stateSet) {
        boolean changed = super.onStateChange(stateSet);
        int idx = this.mStateListState.indexOfStateSet(stateSet);
        if (idx < 0) {
            idx = this.mStateListState.indexOfStateSet(StateSet.WILD_CARD);
        }
        return selectDrawable(idx) || changed;
    }

    public void inflate(@NonNull Context context, @NonNull Resources r, @NonNull XmlPullParser parser, @NonNull AttributeSet attrs, @Nullable Resources.Theme theme) throws XmlPullParserException, IOException {
        TypedArray a = TypedArrayUtils.obtainAttributes(r, theme, attrs, R.styleable.StateListDrawable);
        setVisible(a.getBoolean(R.styleable.StateListDrawable_android_visible, true), true);
        updateStateFromTypedArray(a);
        updateDensity(r);
        a.recycle();
        inflateChildElements(context, r, parser, attrs, theme);
        onStateChange(getState());
    }

    private void updateStateFromTypedArray(TypedArray a) {
        StateListState state = this.mStateListState;
        if (Build.VERSION.SDK_INT >= 21) {
            state.mChangingConfigurations |= a.getChangingConfigurations();
        }
        state.mVariablePadding = a.getBoolean(R.styleable.StateListDrawable_android_variablePadding, state.mVariablePadding);
        state.mConstantSize = a.getBoolean(R.styleable.StateListDrawable_android_constantSize, state.mConstantSize);
        state.mEnterFadeDuration = a.getInt(R.styleable.StateListDrawable_android_enterFadeDuration, state.mEnterFadeDuration);
        state.mExitFadeDuration = a.getInt(R.styleable.StateListDrawable_android_exitFadeDuration, state.mExitFadeDuration);
        state.mDither = a.getBoolean(R.styleable.StateListDrawable_android_dither, state.mDither);
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00a7, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void inflateChildElements(android.content.Context r17, android.content.res.Resources r18, org.xmlpull.v1.XmlPullParser r19, android.util.AttributeSet r20, android.content.res.Resources.Theme r21) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            r16 = this;
            r0 = r16
            r1 = r20
            android.support.v7.graphics.drawable.StateListDrawable$StateListState r2 = r0.mStateListState
            int r3 = r19.getDepth()
            r4 = 1
            int r3 = r3 + r4
        Lc:
            int r5 = r19.next()
            r6 = r5
            if (r5 == r4) goto La1
            int r5 = r19.getDepth()
            r7 = r5
            if (r5 >= r3) goto L1d
            r5 = 3
            if (r6 == r5) goto La1
        L1d:
            r5 = 2
            if (r6 == r5) goto L29
        L21:
            r13 = r17
            r9 = r18
            r10 = r21
            goto L9e
        L29:
            if (r7 > r3) goto L21
            java.lang.String r8 = r19.getName()
            java.lang.String r9 = "item"
            boolean r8 = r8.equals(r9)
            if (r8 != 0) goto L38
            goto L21
        L38:
            int[] r8 = android.support.v7.appcompat.R.styleable.StateListDrawableItem
            r9 = r18
            r10 = r21
            android.content.res.TypedArray r8 = android.support.v4.content.res.TypedArrayUtils.obtainAttributes(r9, r10, r1, r8)
            r11 = 0
            int r12 = android.support.v7.appcompat.R.styleable.StateListDrawableItem_android_drawable
            r13 = -1
            int r12 = r8.getResourceId(r12, r13)
            if (r12 <= 0) goto L53
            r13 = r17
            android.graphics.drawable.Drawable r11 = android.support.v7.content.res.AppCompatResources.getDrawable(r13, r12)
            goto L55
        L53:
            r13 = r17
        L55:
            r8.recycle()
            int[] r14 = r0.extractStateSet(r1)
            if (r11 != 0) goto L9a
        L5e:
            int r15 = r19.next()
            r6 = r15
            r4 = 4
            if (r15 != r4) goto L68
            r4 = 1
            goto L5e
        L68:
            if (r6 != r5) goto L7a
            int r4 = android.os.Build.VERSION.SDK_INT
            r5 = 21
            if (r4 < r5) goto L75
            android.graphics.drawable.Drawable r11 = android.graphics.drawable.Drawable.createFromXmlInner(r18, r19, r20, r21)
            goto L9a
        L75:
            android.graphics.drawable.Drawable r11 = android.graphics.drawable.Drawable.createFromXmlInner(r18, r19, r20)
            goto L9a
        L7a:
            org.xmlpull.v1.XmlPullParserException r4 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r15 = r19.getPositionDescription()
            r5.append(r15)
            java.lang.String r15 = ": <item> tag requires a 'drawable' attribute or "
            r5.append(r15)
            java.lang.String r15 = "child tag defining a drawable"
            r5.append(r15)
            java.lang.String r5 = r5.toString()
            r4.<init>(r5)
            throw r4
        L9a:
            r2.addStateSet(r14, r11)
        L9e:
            r4 = 1
            goto Lc
        La1:
            r13 = r17
            r9 = r18
            r10 = r21
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.graphics.drawable.StateListDrawable.inflateChildElements(android.content.Context, android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):void");
    }

    int[] extractStateSet(AttributeSet attrs) {
        int numAttrs = attrs.getAttributeCount();
        int[] states = new int[numAttrs];
        int j = 0;
        for (int j2 = 0; j2 < numAttrs; j2++) {
            int stateResId = attrs.getAttributeNameResource(j2);
            if (stateResId != 0 && stateResId != 16842960 && stateResId != 16843161) {
                int j3 = j + 1;
                states[j] = attrs.getAttributeBooleanValue(j2, false) ? stateResId : -stateResId;
                j = j3;
            }
        }
        return StateSet.trimStateSet(states, j);
    }

    StateListState getStateListState() {
        return this.mStateListState;
    }

    int getStateCount() {
        return this.mStateListState.getChildCount();
    }

    int[] getStateSet(int index) {
        return this.mStateListState.mStateSets[index];
    }

    Drawable getStateDrawable(int index) {
        return this.mStateListState.getChild(index);
    }

    int getStateDrawableIndex(int[] stateSet) {
        return this.mStateListState.indexOfStateSet(stateSet);
    }

    @Override // android.support.v7.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    @NonNull
    public Drawable mutate() {
        if (!this.mMutated && super.mutate() == this) {
            this.mStateListState.mutate();
            this.mMutated = true;
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.support.v7.graphics.drawable.DrawableContainer
    public StateListState cloneConstantState() {
        return new StateListState(this.mStateListState, this, null);
    }

    @Override // android.support.v7.graphics.drawable.DrawableContainer
    void clearMutated() {
        super.clearMutated();
        this.mMutated = false;
    }

    static class StateListState extends DrawableContainer.DrawableContainerState {
        int[][] mStateSets;

        StateListState(StateListState orig, StateListDrawable owner, Resources res) {
            super(orig, owner, res);
            if (orig != null) {
                this.mStateSets = orig.mStateSets;
            } else {
                this.mStateSets = new int[getCapacity()][];
            }
        }

        @Override // android.support.v7.graphics.drawable.DrawableContainer.DrawableContainerState
        void mutate() {
            int[][] stateSets = new int[this.mStateSets.length][];
            for (int i = this.mStateSets.length - 1; i >= 0; i--) {
                stateSets[i] = this.mStateSets[i] != null ? (int[]) this.mStateSets[i].clone() : null;
            }
            this.mStateSets = stateSets;
        }

        int addStateSet(int[] stateSet, Drawable drawable) {
            int pos = addChild(drawable);
            this.mStateSets[pos] = stateSet;
            return pos;
        }

        int indexOfStateSet(int[] stateSet) {
            int[][] stateSets = this.mStateSets;
            int count = getChildCount();
            for (int i = 0; i < count; i++) {
                if (StateSet.stateSetMatches(stateSets[i], stateSet)) {
                    return i;
                }
            }
            return -1;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return new StateListDrawable(this, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable(Resources res) {
            return new StateListDrawable(this, res);
        }

        @Override // android.support.v7.graphics.drawable.DrawableContainer.DrawableContainerState
        public void growArray(int oldSize, int newSize) {
            super.growArray(oldSize, newSize);
            int[][] newStateSets = new int[newSize][];
            System.arraycopy(this.mStateSets, 0, newStateSets, 0, oldSize);
            this.mStateSets = newStateSets;
        }
    }

    @Override // android.support.v7.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    @RequiresApi(21)
    public void applyTheme(@NonNull Resources.Theme theme) {
        super.applyTheme(theme);
        onStateChange(getState());
    }

    @Override // android.support.v7.graphics.drawable.DrawableContainer
    protected void setConstantState(@NonNull DrawableContainer.DrawableContainerState state) {
        super.setConstantState(state);
        if (state instanceof StateListState) {
            this.mStateListState = (StateListState) state;
        }
    }

    StateListDrawable(StateListState state, Resources res) {
        StateListState newState = new StateListState(state, this, res);
        setConstantState(newState);
        onStateChange(getState());
    }

    StateListDrawable(@Nullable StateListState state) {
        if (state != null) {
            setConstantState(state);
        }
    }
}
