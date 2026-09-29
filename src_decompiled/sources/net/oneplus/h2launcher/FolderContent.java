package net.oneplus.h2launcher;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import net.oneplus.h2launcher.CellLayout;
import net.oneplus.h2launcher.Workspace;
import net.oneplus.h2launcher.dynamicicon.IDynamicShortcut;
import net.oneplus.h2launcher.oos.StyleManager;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class FolderContent extends LinearLayout {
    static final int GRID_COUNT_X = 4;
    static final int GRID_COUNT_Y = 3;
    private static final int REORDER_ANIMATION_DURATION = 230;
    private static final int START_VIEW_REORDER_DELAY = 30;
    private static final float VIEW_REORDER_DELAY_FACTOR = 0.9f;
    private int mAllocatedContentSize;
    private final AssetCache mAssetCache;
    private final int mContentHeight;
    private final int mContentWidth;
    private Folder mFolder;

    @ViewDebug.ExportedProperty(category = "launcher")
    private int mGridCountX;

    @ViewDebug.ExportedProperty(category = "launcher")
    private int mGridCountY;
    private final LayoutInflater mInflater;
    public final boolean mIsRtl;

    @ViewDebug.ExportedProperty(category = "launcher")
    private final int mMaxItemsPerPage;
    final HashMap<View, Runnable> mPendingAnimations;
    private static final int[] sTempPosArray = new int[2];
    private static final String TAG = FolderContent.class.getSimpleName();

    public FolderContent(Context context) {
        this(context, null);
    }

    public FolderContent(Context context, @Nullable AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public FolderContent(Context context, @Nullable AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mPendingAnimations = new HashMap<>();
        LauncherAppState app = LauncherAppState.getInstance();
        this.mInflater = LayoutInflater.from(context);
        this.mAssetCache = app.getAssetCache();
        Resources resources = getResources();
        this.mIsRtl = Utilities.isRtl(resources);
        this.mContentWidth = Utilities.getDimensionPixelNormalized(context, R.dimen.folder_width) - (resources.getDimensionPixelSize(R.dimen.folder_content_padding_horizontal) * 2);
        this.mContentHeight = Utilities.getDimensionPixelNormalized(context, R.dimen.folder_height) - (resources.getDimensionPixelSize(R.dimen.folder_content_padding_vertical) * 2);
        this.mMaxItemsPerPage = Integer.MAX_VALUE;
    }

    public void setFolder(Folder folder) {
        this.mFolder = folder;
    }

    private void setupContentDimensions(int count) {
        this.mAllocatedContentSize = count;
        this.mGridCountX = 4;
        this.mGridCountY = (int) Math.ceil(count / this.mGridCountX);
        for (int i = getChildCount() - 1; i >= 0; i--) {
            getPageAt(i).setGridSize(this.mGridCountX, this.mGridCountY);
        }
    }

    public void bindItems(List<ShortcutInfo> items) {
        ArrayList<View> icons = new ArrayList<>();
        for (ShortcutInfo item : items) {
            icons.add(createNewView(item));
        }
        arrangeChildren(icons, icons.size(), false);
    }

    public int allocateRankForNewItem() {
        int rank = getItemCount();
        ArrayList<View> views = new ArrayList<>(this.mFolder.getItemsInReadingOrder());
        views.add(rank, null);
        arrangeChildren(views, views.size(), false);
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
        textView.setOnClickListener(this.mFolder);
        textView.setOnLongClickListener(this.mFolder);
        textView.setLayoutParams(new CellLayout.LayoutParams(shortcutInfo.cellX, shortcutInfo.cellY, shortcutInfo.spanX, shortcutInfo.spanY));
        return textView;
    }

    public CellLayout getPageAt(int index) {
        return (CellLayout) getChildAt(index);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getPageCount() {
        return getChildCount();
    }

    public CellLayout getCurrentCellLayout() {
        return getPageAt(0);
    }

    private CellLayout createAndAddNewPage() {
        int cellWidth = this.mContentWidth / 4;
        int cellHeight = this.mContentHeight / 3;
        FolderCellLayout page = new FolderCellLayout(getContext());
        page.setCellDimensions(cellWidth, cellHeight);
        page.getShortcutsAndWidgets().setMotionEventSplittingEnabled(false);
        page.setImportantForAccessibility(2);
        page.setInvertIfRtl(true);
        page.setGridSize(this.mGridCountX, this.mGridCountY);
        addView(page, -1, new LinearLayout.LayoutParams(this.mContentWidth, this.mContentHeight));
        return page;
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
        ArrayList<CellLayout> pages = new ArrayList<>();
        for (int i = 0; i < getChildCount(); i++) {
            CellLayout page = (CellLayout) getChildAt(i);
            page.removeAllViews();
            pages.add(page);
        }
        setupContentDimensions(itemCount);
        Iterator<CellLayout> pageItr = pages.iterator();
        CellLayout currentPage = null;
        int position = 0;
        int rank = 0;
        int i2 = 0;
        while (i2 < itemCount) {
            View v = list.size() > i2 ? list.get(i2) : null;
            if (currentPage == null || position >= this.mMaxItemsPerPage) {
                if (pageItr.hasNext()) {
                    CellLayout currentPage2 = pageItr.next();
                    currentPage = currentPage2;
                } else {
                    currentPage = createAndAddNewPage();
                }
                position = 0;
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
                if (v.getParent() != null) {
                    ((ViewGroup) v.getParent()).removeView(v);
                }
                currentPage.addViewToCellLayout(v, -1, this.mFolder.mLauncher.getViewIdForItem(info), lp, true);
                if (rank < FolderIcon.sNumItemsInPreview && (v instanceof BubbleTextView)) {
                    ((BubbleTextView) v).verifyHighRes();
                }
            }
            rank++;
            position++;
            i2++;
        }
        if (currentPage != null) {
            int currentHeight = currentPage.getLayoutParams().height;
            int expectedHeight = (int) (this.mGridCountY * getItemHeight());
            Logger.d(TAG, "currentHeight=" + currentHeight + ", expectedHeight=" + expectedHeight);
            if (currentHeight != expectedHeight) {
                currentPage.getLayoutParams().height = expectedHeight;
            }
        }
    }

    public int getItemCount() {
        int lastPageIndex = getChildCount() - 1;
        if (lastPageIndex < 0) {
            return 0;
        }
        return getPageAt(lastPageIndex).getShortcutsAndWidgets().getChildCount() + (this.mMaxItemsPerPage * lastPageIndex);
    }

    public int findNearestArea(int pixelX, int pixelY) {
        CellLayout page = getPageAt(0);
        page.findNearestArea(pixelX, pixelY, 1, 1, sTempPosArray);
        if (this.mFolder.isLayoutRtl()) {
            sTempPosArray[0] = (page.getCountX() - sTempPosArray[0]) - 1;
        }
        return Math.min(this.mAllocatedContentSize - 1, (this.mMaxItemsPerPage * 0) + (sTempPosArray[1] * this.mGridCountX) + sTempPosArray[0]);
    }

    public boolean isFull() {
        return false;
    }

    public View getFirstItem() {
        if (getChildCount() < 1) {
            return null;
        }
        ShortcutAndWidgetContainer currContainer = getCurrentCellLayout().getShortcutsAndWidgets();
        if (this.mGridCountX > 0) {
            return currContainer.getChildAt(0, 0);
        }
        return currContainer.getChildAt(0);
    }

    public View getLastItem() {
        if (getChildCount() < 1) {
            return null;
        }
        return ((FolderCellLayout) getCurrentCellLayout()).getLastItem();
    }

    public View iterateOverItems(Workspace.ItemOperator op) {
        for (int k = 0; k < getChildCount(); k++) {
            CellLayout page = getPageAt(k);
            for (int j = 0; j < page.getCountY(); j++) {
                for (int i = 0; i < page.getCountX(); i++) {
                    View v = page.getChildAt(i, j);
                    if (v != null && op.evaluate((ItemInfo) v.getTag(), v, (View) v.getParent())) {
                        return v;
                    }
                }
            }
        }
        return null;
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

    public void verifyVisibleHighResIcons() {
        CellLayout page = getPageAt(0);
        if (page != null) {
            ShortcutAndWidgetContainer parent = page.getShortcutsAndWidgets();
            for (int i = parent.getChildCount() - 1; i >= 0; i--) {
                ((BubbleTextView) parent.getChildAt(i)).verifyHighRes();
            }
        }
    }

    public void setFocusOnFirstChild() {
        View firstChild = getCurrentCellLayout().getChildAt(0, 0);
        if (firstChild != null) {
            firstChild.requestFocus();
        }
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
        int pageT = target / this.mMaxItemsPerPage;
        int pagePosT = target % this.mMaxItemsPerPage;
        if (pageT != 0) {
            Log.e(TAG, "Cannot animate when the target cell is invisible");
        }
        int pagePosE = empty % this.mMaxItemsPerPage;
        int pageE = empty / this.mMaxItemsPerPage;
        if (target != empty) {
            if (target > empty) {
                direction = 1;
                if (pageE < 0) {
                    moveStart = empty;
                    moveEnd = 0 * this.mMaxItemsPerPage;
                    startPos = 0;
                } else {
                    moveEnd = -1;
                    moveStart = -1;
                    startPos = pagePosE;
                }
                endPos = pagePosT;
            } else {
                direction = -1;
                if (pageE > 0) {
                    moveStart = empty;
                    moveEnd = (this.mMaxItemsPerPage * 1) - 1;
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
                    if (0 != p) {
                        page.removeView(v);
                        addViewForRank(v, (ShortcutInfo) v.getTag(), moveStart);
                    } else {
                        final int newRank = moveStart;
                        final float oldTranslateX = v.getTranslationX();
                        Runnable endAction = new Runnable() { // from class: net.oneplus.h2launcher.FolderContent.1
                            @Override // java.lang.Runnable
                            public void run() {
                                FolderContent.this.mPendingAnimations.remove(v);
                                v.setTranslationX(oldTranslateX);
                                ((CellLayout) v.getParent().getParent()).removeView(v);
                                FolderContent.this.addViewForRank(v, (ShortcutInfo) v.getTag(), newRank);
                            }
                        };
                        v.animate().translationXBy((direction > 0) ^ this.mIsRtl ? -v.getWidth() : v.getWidth()).setDuration(230L).setStartDelay(0L).withEndAction(endAction);
                        this.mPendingAnimations.put(v, endAction);
                    }
                }
                moveStart = rankToMove;
            }
            if ((endPos - startPos) * direction > 0) {
                CellLayout page2 = getPageAt(0);
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

    public int itemsPerPage() {
        return this.mMaxItemsPerPage;
    }

    public float getItemHeight() {
        return getPageAt(0).getCellHeight();
    }

    public int getGridCountY() {
        return this.mGridCountY;
    }

    public void updateCurrentPageDynamicIconState() {
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

    public void setScaledSize() {
    }
}
