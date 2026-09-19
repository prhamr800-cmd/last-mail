package com.github.florent37.expansionpanel.viewgroup;

import com.github.florent37.expansionpanel.ExpansionLayout;
import java.util.Collection;
import java.util.HashSet;

/* JADX INFO: loaded from: classes2.dex */
public class ExpansionLayoutCollection {
    private final Collection<ExpansionLayout> expansions = new HashSet();
    private boolean openOnlyOne = true;
    private final ExpansionLayout.IndicatorListener indicatorListener = new ExpansionLayout.IndicatorListener() { // from class: com.github.florent37.expansionpanel.viewgroup.ExpansionLayoutCollection.1
        @Override // com.github.florent37.expansionpanel.ExpansionLayout.IndicatorListener
        public void onStartedExpand(ExpansionLayout expansionLayout, boolean willExpand) {
            if (willExpand && ExpansionLayoutCollection.this.openOnlyOne) {
                for (ExpansionLayout view : ExpansionLayoutCollection.this.expansions) {
                    if (view != expansionLayout) {
                        view.collapse(true);
                    }
                }
            }
        }
    };

    public ExpansionLayoutCollection add(ExpansionLayout expansionLayout) {
        this.expansions.add(expansionLayout);
        expansionLayout.addIndicatorListener(this.indicatorListener);
        return this;
    }

    public ExpansionLayoutCollection addAll(ExpansionLayout... expansionLayouts) {
        for (ExpansionLayout expansionLayout : expansionLayouts) {
            add(expansionLayout);
        }
        return this;
    }

    public ExpansionLayoutCollection addAll(Collection<ExpansionLayout> expansionLayouts) {
        for (ExpansionLayout expansionLayout : expansionLayouts) {
            add(expansionLayout);
        }
        return this;
    }

    public ExpansionLayoutCollection remove(ExpansionLayout expansionLayout) {
        if (expansionLayout != null) {
            this.expansions.remove(expansionLayout);
            expansionLayout.removeIndicatorListener(this.indicatorListener);
        }
        return this;
    }

    public ExpansionLayoutCollection openOnlyOne(boolean openOnlyOne) {
        this.openOnlyOne = openOnlyOne;
        return this;
    }
}
