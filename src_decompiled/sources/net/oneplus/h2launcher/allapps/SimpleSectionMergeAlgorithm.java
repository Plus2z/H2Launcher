package net.oneplus.h2launcher.allapps;

import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import net.oneplus.h2launcher.allapps.AlphabeticalAppsList;

/* compiled from: AllAppsContainerView.java */
/* loaded from: classes.dex */
final class SimpleSectionMergeAlgorithm implements AlphabeticalAppsList.MergeAlgorithm {
    private CharsetEncoder mAsciiEncoder = Charset.forName("US-ASCII").newEncoder();
    private int mMaxAllowableMerges;
    private int mMinAppsPerRow;
    private int mMinRowsInMergedSection;

    public SimpleSectionMergeAlgorithm(int minAppsPerRow, int minRowsInMergedSection, int maxNumMerges) {
        this.mMinAppsPerRow = minAppsPerRow;
        this.mMinRowsInMergedSection = minRowsInMergedSection;
        this.mMaxAllowableMerges = maxNumMerges;
    }

    @Override // net.oneplus.h2launcher.allapps.AlphabeticalAppsList.MergeAlgorithm
    public boolean continueMerging(AlphabeticalAppsList.SectionInfo section, AlphabeticalAppsList.SectionInfo withSection, int sectionAppCount, int numAppsPerRow, int mergeCount) {
        if (section.firstAppItem.viewType != 1) {
            return false;
        }
        int rows = sectionAppCount / numAppsPerRow;
        int cols = sectionAppCount % numAppsPerRow;
        boolean isCrossScript = false;
        if (section.firstAppItem != null && withSection.firstAppItem != null) {
            isCrossScript = this.mAsciiEncoder.canEncode(section.firstAppItem.sectionName) != this.mAsciiEncoder.canEncode(withSection.firstAppItem.sectionName);
        }
        return cols > 0 && cols < this.mMinAppsPerRow && rows < this.mMinRowsInMergedSection && mergeCount < this.mMaxAllowableMerges && !isCrossScript;
    }
}
