package net.oneplus.h2launcher.iconrearrangement;

import android.animation.Animator;
import android.content.ComponentName;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import android.widget.RelativeLayout;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import net.oneplus.h2launcher.AppInfo;
import net.oneplus.h2launcher.AssetCache;
import net.oneplus.h2launcher.BubbleTextView;
import net.oneplus.h2launcher.CellLayout;
import net.oneplus.h2launcher.Folder;
import net.oneplus.h2launcher.FolderIcon;
import net.oneplus.h2launcher.FolderInfo;
import net.oneplus.h2launcher.ItemInfo;
import net.oneplus.h2launcher.Launcher;
import net.oneplus.h2launcher.LauncherAppState;
import net.oneplus.h2launcher.LauncherModel;
import net.oneplus.h2launcher.LauncherViewPropertyAnimator;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.ShortcutInfo;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.Workspace;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.dynamicicon.IDynamicShortcut;
import net.oneplus.h2launcher.util.AnalyticHelper;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.TaskWorker;

/* loaded from: classes.dex */
public class IconRearrangementHelper {
    private static final int ANIMATION_DELAY_DURATION = 50;
    private static final int ANIMATION_DURATION = 400;
    private static final float MOVING_PIXEL_PER_MICRO_SECOND = 1.4f;
    private static final String TAG = IconRearrangementHelper.class.getSimpleName();
    private int mIconWidth;
    private LayoutInflater mInflater;
    private Boolean mIsRunningTask;
    Launcher mLauncher;
    private int mListViewItemWidth;
    IconRearrangementPanel mPanel;
    private Runnable mRunningTask;
    IconRearrangementContainerView mView;
    private HashMap<ShortcutInfo, IconPositionInfo> mSourceIconPositionMap = new HashMap<>();
    private HashMap<ShortcutInfo, IconPositionInfo> mTargetIconPositionMap = new HashMap<>();
    private HashMap<FolderIcon, IconPositionInfo> mFolderIconPositionMap = new HashMap<>();
    private HashSet<Animator> mRunningAnimators = new HashSet<>();
    private HashSet<Animator> mInFolderRunningAnimators = new HashSet<>();
    private ArrayList<Runnable> mTaskQueue = new ArrayList<>();
    private TaskStageCallback mTaskStageCallback = new TaskStageCallback() { // from class: net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.1
        @Override // net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.TaskStageCallback
        public void onTaskEnd(Runnable r) {
            boolean needConsumeQueue = false;
            if (r == IconRearrangementHelper.this.mRunningTask) {
                synchronized (IconRearrangementHelper.this.mIsRunningTask) {
                    if (IconRearrangementHelper.this.mIsRunningTask.booleanValue()) {
                        IconRearrangementHelper.this.mRunningTask = null;
                        IconRearrangementHelper.this.mIsRunningTask = false;
                        needConsumeQueue = true;
                    }
                }
                if (needConsumeQueue) {
                    IconRearrangementHelper.this.consumeQueue();
                }
            }
        }
    };
    private Interpolator mMergeFolderItemInterpolator = new PathInterpolator(0.7f, 0.0f, 0.9f, 1.0f);

    /* loaded from: classes.dex */
    public interface TaskStageCallback {
        void onTaskEnd(Runnable runnable);
    }

    public IconRearrangementHelper(Launcher launcher, IconRearrangementContainerView containverView) {
        this.mIsRunningTask = true;
        this.mLauncher = launcher;
        this.mView = containverView;
        this.mPanel = containverView.getIconRearrangementPanel();
        this.mPanel.setIconRearrangementHelper(this);
        this.mIsRunningTask = false;
        this.mInflater = this.mLauncher.getLayoutInflater();
        this.mIconWidth = this.mLauncher.getResources().getDimensionPixelOffset(R.dimen.icon_rearrangement_icon_size);
        this.mListViewItemWidth = this.mLauncher.getResources().getDimensionPixelOffset(R.dimen.icon_rearrangement_item_width);
    }

