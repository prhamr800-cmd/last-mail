package com.digikala.dms.adapter;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import com.digikala.dms.view.fragment.MapFragment;
import com.digikala.dms.view.fragment.ShipmentsListFragment;

/* JADX INFO: loaded from: classes2.dex */
public class MainPagesAdapter extends FragmentPagerAdapter {
    private static final int SIZE_PAGES = 3;

    public MainPagesAdapter(FragmentManager fm) {
        super(fm);
    }

    @Override // android.support.v4.app.FragmentPagerAdapter
    public Fragment getItem(int position) {
        switch (position) {
            case 0:
                Fragment fragment = ShipmentsListFragment.INSTANCE.newInstance(ShipmentsListFragment.INSTANCE.getWHICH_LIST_CLOSE());
                return fragment;
            case 1:
                Fragment fragment2 = ShipmentsListFragment.INSTANCE.newInstance(ShipmentsListFragment.INSTANCE.getWHICH_LIST_OPEN());
                return fragment2;
            case 2:
                Fragment fragment3 = MapFragment.newInstance();
                return fragment3;
            default:
                return null;
        }
    }

    @Override // android.support.v4.view.PagerAdapter
    public int getCount() {
        return 3;
    }

    @Override // android.support.v4.view.PagerAdapter
    public CharSequence getPageTitle(int position) {
        return null;
    }
}
