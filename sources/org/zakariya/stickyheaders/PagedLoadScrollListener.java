package org.zakariya.stickyheaders;

import android.support.v7.widget.RecyclerView;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public abstract class PagedLoadScrollListener extends RecyclerView.OnScrollListener {
    private static final int DEFAULT_VISIBLE_THRESHOLD = 5;
    private static final String TAG = PagedLoadScrollListener.class.getSimpleName();
    private int currentPage;
    StickyHeaderLayoutManager layoutManager;
    LoadCompleteNotifier loadCompleteNotifier;
    private boolean loadExhausted;
    private boolean loading;
    private int previousTotalItemCount;
    private int visibleThreshold;

    public interface LoadCompleteNotifier {
        void notifyLoadComplete();

        void notifyLoadExhausted();
    }

    public abstract void onLoadMore(int i, LoadCompleteNotifier loadCompleteNotifier);

    public PagedLoadScrollListener(StickyHeaderLayoutManager layoutManager, int visibleThreshold) {
        this.currentPage = 0;
        this.previousTotalItemCount = 0;
        this.loading = false;
        this.loadExhausted = false;
        this.loadCompleteNotifier = new LoadCompleteNotifier() { // from class: org.zakariya.stickyheaders.PagedLoadScrollListener.1
            @Override // org.zakariya.stickyheaders.PagedLoadScrollListener.LoadCompleteNotifier
            public void notifyLoadComplete() {
                PagedLoadScrollListener.this.loading = false;
                PagedLoadScrollListener.this.previousTotalItemCount = PagedLoadScrollListener.this.layoutManager.getItemCount();
            }

            @Override // org.zakariya.stickyheaders.PagedLoadScrollListener.LoadCompleteNotifier
            public void notifyLoadExhausted() {
                PagedLoadScrollListener.this.loadExhausted = true;
            }
        };
        this.layoutManager = layoutManager;
        this.visibleThreshold = visibleThreshold;
    }

    public PagedLoadScrollListener(StickyHeaderLayoutManager layoutManager) {
        this(layoutManager, 5);
    }

    @Override // android.support.v7.widget.RecyclerView.OnScrollListener
    public void onScrolled(RecyclerView view, int dx, int dy) {
        if (this.loading || this.loadExhausted) {
            return;
        }
        int totalItemCount = this.layoutManager.getItemCount();
        if (totalItemCount < this.previousTotalItemCount) {
            this.currentPage = 0;
            this.previousTotalItemCount = totalItemCount;
        } else if (totalItemCount > 0) {
            View lastVisibleItem = this.layoutManager.getBottommostChildView();
            int lastVisibleItemAdapterPosition = this.layoutManager.getViewAdapterPosition(lastVisibleItem);
            if (this.visibleThreshold + lastVisibleItemAdapterPosition > totalItemCount) {
                this.currentPage++;
                this.loading = true;
                onLoadMore(this.currentPage, this.loadCompleteNotifier);
            }
        }
    }
}
