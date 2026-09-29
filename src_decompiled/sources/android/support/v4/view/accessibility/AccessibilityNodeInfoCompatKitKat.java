package android.support.v4.view.accessibility;

import android.os.Bundle;
import android.support.annotation.RequiresApi;
import android.view.accessibility.AccessibilityNodeInfo;

@RequiresApi(19)
/* loaded from: classes.dex */
class AccessibilityNodeInfoCompatKitKat {
    private static final String ROLE_DESCRIPTION_KEY = "AccessibilityNodeInfo.roleDescription";
    private static final String TRAITS_KEY = "android.view.accessibility.AccessibilityNodeInfo.traits";
    private static final long TRAIT_HAS_IMAGE = 1;
    private static final byte TRAIT_UNSET = -1;

    AccessibilityNodeInfoCompatKitKat() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getLiveRegion(Object info) {
        return ((AccessibilityNodeInfo) info).getLiveRegion();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setLiveRegion(Object info, int mode) {
        ((AccessibilityNodeInfo) info).setLiveRegion(mode);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object getCollectionInfo(Object info) {
        return ((AccessibilityNodeInfo) info).getCollectionInfo();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object getCollectionItemInfo(Object info) {
        return ((AccessibilityNodeInfo) info).getCollectionItemInfo();
    }

    public static void setCollectionInfo(Object info, Object collectionInfo) {
        ((AccessibilityNodeInfo) info).setCollectionInfo((AccessibilityNodeInfo.CollectionInfo) collectionInfo);
    }

    public static void setCollectionItemInfo(Object info, Object collectionItemInfo) {
        ((AccessibilityNodeInfo) info).setCollectionItemInfo((AccessibilityNodeInfo.CollectionItemInfo) collectionItemInfo);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object getRangeInfo(Object info) {
        return ((AccessibilityNodeInfo) info).getRangeInfo();
    }

    public static void setRangeInfo(Object info, Object rangeInfo) {
        ((AccessibilityNodeInfo) info).setRangeInfo((AccessibilityNodeInfo.RangeInfo) rangeInfo);
    }

    public static Object obtainCollectionInfo(int rowCount, int columnCount, boolean hierarchical, int selectionMode) {
        return AccessibilityNodeInfo.CollectionInfo.obtain(rowCount, columnCount, hierarchical);
    }

    public static Object obtainCollectionInfo(int rowCount, int columnCount, boolean hierarchical) {
        return AccessibilityNodeInfo.CollectionInfo.obtain(rowCount, columnCount, hierarchical);
    }

    public static Object obtainCollectionItemInfo(int rowIndex, int rowSpan, int columnIndex, int columnSpan, boolean heading) {
        return AccessibilityNodeInfo.CollectionItemInfo.obtain(rowIndex, rowSpan, columnIndex, columnSpan, heading);
    }

    public static void setContentInvalid(Object info, boolean contentInvalid) {
        ((AccessibilityNodeInfo) info).setContentInvalid(contentInvalid);
    }

    public static boolean isContentInvalid(Object info) {
        return ((AccessibilityNodeInfo) info).isContentInvalid();
    }

    public static boolean canOpenPopup(Object info) {
        return ((AccessibilityNodeInfo) info).canOpenPopup();
    }

    public static void setCanOpenPopup(Object info, boolean opensPopup) {
        ((AccessibilityNodeInfo) info).setCanOpenPopup(opensPopup);
    }

    public static Bundle getExtras(Object info) {
        return ((AccessibilityNodeInfo) info).getExtras();
    }

    private static long getTraits(Object info) {
        return getExtras(info).getLong(TRAITS_KEY, -1L);
    }

    private static void setTrait(Object info, long trait) {
        Bundle extras = getExtras(info);
        long traits = extras.getLong(TRAITS_KEY, 0L);
        extras.putLong(TRAITS_KEY, traits | trait);
    }

    public static int getInputType(Object info) {
        return ((AccessibilityNodeInfo) info).getInputType();
    }

    public static void setInputType(Object info, int inputType) {
        ((AccessibilityNodeInfo) info).setInputType(inputType);
    }

    public static boolean isDismissable(Object info) {
        return ((AccessibilityNodeInfo) info).isDismissable();
    }

    public static void setDismissable(Object info, boolean dismissable) {
        ((AccessibilityNodeInfo) info).setDismissable(dismissable);
    }

    public static boolean isMultiLine(Object info) {
        return ((AccessibilityNodeInfo) info).isMultiLine();
    }

    public static void setMultiLine(Object info, boolean multiLine) {
        ((AccessibilityNodeInfo) info).setMultiLine(multiLine);
    }

    public static CharSequence getRoleDescription(Object info) {
        Bundle extras = getExtras(info);
        return extras.getCharSequence(ROLE_DESCRIPTION_KEY);
    }

    public static void setRoleDescription(Object info, CharSequence roleDescription) {
        Bundle extras = getExtras(info);
        extras.putCharSequence(ROLE_DESCRIPTION_KEY, roleDescription);
    }

    public static Object obtainRangeInfo(int type, float min, float max, float current) {
        return AccessibilityNodeInfo.RangeInfo.obtain(type, min, max, current);
    }

    /* loaded from: classes.dex */
    static class CollectionInfo {
        CollectionInfo() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static int getColumnCount(Object info) {
            return ((AccessibilityNodeInfo.CollectionInfo) info).getColumnCount();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static int getRowCount(Object info) {
            return ((AccessibilityNodeInfo.CollectionInfo) info).getRowCount();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static boolean isHierarchical(Object info) {
            return ((AccessibilityNodeInfo.CollectionInfo) info).isHierarchical();
        }
    }

    /* loaded from: classes.dex */
    static class CollectionItemInfo {
        CollectionItemInfo() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static int getColumnIndex(Object info) {
            return ((AccessibilityNodeInfo.CollectionItemInfo) info).getColumnIndex();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static int getColumnSpan(Object info) {
            return ((AccessibilityNodeInfo.CollectionItemInfo) info).getColumnSpan();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static int getRowIndex(Object info) {
            return ((AccessibilityNodeInfo.CollectionItemInfo) info).getRowIndex();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static int getRowSpan(Object info) {
            return ((AccessibilityNodeInfo.CollectionItemInfo) info).getRowSpan();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static boolean isHeading(Object info) {
            return ((AccessibilityNodeInfo.CollectionItemInfo) info).isHeading();
        }
    }

    /* loaded from: classes.dex */
    static class RangeInfo {
        RangeInfo() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static float getCurrent(Object info) {
            return ((AccessibilityNodeInfo.RangeInfo) info).getCurrent();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static float getMax(Object info) {
            return ((AccessibilityNodeInfo.RangeInfo) info).getMax();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static float getMin(Object info) {
            return ((AccessibilityNodeInfo.RangeInfo) info).getMin();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static int getType(Object info) {
            return ((AccessibilityNodeInfo.RangeInfo) info).getType();
        }
    }
}
