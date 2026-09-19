package org.zakariya.stickyheaders;

import android.os.Handler;
import android.os.Looper;
import android.support.v7.widget.RecyclerView;
import android.util.SparseBooleanArray;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class SectioningAdapter extends RecyclerView.Adapter<ViewHolder> {
    public static final int NO_POSITION = -1;
    private static final String TAG = "SectioningAdapter";
    public static final int TYPE_FOOTER = 3;
    public static final int TYPE_GHOST_HEADER = 1;
    public static final int TYPE_HEADER = 0;
    public static final int TYPE_ITEM = 2;
    private Handler mainThreadHandler;
    private int[] sectionIndicesByAdapterPosition;
    private ArrayList<Section> sections;
    private int totalNumberOfItems;
    private HashMap<Integer, Boolean> collapsedSections = new HashMap<>();
    private HashMap<Integer, SectionSelectionState> selectionStateBySection = new HashMap<>();

    public interface SelectionVisitor {
        void onVisitSelectedFooter(int i);

        void onVisitSelectedSection(int i);

        void onVisitSelectedSectionItem(int i, int i2);
    }

    private static class Section {
        int adapterPosition;
        boolean hasFooter;
        boolean hasHeader;
        int length;
        int numberOfItems;

        private Section() {
        }
    }

    private static class SectionSelectionState {
        boolean footer;
        SparseBooleanArray items;
        boolean section;

        private SectionSelectionState() {
            this.items = new SparseBooleanArray();
        }
    }

    public static class ViewHolder extends RecyclerView.ViewHolder {
        private int numberOfItemsInSection;
        private int section;

        public ViewHolder(View itemView) {
            super(itemView);
        }

        public int getItemViewBaseType() {
            return SectioningAdapter.unmaskBaseViewType(getItemViewType());
        }

        public int getItemViewUserType() {
            return SectioningAdapter.unmaskUserViewType(getItemViewType());
        }

        public boolean isHeader() {
            return false;
        }

        public boolean isGhostHeader() {
            return false;
        }

        public boolean isFooter() {
            return false;
        }

        public int getSection() {
            return this.section;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSection(int section) {
            this.section = section;
        }

        public int getNumberOfItemsInSection() {
            return this.numberOfItemsInSection;
        }

        void setNumberOfItemsInSection(int numberOfItemsInSection) {
            this.numberOfItemsInSection = numberOfItemsInSection;
        }
    }

    public static class ItemViewHolder extends ViewHolder {
        private int positionInSection;

        public ItemViewHolder(View itemView) {
            super(itemView);
        }

        public int getPositionInSection() {
            return this.positionInSection;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPositionInSection(int positionInSection) {
            this.positionInSection = positionInSection;
        }
    }

    public static class HeaderViewHolder extends ViewHolder {
        public HeaderViewHolder(View itemView) {
            super(itemView);
        }

        @Override // org.zakariya.stickyheaders.SectioningAdapter.ViewHolder
        public boolean isHeader() {
            return true;
        }
    }

    public static class GhostHeaderViewHolder extends ViewHolder {
        public GhostHeaderViewHolder(View itemView) {
            super(itemView);
        }

        @Override // org.zakariya.stickyheaders.SectioningAdapter.ViewHolder
        public boolean isGhostHeader() {
            return true;
        }
    }

    public static class FooterViewHolder extends ViewHolder {
        public FooterViewHolder(View itemView) {
            super(itemView);
        }

        @Override // org.zakariya.stickyheaders.SectioningAdapter.ViewHolder
        public boolean isFooter() {
            return true;
        }
    }

    public int getNumberOfSections() {
        return 0;
    }

    public int getNumberOfItemsInSection(int sectionIndex) {
        return 0;
    }

    public boolean doesSectionHaveHeader(int sectionIndex) {
        return false;
    }

    public int getSectionHeaderUserType(int sectionIndex) {
        return 0;
    }

    public boolean doesSectionHaveFooter(int sectionIndex) {
        return false;
    }

    public int getSectionFooterUserType(int sectionIndex) {
        return 0;
    }

    public int getSectionItemUserType(int sectionIndex, int itemIndex) {
        return 0;
    }

    public ItemViewHolder onCreateItemViewHolder(ViewGroup parent, int itemUserType) {
        return null;
    }

    public HeaderViewHolder onCreateHeaderViewHolder(ViewGroup parent, int headerUserType) {
        return null;
    }

    public FooterViewHolder onCreateFooterViewHolder(ViewGroup parent, int footerUserType) {
        return null;
    }

    public GhostHeaderViewHolder onCreateGhostHeaderViewHolder(ViewGroup parent) {
        View ghostView = new View(parent.getContext());
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -2);
        parent.addView(ghostView, layoutParams);
        return new GhostHeaderViewHolder(ghostView);
    }

    public void onBindItemViewHolder(ItemViewHolder viewHolder, int sectionIndex, int itemIndex, int itemUserType) {
    }

    public void onBindHeaderViewHolder(HeaderViewHolder viewHolder, int sectionIndex, int headerUserType) {
    }

    public void onBindGhostHeaderViewHolder(GhostHeaderViewHolder viewHolder, int sectionIndex) {
    }

    public void onBindFooterViewHolder(FooterViewHolder viewHolder, int sectionIndex, int footerUserType) {
    }

    public int getSectionForAdapterPosition(int adapterPosition) {
        if (this.sections == null) {
            buildSectionIndex();
        }
        if (getItemCount() == 0) {
            return -1;
        }
        if (adapterPosition < 0 || adapterPosition >= getItemCount()) {
            throw new IndexOutOfBoundsException("adapterPosition " + adapterPosition + " is not in range of items represented by adapter");
        }
        return this.sectionIndicesByAdapterPosition[adapterPosition];
    }

    public int getPositionOfItemInSection(int sectionIndex, int adapterPosition) {
        if (this.sections == null) {
            buildSectionIndex();
        }
        if (sectionIndex < 0) {
            throw new IndexOutOfBoundsException("sectionIndex " + sectionIndex + " < 0");
        }
        if (sectionIndex >= this.sections.size()) {
            throw new IndexOutOfBoundsException("sectionIndex " + sectionIndex + " >= sections.size (" + this.sections.size() + ")");
        }
        Section section = this.sections.get(sectionIndex);
        int localPosition = adapterPosition - section.adapterPosition;
        if (localPosition > section.length) {
            throw new IndexOutOfBoundsException("adapterPosition: " + adapterPosition + " is beyond sectionIndex: " + sectionIndex + " length: " + section.length);
        }
        if (section.hasHeader) {
            return localPosition - 2;
        }
        return localPosition;
    }

    private int getAdapterPosition(int sectionIndex, int offsetIntoSection) {
        if (this.sections == null) {
            buildSectionIndex();
        }
        if (sectionIndex < 0) {
            throw new IndexOutOfBoundsException("sectionIndex " + sectionIndex + " < 0");
        }
        if (sectionIndex >= this.sections.size()) {
            throw new IndexOutOfBoundsException("sectionIndex " + sectionIndex + " >= sections.size (" + this.sections.size() + ")");
        }
        Section section = this.sections.get(sectionIndex);
        int adapterPosition = section.adapterPosition;
        return offsetIntoSection + adapterPosition;
    }

    public int getAdapterPositionForSectionHeader(int sectionIndex) {
        if (doesSectionHaveHeader(sectionIndex)) {
            return getAdapterPosition(sectionIndex, 0);
        }
        return -1;
    }

    public int getAdapterPositionForSectionGhostHeader(int sectionIndex) {
        if (doesSectionHaveHeader(sectionIndex)) {
            return getAdapterPosition(sectionIndex, 1);
        }
        return -1;
    }

    public int getAdapterPositionForSectionItem(int sectionIndex, int offsetIntoSection) {
        if (doesSectionHaveHeader(sectionIndex)) {
            return getAdapterPosition(sectionIndex, offsetIntoSection) + 2;
        }
        return getAdapterPosition(sectionIndex, offsetIntoSection);
    }

    public int getAdapterPositionForSectionFooter(int sectionIndex) {
        if (doesSectionHaveFooter(sectionIndex)) {
            Section section = this.sections.get(sectionIndex);
            int adapterPosition = section.adapterPosition;
            return (section.length + adapterPosition) - 1;
        }
        return -1;
    }

    public void setSectionIsCollapsed(int sectionIndex, boolean collapsed) {
        boolean notify = isSectionCollapsed(sectionIndex) != collapsed;
        this.collapsedSections.put(Integer.valueOf(sectionIndex), Boolean.valueOf(collapsed));
        if (notify) {
            if (this.sections == null) {
                buildSectionIndex();
            }
            Section section = this.sections.get(sectionIndex);
            int number = section.numberOfItems;
            if (collapsed) {
                notifySectionItemRangeRemoved(sectionIndex, 0, number, false);
            } else {
                notifySectionItemRangeInserted(sectionIndex, 0, number, false);
            }
        }
    }

    public boolean isSectionCollapsed(int sectionIndex) {
        if (this.collapsedSections.containsKey(Integer.valueOf(sectionIndex))) {
            return this.collapsedSections.get(Integer.valueOf(sectionIndex)).booleanValue();
        }
        return false;
    }

    private SectionSelectionState getSectionSelectionState(int sectionIndex) {
        SectionSelectionState state = this.selectionStateBySection.get(Integer.valueOf(sectionIndex));
        if (state != null) {
            return state;
        }
        SectionSelectionState state2 = new SectionSelectionState();
        this.selectionStateBySection.put(Integer.valueOf(sectionIndex), state2);
        return state2;
    }

    public void clearSelection(boolean notify) {
        HashMap<Integer, SectionSelectionState> selectionState = notify ? new HashMap<>(this.selectionStateBySection) : null;
        this.selectionStateBySection = new HashMap<>();
        if (notify) {
            Iterator<Integer> it = selectionState.keySet().iterator();
            while (it.hasNext()) {
                int sectionIndex = it.next().intValue();
                SectionSelectionState state = selectionState.get(Integer.valueOf(sectionIndex));
                if (state.section) {
                    notifySectionDataSetChanged(sectionIndex);
                } else {
                    int s = state.items.size();
                    for (int i = 0; i < s; i++) {
                        if (state.items.valueAt(i)) {
                            notifySectionItemChanged(sectionIndex, state.items.keyAt(i));
                        }
                    }
                    if (state.footer) {
                        notifySectionFooterChanged(sectionIndex);
                    }
                }
            }
        }
    }

    public void clearSelection() {
        clearSelection(true);
    }

    public boolean isSelectionEmpty() {
        Iterator<Integer> it = this.selectionStateBySection.keySet().iterator();
        while (it.hasNext()) {
            int sectionIndex = it.next().intValue();
            SectionSelectionState state = this.selectionStateBySection.get(Integer.valueOf(sectionIndex));
            if (state.section) {
                return false;
            }
            int s = state.items.size();
            for (int i = 0; i < s; i++) {
                if (state.items.valueAt(i)) {
                    return false;
                }
            }
            if (state.footer) {
                return false;
            }
        }
        return true;
    }

    public int getSelectedItemCount() {
        int count = 0;
        Iterator<Integer> it = this.selectionStateBySection.keySet().iterator();
        while (it.hasNext()) {
            int sectionIndex = it.next().intValue();
            SectionSelectionState state = this.selectionStateBySection.get(Integer.valueOf(sectionIndex));
            if (state.section) {
                count += getNumberOfItemsInSection(sectionIndex);
                if (doesSectionHaveFooter(sectionIndex)) {
                    count++;
                }
            } else {
                int s = state.items.size();
                for (int i = 0; i < s; i++) {
                    boolean selected = state.items.valueAt(i);
                    if (selected) {
                        count++;
                    }
                }
                if (state.footer) {
                    count++;
                }
            }
        }
        return count;
    }

    public void traverseSelection(SelectionVisitor visitor) {
        List<Integer> sectionIndices = new ArrayList<>(this.selectionStateBySection.keySet());
        Collections.sort(sectionIndices, Collections.reverseOrder());
        Iterator<Integer> it = sectionIndices.iterator();
        while (it.hasNext()) {
            int sectionIndex = it.next().intValue();
            SectionSelectionState state = this.selectionStateBySection.get(Integer.valueOf(sectionIndex));
            if (state != null) {
                if (state.section) {
                    visitor.onVisitSelectedSection(sectionIndex);
                } else {
                    if (state.footer) {
                        visitor.onVisitSelectedFooter(sectionIndex);
                    }
                    for (int i = state.items.size() - 1; i >= 0; i--) {
                        if (state.items.valueAt(i)) {
                            visitor.onVisitSelectedSectionItem(sectionIndex, state.items.keyAt(i));
                        }
                    }
                }
            }
        }
    }

    public void setSectionSelected(int sectionIndex, boolean selected) {
        SectionSelectionState state = getSectionSelectionState(sectionIndex);
        if (state.section != selected) {
            state.section = selected;
            state.items.clear();
            int n = getNumberOfItemsInSection(sectionIndex);
            for (int i = 0; i < n; i++) {
                state.items.put(i, selected);
            }
            if (doesSectionHaveFooter(sectionIndex)) {
                state.footer = selected;
            }
            notifySectionDataSetChanged(sectionIndex);
        }
    }

    public void toggleSectionSelected(int sectionIndex) {
        setSectionSelected(sectionIndex, !isSectionSelected(sectionIndex));
    }

    public boolean isSectionSelected(int sectionIndex) {
        return getSectionSelectionState(sectionIndex).section;
    }

    public void setSectionItemSelected(int sectionIndex, int itemIndex, boolean selected) {
        SectionSelectionState state = getSectionSelectionState(sectionIndex);
        if (!state.section && selected != state.items.get(itemIndex)) {
            state.items.put(itemIndex, selected);
            notifySectionItemChanged(sectionIndex, itemIndex);
        }
    }

    public void toggleSectionItemSelected(int sectionIndex, int itemIndex) {
        setSectionItemSelected(sectionIndex, itemIndex, !isSectionItemSelected(sectionIndex, itemIndex));
    }

    public boolean isSectionItemSelected(int sectionIndex, int itemIndex) {
        SectionSelectionState state = getSectionSelectionState(sectionIndex);
        return state.section || state.items.get(itemIndex);
    }

    public void setSectionFooterSelected(int sectionIndex, boolean selected) {
        SectionSelectionState state = getSectionSelectionState(sectionIndex);
        if (!state.section && state.footer != selected) {
            state.footer = selected;
            notifySectionFooterChanged(sectionIndex);
        }
    }

    public void toggleSectionFooterSelection(int sectionIndex) {
        setSectionFooterSelected(sectionIndex, !isSectionFooterSelected(sectionIndex));
    }

    public boolean isSectionFooterSelected(int sectionIndex) {
        SectionSelectionState state = getSectionSelectionState(sectionIndex);
        return state.section || state.footer;
    }

    public void notifyAllSectionsDataSetChanged() {
        buildSectionIndex();
        notifyDataSetChanged();
        this.collapsedSections.clear();
        this.selectionStateBySection.clear();
    }

    public void notifySectionDataSetChanged(int sectionIndex) {
        if (this.sections == null) {
            buildSectionIndex();
            notifyAllSectionsDataSetChanged();
        } else {
            buildSectionIndex();
            Section section = this.sections.get(sectionIndex);
            notifyItemRangeChanged(section.adapterPosition, section.length);
        }
        getSectionSelectionState(sectionIndex).items.clear();
    }

    public void notifySectionItemRangeInserted(int sectionIndex, int fromPosition, int number) {
        notifySectionItemRangeInserted(sectionIndex, fromPosition, number, true);
    }

    private void notifySectionItemRangeInserted(int sectionIndex, int fromPosition, int number, boolean updateSelectionState) {
        if (this.sections == null) {
            buildSectionIndex();
            notifyAllSectionsDataSetChanged();
        } else {
            buildSectionIndex();
            Section section = this.sections.get(sectionIndex);
            if (fromPosition > section.numberOfItems) {
                throw new IndexOutOfBoundsException("itemIndex adapterPosition: " + fromPosition + " exceeds sectionIndex numberOfItems: " + section.numberOfItems);
            }
            int offset = fromPosition;
            if (section.hasHeader) {
                offset += 2;
            }
            notifyItemRangeInserted(section.adapterPosition + offset, number);
        }
        if (updateSelectionState) {
            updateSectionItemRangeSelectionState(sectionIndex, fromPosition, number);
        }
    }

    public void notifySectionItemRangeRemoved(int sectionIndex, int fromPosition, int number) {
        notifySectionItemRangeRemoved(sectionIndex, fromPosition, number, true);
    }

    private void notifySectionItemRangeRemoved(int sectionIndex, int fromPosition, int number, boolean updateSelectionState) {
        if (this.sections == null) {
            buildSectionIndex();
            notifyAllSectionsDataSetChanged();
        } else {
            buildSectionIndex();
            Section section = this.sections.get(sectionIndex);
            if (fromPosition > section.numberOfItems) {
                throw new IndexOutOfBoundsException("itemIndex adapterPosition: " + fromPosition + " exceeds sectionIndex numberOfItems: " + section.numberOfItems);
            }
            if (fromPosition + number > section.numberOfItems) {
                throw new IndexOutOfBoundsException("itemIndex adapterPosition: " + fromPosition + number + " exceeds sectionIndex numberOfItems: " + section.numberOfItems);
            }
            int offset = fromPosition;
            if (section.hasHeader) {
                offset += 2;
            }
            notifyItemRangeRemoved(section.adapterPosition + offset, number);
        }
        if (updateSelectionState) {
            updateSectionItemRangeSelectionState(sectionIndex, fromPosition, -number);
        }
    }

    public void notifySectionItemChanged(int sectionIndex, int itemIndex) {
        if (this.sections == null) {
            buildSectionIndex();
            notifyAllSectionsDataSetChanged();
            return;
        }
        buildSectionIndex();
        Section section = this.sections.get(sectionIndex);
        if (itemIndex >= section.numberOfItems) {
            throw new IndexOutOfBoundsException("itemIndex adapterPosition: " + itemIndex + " exceeds sectionIndex numberOfItems: " + section.numberOfItems);
        }
        if (section.hasHeader) {
            itemIndex += 2;
        }
        notifyItemChanged(section.adapterPosition + itemIndex);
    }

    public void notifySectionItemInserted(int sectionIndex, int itemIndex) {
        if (this.sections == null) {
            buildSectionIndex();
            notifyAllSectionsDataSetChanged();
        } else {
            buildSectionIndex();
            Section section = this.sections.get(sectionIndex);
            int offset = itemIndex;
            if (section.hasHeader) {
                offset += 2;
            }
            notifyItemInserted(section.adapterPosition + offset);
        }
        updateSectionItemRangeSelectionState(sectionIndex, itemIndex, 1);
    }

    public void notifySectionItemRemoved(int sectionIndex, int itemIndex) {
        if (this.sections == null) {
            buildSectionIndex();
            notifyAllSectionsDataSetChanged();
        } else {
            buildSectionIndex();
            Section section = this.sections.get(sectionIndex);
            int offset = itemIndex;
            if (section.hasHeader) {
                offset += 2;
            }
            notifyItemRemoved(section.adapterPosition + offset);
        }
        updateSectionItemRangeSelectionState(sectionIndex, itemIndex, -1);
    }

    public void notifySectionInserted(int sectionIndex) {
        if (this.sections == null) {
            buildSectionIndex();
            notifyAllSectionsDataSetChanged();
        } else {
            buildSectionIndex();
            Section section = this.sections.get(sectionIndex);
            notifyItemRangeInserted(section.adapterPosition, section.length);
        }
        updateCollapseAndSelectionStateForSectionChange(sectionIndex, 1);
    }

    public void notifySectionRemoved(int sectionIndex) {
        if (this.sections == null) {
            buildSectionIndex();
            notifyAllSectionsDataSetChanged();
        } else {
            Section section = this.sections.get(sectionIndex);
            buildSectionIndex();
            notifyItemRangeRemoved(section.adapterPosition, section.length);
        }
        updateCollapseAndSelectionStateForSectionChange(sectionIndex, -1);
    }

    public void notifySectionFooterInserted(int sectionIndex) {
        if (this.sections == null) {
            buildSectionIndex();
            notifyAllSectionsDataSetChanged();
            return;
        }
        buildSectionIndex();
        Section section = this.sections.get(sectionIndex);
        if (!section.hasFooter) {
            throw new IllegalArgumentException("notifySectionFooterInserted: adapter implementation reports that section " + sectionIndex + " does not have a footer");
        }
        notifyItemInserted((section.adapterPosition + section.length) - 1);
    }

    public void notifySectionFooterRemoved(int sectionIndex) {
        if (this.sections == null) {
            buildSectionIndex();
            notifyAllSectionsDataSetChanged();
            return;
        }
        buildSectionIndex();
        Section section = this.sections.get(sectionIndex);
        if (section.hasFooter) {
            throw new IllegalArgumentException("notifySectionFooterRemoved: adapter implementation reports that section " + sectionIndex + " has a footer");
        }
        notifyItemRemoved(section.adapterPosition + section.length);
    }

    public void notifySectionFooterChanged(int sectionIndex) {
        if (this.sections == null) {
            buildSectionIndex();
            notifyAllSectionsDataSetChanged();
            return;
        }
        buildSectionIndex();
        Section section = this.sections.get(sectionIndex);
        if (!section.hasFooter) {
            throw new IllegalArgumentException("notifySectionFooterChanged: adapter implementation reports that section " + sectionIndex + " does not have a footer");
        }
        notifyItemChanged((section.adapterPosition + section.length) - 1);
    }

    private void post(Runnable action) {
        if (this.mainThreadHandler == null) {
            this.mainThreadHandler = new Handler(Looper.getMainLooper());
        }
        this.mainThreadHandler.post(action);
    }

    private void buildSectionIndex() {
        this.sections = new ArrayList<>();
        int i = 0;
        int ns = getNumberOfSections();
        for (int s = 0; s < ns; s++) {
            Section section = new Section();
            section.adapterPosition = i;
            section.hasHeader = doesSectionHaveHeader(s);
            section.hasFooter = doesSectionHaveFooter(s);
            if (isSectionCollapsed(s)) {
                section.length = 0;
                section.numberOfItems = getNumberOfItemsInSection(s);
            } else {
                int numberOfItemsInSection = getNumberOfItemsInSection(s);
                section.numberOfItems = numberOfItemsInSection;
                section.length = numberOfItemsInSection;
            }
            if (section.hasHeader) {
                section.length += 2;
            }
            if (section.hasFooter) {
                section.length++;
            }
            this.sections.add(section);
            i += section.length;
        }
        this.totalNumberOfItems = i;
        int i2 = 0;
        this.sectionIndicesByAdapterPosition = new int[this.totalNumberOfItems];
        int ns2 = getNumberOfSections();
        for (int s2 = 0; s2 < ns2; s2++) {
            Section section2 = this.sections.get(s2);
            for (int p = 0; p < section2.length; p++) {
                this.sectionIndicesByAdapterPosition[i2 + p] = s2;
            }
            int p2 = section2.length;
            i2 += p2;
        }
    }

    private void updateSectionItemRangeSelectionState(int sectionIndex, int fromPosition, int delta) {
        SectionSelectionState sectionSelectionState = getSectionSelectionState(sectionIndex);
        SparseBooleanArray itemState = sectionSelectionState.items.clone();
        sectionSelectionState.items.clear();
        int n = itemState.size();
        for (int i = 0; i < n; i++) {
            int pos = itemState.keyAt(i);
            if (delta >= 0 || pos < fromPosition || pos >= fromPosition - delta) {
                int newPos = pos;
                if (pos >= fromPosition) {
                    newPos += delta;
                }
                if (itemState.get(pos)) {
                    sectionSelectionState.items.put(newPos, true);
                }
            }
        }
    }

    private void updateCollapseAndSelectionStateForSectionChange(int sectionIndex, int delta) {
        HashMap<Integer, Boolean> collapseState = new HashMap<>(this.collapsedSections);
        this.collapsedSections.clear();
        Iterator<Integer> it = collapseState.keySet().iterator();
        while (it.hasNext()) {
            int i = it.next().intValue();
            if (delta >= 0 || i != sectionIndex) {
                int j = i;
                if (j >= sectionIndex) {
                    j += delta;
                }
                this.collapsedSections.put(Integer.valueOf(j), collapseState.get(Integer.valueOf(i)));
            }
        }
        HashMap<Integer, SectionSelectionState> selectionState = new HashMap<>(this.selectionStateBySection);
        this.selectionStateBySection.clear();
        Iterator<Integer> it2 = selectionState.keySet().iterator();
        while (it2.hasNext()) {
            int i2 = it2.next().intValue();
            if (delta >= 0 || i2 != sectionIndex) {
                int j2 = i2;
                if (j2 >= sectionIndex) {
                    j2 += delta;
                }
                this.selectionStateBySection.put(Integer.valueOf(j2), selectionState.get(Integer.valueOf(i2)));
            }
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.sections == null) {
            buildSectionIndex();
        }
        return this.totalNumberOfItems;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemViewType(int adapterPosition) {
        if (this.sections == null) {
            buildSectionIndex();
        }
        if (adapterPosition < 0) {
            throw new IndexOutOfBoundsException("adapterPosition (" + adapterPosition + ") cannot be < 0");
        }
        if (adapterPosition >= getItemCount()) {
            throw new IndexOutOfBoundsException("adapterPosition (" + adapterPosition + ")  cannot be > getItemCount() (" + getItemCount() + ")");
        }
        int sectionIndex = getSectionForAdapterPosition(adapterPosition);
        Section section = this.sections.get(sectionIndex);
        int localPosition = adapterPosition - section.adapterPosition;
        int baseType = getItemViewBaseType(section, localPosition);
        int userType = 0;
        if (baseType == 0) {
            userType = getSectionHeaderUserType(sectionIndex);
            if (userType < 0 || userType > 255) {
                throw new IllegalArgumentException("Custom header view type (" + userType + ") must be in range [0,255]");
            }
        } else {
            switch (baseType) {
                case 2:
                    if (section.hasHeader) {
                        localPosition -= 2;
                    }
                    userType = getSectionItemUserType(sectionIndex, localPosition);
                    if (userType < 0 || userType > 255) {
                        throw new IllegalArgumentException("Custom item view type (" + userType + ") must be in range [0,255]");
                    }
                    break;
                case 3:
                    userType = getSectionFooterUserType(sectionIndex);
                    if (userType < 0 || userType > 255) {
                        throw new IllegalArgumentException("Custom footer view type (" + userType + ") must be in range [0,255]");
                    }
                    break;
            }
        }
        return ((userType & 255) << 8) | (baseType & 255);
    }

    public int getItemViewBaseType(int adapterPosition) {
        return unmaskBaseViewType(getItemViewType(adapterPosition));
    }

    public int getItemViewUserType(int adapterPosition) {
        return unmaskUserViewType(getItemViewType(adapterPosition));
    }

    public static int unmaskBaseViewType(int itemViewTypeMask) {
        return itemViewTypeMask & 255;
    }

    public static int unmaskUserViewType(int itemViewTypeMask) {
        return (itemViewTypeMask >> 8) & 255;
    }

    int getItemViewBaseType(Section section, int localPosition) {
        if (section.hasHeader && section.hasFooter) {
            if (localPosition == 0) {
                return 0;
            }
            if (localPosition == 1) {
                return 1;
            }
            return localPosition == section.length - 1 ? 3 : 2;
        }
        if (!section.hasHeader) {
            return (section.hasFooter && localPosition == section.length - 1) ? 3 : 2;
        }
        if (localPosition == 0) {
            return 0;
        }
        return localPosition == 1 ? 1 : 2;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        int baseViewType = unmaskBaseViewType(viewType);
        int userViewType = unmaskUserViewType(viewType);
        switch (baseViewType) {
            case 0:
                return onCreateHeaderViewHolder(parent, userViewType);
            case 1:
                return onCreateGhostHeaderViewHolder(parent);
            case 2:
                return onCreateItemViewHolder(parent, userViewType);
            case 3:
                return onCreateFooterViewHolder(parent, userViewType);
            default:
                throw new IndexOutOfBoundsException("unrecognized viewType: " + viewType + " does not correspond to TYPE_ITEM, TYPE_HEADER or TYPE_FOOTER");
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder holder, int adapterPosition) {
        int section = getSectionForAdapterPosition(adapterPosition);
        holder.setSection(section);
        holder.setNumberOfItemsInSection(getNumberOfItemsInSection(section));
        tagViewHolderItemView(holder, section, adapterPosition);
        int baseType = unmaskBaseViewType(holder.getItemViewType());
        int userType = unmaskUserViewType(holder.getItemViewType());
        switch (baseType) {
            case 0:
                onBindHeaderViewHolder((HeaderViewHolder) holder, section, userType);
                return;
            case 1:
                onBindGhostHeaderViewHolder((GhostHeaderViewHolder) holder, section);
                return;
            case 2:
                ItemViewHolder ivh = (ItemViewHolder) holder;
                int positionInSection = getPositionOfItemInSection(section, adapterPosition);
                ivh.setPositionInSection(positionInSection);
                onBindItemViewHolder(ivh, section, positionInSection, userType);
                return;
            case 3:
                onBindFooterViewHolder((FooterViewHolder) holder, section, userType);
                return;
            default:
                throw new IllegalArgumentException("unrecognized viewType: " + baseType + " does not correspond to TYPE_ITEM, TYPE_HEADER, TYPE_GHOST_HEADER or TYPE_FOOTER");
        }
    }

    void tagViewHolderItemView(ViewHolder holder, int section, int adapterPosition) {
        View view = holder.itemView;
        view.setTag(R.id.sectioning_adapter_tag_key_view_viewholder, holder);
    }
}
