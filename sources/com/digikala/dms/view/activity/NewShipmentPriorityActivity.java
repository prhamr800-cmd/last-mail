package com.digikala.dms.view.activity;

import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.TabLayout;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v7.app.AppCompatActivity;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import com.digikala.dms.R;
import com.digikala.dms.model.domain.Shipment;
import com.digikala.dms.util.Util;
import com.digikala.dms.view.custom.XeiTextView;
import com.digikala.dms.view.fragment.DragPriorityFragment;
import com.digikala.dms.view.fragment.LoginFragment;
import com.digikala.dms.view.fragment.SwipePriorityFragment;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: NewShipmentPriorityActivity.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 2}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\b\u0018\u0000 !2\u00020\u00012\u00020\u0002:\u0002!\"B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000f\u001a\u00020\u0010H\u0002J\b\u0010\u0011\u001a\u00020\u0010H\u0002J\u0012\u0010\u0012\u001a\u00020\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0014J\u0010\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J \u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0017H\u0016J\u0010\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u0017H\u0016J\b\u0010\u001e\u001a\u00020\u0010H\u0002J\u000e\u0010\u001f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u0017R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0004\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006#"}, d2 = {"Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;", "Landroid/support/v7/app/AppCompatActivity;", "Landroid/support/v4/view/ViewPager$OnPageChangeListener;", "()V", "isPopupOpen", "", "()Z", "setPopupOpen", "(Z)V", "mPopupWindow", "Landroid/widget/PopupWindow;", "getMPopupWindow", "()Landroid/widget/PopupWindow;", "setMPopupWindow", "(Landroid/widget/PopupWindow;)V", "createActionBarMenu", "", "loadDeliveryProfile", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onPageScrollStateChanged", "state", "", "onPageScrolled", "position", "positionOffset", "", "positionOffsetPixels", "onPageSelected", "showPopupWindows", "updateTabLayout", "allOrdersCount", "Companion", "PriorityPagerAdapter", "app_release"}, k = 1, mv = {1, 1, 11})
public final class NewShipmentPriorityActivity extends AppCompatActivity implements ViewPager.OnPageChangeListener {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private static ArrayList<Shipment> mSwipedShipment = new ArrayList<>();
    private static int offlineShipmentCount;
    private static PriorityPagerAdapter pagerAdapter;

    @NotNull
    public static Button priority_submit_button;
    private HashMap _$_findViewCache;
    private boolean isPopupOpen;

    @Nullable
    private PopupWindow mPopupWindow;

    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    @NotNull
    public static final /* synthetic */ PriorityPagerAdapter access$getPagerAdapter$cp() {
        PriorityPagerAdapter priorityPagerAdapter = pagerAdapter;
        if (priorityPagerAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pagerAdapter");
        }
        return priorityPagerAdapter;
    }

    @NotNull
    public static final /* synthetic */ Button access$getPriority_submit_button$cp() {
        Button button = priority_submit_button;
        if (button == null) {
            Intrinsics.throwUninitializedPropertyAccessException("priority_submit_button");
        }
        return button;
    }

    /* JADX INFO: compiled from: NewShipmentPriorityActivity.kt */
    @Metadata(bv = {1, 0, 2}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R \u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u0012\u0010\u0010\u001a\u00060\u0011R\u00020\u0012X\u0082.¢\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$Companion;", "", "()V", "mSwipedShipment", "Ljava/util/ArrayList;", "Lcom/digikala/dms/model/domain/Shipment;", "getMSwipedShipment", "()Ljava/util/ArrayList;", "setMSwipedShipment", "(Ljava/util/ArrayList;)V", "offlineShipmentCount", "", "getOfflineShipmentCount", "()I", "setOfflineShipmentCount", "(I)V", "pagerAdapter", "Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$PriorityPagerAdapter;", "Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;", "priority_submit_button", "Landroid/widget/Button;", "getPriority_submit_button", "()Landroid/widget/Button;", "setPriority_submit_button", "(Landroid/widget/Button;)V", "app_release"}, k = 1, mv = {1, 1, 11})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker $constructor_marker) {
            this();
        }

        @NotNull
        public final ArrayList<Shipment> getMSwipedShipment() {
            return NewShipmentPriorityActivity.mSwipedShipment;
        }

        public final void setMSwipedShipment(@NotNull ArrayList<Shipment> arrayList) {
            Intrinsics.checkParameterIsNotNull(arrayList, "<set-?>");
            NewShipmentPriorityActivity.mSwipedShipment = arrayList;
        }

        @NotNull
        public final Button getPriority_submit_button() {
            return NewShipmentPriorityActivity.access$getPriority_submit_button$cp();
        }

        public final void setPriority_submit_button(@NotNull Button button) {
            Intrinsics.checkParameterIsNotNull(button, "<set-?>");
            NewShipmentPriorityActivity.priority_submit_button = button;
        }

        public final int getOfflineShipmentCount() {
            return NewShipmentPriorityActivity.offlineShipmentCount;
        }

        public final void setOfflineShipmentCount(int i) {
            NewShipmentPriorityActivity.offlineShipmentCount = i;
        }
    }

    /* JADX INFO: renamed from: isPopupOpen, reason: from getter */
    public final boolean getIsPopupOpen() {
        return this.isPopupOpen;
    }

    public final void setPopupOpen(boolean z) {
        this.isPopupOpen = z;
    }

    @Nullable
    public final PopupWindow getMPopupWindow() {
        return this.mPopupWindow;
    }

    public final void setMPopupWindow(@Nullable PopupWindow popupWindow) {
        this.mPopupWindow = popupWindow;
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_shipment_priority);
        Button priority_submit_btn = (Button) _$_findCachedViewById(R.id.priority_submit_btn);
        Intrinsics.checkExpressionValueIsNotNull(priority_submit_btn, "priority_submit_btn");
        priority_submit_button = priority_submit_btn;
        mSwipedShipment = new ArrayList<>();
        ((ViewPager) _$_findCachedViewById(R.id.priority_activity_vp)).addOnPageChangeListener(this);
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Intrinsics.checkExpressionValueIsNotNull(supportFragmentManager, "supportFragmentManager");
        pagerAdapter = new PriorityPagerAdapter(this, supportFragmentManager);
        ViewPager priority_activity_vp = (ViewPager) _$_findCachedViewById(R.id.priority_activity_vp);
        Intrinsics.checkExpressionValueIsNotNull(priority_activity_vp, "priority_activity_vp");
        PriorityPagerAdapter priorityPagerAdapter = pagerAdapter;
        if (priorityPagerAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pagerAdapter");
        }
        priority_activity_vp.setAdapter(priorityPagerAdapter);
        ViewPager priority_activity_vp2 = (ViewPager) _$_findCachedViewById(R.id.priority_activity_vp);
        Intrinsics.checkExpressionValueIsNotNull(priority_activity_vp2, "priority_activity_vp");
        priority_activity_vp2.setCurrentItem(1);
        ((TabLayout) _$_findCachedViewById(R.id.appbarMain_tabLayout_mainPages)).setupWithViewPager((ViewPager) _$_findCachedViewById(R.id.priority_activity_vp));
        int i = 0;
        TabLayout appbarMain_tabLayout_mainPages = (TabLayout) _$_findCachedViewById(R.id.appbarMain_tabLayout_mainPages);
        Intrinsics.checkExpressionValueIsNotNull(appbarMain_tabLayout_mainPages, "appbarMain_tabLayout_mainPages");
        int tabCount = appbarMain_tabLayout_mainPages.getTabCount();
        if (tabCount >= 0) {
            while (true) {
                TabLayout.Tab tab = ((TabLayout) _$_findCachedViewById(R.id.appbarMain_tabLayout_mainPages)).getTabAt(i);
                if (tab != null) {
                    PriorityPagerAdapter priorityPagerAdapter2 = pagerAdapter;
                    if (priorityPagerAdapter2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("pagerAdapter");
                    }
                    tab.setCustomView(priorityPagerAdapter2.getTabView(i));
                }
                if (i == tabCount) {
                    break;
                } else {
                    i++;
                }
            }
        }
        createActionBarMenu();
        loadDeliveryProfile();
        ((ViewPager) _$_findCachedViewById(R.id.priority_activity_vp)).addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.digikala.dms.view.activity.NewShipmentPriorityActivity.onCreate.1
            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int state) {
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageSelected(int position) {
                if (position == 0) {
                    try {
                        if (NewShipmentPriorityActivity.access$getPagerAdapter$cp().getRegisteredFragment(position) != null) {
                            Fragment registeredFragment = NewShipmentPriorityActivity.access$getPagerAdapter$cp().getRegisteredFragment(position);
                            if (registeredFragment == null) {
                                throw new TypeCastException("null cannot be cast to non-null type com.digikala.dms.view.fragment.DragPriorityFragment");
                            }
                            ((DragPriorityFragment) registeredFragment).updatePriorityAdapterData();
                        }
                    } catch (Exception e) {
                    }
                }
            }
        });
    }

    public final void updateTabLayout(int allOrdersCount) {
        XeiTextView xeiTextView;
        XeiTextView xeiTextView2;
        _$_findCachedViewById(R.id.appbarMain_tabLayout_mainPages);
        int i = 0;
        ((TabLayout) _$_findCachedViewById(R.id.appbarMain_tabLayout_mainPages)).setupWithViewPager((ViewPager) _$_findCachedViewById(R.id.priority_activity_vp));
        TabLayout appbarMain_tabLayout_mainPages = (TabLayout) _$_findCachedViewById(R.id.appbarMain_tabLayout_mainPages);
        Intrinsics.checkExpressionValueIsNotNull(appbarMain_tabLayout_mainPages, "appbarMain_tabLayout_mainPages");
        int tabCount = appbarMain_tabLayout_mainPages.getTabCount();
        if (tabCount < 0) {
            return;
        }
        while (true) {
            TabLayout.Tab tab = ((TabLayout) _$_findCachedViewById(R.id.appbarMain_tabLayout_mainPages)).getTabAt(i);
            if (tab != null) {
                PriorityPagerAdapter priorityPagerAdapter = pagerAdapter;
                if (priorityPagerAdapter == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("pagerAdapter");
                }
                tab.setCustomView(priorityPagerAdapter.getTabView(i));
            }
            View $receiver = tab != null ? tab.getCustomView() : null;
            switch (i) {
                case 0:
                    if ($receiver != null && (xeiTextView = (XeiTextView) $receiver.findViewById(R.id.tab_layout_name_count)) != null) {
                        xeiTextView.setText(String.valueOf(mSwipedShipment.size()));
                    }
                    break;
                case 1:
                    if ($receiver != null && (xeiTextView2 = (XeiTextView) $receiver.findViewById(R.id.tab_layout_name_count)) != null) {
                        xeiTextView2.setText(String.valueOf(allOrdersCount));
                    }
                    break;
            }
            if (i == tabCount) {
                return;
            } else {
                i++;
            }
        }
    }

    @Override // android.support.v4.view.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int state) {
    }

    @Override // android.support.v4.view.ViewPager.OnPageChangeListener
    public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
    }

    @Override // android.support.v4.view.ViewPager.OnPageChangeListener
    public void onPageSelected(int position) {
    }

    /* JADX WARN: Removed duplicated region for block: B:83:0x016a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void loadDeliveryProfile() {
        /*
            Method dump skipped, instruction units count: 404
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.digikala.dms.view.activity.NewShipmentPriorityActivity.loadDeliveryProfile():void");
    }

    /* JADX INFO: compiled from: NewShipmentPriorityActivity.kt */
    @Metadata(bv = {1, 0, 2}, d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0080\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J \u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\b\u0010\u001c\u001a\u00020\u0019H\u0016J\u0010\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u001f\u001a\u00020\u0019J\u000e\u0010 \u001a\u00020!2\u0006\u0010\u0018\u001a\u00020\u0019J\u0018\u0010\"\u001a\u00020\u001b2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016R \u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\"\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006#"}, d2 = {"Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity$PriorityPagerAdapter;", "Landroid/support/v4/app/FragmentStatePagerAdapter;", "fm", "Landroid/support/v4/app/FragmentManager;", "(Lcom/digikala/dms/view/activity/NewShipmentPriorityActivity;Landroid/support/v4/app/FragmentManager;)V", "registeredFragments", "Landroid/util/SparseArray;", "Landroid/support/v4/app/Fragment;", "getRegisteredFragments", "()Landroid/util/SparseArray;", "setRegisteredFragments", "(Landroid/util/SparseArray;)V", "titleArray", "", "", "getTitleArray", "()[Ljava/lang/String;", "setTitleArray", "([Ljava/lang/String;)V", "[Ljava/lang/String;", "destroyItem", "", "container", "Landroid/view/ViewGroup;", "position", "", "object", "", "getCount", "getItem", "getRegisteredFragment", "pos", "getTabView", "Landroid/view/View;", "instantiateItem", "app_release"}, k = 1, mv = {1, 1, 11})
    public final class PriorityPagerAdapter extends FragmentStatePagerAdapter {

        @NotNull
        private SparseArray<Fragment> registeredFragments;
        final /* synthetic */ NewShipmentPriorityActivity this$0;

        @NotNull
        private String[] titleArray;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PriorityPagerAdapter(@NotNull NewShipmentPriorityActivity $outer, FragmentManager fm) {
            super(fm);
            Intrinsics.checkParameterIsNotNull(fm, "fm");
            this.this$0 = $outer;
            String[] stringArray = $outer.getResources().getStringArray(R.array.priority_tab_name);
            Intrinsics.checkExpressionValueIsNotNull(stringArray, "resources.getStringArray….array.priority_tab_name)");
            this.titleArray = stringArray;
            this.registeredFragments = new SparseArray<>();
        }

        @NotNull
        public final String[] getTitleArray() {
            return this.titleArray;
        }

        public final void setTitleArray(@NotNull String[] strArr) {
            Intrinsics.checkParameterIsNotNull(strArr, "<set-?>");
            this.titleArray = strArr;
        }

        @NotNull
        public final SparseArray<Fragment> getRegisteredFragments() {
            return this.registeredFragments;
        }

        public final void setRegisteredFragments(@NotNull SparseArray<Fragment> sparseArray) {
            Intrinsics.checkParameterIsNotNull(sparseArray, "<set-?>");
            this.registeredFragments = sparseArray;
        }

        @Override // android.support.v4.app.FragmentStatePagerAdapter
        @NotNull
        public Fragment getItem(int position) {
            if (position == 0) {
                return DragPriorityFragment.INSTANCE.newInstance();
            }
            return SwipePriorityFragment.INSTANCE.newInstance();
        }

        @Override // android.support.v4.app.FragmentStatePagerAdapter, android.support.v4.view.PagerAdapter
        @NotNull
        public Object instantiateItem(@NotNull ViewGroup container, int position) {
            Intrinsics.checkParameterIsNotNull(container, "container");
            Object objInstantiateItem = super.instantiateItem(container, position);
            if (objInstantiateItem == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.support.v4.app.Fragment");
            }
            Fragment fragment = (Fragment) objInstantiateItem;
            this.registeredFragments.put(position, fragment);
            return fragment;
        }

        @Override // android.support.v4.app.FragmentStatePagerAdapter, android.support.v4.view.PagerAdapter
        public void destroyItem(@NotNull ViewGroup container, int position, @NotNull Object object) {
            Intrinsics.checkParameterIsNotNull(container, "container");
            Intrinsics.checkParameterIsNotNull(object, "object");
            this.registeredFragments.remove(position);
            super.destroyItem(container, position, object);
        }

        @Nullable
        public final Fragment getRegisteredFragment(int pos) {
            return this.registeredFragments.get(pos);
        }

        @Override // android.support.v4.view.PagerAdapter
        public int getCount() {
            return 2;
        }

        @NotNull
        public final View getTabView(int position) {
            View v = LayoutInflater.from(this.this$0).inflate(R.layout.priority_tab_layout, (ViewGroup) null);
            Intrinsics.checkExpressionValueIsNotNull(v, "v");
            XeiTextView xeiTextView = (XeiTextView) v.findViewById(R.id.tab_layout_name);
            Intrinsics.checkExpressionValueIsNotNull(xeiTextView, "v.tab_layout_name");
            xeiTextView.setText(this.titleArray[position]);
            XeiTextView xeiTextView2 = (XeiTextView) v.findViewById(R.id.tab_layout_name_count);
            Intrinsics.checkExpressionValueIsNotNull(xeiTextView2, "v.tab_layout_name_count");
            xeiTextView2.setText(String.valueOf(NewShipmentPriorityActivity.INSTANCE.getMSwipedShipment().size()));
            return v;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showPopupWindows() {
        this.isPopupOpen = true;
        Object systemService = getSystemService("layout_inflater");
        if (systemService == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.LayoutInflater");
        }
        LayoutInflater layoutInflater = (LayoutInflater) systemService;
        View popupView = layoutInflater.inflate(R.layout.popup_windows, (ViewGroup) null);
        LinearLayout settingLayout = (LinearLayout) popupView.findViewById(R.id.settingLayout);
        LinearLayout logoutLayout = (LinearLayout) popupView.findViewById(R.id.logoutLayout);
        LinearLayout scanLayout = (LinearLayout) popupView.findViewById(R.id.scanLayout);
        Intrinsics.checkExpressionValueIsNotNull(scanLayout, "scanLayout");
        scanLayout.setVisibility(8);
        settingLayout.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.activity.NewShipmentPriorityActivity.showPopupWindows.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View it) {
                NewShipmentPriorityActivity.this.setPopupOpen(false);
                PopupWindow mPopupWindow = NewShipmentPriorityActivity.this.getMPopupWindow();
                if (mPopupWindow != null) {
                    mPopupWindow.dismiss();
                }
                NewShipmentPriorityActivity.this.startActivity(new Intent(NewShipmentPriorityActivity.this, (Class<?>) SettingActivity.class));
            }
        });
        logoutLayout.setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.activity.NewShipmentPriorityActivity.showPopupWindows.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View it) {
                Util.setShipmentNextStepIsPriority(NewShipmentPriorityActivity.this.getApplicationContext(), true);
                PopupWindow mPopupWindow = NewShipmentPriorityActivity.this.getMPopupWindow();
                if (mPopupWindow != null) {
                    mPopupWindow.dismiss();
                }
                NewShipmentPriorityActivity.this.setPopupOpen(false);
                LoginFragment.logout();
            }
        });
        this.mPopupWindow = new PopupWindow(popupView, -2, -2);
        PopupWindow popupWindow = this.mPopupWindow;
        if (popupWindow != null) {
            popupWindow.setTouchable(true);
        }
        PopupWindow popupWindow2 = this.mPopupWindow;
        if (popupWindow2 != null) {
            popupWindow2.setOutsideTouchable(false);
        }
        PopupWindow popupWindow3 = this.mPopupWindow;
        if (popupWindow3 != null) {
            XeiTextView xeiTextView = (XeiTextView) _$_findCachedViewById(R.id.appbarMain_xeiTextView_logoutBtn);
            XeiTextView appbarMain_xeiTextView_logoutBtn = (XeiTextView) _$_findCachedViewById(R.id.appbarMain_xeiTextView_logoutBtn);
            Intrinsics.checkExpressionValueIsNotNull(appbarMain_xeiTextView_logoutBtn, "appbarMain_xeiTextView_logoutBtn");
            int i = -appbarMain_xeiTextView_logoutBtn.getWidth();
            XeiTextView appbarMain_xeiTextView_logoutBtn2 = (XeiTextView) _$_findCachedViewById(R.id.appbarMain_xeiTextView_logoutBtn);
            Intrinsics.checkExpressionValueIsNotNull(appbarMain_xeiTextView_logoutBtn2, "appbarMain_xeiTextView_logoutBtn");
            popupWindow3.showAsDropDown(xeiTextView, i, -appbarMain_xeiTextView_logoutBtn2.getHeight());
        }
        View dark_layer = _$_findCachedViewById(R.id.dark_layer);
        Intrinsics.checkExpressionValueIsNotNull(dark_layer, "dark_layer");
        dark_layer.setVisibility(0);
        _$_findCachedViewById(R.id.dark_layer).setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.activity.NewShipmentPriorityActivity.showPopupWindows.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View it) {
                NewShipmentPriorityActivity.this.setPopupOpen(false);
                PopupWindow mPopupWindow = NewShipmentPriorityActivity.this.getMPopupWindow();
                if (mPopupWindow != null) {
                    mPopupWindow.dismiss();
                }
                View dark_layer2 = NewShipmentPriorityActivity.this._$_findCachedViewById(R.id.dark_layer);
                Intrinsics.checkExpressionValueIsNotNull(dark_layer2, "dark_layer");
                dark_layer2.setVisibility(8);
            }
        });
    }

    private final void createActionBarMenu() {
        ((XeiTextView) _$_findCachedViewById(R.id.appbarMain_xeiTextView_logoutBtn)).setOnClickListener(new View.OnClickListener() { // from class: com.digikala.dms.view.activity.NewShipmentPriorityActivity.createActionBarMenu.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View it) {
                if (!NewShipmentPriorityActivity.this.getIsPopupOpen()) {
                    NewShipmentPriorityActivity.this.showPopupWindows();
                    return;
                }
                PopupWindow mPopupWindow = NewShipmentPriorityActivity.this.getMPopupWindow();
                if (mPopupWindow != null) {
                    mPopupWindow.dismiss();
                }
                NewShipmentPriorityActivity.this.setPopupOpen(false);
            }
        });
    }
}
