package net.oneplus.h2launcher.allapps;

import net.oneplus.h2launcher.allapps.AlphabeticalAppsList;

/* compiled from: AllAppsContainerView.java */
/* loaded from: classes.dex */
final class FullMergeAlgorithm implements AlphabeticalAppsList.MergeAlgorithm {
    @Override // net.oneplus.h2launcher.allapps.AlphabeticalAppsList.MergeAlgorithm
    public boolean continueMerging(AlphabeticalAppsList.SectionInfo section, AlphabeticalAppsList.SectionInfo withSection, int sectionAppCount, int numAppsPerRow, int mergeCount) {
        return section.firstAppItem.viewType == 1;
    }
}
