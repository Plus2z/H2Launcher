package net.oneplus.h2launcher;

import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.TypedArray;
import android.support.v4.graphics.ColorUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import java.util.ArrayList;
import net.oneplus.h2launcher.dynamicui.ExtractedColors;

/* loaded from: classes.dex */
public class PageIndicator extends LinearLayout {
    private static final boolean MODULATE_ALPHA_ENABLED = false;
    private static final String TAG = "PageIndicator";
    private int mActiveMarkerIndex;
    private int mColor;
    private LayoutInflater mLayoutInflater;
    private ArrayList<PageIndicatorMarker> mMarkers;
    private int mMaxWindowSize;
    private int[] mWindowRange;

    /* loaded from: classes.dex */
    public static class PageMarkerResources {
        int activeId;
        int firstPageId;
        int inactiveId;

        public PageMarkerResources() {
            this.activeId = R.drawable.ic_pageindicator_current;
            this.inactiveId = R.drawable.ic_pageindicator_default;
        }

        public PageMarkerResources(int aId, int iaId) {
            this.activeId = aId;
            this.inactiveId = iaId;
        }

        public PageMarkerResources(int aId, int iaId, int fpId) {
            this.activeId = aId;
            this.inactiveId = iaId;
            this.firstPageId = fpId;
        }
    }

    public PageIndicator(Context context) {
        this(context, null);
    }

    public PageIndicator(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public PageIndicator(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mWindowRange = new int[2];
        this.mMarkers = new ArrayList<>();
        this.mColor = 0;
        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.PageIndicator, defStyle, 0);
        this.mMaxWindowSize = a.getInteger(0, 15);
        this.mWindowRange[0] = 0;
        this.mWindowRange[1] = 0;
        this.mLayoutInflater = LayoutInflater.from(context);
        a.recycle();
        LayoutTransition transition = getLayoutTransition();
        transition.setDuration(175L);
    }

    private void enableLayoutTransitions() {
        LayoutTransition transition = getLayoutTransition();
        transition.enableTransitionType(2);
        transition.enableTransitionType(3);
        transition.enableTransitionType(0);
        transition.enableTransitionType(1);
    }

    private void disableLayoutTransitions() {
        LayoutTransition transition = getLayoutTransition();
        transition.disableTransitionType(2);
        transition.disableTransitionType(3);
        transition.disableTransitionType(0);
        transition.disableTransitionType(1);
    }

