package org.zakariya.stickyheaders;

import android.content.Context;
import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import android.support.v7.widget.LinearSmoothScroller;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.View;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.zakariya.stickyheaders.SectioningAdapter;

/* JADX INFO: loaded from: classes2.dex */
public class StickyHeaderLayoutManager extends RecyclerView.LayoutManager {
    private static final String TAG = StickyHeaderLayoutManager.class.getSimpleName();
    SectioningAdapter adapter;
    int firstViewAdapterPosition;
    int firstViewTop;
    HeaderPositionChangedCallback headerPositionChangedCallback;
    SavedState pendingSavedState;
    HashSet<View> headerViews = new HashSet<>();
    HashMap<Integer, HeaderPosition> headerPositionsBySection = new HashMap<>();
    int scrollTargetAdapterPosition = -1;

    public enum HeaderPosition {
        NONE,
        NATURAL,
        STICKY,
        TRAILING
    }

    public interface HeaderPositionChangedCallback {
        void onHeaderPositionChanged(int i, View view, HeaderPosition headerPosition, HeaderPosition headerPosition2);
    }

    public HeaderPositionChangedCallback getHeaderPositionChangedCallback() {
        return this.headerPositionChangedCallback;
    }

    public void setHeaderPositionChangedCallback(HeaderPositionChangedCallback headerPositionChangedCallback) {
        this.headerPositionChangedCallback = headerPositionChangedCallback;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onAdapterChanged(RecyclerView.Adapter oldAdapter, RecyclerView.Adapter newAdapter) {
        super.onAdapterChanged(oldAdapter, newAdapter);
        try {
            this.adapter = (SectioningAdapter) newAdapter;
            removeAllViews();
            this.headerViews.clear();
            this.headerPositionsBySection.clear();
        } catch (ClassCastException e) {
            throw new ClassCastException("StickyHeaderLayoutManager must be used with a RecyclerView where the adapter is a kind of SectioningAdapter");
        }
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onAttachedToWindow(RecyclerView view) {
        super.onAttachedToWindow(view);
        try {
            this.adapter = (SectioningAdapter) view.getAdapter();
        } catch (ClassCastException e) {
            throw new ClassCastException("StickyHeaderLayoutManager must be used with a RecyclerView where the adapter is a kind of SectioningAdapter");
        }
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onDetachedFromWindow(RecyclerView view, RecyclerView.Recycler recycler) {
        super.onDetachedFromWindow(view, recycler);
        updateFirstAdapterPosition();
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public Parcelable onSaveInstanceState() {
        if (this.pendingSavedState != null) {
            return this.pendingSavedState;
        }
        if (this.adapter != null) {
            updateFirstAdapterPosition();
        }
        SavedState state = new SavedState();
        state.firstViewAdapterPosition = this.firstViewAdapterPosition;
        state.firstViewTop = this.firstViewTop;
        return state;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onRestoreInstanceState(Parcelable state) {
        if (state == null) {
            return;
        }
        if (state instanceof SavedState) {
            this.pendingSavedState = (SavedState) state;
            requestLayout();
            return;
        }
        Log.e(TAG, "onRestoreInstanceState: invalid saved state class, expected: " + SavedState.class.getCanonicalName() + " got: " + state.getClass().getCanonicalName());
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        View v;
        int height;
        if (this.adapter == null) {
            return;
        }
        if (this.scrollTargetAdapterPosition >= 0) {
            this.firstViewAdapterPosition = this.scrollTargetAdapterPosition;
            this.firstViewTop = 0;
            this.scrollTargetAdapterPosition = -1;
        } else if (this.pendingSavedState != null && this.pendingSavedState.isValid()) {
            this.firstViewAdapterPosition = this.pendingSavedState.firstViewAdapterPosition;
            this.firstViewTop = this.pendingSavedState.firstViewTop;
            this.pendingSavedState = null;
        } else {
            updateFirstAdapterPosition();
        }
        int top = this.firstViewTop;
        this.headerViews.clear();
        this.headerPositionsBySection.clear();
        detachAndScrapAttachedViews(recycler);
        int left = getPaddingLeft();
        int right = getWidth() - getPaddingRight();
        int parentBottom = getHeight() - getPaddingBottom();
        if (this.firstViewAdapterPosition > state.getItemCount()) {
            this.firstViewAdapterPosition = 0;
        }
        int adapterPosition = this.firstViewAdapterPosition;
        int top2 = top;
        int totalVendedHeight = 0;
        while (true) {
            int adapterPosition2 = adapterPosition;
            if (adapterPosition2 >= state.getItemCount()) {
                break;
            }
            View v2 = recycler.getViewForPosition(adapterPosition2);
            addView(v2);
            measureChildWithMargins(v2, 0, 0);
            int itemViewType = getViewBaseType(v2);
            if (itemViewType == 0) {
                this.headerViews.add(v2);
                height = getDecoratedMeasuredHeight(v2);
                int i = top2;
                v = v2;
                layoutDecorated(v2, left, i, right, top2 + height);
                adapterPosition2++;
                View ghostHeader = recycler.getViewForPosition(adapterPosition2);
                addView(ghostHeader);
                layoutDecorated(ghostHeader, left, i, right, top2 + height);
            } else {
                v = v2;
                if (itemViewType != 1) {
                    height = getDecoratedMeasuredHeight(v);
                    layoutDecorated(v, left, top2, right, top2 + height);
                } else {
                    View headerView = recycler.getViewForPosition(adapterPosition2 - 1);
                    this.headerViews.add(headerView);
                    addView(headerView);
                    measureChildWithMargins(headerView, 0, 0);
                    height = getDecoratedMeasuredHeight(headerView);
                    int i2 = top2;
                    layoutDecorated(headerView, left, i2, right, top2 + height);
                    layoutDecorated(v, left, i2, right, top2 + height);
                }
            }
            top2 += height;
            totalVendedHeight += height;
            if (v.getBottom() >= parentBottom) {
                break;
            } else {
                adapterPosition = adapterPosition2 + 1;
            }
        }
        int innerHeight = getHeight() - (getPaddingTop() + getPaddingBottom());
        if (totalVendedHeight < innerHeight) {
            scrollVerticallyBy(totalVendedHeight - innerHeight, recycler, null);
        } else {
            updateHeaderPositions(recycler);
        }
    }

    View createSectionHeaderIfNeeded(RecyclerView.Recycler recycler, int sectionIndex) {
        if (this.adapter.doesSectionHaveHeader(sectionIndex)) {
            int n = getChildCount();
            for (int i = 0; i < n; i++) {
                View view = getChildAt(i);
                if (getViewBaseType(view) == 0 && getViewSectionIndex(view) == sectionIndex) {
                    return view;
                }
            }
            int headerAdapterPosition = this.adapter.getAdapterPositionForSectionHeader(sectionIndex);
            View headerView = recycler.getViewForPosition(headerAdapterPosition);
            this.headerViews.add(headerView);
            addView(headerView);
            measureChildWithMargins(headerView, 0, 0);
            return headerView;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00c3, code lost:
    
        r21 = r5;
     */
    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int scrollVerticallyBy(int r27, android.support.v7.widget.RecyclerView.Recycler r28, android.support.v7.widget.RecyclerView.State r29) {
        /*
            Method dump skipped, instruction units count: 456
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: org.zakariya.stickyheaders.StickyHeaderLayoutManager.scrollVerticallyBy(int, android.support.v7.widget.RecyclerView$Recycler, android.support.v7.widget.RecyclerView$State):int");
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-1, -2);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        return true;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int position) {
        if (position < 0 || position > getItemCount()) {
            throw new IndexOutOfBoundsException("adapter position out of range");
        }
        this.scrollTargetAdapterPosition = position;
        this.pendingSavedState = null;
        requestLayout();
    }

    @Nullable
    public SectioningAdapter.ItemViewHolder getFirstVisibleItemViewHolder(boolean fullyVisibleOnly) {
        return (SectioningAdapter.ItemViewHolder) getFirstVisibleViewHolderOfType(2, fullyVisibleOnly);
    }

    @Nullable
    public SectioningAdapter.HeaderViewHolder getFirstVisibleHeaderViewHolder(boolean fullyVisibleOnly) {
        return (SectioningAdapter.HeaderViewHolder) getFirstVisibleViewHolderOfType(0, fullyVisibleOnly);
    }

    @Nullable
    public SectioningAdapter.FooterViewHolder getFirstVisibleFooterViewHolder(boolean fullyVisibleOnly) {
        return (SectioningAdapter.FooterViewHolder) getFirstVisibleViewHolderOfType(3, fullyVisibleOnly);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0048  */
    @android.support.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    org.zakariya.stickyheaders.SectioningAdapter.ViewHolder getFirstVisibleViewHolderOfType(int r11, boolean r12) {
        /*
            r10 = this;
            int r0 = r10.getChildCount()
            r1 = 0
            if (r0 != 0) goto L8
            return r1
        L8:
            r0 = 0
            if (r11 == 0) goto L18
            r2 = 0
            org.zakariya.stickyheaders.SectioningAdapter$HeaderViewHolder r2 = r10.getFirstVisibleHeaderViewHolder(r2)
            if (r2 == 0) goto L18
            android.view.View r3 = r2.itemView
            int r0 = r10.getDecoratedBottom(r3)
        L18:
            r2 = 0
            r3 = 2147483647(0x7fffffff, float:NaN)
            r4 = 0
            int r5 = r10.getChildCount()
        L21:
            if (r4 >= r5) goto L4f
            android.view.View r6 = r10.getChildAt(r4)
            int r7 = r10.getViewAdapterPosition(r6)
            r8 = -1
            if (r7 != r8) goto L2f
            goto L4c
        L2f:
            int r7 = r10.getViewBaseType(r6)
            if (r7 == r11) goto L36
            goto L4c
        L36:
            int r7 = r10.getDecoratedTop(r6)
            int r8 = r10.getDecoratedBottom(r6)
            if (r12 == 0) goto L43
            if (r7 >= r0) goto L48
            goto L4c
        L43:
            int r9 = r0 + 1
            if (r8 > r9) goto L48
            goto L4c
        L48:
            if (r7 >= r3) goto L4c
            r3 = r7
            r2 = r6
        L4c:
            int r4 = r4 + 1
            goto L21
        L4f:
            if (r2 == 0) goto L56
            org.zakariya.stickyheaders.SectioningAdapter$ViewHolder r1 = r10.getViewViewHolder(r2)
        L56:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.zakariya.stickyheaders.StickyHeaderLayoutManager.getFirstVisibleViewHolderOfType(int, boolean):org.zakariya.stickyheaders.SectioningAdapter$ViewHolder");
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int position) {
        if (position < 0 || position > getItemCount()) {
            throw new IndexOutOfBoundsException("adapter position out of range");
        }
        this.pendingSavedState = null;
        View firstVisibleChild = recyclerView.getChildAt(0);
        int itemHeight = getEstimatedItemHeightForSmoothScroll(recyclerView);
        int currentPosition = recyclerView.getChildAdapterPosition(firstVisibleChild);
        int distanceInPixels = Math.abs((currentPosition - position) * itemHeight);
        if (distanceInPixels == 0) {
            distanceInPixels = (int) Math.abs(firstVisibleChild.getY());
        }
        Context context = recyclerView.getContext();
        SmoothScroller scroller = new SmoothScroller(context, distanceInPixels);
        scroller.setTargetPosition(position);
        startSmoothScroll(scroller);
    }

    int getEstimatedItemHeightForSmoothScroll(RecyclerView recyclerView) {
        int height = 0;
        int n = recyclerView.getChildCount();
        for (int i = 0; i < n; i++) {
            height = Math.max(getDecoratedMeasuredHeight(recyclerView.getChildAt(i)), height);
        }
        return height;
    }

    int computeScrollVectorForPosition(int targetPosition) {
        updateFirstAdapterPosition();
        if (targetPosition > this.firstViewAdapterPosition) {
            return 1;
        }
        if (targetPosition < this.firstViewAdapterPosition) {
            return -1;
        }
        return 0;
    }

    void recycleViewsOutOfBounds(RecyclerView.Recycler recycler) {
        int height = getHeight();
        int numChildren = getChildCount();
        Set<Integer> remainingSections = new HashSet<>();
        Set<View> viewsToRecycle = new HashSet<>();
        for (int i = 0; i < numChildren; i++) {
            View view = getChildAt(i);
            if (!isViewRecycled(view) && getViewBaseType(view) != 0) {
                if (getDecoratedBottom(view) < 0 || getDecoratedTop(view) > height) {
                    viewsToRecycle.add(view);
                } else {
                    remainingSections.add(Integer.valueOf(getViewSectionIndex(view)));
                }
            }
        }
        for (int i2 = 0; i2 < numChildren; i2++) {
            View view2 = getChildAt(i2);
            if (!isViewRecycled(view2)) {
                int sectionIndex = getViewSectionIndex(view2);
                if (getViewBaseType(view2) == 0 && !remainingSections.contains(Integer.valueOf(sectionIndex))) {
                    float translationY = view2.getTranslationY();
                    if (getDecoratedBottom(view2) + translationY < 0.0f || getDecoratedTop(view2) + translationY > height) {
                        viewsToRecycle.add(view2);
                        this.headerViews.remove(view2);
                        this.headerPositionsBySection.remove(Integer.valueOf(sectionIndex));
                    }
                }
            }
        }
        Iterator<View> it = viewsToRecycle.iterator();
        while (it.hasNext()) {
            removeAndRecycleView(it.next(), recycler);
        }
        updateFirstAdapterPosition();
    }

    View getTopmostChildView() {
        int t;
        if (getChildCount() == 0) {
            return null;
        }
        View topmostView = null;
        int top = Integer.MAX_VALUE;
        int e = getChildCount();
        for (int i = 0; i < e; i++) {
            View v = getChildAt(i);
            if (getViewAdapterPosition(v) != -1 && getViewBaseType(v) != 0 && (t = getDecoratedTop(v)) < top) {
                top = t;
                topmostView = v;
            }
        }
        return topmostView;
    }

    View getBottommostChildView() {
        int b;
        if (getChildCount() == 0) {
            return null;
        }
        View bottommostView = null;
        int bottom = Integer.MIN_VALUE;
        int e = getChildCount();
        for (int i = 0; i < e; i++) {
            View v = getChildAt(i);
            if (getViewAdapterPosition(v) != -1 && getViewBaseType(v) != 0 && (b = getDecoratedBottom(v)) > bottom) {
                bottom = b;
                bottommostView = v;
            }
        }
        return bottommostView;
    }

    int updateFirstAdapterPosition() {
        if (getChildCount() == 0) {
            this.firstViewAdapterPosition = 0;
            this.firstViewTop = getPaddingTop();
            return this.firstViewTop;
        }
        View topmostView = getTopmostChildView();
        if (topmostView != null) {
            this.firstViewAdapterPosition = getViewAdapterPosition(topmostView);
            this.firstViewTop = Math.min(topmostView.getTop(), getPaddingTop());
            return this.firstViewTop;
        }
        return this.firstViewTop;
    }

    void updateHeaderPositions(RecyclerView.Recycler recycler) {
        int ghostHeaderTop;
        int type;
        Set<Integer> visitedSections = new HashSet<>();
        int n = getChildCount();
        for (int i = 0; i < n; i++) {
            int sectionIndex = getViewSectionIndex(getChildAt(i));
            if (visitedSections.add(Integer.valueOf(sectionIndex))) {
                createSectionHeaderIfNeeded(recycler, sectionIndex);
            }
        }
        int left = getPaddingLeft();
        int right = getWidth() - getPaddingRight();
        for (View headerView : this.headerViews) {
            int sectionIndex2 = getViewSectionIndex(headerView);
            int n2 = getChildCount();
            View ghostHeader = null;
            View firstViewInNextSection = null;
            for (int i2 = 0; i2 < n2; i2++) {
                View view = getChildAt(i2);
                if (!isViewRecycled(view) && (type = getViewBaseType(view)) != 0) {
                    int viewSectionIndex = getViewSectionIndex(view);
                    if (viewSectionIndex == sectionIndex2) {
                        if (type == 1) {
                            ghostHeader = view;
                        }
                    } else if (viewSectionIndex == sectionIndex2 + 1 && firstViewInNextSection == null) {
                        firstViewInNextSection = view;
                    }
                }
            }
            int height = getDecoratedMeasuredHeight(headerView);
            int top = getPaddingTop();
            HeaderPosition headerPosition = HeaderPosition.STICKY;
            if (ghostHeader != null && (ghostHeaderTop = getDecoratedTop(ghostHeader)) >= top) {
                top = ghostHeaderTop;
                headerPosition = HeaderPosition.NATURAL;
            }
            if (firstViewInNextSection != null) {
                int nextViewTop = getDecoratedTop(firstViewInNextSection);
                if (nextViewTop - height < top) {
                    top = nextViewTop - height;
                    headerPosition = HeaderPosition.TRAILING;
                }
            }
            int top2 = top;
            headerView.bringToFront();
            layoutDecorated(headerView, left, top2, right, top2 + height);
            recordHeaderPositionAndNotify(sectionIndex2, headerView, headerPosition);
            visitedSections = visitedSections;
        }
    }

    void recordHeaderPositionAndNotify(int sectionIndex, View headerView, HeaderPosition newHeaderPosition) {
        if (this.headerPositionsBySection.containsKey(Integer.valueOf(sectionIndex))) {
            HeaderPosition currentHeaderPosition = this.headerPositionsBySection.get(Integer.valueOf(sectionIndex));
            if (currentHeaderPosition != newHeaderPosition) {
                this.headerPositionsBySection.put(Integer.valueOf(sectionIndex), newHeaderPosition);
                if (this.headerPositionChangedCallback != null) {
                    this.headerPositionChangedCallback.onHeaderPositionChanged(sectionIndex, headerView, currentHeaderPosition, newHeaderPosition);
                    return;
                }
                return;
            }
            return;
        }
        this.headerPositionsBySection.put(Integer.valueOf(sectionIndex), newHeaderPosition);
        if (this.headerPositionChangedCallback != null) {
            this.headerPositionChangedCallback.onHeaderPositionChanged(sectionIndex, headerView, HeaderPosition.NONE, newHeaderPosition);
        }
    }

    boolean isViewRecycled(View view) {
        return getViewAdapterPosition(view) == -1;
    }

    int getViewBaseType(View view) {
        int adapterPosition = getViewAdapterPosition(view);
        return this.adapter.getItemViewBaseType(adapterPosition);
    }

    int getViewSectionIndex(View view) {
        int adapterPosition = getViewAdapterPosition(view);
        return this.adapter.getSectionForAdapterPosition(adapterPosition);
    }

    SectioningAdapter.ViewHolder getViewViewHolder(View view) {
        return (SectioningAdapter.ViewHolder) view.getTag(R.id.sectioning_adapter_tag_key_view_viewholder);
    }

    int getViewAdapterPosition(View view) {
        return getViewViewHolder(view).getAdapterPosition();
    }

    class SmoothScroller extends LinearSmoothScroller {
        private static final float DEFAULT_DURATION = 1000.0f;
        private static final int TARGET_SEEK_SCROLL_DISTANCE_PX = 10000;
        private final float distanceInPixels;
        private final float duration;

        public SmoothScroller(Context context, int distanceInPixels) {
            super(context);
            this.distanceInPixels = distanceInPixels;
            float millisecondsPerPx = calculateSpeedPerPixel(context.getResources().getDisplayMetrics());
            this.duration = distanceInPixels < 10000 ? (int) (Math.abs(distanceInPixels) * millisecondsPerPx) : DEFAULT_DURATION;
        }

        @Override // android.support.v7.widget.RecyclerView.SmoothScroller
        public PointF computeScrollVectorForPosition(int targetPosition) {
            return new PointF(0.0f, StickyHeaderLayoutManager.this.computeScrollVectorForPosition(targetPosition));
        }

        @Override // android.support.v7.widget.LinearSmoothScroller
        protected int calculateTimeForScrolling(int dx) {
            float proportion = dx / this.distanceInPixels;
            return (int) (this.duration * proportion);
        }
    }

    static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: org.zakariya.stickyheaders.StickyHeaderLayoutManager.SavedState.1
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel in) {
                return new SavedState(in);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int size) {
                return new SavedState[size];
            }
        };
        int firstViewAdapterPosition;
        int firstViewTop;

        public SavedState() {
            this.firstViewAdapterPosition = -1;
            this.firstViewTop = 0;
        }

        SavedState(Parcel in) {
            this.firstViewAdapterPosition = -1;
            this.firstViewTop = 0;
            this.firstViewAdapterPosition = in.readInt();
            this.firstViewTop = in.readInt();
        }

        public SavedState(SavedState other) {
            this.firstViewAdapterPosition = -1;
            this.firstViewTop = 0;
            this.firstViewAdapterPosition = other.firstViewAdapterPosition;
            this.firstViewTop = other.firstViewTop;
        }

        boolean isValid() {
            return this.firstViewAdapterPosition >= 0;
        }

        void invalidate() {
            this.firstViewAdapterPosition = -1;
        }

        public String toString() {
            return "<" + getClass().getCanonicalName() + " firstViewAdapterPosition: " + this.firstViewAdapterPosition + " firstViewTop: " + this.firstViewTop + ">";
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeInt(this.firstViewAdapterPosition);
            dest.writeInt(this.firstViewTop);
        }
    }
}