    public void addShortcut(final View view) {
        Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.2
            /* JADX WARN: Code restructure failed: missing block: B:17:0x004f, code lost:
            
                r8.this$0.mSourceIconPositionMap.remove(r2);
                r8.this$0.mTaskStageCallback.onTaskEnd(r8);
             */
            /* JADX WARN: Code restructure failed: missing block: B:18:?, code lost:
            
                return;
             */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() {
                /*
                    r8 = this;
                    android.view.View r0 = r2
                    java.lang.Object r2 = r0.getTag()
                    net.oneplus.h2launcher.ShortcutInfo r2 = (net.oneplus.h2launcher.ShortcutInfo) r2
                    net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper r0 = net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.this
                    java.util.HashMap r0 = net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.access$200(r0)
                    java.lang.Object r7 = r0.get(r2)
                    net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper$IconPositionInfo r7 = (net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.IconPositionInfo) r7
                    if (r7 != 0) goto L43
                    net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper$IconPositionInfo r7 = new net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper$IconPositionInfo
                    net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper r0 = net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.this
                    r7.<init>()
                    net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper r0 = net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.this
                    java.util.HashMap r0 = net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.access$200(r0)
                    r0.put(r2, r7)
                    android.view.View r0 = r2
                    android.view.ViewParent r6 = r0.getParent()
                    r4 = 0
                L2d:
                    if (r6 == 0) goto L4d
                    boolean r0 = r6 instanceof net.oneplus.h2launcher.Workspace
                    if (r0 != 0) goto L4d
                    boolean r0 = r6 instanceof net.oneplus.h2launcher.Folder
                    if (r0 != 0) goto L4d
                    boolean r0 = r6 instanceof net.oneplus.h2launcher.CellLayout
                    if (r0 == 0) goto L3e
                    r4 = r6
                    net.oneplus.h2launcher.CellLayout r4 = (net.oneplus.h2launcher.CellLayout) r4
                L3e:
                    android.view.ViewParent r6 = r6.getParent()
                    goto L2d
                L43:
                    net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper r0 = net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.this
                    net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper$TaskStageCallback r0 = net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.access$300(r0)
                    r0.onTaskEnd(r8)
                L4c:
                    return
                L4d:
                    if (r6 != 0) goto L62
                    net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper r0 = net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.this
                    java.util.HashMap r0 = net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.access$200(r0)
                    r0.remove(r2)
                    net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper r0 = net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.this
                    net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper$TaskStageCallback r0 = net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.access$300(r0)
                    r0.onTaskEnd(r8)
                    goto L4c
                L62:
                    boolean r0 = r6 instanceof net.oneplus.h2launcher.Workspace
                    if (r0 == 0) goto L81
                    net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper r0 = net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.this
                    android.view.View r1 = r2
                    net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.access$400(r0, r1, r2, r4, r8)
                L6d:
                    net.oneplus.h2launcher.util.TaskWorker r0 = net.oneplus.h2launcher.util.TaskWorker.get()
                    net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper$2$1 r1 = new net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper$2$1
                    r1.<init>()
                    r0.post(r1)
                    net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper r0 = net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.this
                    net.oneplus.h2launcher.iconrearrangement.IconRearrangementPanel r0 = r0.mPanel
                    r0.addShortcutInfo(r2)
                    goto L4c
                L81:
                    boolean r0 = r6 instanceof net.oneplus.h2launcher.Folder
                    if (r0 == 0) goto La6
                    net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper r0 = net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.this
                    android.view.View r1 = r2
                    r3 = r6
                    net.oneplus.h2launcher.Folder r3 = (net.oneplus.h2launcher.Folder) r3
                    r5 = r8
                    boolean r0 = net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.access$500(r0, r1, r2, r3, r4, r5)
                    if (r0 != 0) goto L6d
                    net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper r0 = net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.this
                    java.util.HashMap r0 = net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.access$200(r0)
                    r0.remove(r2)
                    net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper r0 = net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.this
                    net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper$TaskStageCallback r0 = net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.access$300(r0)
                    r0.onTaskEnd(r8)
                    goto L4c
                La6:
                    net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper r0 = net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.this
                    java.util.HashMap r0 = net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.access$200(r0)
                    r0.remove(r2)
                    net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper r0 = net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.this
                    net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper$TaskStageCallback r0 = net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.access$300(r0)
                    r0.onTaskEnd(r8)
                    goto L4c
                */
                throw new UnsupportedOperationException("Method not decompiled: net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.AnonymousClass2.run():void");
            }
        };
        this.mTaskQueue.add(r);
        consumeQueue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addShortcutFromWorkspace(final View view, ShortcutInfo info, final CellLayout parentLayout, final Runnable task) {
        IconPositionInfo positionInfo = this.mSourceIconPositionMap.get(info);
        positionInfo.fromWorkspace = true;
        positionInfo.parentLayout = parentLayout;
        positionInfo.cellX = info.cellX;
        positionInfo.cellY = info.cellY;
        positionInfo.inFolderIcon = null;
        Runnable runnable = new Runnable() { // from class: net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.3
            @Override // java.lang.Runnable
            public void run() {
                if (parentLayout != null) {
                    parentLayout.removeView(view);
                }
                IconRearrangementHelper.this.removeLastEmptyScreenIfLayoutIsNotExtra();
                IconRearrangementHelper.this.mTaskStageCallback.onTaskEnd(task);
            }
        };
        LauncherViewPropertyAnimator animator = getViewAlphaAnimator(view, runnable);
        this.mRunningAnimators.add(animator);
        animator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean addShortcutFromFolder(View view, final ShortcutInfo info, final Folder folder, CellLayout parentLayout, final Runnable task) {
        IconPositionInfo positionInfo = this.mSourceIconPositionMap.get(info);
        positionInfo.fromWorkspace = false;
        positionInfo.parentLayout = parentLayout;
        positionInfo.inFolderIcon = folder.getFolderIcon();
        if (!this.mFolderIconPositionMap.containsKey(positionInfo.inFolderIcon)) {
            IconPositionInfo folderIconPosition = new IconPositionInfo();
            folderIconPosition.fromWorkspace = true;
            folderIconPosition.parentLayout = parentLayout;
            FolderInfo folderInfo = folder.getInfo();
            folderIconPosition.cellX = folderInfo.cellX;
            folderIconPosition.cellY = folderInfo.cellY;
            folderIconPosition.inFolderIcon = null;
            this.mFolderIconPositionMap.put(positionInfo.inFolderIcon, folderIconPosition);
        }
        Runnable runnable = new Runnable() { // from class: net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.4
            @Override // java.lang.Runnable
            public void run() {
                folder.getInfo().remove(info);
                if (folder.getItemCount() > 0) {
                    if (IconRearrangementHelper.this.mLauncher.getWorkspace().getOpenFolder() == null) {
                        folder.rearrangeChildren();
                    }
                    folder.resizeView();
                    folder.invalidate();
                } else {
                    IconRearrangementHelper.this.mLauncher.closeFolder();
                    IconRearrangementHelper.this.removeLastEmptyScreenIfLayoutIsNotExtra();
                }
                IconRearrangementHelper.this.mTaskStageCallback.onTaskEnd(task);
            }
        };
        if (folder.isDestroyed()) {
            return false;
        }
        LauncherViewPropertyAnimator animator = getViewAlphaAnimator(view, runnable);
        this.mRunningAnimators.add(animator);
        this.mInFolderRunningAnimators.add(animator);
        animator.start();
        return true;
    }

    private LauncherViewPropertyAnimator getViewAlphaAnimator(View v, final Runnable endRunnable) {
        LauncherViewPropertyAnimator alphaAnim = new LauncherViewPropertyAnimator(v);
        alphaAnim.alpha(0.0f);
        alphaAnim.setDuration(400L);
        alphaAnim.addListener(new Animator.AnimatorListener() { // from class: net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.5
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animation) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                endRunnable.run();
                IconRearrangementHelper.this.mRunningAnimators.remove(animation);
                IconRearrangementHelper.this.mInFolderRunningAnimators.remove(animation);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animation) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animation) {
            }
        });
        return alphaAnim;
    }

    public void dropIcon(final ShortcutInfo shortcutInfo, final View selectView) {
        Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.6
            @Override // java.lang.Runnable
            public void run() {
                Workspace workspace = IconRearrangementHelper.this.mLauncher.getWorkspace();
                if (workspace.getOpenFolder() != null) {
                    IconRearrangementHelper.this.dropIconToFolder(shortcutInfo, selectView, this);
                } else {
                    IconRearrangementHelper.this.dropIconToWorkspace(shortcutInfo, selectView, this);
                }
            }
        };
        this.mTaskQueue.add(r);
        consumeQueue();
    }

    public void dropIconToWorkspace(final ShortcutInfo shortcutInfo, View selectView, Runnable task) {
        Workspace workspace = this.mLauncher.getWorkspace();
        int currentPage = workspace.getNextPage();
        IconPositionInfo positionInfo = this.mSourceIconPositionMap.get(shortcutInfo);
        if (positionInfo == null) {
            this.mTaskStageCallback.onTaskEnd(task);
            return;
        }
        int childCount = workspace.getChildCount();
        for (int i = currentPage; i < childCount; i++) {
            CellLayout layout = (CellLayout) workspace.getChildAt(i);
            final int[] cell = new int[2];
            if (layout.findCellForSpan(cell, 1, 1) && !layout.isDeleted()) {
                processAddScreenIfLayoutIsExtra(layout);
                final View child = this.mLauncher.createShortcut(layout, shortcutInfo);
                child.setAlpha(0.0f);
                long container = this.mLauncher.isHotseatLayout(layout) ? -101L : -100L;
                final long screenId = workspace.getIdForScreen(layout);
                workspace.addInScreen(child, container, screenId, cell[0], cell[1], 1, 1);
                this.mLauncher.getViewIdForItem(shortcutInfo);
                final long j = container;
                TaskWorker.get().post(new Runnable() { // from class: net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.7
                    @Override // java.lang.Runnable
                    public void run() {
                        LauncherModel.modifyItemInDatabase(IconRearrangementHelper.this.mLauncher, shortcutInfo, j, screenId, cell[0], cell[1], 1, 1);
                    }
                });
                selectView.setPressed(false);
                workspace.snapToPage(i);
                Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.8
                    @Override // java.lang.Runnable
                    public void run() {
                        IconRearrangementHelper.this.mSourceIconPositionMap.remove(shortcutInfo);
                    }
                };
                this.mPanel.removeShortcutInfoAnimated(shortcutInfo, selectView, this.mTaskStageCallback, task, r);
                final LauncherViewPropertyAnimator alphaAnim = new LauncherViewPropertyAnimator(child);
                alphaAnim.alpha(1.0f);
                alphaAnim.setDuration(400L);
                this.mRunningAnimators.add(alphaAnim);
                alphaAnim.addListener(new Animator.AnimatorListener() { // from class: net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.9
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animation) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animation) {
                        child.setAlpha(1.0f);
                        IconRearrangementHelper.this.mRunningAnimators.remove(alphaAnim);
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animation) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animation) {
                    }
                });
                alphaAnim.start();
                return;
            }
        }
    }

    public void dropIconToFolder(final ShortcutInfo shortcutInfo, View selectView, Runnable task) {
        Launcher launcher = LauncherAppState.getInstance().getLauncher();
        Workspace workspace = launcher.getWorkspace();
        IconPositionInfo positionInfo = this.mSourceIconPositionMap.get(shortcutInfo);
        if (positionInfo == null) {
            this.mTaskStageCallback.onTaskEnd(task);
            return;
        }
        final Folder folder = workspace.getOpenFolder();
        if (folder == null) {
            this.mTaskStageCallback.onTaskEnd(task);
            return;
        }
        if (folder.getInfo().contains(shortcutInfo)) {
            this.mTaskStageCallback.onTaskEnd(task);
            return;
        }
        folder.getInfo().add(shortcutInfo);
        folder.resizeView();
        final View child = folder.getViewForInfo(shortcutInfo);
        selectView.setPressed(false);
        Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.10
            @Override // java.lang.Runnable
            public void run() {
                IconRearrangementHelper.this.mSourceIconPositionMap.remove(shortcutInfo);
            }
        };
        this.mPanel.removeShortcutInfoAnimated(shortcutInfo, selectView, this.mTaskStageCallback, task, r);
        if (child != null) {
            child.setAlpha(0.0f);
            final LauncherViewPropertyAnimator alphaAnim = new LauncherViewPropertyAnimator(child);
            alphaAnim.alpha(1.0f);
            alphaAnim.setDuration(400L);
            this.mRunningAnimators.add(alphaAnim);
            this.mInFolderRunningAnimators.add(alphaAnim);
            alphaAnim.addListener(new Animator.AnimatorListener() { // from class: net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.11
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animation) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    child.setAlpha(1.0f);
                    IconRearrangementHelper.this.mRunningAnimators.remove(alphaAnim);
                    IconRearrangementHelper.this.mInFolderRunningAnimators.remove(alphaAnim);
                    child.invalidate();
                    folder.moveToLastPage();
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animation) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animation) {
                }
            });
            alphaAnim.start();
        }
    }

    public void mergeFolder() {
        Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.12
            @Override // java.lang.Runnable
            public void run() {
                final ArrayList<ShortcutInfo> shortcutInfos = IconRearrangementHelper.this.mPanel.getShortcutInfos();
                if (shortcutInfos.size() < 2) {
                    IconRearrangementHelper.this.mTaskStageCallback.onTaskEnd(this);
                    return;
                }
                AnalyticHelper.get().putAnalytics(AnalyticHelper.Tag.MDM_ACTIONS_TAG, AnalyticHelper.Label.MDM_ACTIONS_ICON_REARRANGE_FOLDER, "1");
                final Workspace workspace = IconRearrangementHelper.this.mLauncher.getWorkspace();
                int currentPage = workspace.getNextPage();
                int childCount = workspace.getChildCount();
                FolderIcon newFolder = null;
                int i = currentPage;
                while (true) {
                    if (i >= childCount) {
                        break;
                    }
                    CellLayout layout = (CellLayout) workspace.getChildAt(i);
                    int[] cell = new int[2];
                    if (layout.findCellForSpan(cell, 1, 1) && !layout.isDeleted()) {
                        IconRearrangementHelper.this.processAddScreenIfLayoutIsExtra(layout);
                        long container = IconRearrangementHelper.this.mLauncher.isHotseatLayout(layout) ? -101L : -100L;
                        long screenId = workspace.getIdForScreen(layout);
                        newFolder = IconRearrangementHelper.this.mLauncher.addFolder(layout, container, screenId, cell[0], cell[1]);
                        newFolder.setAlpha(0.0f);
                        newFolder.getFolder().getInfo().createWithContents(shortcutInfos);
                    } else {
                        i++;
                    }
                }
                workspace.snapToPage(i);
                final FolderIcon targetFolderIcon = newFolder;
                LauncherViewPropertyAnimator folderIconShowAnim = new LauncherViewPropertyAnimator(targetFolderIcon);
                final IconRearrangementAddFolderIcon folderButton = IconRearrangementHelper.this.mPanel.getFolderButton();
                folderIconShowAnim.alpha(1.0f);
                folderIconShowAnim.setDuration(400L);
                IconRearrangementHelper.this.mRunningAnimators.add(folderIconShowAnim);
                folderIconShowAnim.addListener(new Animator.AnimatorListener() { // from class: net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.12.1
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animation) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animation) {
                        targetFolderIcon.setAlpha(1.0f);
                        targetFolderIcon.invalidate();
                        workspace.invalidate();
                        IconRearrangementHelper.this.mPanel.clearAllItem();
                        folderButton.setEnableNoAnimation(false);
                        folderButton.setCreateTextVisibility(0);
                        folderButton.setNewFolderTextVisibility(8);
                        folderButton.setFakeIconDrawable(null);
                        Iterator it = shortcutInfos.iterator();
                        while (it.hasNext()) {
                            ShortcutInfo shortcutInfo = (ShortcutInfo) it.next();
                            IconRearrangementHelper.this.mSourceIconPositionMap.remove(shortcutInfo);
                        }
                        IconRearrangementHelper.this.mPanel.getRecyclerView().setVisibility(0);
                        IconRearrangementHelper.this.mTaskStageCallback.onTaskEnd(this);
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animation) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animation) {
                    }
                });
                ArrayList<Animator> animatorList = new ArrayList<>();
                int longestDuration = IconRearrangementHelper.this.generateMergeFolderRecyclerViewItemAnimator(animatorList, shortcutInfos);
                LauncherViewPropertyAnimator folderButtonHideAnim = new LauncherViewPropertyAnimator(folderButton);
                folderButtonHideAnim.alpha(0.0f);
                folderButtonHideAnim.setDuration(400L);
                folderButtonHideAnim.setStartDelay(longestDuration);
                animatorList.add(folderButtonHideAnim);
                folderIconShowAnim.setStartDelay(longestDuration + 400);
                animatorList.add(folderIconShowAnim);
                Iterator<Animator> it = animatorList.iterator();
                while (it.hasNext()) {
                    Animator animator = it.next();
                    animator.start();
                }
            }
        };
        this.mTaskQueue.add(r);
        consumeQueue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int generateMergeFolderRecyclerViewItemAnimator(ArrayList<Animator> animatorList, final ArrayList<ShortcutInfo> shortcutInfos) {
        final IconRearrangementAddFolderIcon folderButton = this.mPanel.getFolderButton();
        ArrayList<View> itemViews = this.mPanel.getVisibleViews();
        int[] targetLoc = new int[2];
        folderButton.getLocationOnScreen(targetLoc);
        int targetX = targetLoc[0] + folderButton.getPaddingLeft();
        int longestDuration = 0;
        int[] panelLoc = new int[2];
        this.mPanel.getLocationOnScreen(panelLoc);
        int[] recyclerViewLoc = new int[2];
        View recyclerView = this.mPanel.getRecyclerView();
        recyclerView.getLocationOnScreen(recyclerViewLoc);
        final RelativeLayout recyclerViewContainer = this.mPanel.getRecyclerViewContainer();
        boolean isRtl = Utilities.isRtl(this.mLauncher.getResources());
        Iterator<View> it = itemViews.iterator();
        while (it.hasNext()) {
            View v = it.next();
            final ShortcutInfo info = (ShortcutInfo) v.getTag();
            int index = shortcutInfos.indexOf(info);
            if (index >= 0) {
                int[] loc = new int[2];
                v.getLocationOnScreen(loc);
                if (isRtl) {
                    loc[0] = loc[0] - ((v.getPaddingLeft() + ((v.getWidth() - this.mListViewItemWidth) / 2)) - v.getWidth());
                } else {
                    loc[0] = loc[0] + v.getPaddingLeft() + ((v.getWidth() - this.mListViewItemWidth) / 2);
                }
                if ((loc[0] > targetX && !isRtl) || (loc[0] < targetX && isRtl)) {
                    final BubbleTextView movingView = (BubbleTextView) this.mInflater.inflate(R.layout.app_icon, (ViewGroup) null, false);
                    movingView.setWidth(this.mListViewItemWidth);
                    movingView.applyFromShortcutInfo(info, false, true, true);
                    recyclerViewContainer.addView(movingView);
                    if (isRtl) {
                        movingView.setX((loc[0] - recyclerViewLoc[0]) - recyclerView.getWidth());
                    } else {
                        movingView.setX(loc[0] - recyclerViewLoc[0]);
                    }
                    int duration = (int) ((loc[0] - targetX) / MOVING_PIXEL_PER_MICRO_SECOND);
                    if (isRtl) {
                        duration = -duration;
                    }
                    if (duration > longestDuration) {
                        longestDuration = duration;
                    }
                    LauncherViewPropertyAnimator anim = new LauncherViewPropertyAnimator(movingView);
                    if (isRtl) {
                        anim.translationX((targetX - recyclerViewLoc[0]) - recyclerView.getWidth());
                    } else {
                        anim.translationX(targetX - recyclerViewLoc[0]);
                    }
                    anim.setInterpolator(this.mMergeFolderItemInterpolator);
                    anim.setDuration(duration);
                    anim.addListener(new Animator.AnimatorListener() { // from class: net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.13
                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animation) {
                        }

                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animation) {
                            Drawable iconDrawable;
                            int icons = shortcutInfos.indexOf(info) + 1;
                            if (icons > FolderIcon.getNumItemsInPreview()) {
                                icons = FolderIcon.getNumItemsInPreview();
                            }
                            int nowLength = folderButton.getFakeIconDrawableLength();
                            if (icons > nowLength) {
                                Drawable[] drawableList = new Drawable[icons];
                                AssetCache assetCache = LauncherAppState.getInstance().getAssetCache();
                                int iconSize = IconRearrangementHelper.this.mLauncher.getResources().getDimensionPixelSize(R.dimen.icon_rearrangement_icon_size);
                                for (int i = 0; i < icons; i++) {
                                    ShortcutInfo shortcutInfo = (ShortcutInfo) shortcutInfos.get(i);
                                    if (shortcutInfo instanceof IDynamicShortcut) {
                                        iconDrawable = ((IDynamicShortcut) shortcutInfo).getStaticDrawable();
                                    } else {
                                        Bitmap b = shortcutInfo.getIcon(assetCache);
                                        iconDrawable = IconRearrangementHelper.this.mLauncher.createIconDrawable(b);
                                    }
                                    drawableList[i] = iconDrawable;
                                    drawableList[i].setBounds(0, 0, iconSize, iconSize);
                                }
                                folderButton.setFakeIconDrawable(drawableList);
                                folderButton.invalidate();
                            }
                            recyclerViewContainer.removeView(movingView);
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationRepeat(Animator animation) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationStart(Animator animation) {
                        }
                    });
                    animatorList.add(anim);
                }
            }
        }
        this.mPanel.getRecyclerView().setVisibility(4);
        return longestDuration;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processLeftShortcuts(ArrayList<ShortcutInfo> shortcutInfos) {
        Workspace workspace = this.mLauncher.getWorkspace();
        Iterator<ShortcutInfo> it = shortcutInfos.iterator();
        while (it.hasNext()) {
            ShortcutInfo shortcutInfo = it.next();
            boolean success = putBackToSourcePlace(shortcutInfo);
            if (!success) {
                int[] iArr = new int[2];
                int workspaceChildCount = workspace.getChildCount();
                CellLayout layout = (CellLayout) workspace.getChildAt(workspaceChildCount - 2);
                success = putIconToLayout(shortcutInfo, layout);
                if (!success) {
                    CellLayout layout2 = (CellLayout) workspace.getChildAt(workspaceChildCount - 1);
                    success = putIconToLayout(shortcutInfo, layout2);
                }
                if (!success) {
                    addEmptyScreen();
                    CellLayout layout3 = (CellLayout) workspace.getChildAt(workspaceChildCount);
                    success = putIconToLayout(shortcutInfo, layout3);
                }
            }
            if (success) {
                this.mSourceIconPositionMap.remove(shortcutInfo);
            } else {
                Logger.e(TAG, "put icon error");
            }
        }
        this.mPanel.clearAllItem();
    }

    private boolean putBackToSourcePlace(final ShortcutInfo shortcutInfo) {
        Workspace workspace = this.mLauncher.getWorkspace();
        final IconPositionInfo positionInfo = this.mSourceIconPositionMap.get(shortcutInfo);
        if (positionInfo.fromWorkspace) {
            CellLayout layout = positionInfo.parentLayout;
            if (layout.isDeleted()) {
                return false;
            }
            View view = layout.getChildAt(positionInfo.cellX, positionInfo.cellY);
            if (view == null) {
                View child = this.mLauncher.createShortcut(layout, shortcutInfo);
                long container = this.mLauncher.isHotseatLayout(layout) ? -101L : -100L;
                final long screenId = workspace.getIdForScreen(layout);
                workspace.addInScreen(child, container, screenId, positionInfo.cellX, positionInfo.cellY, 1, 1);
                final long j = container;
                TaskWorker.get().post(new Runnable() { // from class: net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.14
                    @Override // java.lang.Runnable
                    public void run() {
                        LauncherModel.modifyItemInDatabase(IconRearrangementHelper.this.mLauncher, shortcutInfo, j, screenId, positionInfo.cellX, positionInfo.cellY, 1, 1);
                    }
                });
                return true;
            }
        } else {
            Folder folder = positionInfo.inFolderIcon.getFolder();
            FolderInfo folderInfo = folder.getInfo();
            if (folder != null && folder.getItemCount() > 1 && !folder.isDestroyed()) {
                folderInfo.add(shortcutInfo);
                return true;
            }
        }
        return false;
    }

    private boolean putIconToLayout(final ShortcutInfo shortcutInfo, CellLayout layout) {
        Workspace workspace = this.mLauncher.getWorkspace();
        int[] cell = new int[2];
        if (!layout.isDeleted() && layout.getVacantCell(cell, 1, 1)) {
            View child = this.mLauncher.createShortcut(layout, shortcutInfo);
            long container = this.mLauncher.isHotseatLayout(layout) ? -101L : -100L;
            final long screenId = workspace.getIdForScreen(layout);
            workspace.addInScreen(child, container, screenId, cell[0], cell[1], 1, 1);
            final int cellX = cell[0];
            final int cellY = cell[1];
            final long j = container;
            TaskWorker.get().post(new Runnable() { // from class: net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.15
                @Override // java.lang.Runnable
                public void run() {
                    LauncherModel.modifyItemInDatabase(IconRearrangementHelper.this.mLauncher, shortcutInfo, j, screenId, cellX, cellY, 1, 1);
                }
            });
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processAddScreenIfLayoutIsExtra(CellLayout layout) {
        Workspace workspace = this.mLauncher.getWorkspace();
        if (layout == workspace.getChildAt(workspace.getChildCount() - 1)) {
            addEmptyScreen();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeLastEmptyScreenIfLayoutIsNotExtra() {
        Workspace workspace = this.mLauncher.getWorkspace();
        for (int index = workspace.getChildCount() - 2; index >= 0; index--) {
            CellLayout layout = (CellLayout) workspace.getChildAt(index);
            if (layout.getShortcutsAndWidgets().getChildCount() == 0) {
                workspace.removeWorkspaceScreen(layout, true);
            } else {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addEmptyScreen() {
        Workspace workspace = this.mLauncher.getWorkspace();
        long newId = LauncherAppState.getLauncherProvider().generateNewScreenId();
        workspace.insertNewWorkspaceScreen(newId);
        workspace.updateWorkspaceScreenOrder();
    }

    public void exitIconRearrangement() {
        Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.16
            @Override // java.lang.Runnable
            public void run() {
                ArrayList<ShortcutInfo> shortcutInfos = IconRearrangementHelper.this.mPanel.getShortcutInfos();
                if (shortcutInfos.size() > 0) {
                    IconRearrangementHelper.this.processLeftShortcuts(shortcutInfos);
                }
                Workspace workspace = IconRearrangementHelper.this.mLauncher.getWorkspace();
                workspace.removeExtraEmptyScreen(false, true);
                IconRearrangementHelper.this.mTaskStageCallback.onTaskEnd(this);
            }
        };
        this.mTaskQueue.add(r);
        consumeQueue();
    }

    public boolean hasLeftShortcut() {
        return this.mPanel.getShortcutInfoCount() != 0;
    }

    public void enterIconRearrangement() {
        AnalyticHelper.get().putAnalytics(AnalyticHelper.Tag.MDM_ACTIONS_TAG, AnalyticHelper.Label.MDM_ACTIONS_ICON_REARRANGE, "1");
        Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.17
            @Override // java.lang.Runnable
            public void run() {
                IconRearrangementHelper.this.addEmptyScreen();
                IconRearrangementHelper.this.mTaskStageCallback.onTaskEnd(this);
            }
        };
        this.mTaskQueue.add(r);
        consumeQueue();
    }

    public void onFolderOpen() {
        this.mPanel.setFolderButtonForceDisable(true);
    }

    public void onFolderClosed() {
        Runnable r = new Runnable() { // from class: net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.18
            @Override // java.lang.Runnable
            public void run() {
                IconRearrangementHelper.this.mPanel.setFolderButtonForceDisable(false);
                Iterator<Animator> iterator = IconRearrangementHelper.this.mInFolderRunningAnimators.iterator();
                while (iterator.hasNext()) {
                    iterator.next().cancel();
                }
                IconRearrangementHelper.this.mInFolderRunningAnimators.clear();
                IconRearrangementHelper.this.mTaskStageCallback.onTaskEnd(this);
            }
        };
        this.mTaskQueue.add(r);
        consumeQueue();
    }

    public boolean consumeQueue() {
        boolean needExecuteTask = false;
        synchronized (this.mIsRunningTask) {
            if (!this.mIsRunningTask.booleanValue() && this.mRunningTask == null && this.mTaskQueue.size() > 0) {
                needExecuteTask = true;
                this.mIsRunningTask = true;
                this.mRunningTask = this.mTaskQueue.remove(0);
            }
        }
        if (needExecuteTask) {
            TaskWorker.get().postUI(this.mRunningTask);
        }
        return needExecuteTask;
    }

    public void removeItemsByPackageName(ArrayList<String> packages, final UserHandleCompat user) {
        if (this.mLauncher.isIconRearrangementMode()) {
            final HashSet<String> packageNames = new HashSet<>();
            packageNames.addAll(packages);
            HashSet<ItemInfo> infos = new HashSet<>();
            final HashSet<ComponentName> cns = new HashSet<>();
            ArrayList<ShortcutInfo> shortcutInfos = this.mPanel.getShortcutInfos();
            infos.addAll(shortcutInfos);
            LauncherModel.ItemInfoFilter filter = new LauncherModel.ItemInfoFilter() { // from class: net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.19
                @Override // net.oneplus.h2launcher.LauncherModel.ItemInfoFilter
                public boolean filterItem(ItemInfo parent, ItemInfo info, ComponentName cn) {
                    if (!packageNames.contains(cn.getPackageName()) || !info.user.equals(user)) {
                        return false;
                    }
                    cns.add(cn);
                    return true;
                }
            };
            LauncherModel.filterItemInfos(infos, filter);
            removeItemsByComponentName(cns, user);
        }
    }

    public void removeItemsByApplicationInfo(ArrayList<AppInfo> appInfos, UserHandleCompat user) {
        ComponentName componentName;
        if (this.mLauncher.isIconRearrangementMode()) {
            HashSet<ComponentName> cns = new HashSet<>();
            Iterator<AppInfo> it = appInfos.iterator();
            while (it.hasNext()) {
                AppInfo info = it.next();
                Intent intent = info.getIntent();
                if (intent != null && (componentName = intent.getComponent()) != null) {
                    cns.add(componentName);
                }
            }
            removeItemsByComponentName(cns, user);
        }
    }

    public void removeItemsByComponentName(final HashSet<ComponentName> componentNames, final UserHandleCompat user) {
        if (this.mLauncher.isIconRearrangementMode()) {
            HashSet<ItemInfo> shortcutInfos = new HashSet<>();
            shortcutInfos.addAll(this.mPanel.getShortcutInfos());
            final ArrayList<ShortcutInfo> removeShortcutInfos = new ArrayList<>();
            LauncherModel.ItemInfoFilter filter = new LauncherModel.ItemInfoFilter() { // from class: net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper.20
                @Override // net.oneplus.h2launcher.LauncherModel.ItemInfoFilter
                public boolean filterItem(ItemInfo parent, ItemInfo info, ComponentName cn) {
                    if (!componentNames.contains(cn) || !info.user.equals(user)) {
                        return false;
                    }
                    if (info instanceof ShortcutInfo) {
                        removeShortcutInfos.add((ShortcutInfo) info);
                    }
                    return true;
                }
            };
            LauncherModel.filterItemInfos(shortcutInfos, filter);
            if (removeShortcutInfos.size() > 0) {
                Iterator<ShortcutInfo> it = removeShortcutInfos.iterator();
                while (it.hasNext()) {
                    ShortcutInfo shortcutInfo = it.next();
                    this.mSourceIconPositionMap.remove(shortcutInfo);
                }
                this.mPanel.removeShortcutInfosAnimated(removeShortcutInfos);
            }
            processPackagedUpdateScreenChanged();
        }
    }

    public void processPackagedUpdateScreenChanged() {
        removeLastEmptyScreenIfLayoutIsNotExtra();
        Workspace workspace = this.mLauncher.getWorkspace();
        for (int i = workspace.getChildCount() - 1; i >= 0; i--) {
            CellLayout layout = (CellLayout) workspace.getChildAt(i);
            if (layout != null && !layout.isDeleted()) {
                if (layout.getShortcutsAndWidgets().getChildCount() > 0) {
                    addEmptyScreen();
                    return;
                }
                return;
            }
        }
    }

    public boolean isInIconRearrangementPanel(ShortcutInfo info) {
        return this.mPanel.containsShortcutInfo(info);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class IconPositionInfo {
        int cellX;
        int cellY;
        boolean fromWorkspace;
        FolderIcon inFolderIcon;
        CellLayout parentLayout;

        IconPositionInfo() {
        }
    }
}