    void offsetWindowCenterTo(int activeIndex, boolean allowAnimations) {
        if (activeIndex < 0) {
            new Throwable().printStackTrace();
        }
        int windowSize = Math.min(this.mMarkers.size(), this.mMaxWindowSize);
        int hWindowSize = windowSize / 2;
        float f = windowSize / 2.0f;
        int windowEnd = Math.min(this.mMarkers.size(), this.mMaxWindowSize + Math.max(0, activeIndex - hWindowSize));
        int windowStart = windowEnd - Math.min(this.mMarkers.size(), windowSize);
        int i = windowStart + ((windowEnd - windowStart) / 2);
        if (windowStart == 0) {
        }
        if (windowEnd == this.mMarkers.size()) {
        }
        boolean windowMoved = (this.mWindowRange[0] == windowStart && this.mWindowRange[1] == windowEnd) ? false : true;
        if (!allowAnimations) {
            disableLayoutTransitions();
        }
        for (int i2 = getChildCount() - 1; i2 >= 0; i2--) {
            View marker = (PageIndicatorMarker) getChildAt(i2);
            int markerIndex = this.mMarkers.indexOf(marker);
            if (markerIndex < windowStart || markerIndex >= windowEnd) {
                removeView(marker);
            }
        }
        for (int i3 = 0; i3 < this.mMarkers.size(); i3++) {
            PageIndicatorMarker marker2 = this.mMarkers.get(i3);
            if (windowStart <= i3 && i3 < windowEnd) {
                if (indexOfChild(marker2) < 0) {
                    addView(marker2, i3 - windowStart);
                }
                if (i3 == activeIndex) {
                    marker2.activate(windowMoved);
                } else {
                    marker2.inactivate(windowMoved);
                }
            } else {
                marker2.inactivate(true);
            }
        }
        if (!allowAnimations) {
            enableLayoutTransitions();
        }
        this.mWindowRange[0] = windowStart;
        this.mWindowRange[1] = windowEnd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addMarker(int index, PageMarkerResources marker, boolean allowAnimations) {
        int index2 = Math.max(0, Math.min(index, this.mMarkers.size()));
        PageIndicatorMarker m = (PageIndicatorMarker) this.mLayoutInflater.inflate(R.layout.page_indicator_marker, (ViewGroup) this, false);
        if (marker.firstPageId != 0) {
            m.setMarkerDrawables(marker.firstPageId, marker.firstPageId);
        } else {
            m.setMarkerDrawables(marker.activeId, marker.inactiveId);
        }
        this.mMarkers.add(index2, m);
        offsetWindowCenterTo(this.mActiveMarkerIndex, allowAnimations);
        updateMarkerColor(this.mColor, m);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addMarkers(ArrayList<PageMarkerResources> markers, boolean allowAnimations) {
        for (int i = 0; i < markers.size(); i++) {
            addMarker(Integer.MAX_VALUE, markers.get(i), allowAnimations);
        }
        updateMarkersColor(this.mColor);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateMarker(int index, PageMarkerResources marker) {
        PageIndicatorMarker m = this.mMarkers.get(index);
        m.setMarkerDrawables(marker.activeId, marker.inactiveId);
        updateMarkerColor(this.mColor, m);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeMarker(int index, boolean allowAnimations) {
        if (this.mMarkers.size() > 0) {
            this.mMarkers.remove(Math.max(0, Math.min(this.mMarkers.size() - 1, index)));
            offsetWindowCenterTo(this.mActiveMarkerIndex, allowAnimations);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeAllMarkers(boolean allowAnimations) {
        while (this.mMarkers.size() > 0) {
            removeMarker(Integer.MAX_VALUE, allowAnimations);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setActiveMarker(int index) {
        this.mActiveMarkerIndex = index;
        offsetWindowCenterTo(index, false);
    }

    void dumpState(String txt) {
        System.out.println(txt);
        System.out.println("\tmMarkers: " + this.mMarkers.size());
        for (int i = 0; i < this.mMarkers.size(); i++) {
            PageIndicatorMarker m = this.mMarkers.get(i);
            System.out.println("\t\t(" + i + ") " + m);
        }
        System.out.println("\twindow: [" + this.mWindowRange[0] + ", " + this.mWindowRange[1] + "]");
        System.out.println("\tchildren: " + getChildCount());
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            PageIndicatorMarker m2 = (PageIndicatorMarker) getChildAt(i2);
            System.out.println("\t\t(" + i2 + ") " + m2);
        }
        System.out.println("\tactive: " + this.mActiveMarkerIndex);
    }

    public void updateColor(ExtractedColors extractedColors) {
        int color = extractedColors.getColor(1, 0);
        this.mColor = color;
        if (color != 0) {
            int naviColor = 0;
            int color2 = ColorUtils.setAlphaComponent(color, 255);
            updateMarkersColor(color2);
            if (color2 == getResources().getColor(R.color.super_dark_page_active_indicator_color, null)) {
                naviColor = 2;
            } else if (color2 == -1) {
                naviColor = 0;
            } else {
                Log.e(TAG, "Setting workspace arrow to an unsupported color: #" + Integer.toHexString(color2));
            }
            extractedColors.setColorAtIndex(3, naviColor);
        }
    }

    private void updateMarkersColor(int color) {
        if (color != 0) {
            for (int i = 0; i < this.mMarkers.size(); i++) {
                PageIndicatorMarker marker = this.mMarkers.get(i);
                marker.updateColor(color);
            }
        }
    }

    private void updateMarkerColor(int color, PageIndicatorMarker marker) {
        if (color != 0) {
            marker.updateColor(color);
        }
    }
}
