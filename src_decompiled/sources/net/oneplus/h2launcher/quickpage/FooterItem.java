package net.oneplus.h2launcher.quickpage;

import net.oneplus.h2launcher.WeatherProvider;
import net.oneplus.h2launcher.quickpage.view.util.AbstractDataProvider;

/* loaded from: classes.dex */
public class FooterItem implements AbstractDataProvider.Data {
    public static final int TYPE = 102;

    @Override // net.oneplus.h2launcher.quickpage.view.util.AbstractDataProvider.Data
    public int getId() {
        return WeatherProvider.WEATHER_CODE_NONE;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.util.AbstractDataProvider.Data
    public boolean isSectionHeader() {
        return false;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.util.AbstractDataProvider.Data
    public int getViewType() {
        return 102;
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
