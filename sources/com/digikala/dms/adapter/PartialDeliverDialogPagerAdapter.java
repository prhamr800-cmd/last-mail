package com.digikala.dms.adapter;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import com.digikala.dms.view.fragment.PartialItemCountFragment;
import com.digikala.dms.view.fragment.PartialReasonFragment;

/* JADX INFO: loaded from: classes2.dex */
public class PartialDeliverDialogPagerAdapter extends FragmentPagerAdapter {
    private int itemCount;
    private String[] rejectReasons;

    public PartialDeliverDialogPagerAdapter(FragmentManager fm, String[] rejectReasons, int itemCount) {
        super(fm);
        this.rejectReasons = rejectReasons;
        this.itemCount = itemCount;
    }

    @Override // android.support.v4.app.FragmentPagerAdapter
    public Fragment getItem(int position) {
        if (position == 0) {
            return PartialItemCountFragment.newInstance(this.itemCount);
        }
        return PartialReasonFragment.newInstance(this.rejectReasons);
    }

    @Override // android.support.v4.view.PagerAdapter
    public int getCount() {
        return 2;
    }
}
