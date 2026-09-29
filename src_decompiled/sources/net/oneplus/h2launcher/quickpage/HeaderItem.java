package net.oneplus.h2launcher.quickpage;

import net.oneplus.h2launcher.quickpage.view.util.AbstractDataProvider;

/* loaded from: classes.dex */
public class HeaderItem implements AbstractDataProvider.Data {
    public static final int TYPE = 101;

    @Override // net.oneplus.h2launcher.quickpage.view.util.AbstractDataProvider.Data
    public int getId() {
        return 9998;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.util.AbstractDataProvider.Data
    public boolean isSectionHeader() {
        return false;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.util.AbstractDataProvider.Data
    public int getViewType() {
        return 101;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.util.AbstractDataProvider.Data
    public void setPinned(boolean pinned) {
    }

    @Override // net.oneplus.h2launcher.quickpage.view.util.AbstractDataProvider.Data
    public boolean isPinned() {
        return false;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.util.AbstractDataProvider.Data
    public int getIndex() {
        return -1;
    }
}
