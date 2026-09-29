package net.oneplus.h2launcher;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import net.oneplus.h2launcher.CellLayout;
import net.oneplus.h2launcher.FocusHelper;
import net.oneplus.h2launcher.PageIndicator;
import net.oneplus.h2launcher.Workspace;
import net.oneplus.h2launcher.dynamicicon.IDynamicShortcut;
import net.oneplus.h2launcher.oos.StyleManager;

/* loaded from: classes.dex */
public class FolderPagedView extends PagedView {
    private static final boolean ALLOW_FOLDER_SCROLL = true;
    private static final int PAGE_INDICATOR_ANIMATION_DURATION = 400;
    private static final int PAGE_INDICATOR_ANIMATION_STAGGERED_DELAY = 150;
    private static final int PAGE_INDICATOR_ANIMATION_START_DELAY = 300;
    private static final float PAGE_INDICATOR_OVERSHOOT_TENSION = 4.9f;
    private static final int REORDER_ANIMATION_DURATION = 230;
    private static final float SCROLL_HINT_FRACTION = 0.07f;
    private static final int START_VIEW_REORDER_DELAY = 30;
    private static final String TAG = "FolderPagedView";
    private static final float VIEW_REORDER_DELAY_FACTOR = 0.9f;
    private static final int[] sTempPosArray = new int[2];
    private int mAllocatedContentSize;
    private FocusIndicatorView mFocusIndicatorView;
    private Folder mFolder;
    private int mGridCountX;
    private int mGridCountY;
    private final LayoutInflater mInflater;
    public final boolean mIsRtl;
    private FocusHelper.PagedFolderKeyEventListener mKeyListener;
    private final int mMaxCountX;
    private final int mMaxCountY;
    private final int mMaxItemsPerPage;
    private PageIndicator mPageIndicator;
    final HashMap<View, Runnable> mPendingAnimations;

