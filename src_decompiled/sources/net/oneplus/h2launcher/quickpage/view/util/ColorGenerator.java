package net.oneplus.h2launcher.quickpage.view.util;

import java.util.Arrays;
import java.util.List;
import java.util.Random;

/* loaded from: classes.dex */
public class ColorGenerator {
    public static ColorGenerator DEFAULT = create(Arrays.asList(-957596, -686759, -416706, -1784274, -9977996, -10902850, -14642227, -5414233, -8366207));
    public static ColorGenerator MATERIAL = create(Arrays.asList(-1739917, -1023342, -4560696, -6982195, -8812853, -10177034, -11549705, -11677471, -11684180, -8271996, -5319295, -30107, -2825897, -10929, -18611, -6190977, -7297874));
    private final List<Integer> mColors;
    private final Random mRandom = new Random(System.currentTimeMillis());

    public static ColorGenerator create(List<Integer> colorList) {
        return new ColorGenerator(colorList);
    }

    private ColorGenerator(List<Integer> colorList) {
        this.mColors = colorList;
    }

    public int getRandomColor() {
        return this.mColors.get(this.mRandom.nextInt(this.mColors.size())).intValue();
    }

    public int getColor(Object key) {
        return this.mColors.get(Math.abs(key.hashCode()) % this.mColors.size()).intValue();
    }
}