    public FolderPagedView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mPendingAnimations = new HashMap<>();
        LauncherAppState app = LauncherAppState.getInstance();
        InvariantDeviceProfile profile = app.getInvariantDeviceProfile();
        this.mMaxCountX = profile.numFolderColumns;
        this.mMaxCountY = profile.numFolderRows;
        this.mMaxItemsPerPage = this.mMaxCountX * this.mMaxCountY;
        this.mInflater = LayoutInflater.from(context);
        this.mIsRtl = Utilities.isRtl(getResources());
        setImportantForAccessibility(1);
        setEdgeGlowColor(getResources().getColor(R.color.folder_edge_effect_color));
    }

    public void setFolder(Folder folder) {
        this.mFolder = folder;
        this.mFocusIndicatorView = (FocusIndicatorView) folder.findViewById(R.id.focus_indicator);
        this.mKeyListener = new FocusHelper.PagedFolderKeyEventListener(folder);
    }

    private void setupContentDimensions(int count) {
        boolean done;
        this.mAllocatedContentSize = count;
        if (count >= this.mMaxItemsPerPage) {
            this.mGridCountX = this.mMaxCountX;
            this.mGridCountY = this.mMaxCountY;
            done = true;
        } else {
            done = false;
        }
        while (!done) {
            int oldCountX = this.mGridCountX;
            int oldCountY = this.mGridCountY;
            if (this.mGridCountX * this.mGridCountY < count) {
                if ((this.mGridCountX <= this.mGridCountY || this.mGridCountY == this.mMaxCountY) && this.mGridCountX < this.mMaxCountX) {
                    this.mGridCountX++;
                } else if (this.mGridCountY < this.mMaxCountY) {
                    this.mGridCountY++;
                }
                if (this.mGridCountY == 0) {
                    this.mGridCountY++;
                }
            } else if ((this.mGridCountY - 1) * this.mGridCountX >= count && this.mGridCountY >= this.mGridCountX) {
                this.mGridCountY = Math.max(0, this.mGridCountY - 1);
            } else if ((this.mGridCountX - 1) * this.mGridCountY >= count) {
                this.mGridCountX = Math.max(0, this.mGridCountX - 1);
            }
            done = this.mGridCountX == oldCountX && this.mGridCountY == oldCountY;
        }
        for (int i = getPageCount() - 1; i >= 0; i--) {
            getPageAt(i).setGridSize(this.mGridCountX, this.mGridCountY);
        }
    }

    public ArrayList<ShortcutInfo> bindItems(ArrayList<ShortcutInfo> items) {
        ArrayList<View> icons = new ArrayList<>();
        ArrayList<ShortcutInfo> extra = new ArrayList<>();
        Iterator<ShortcutInfo> it = items.iterator();
        while (it.hasNext()) {
            ShortcutInfo item = it.next();
            icons.add(createNewView(item));
        }
        arrangeChildren(icons, icons.size(), false);
        return extra;
    }

    public void bindNewItems(ArrayList<ShortcutInfo> items) {
        ArrayList<View> icons = new ArrayList<>();
        int rank = 0;
        setupContentDimensions(items.size());
        Iterator<ShortcutInfo> it = items.iterator();
        while (it.hasNext()) {
            ShortcutInfo item = it.next();
            int pagePos = rank % this.mMaxItemsPerPage;
            int i = rank / this.mMaxItemsPerPage;
            item.rank = rank;
            item.cellX = pagePos % this.mGridCountX;
            item.cellY = pagePos / this.mGridCountX;
            rank++;
        }
        Iterator<ShortcutInfo> it2 = items.iterator();
        while (it2.hasNext()) {
            icons.add(createNewView(it2.next()));
        }
        arrangeChildren(icons, icons.size(), false);
    }

    public int allocateRankForNewItem(ShortcutInfo info) {
        int rank = getItemCount();
        ArrayList<View> views = new ArrayList<>(this.mFolder.getItemsInReadingOrder());
        views.add(rank, null);
        arrangeChildren(views, views.size(), false);
        setCurrentPage(rank / this.mMaxItemsPerPage);
        return rank;
    }

    public View createAndAddViewForRank(ShortcutInfo item, int rank) {
        View icon = createNewView(item);
        addViewForRank(icon, item, rank);
        return icon;
    }

    public void addViewForRank(View view, ShortcutInfo item, int rank) {
        int pagePos = rank % this.mMaxItemsPerPage;
        int pageNo = rank / this.mMaxItemsPerPage;
        item.rank = rank;
        item.cellX = pagePos % this.mGridCountX;
        item.cellY = pagePos / this.mGridCountX;
        CellLayout.LayoutParams lp = (CellLayout.LayoutParams) view.getLayoutParams();
        lp.cellX = item.cellX;
        lp.cellY = item.cellY;
        getPageAt(pageNo).addViewToCellLayout(view, -1, this.mFolder.mLauncher.getViewIdForItem(item), lp, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SuppressLint({"InflateParams"})
    public View createNewView(ShortcutInfo shortcutInfo) {
        BubbleTextView textView;
        if (StyleManager.getInstance().showDynamicIcon() && shortcutInfo.isDynamicIcon()) {
            textView = ((IDynamicShortcut) shortcutInfo).createShortcutView(getContext(), null, false, R.style.Icon_Folder);
        } else {
            textView = (BubbleTextView) this.mInflater.inflate(R.layout.folder_application, (ViewGroup) null, false);
        }
        textView.applyFromShortcutInfo(shortcutInfo);
        DeviceProfile deviceProfile = ((Launcher) getContext()).getDeviceProfile();
        textView.setCompoundDrawablePadding(deviceProfile.iconDrawablePaddingPx);
        textView.setOnClickListener(this.mFolder);
        textView.setOnLongClickListener(this.mFolder);
        textView.setOnFocusChangeListener(this.mFocusIndicatorView);
        textView.setOnKeyListener(this.mKeyListener);
        textView.setLayoutParams(new CellLayout.LayoutParams(shortcutInfo.cellX, shortcutInfo.cellY, shortcutInfo.spanX, shortcutInfo.spanY));
        return textView;
    }

    @Override // net.oneplus.h2launcher.PagedView
    public CellLayout getPageAt(int index) {
        return (CellLayout) getChildAt(index);
    }

    public void removeCellLayoutView(View view) {
        for (int i = getChildCount() - 1; i >= 0; i--) {
            getPageAt(i).removeView(view);
        }
    }

    public CellLayout getCurrentCellLayout() {
        return getPageAt(getNextPage());
    }

    private CellLayout createAndAddNewPage() {
        DeviceProfile grid = ((Launcher) getContext()).getDeviceProfile();
        CellLayout page = new CellLayout(getContext());
        page.setCellDimensions(grid.folderCellWidthPx, (int) (grid.folderCellHeightPx * Utilities.getIconScaleValue(getContext())));
        page.getShortcutsAndWidgets().setMotionEventSplittingEnabled(false);
        page.setImportantForAccessibility(2);
        page.setInvertIfRtl(true);
        page.setGridSize(this.mGridCountX, this.mGridCountY);
        addView(page, -1, generateDefaultLayoutParams());
        return page;
    }

    @Override // net.oneplus.h2launcher.PagedView
    protected int getChildGap() {
        return getPaddingLeft() + getPaddingRight();
    }

    public void setFixedSize(int width, int height) {
        int width2 = width - (getPaddingLeft() + getPaddingRight());
        int height2 = height - (getPaddingTop() + getPaddingBottom());
        for (int i = getChildCount() - 1; i >= 0; i--) {
            ((CellLayout) getChildAt(i)).setFixedSize(width2, height2);
        }
    }

    public void setScaledSize() {
        DeviceProfile grid = ((Launcher) getContext()).getDeviceProfile();
        for (int i = getChildCount() - 1; i >= 0; i--) {
            ((CellLayout) getChildAt(i)).setCellDimensions(grid.folderCellWidthPx, (int) (grid.folderCellHeightPx * Utilities.getIconScaleValue(getContext())));
        }
    }

    public void setChildTextColor(int color) {
        for (int i = 0; i < getChildCount(); i++) {
            CellLayout page = (CellLayout) getChildAt(i);
            for (int j = 0; j < page.getShortcutsAndWidgets().getChildCount(); j++) {
                View v = page.getShortcutsAndWidgets().getChildAt(j);
                if (v instanceof BubbleTextView) {
                    ((BubbleTextView) v).setTextColor(color);
                }
            }
        }
    }

    public void removeItem(View v) {
        for (int i = getChildCount() - 1; i >= 0; i--) {
            getPageAt(i).removeView(v);
        }
    }

    public void arrangeChildren(ArrayList<View> list, int itemCount) {
        arrangeChildren(list, itemCount, true);
    }

    @SuppressLint({"RtlHardcoded"})
    private void arrangeChildren(ArrayList<View> list, int itemCount, boolean saveChanges) {
        int i;
        ArrayList<CellLayout> pages = new ArrayList<>();
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            CellLayout page = (CellLayout) getChildAt(i2);
            page.removeAllViews();
            pages.add(page);
        }
        setupContentDimensions(itemCount);
        Iterator<CellLayout> pageItr = pages.iterator();
        CellLayout currentPage = null;
        int position = 0;
        int rank = 0;
        int availablePageCount = 0;
        int i3 = 0;
        while (i3 < itemCount) {
            View v = list.size() > i3 ? list.get(i3) : null;
            if (currentPage == null || position >= this.mMaxItemsPerPage) {
                if (pageItr.hasNext()) {
                    CellLayout currentPage2 = pageItr.next();
                    currentPage = currentPage2;
                } else {
                    currentPage = createAndAddNewPage();
                }
                position = 0;
                availablePageCount++;
            }
            if (v != null) {
                CellLayout.LayoutParams lp = (CellLayout.LayoutParams) v.getLayoutParams();
                int newX = position % this.mGridCountX;
                int newY = position / this.mGridCountX;
                ItemInfo info = (ItemInfo) v.getTag();
                if (info.cellX != newX || info.cellY != newY || info.rank != rank) {
                    info.cellX = newX;
                    info.cellY = newY;
                    info.rank = rank;
                    if (saveChanges) {
                        LauncherModel.addOrMoveItemInDatabase(getContext(), info, this.mFolder.mInfo.id, 0L, info.cellX, info.cellY);
                    }
                }
                lp.cellX = info.cellX;
                lp.cellY = info.cellY;
                currentPage.addViewToCellLayout(v, -1, this.mFolder.mLauncher.getViewIdForItem(info), lp, true);
                if (rank < FolderIcon.getNumItemsInPreview() && (v instanceof BubbleTextView)) {
                    ((BubbleTextView) v).verifyHighRes();
                }
            }
            rank++;
            position++;
            i3++;
        }
        boolean removed = false;
        while (pageItr.hasNext()) {
            removeView(pageItr.next());
            removed = true;
        }
        if (removed) {
            int nowPage = getNextPage();
            int lastPage = availablePageCount - 1;
            if (lastPage < 0) {
                lastPage = 0;
            }
            if (nowPage > lastPage) {
                setCurrentPage(lastPage);
            }
        }
        setEnableOverscroll(getPageCount() > 1);
        this.mPageIndicator.setVisibility(getPageCount() > 1 ? 0 : 8);
        ExtendedEditText extendedEditText = this.mFolder.mFolderName;
        if (getPageCount() > 1) {
            i = this.mIsRtl ? 5 : 3;
        } else {
            i = 1;
        }
        extendedEditText.setGravity(i);
    }

    public int getDesiredWidth() {
        if (getPageCount() > 0) {
            return getPageAt(0).getDesiredWidth() + getPaddingLeft() + getPaddingRight();
        }
        return 0;
    }

    public int getDesiredHeight() {
        if (getPageCount() > 0) {
            return getPageAt(0).getDesiredHeight() + getPaddingTop() + getPaddingBottom();
        }
        return 0;
    }

    public int getItemCount() {
        int lastPageIndex = getChildCount() - 1;
        if (lastPageIndex < 0) {
            return 0;
        }
        return getPageAt(lastPageIndex).getShortcutsAndWidgets().getChildCount() + (this.mMaxItemsPerPage * lastPageIndex);
    }

    public int findNearestArea(int pixelX, int pixelY) {
        int pageIndex = getNextPage();
        CellLayout page = getPageAt(pageIndex);
        page.findNearestArea(pixelX, pixelY, 1, 1, sTempPosArray);
        if (this.mFolder.isLayoutRtl()) {
            sTempPosArray[0] = (page.getCountX() - sTempPosArray[0]) - 1;
        }
        return Math.min(this.mAllocatedContentSize - 1, (this.mMaxItemsPerPage * pageIndex) + (sTempPosArray[1] * this.mGridCountX) + sTempPosArray[0]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.PagedView
    public PageIndicator.PageMarkerResources getPageIndicatorMarker(int pageIndex) {
        return new PageIndicator.PageMarkerResources(R.drawable.ic_pageindicator_current_folder, R.drawable.ic_pageindicator_default_folder);
    }

    public boolean isFull() {
        return false;
    }

    public View getLastItem() {
        if (getChildCount() < 1) {
            return null;
        }
        ShortcutAndWidgetContainer lastContainer = getCurrentCellLayout().getShortcutsAndWidgets();
        int lastRank = lastContainer.getChildCount() - 1;
        if (this.mGridCountX > 0) {
            return lastContainer.getChildAt(lastRank % this.mGridCountX, lastRank / this.mGridCountX);
        }
        return lastContainer.getChildAt(lastRank);
    }

    public View iterateOverItems(Workspace.ItemOperator op) {
        for (int k = 0; k < getChildCount(); k++) {
            CellLayout page = getPageAt(k);
            for (int j = 0; j < page.getCountY(); j++) {
                for (int i = 0; i < page.getCountX(); i++) {
                    View v = page.getChildAt(i, j);
                    if (v != null && op.evaluate((ItemInfo) v.getTag(), v, this)) {
                        return v;
                    }
                }
            }
        }
        return null;
    }

    public String getAccessibilityDescription() {
        return String.format(getContext().getString(R.string.folder_opened), Integer.valueOf(this.mGridCountX), Integer.valueOf(this.mGridCountY));
    }

    public void setFocusOnFirstChild() {
        View firstChild = getCurrentCellLayout().getChildAt(0, 0);
        if (firstChild != null) {
            firstChild.requestFocus();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.PagedView
    public void notifyPageSwitchListener() {
        super.notifyPageSwitchListener();
        if (this.mFolder != null) {
            this.mFolder.updateTextViewFocus();
        }
        updateDynamicIconState();
    }

    public void showScrollHint(int direction) {
        float fraction = (direction == 0) ^ this.mIsRtl ? -0.07f : SCROLL_HINT_FRACTION;
        int hint = (int) (getWidth() * fraction);
        int scroll = getScrollForPage(getNextPage()) + hint;
        int delta = scroll - getScrollX();
        if (delta != 0) {
            this.mScroller.setInterpolator(new DecelerateInterpolator());
            this.mScroller.startScroll(getScrollX(), 0, delta, 0, 500);
            invalidate();
        }
    }

    public void clearScrollHint() {
        if (getScrollX() != getScrollForPage(getNextPage())) {
            snapToPage(getNextPage());
        }
    }

    public void completePendingPageChanges() {
        if (!this.mPendingAnimations.isEmpty()) {
            HashMap<View, Runnable> pendingViews = new HashMap<>(this.mPendingAnimations);
            for (Map.Entry<View, Runnable> e : pendingViews.entrySet()) {
                e.getKey().animate().cancel();
                e.getValue().run();
            }
        }
    }

    public boolean rankOnCurrentPage(int rank) {
        int p = rank / this.mMaxItemsPerPage;
        return p == getNextPage();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.oneplus.h2launcher.PagedView
    public void onPageBeginMoving() {
        super.onPageBeginMoving();
        getVisiblePages(sTempPosArray);
        for (int i = sTempPosArray[0]; i <= sTempPosArray[1]; i++) {
            verifyVisibleHighResIcons(i);
        }
    }

    public void verifyVisibleHighResIcons(int pageNo) {
        CellLayout page = getPageAt(pageNo);
        if (page != null) {
            ShortcutAndWidgetContainer parent = page.getShortcutsAndWidgets();
            for (int i = parent.getChildCount() - 1; i >= 0; i--) {
                ((BubbleTextView) parent.getChildAt(i)).verifyHighRes();
            }
        }
    }

    public int getAllocatedContentSize() {
        return this.mAllocatedContentSize;
    }

    public void realTimeReorder(int empty, int target) {
        int direction;
        int moveEnd;
        int moveStart;
        int startPos;
        int endPos;
        completePendingPageChanges();
        int delay = 0;
        float delayAmount = 30.0f;
        int pageToAnimate = getNextPage();
        int pageT = target / this.mMaxItemsPerPage;
        int pagePosT = target % this.mMaxItemsPerPage;
        if (pageT != pageToAnimate) {
            Log.e(TAG, "Cannot animate when the target cell is invisible");
        }
        int pagePosE = empty % this.mMaxItemsPerPage;
        int pageE = empty / this.mMaxItemsPerPage;
        if (target != empty) {
            if (target > empty) {
                direction = 1;
                if (pageE < pageToAnimate) {
                    moveStart = empty;
                    moveEnd = pageToAnimate * this.mMaxItemsPerPage;
                    startPos = 0;
                } else {
                    moveEnd = -1;
                    moveStart = -1;
                    startPos = pagePosE;
                }
                endPos = pagePosT;
            } else {
                direction = -1;
                if (pageE > pageToAnimate) {
                    moveStart = empty;
                    moveEnd = ((pageToAnimate + 1) * this.mMaxItemsPerPage) - 1;
                    startPos = this.mMaxItemsPerPage - 1;
                } else {
                    moveEnd = -1;
                    moveStart = -1;
                    startPos = pagePosE;
                }
                endPos = pagePosT;
            }
            while (moveStart != moveEnd) {
                int rankToMove = moveStart + direction;
                int p = rankToMove / this.mMaxItemsPerPage;
                int pagePos = rankToMove % this.mMaxItemsPerPage;
                int x = pagePos % this.mGridCountX;
                int y = pagePos / this.mGridCountX;
                CellLayout page = getPageAt(p);
                final View v = page.getChildAt(x, y);
                if (v != null) {
                    if (pageToAnimate != p) {
                        page.removeView(v);
                        addViewForRank(v, (ShortcutInfo) v.getTag(), moveStart);
                    } else {
                        final int newRank = moveStart;
                        final float oldTranslateX = v.getTranslationX();
                        Runnable endAction = new Runnable() { // from class: net.oneplus.h2launcher.FolderPagedView.1
                            @Override // java.lang.Runnable
                            public void run() {
                                FolderPagedView.this.mPendingAnimations.remove(v);
                                v.setTranslationX(oldTranslateX);
                                ((CellLayout) v.getParent().getParent()).removeView(v);
                                FolderPagedView.this.addViewForRank(v, (ShortcutInfo) v.getTag(), newRank);
                            }
                        };
                        v.animate().translationXBy((direction > 0) ^ this.mIsRtl ? -v.getWidth() : v.getWidth()).setDuration(230L).setStartDelay(0L).withEndAction(endAction);
                        this.mPendingAnimations.put(v, endAction);
                    }
                }
                moveStart = rankToMove;
            }
            if ((endPos - startPos) * direction > 0) {
                CellLayout page2 = getPageAt(pageToAnimate);
                for (int i = startPos; i != endPos; i += direction) {
                    int nextPos = i + direction;
                    View v2 = page2.getChildAt(nextPos % this.mGridCountX, nextPos / this.mGridCountX);
                    if (v2 != null) {
                        ((ItemInfo) v2.getTag()).rank -= direction;
                    }
                    if (page2.animateChildToPosition(v2, i % this.mGridCountX, i / this.mGridCountX, REORDER_ANIMATION_DURATION, delay, true, true)) {
                        delay = (int) (delay + delayAmount);
                        delayAmount *= VIEW_REORDER_DELAY_FACTOR;
                    }
                }
            }
        }
    }

    public void setMarkerScale(float scale) {
        int count = this.mPageIndicator.getChildCount();
        for (int i = 0; i < count; i++) {
            View marker = this.mPageIndicator.getChildAt(i);
            marker.animate().cancel();
            marker.setScaleX(scale);
            marker.setScaleY(scale);
        }
    }

    public void animateMarkers() {
        int count = this.mPageIndicator.getChildCount();
        Interpolator interpolator = new OvershootInterpolator(PAGE_INDICATOR_OVERSHOOT_TENSION);
        for (int i = 0; i < count; i++) {
            this.mPageIndicator.getChildAt(i).animate().scaleX(1.0f).scaleY(1.0f).setInterpolator(interpolator).setDuration(400L).setStartDelay((i * PAGE_INDICATOR_ANIMATION_STAGGERED_DELAY) + 300);
        }
    }

    public int itemsPerPage() {
        return this.mMaxItemsPerPage;
    }

    @Override // net.oneplus.h2launcher.PagedView
    protected void getEdgeVerticalPostion(int[] pos) {
        pos[0] = 0;
        pos[1] = getViewportHeight();
    }

    public void updateDynamicIconState() {
        CellLayout layout = getCurrentCellLayout();
        if (layout != null) {
            layout.updateDynamicIconState();
        }
    }

    public void finishUpdateDynamicIconState() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            CellLayout layout = (CellLayout) getChildAt(i);
            layout.finishUpdateDynamicIconState();
        }
    }
}
