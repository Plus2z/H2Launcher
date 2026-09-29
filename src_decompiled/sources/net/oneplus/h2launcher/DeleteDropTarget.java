package net.oneplus.h2launcher;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.PointF;
import android.os.AsyncTask;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AnimationUtils;
import net.oneplus.h2launcher.DropTarget;
import net.oneplus.h2launcher.oos.StyleManager;
import net.oneplus.h2launcher.util.FlingAnimation;

/* loaded from: classes.dex */
public class DeleteDropTarget extends ButtonDropTarget {
    public DeleteDropTarget(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public DeleteDropTarget(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    @Override // net.oneplus.h2launcher.ButtonDropTarget, android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mHoverColor = getResources().getColor(R.color.delete_target_hover_tint);
        setDrawable(R.drawable.ic_remove_launcher);
    }

    public static boolean supportsDrop(Object info) {
        if (!(info instanceof ShortcutInfo)) {
            return (info instanceof LauncherAppWidgetInfo) || ((info instanceof FolderInfo) && StyleManager.isStandardLayout());
        }
        ShortcutInfo sInfo = (ShortcutInfo) info;
        return StyleManager.isStandardLayout() || ((sInfo.flags & 1) == 0 && sInfo.itemType == 1) || sInfo.itemType == 6;
    }

    @Override // net.oneplus.h2launcher.ButtonDropTarget
    protected boolean supportsDrop(DragSource source, Object info) {
        return source.supportsDeleteDropTarget() && supportsDrop(info);
    }

    @Override // net.oneplus.h2launcher.ButtonDropTarget
    public void completeDrop(DropTarget.DragObject d) {
        Workspace workspace;
        CellLayout layout;
        super.completeDrop(d);
        ItemInfo item = (ItemInfo) d.dragInfo;
        if ((d.dragSource instanceof Workspace) || (d.dragSource instanceof Folder)) {
            removeWorkspaceOrFolderItem(this.mLauncher, item, null);
            if (StyleManager.isSimplifiedLayout() && (d.dragSource instanceof Workspace) && (layout = (workspace = (Workspace) d.dragSource).getScreenWithId(item.screenId)) != null && layout.getShortcutsAndWidgets().getChildCount() == 0) {
                workspace.removeWorkspaceScreen(layout, true);
            }
        }
        this.mLauncher.getStats().onShortcutRemoved(item.id, item.user);
    }

    /* JADX WARN: Type inference failed for: r4v6, types: [net.oneplus.h2launcher.DeleteDropTarget$1] */
    public static boolean removeWorkspaceOrFolderItem(Launcher launcher, ItemInfo item, View view) {
        if (item instanceof ShortcutInfo) {
            LauncherModel.deleteItemFromDatabase(launcher, item);
        } else if (item instanceof FolderInfo) {
            FolderInfo folder = (FolderInfo) item;
            launcher.removeFolder(folder);
            LauncherModel.deleteFolderContentsFromDatabase(launcher, folder);
        } else {
            if (!(item instanceof LauncherAppWidgetInfo)) {
                return false;
            }
            final LauncherAppWidgetInfo widget = (LauncherAppWidgetInfo) item;
            launcher.removeAppWidget(widget);
            LauncherModel.deleteItemFromDatabase(launcher, widget);
            final LauncherAppWidgetHost appWidgetHost = LauncherAppState.getInstance().getAppWidgetHost();
            if (appWidgetHost != null && !widget.isCustomWidget() && widget.isWidgetIdValid()) {
                new AsyncTask<Void, Void, Void>() { // from class: net.oneplus.h2launcher.DeleteDropTarget.1
                    @Override // android.os.AsyncTask
                    public Void doInBackground(Void... args) {
                        LauncherAppWidgetHost.this.deleteAppWidgetId(widget.appWidgetId);
                        return null;
                    }
                }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            }
        }
        if (view != null) {
            launcher.getWorkspace().removeWorkspaceItem(view);
            launcher.getWorkspace().stripEmptyScreens();
        }
        return true;
    }

    @Override // net.oneplus.h2launcher.ButtonDropTarget, net.oneplus.h2launcher.DropTarget
    public void onFlingToDelete(final DropTarget.DragObject d, PointF vel) {
        d.dragView.setColor(0);
        d.dragView.updateInitialScaleToCurrentScale();
        DragLayer dragLayer = this.mLauncher.getDragLayer();
        FlingAnimation fling = new FlingAnimation(d, vel, getIconRect(d.dragView.getMeasuredWidth(), d.dragView.getMeasuredHeight(), this.mDrawable.getIntrinsicWidth(), this.mDrawable.getIntrinsicHeight()), dragLayer);
        final int duration = fling.getDuration();
        final long startTime = AnimationUtils.currentAnimationTimeMillis();
        TimeInterpolator tInterpolator = new TimeInterpolator() { // from class: net.oneplus.h2launcher.DeleteDropTarget.2
            private int mCount = -1;
            private float mOffset = 0.0f;

            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float t) {
                if (this.mCount < 0) {
                    this.mCount++;
                } else if (this.mCount == 0) {
                    this.mOffset = Math.min(0.5f, ((float) (AnimationUtils.currentAnimationTimeMillis() - startTime)) / duration);
                    this.mCount++;
                }
                return Math.min(1.0f, this.mOffset + t);
            }
        };
        Runnable onAnimationEndRunnable = new Runnable() { // from class: net.oneplus.h2launcher.DeleteDropTarget.3
            @Override // java.lang.Runnable
            public void run() {
                DeleteDropTarget.this.mLauncher.exitSpringLoadedDragMode();
                DeleteDropTarget.this.completeDrop(d);
                DeleteDropTarget.this.mLauncher.getDragController().onDeferredEndFling(d);
            }
        };
        dragLayer.animateView(d.dragView, fling, duration, tInterpolator, onAnimationEndRunnable, 0, null);
    }

    @Override // net.oneplus.h2launcher.ButtonDropTarget
    protected String getAccessibilityDropConfirmation() {
        return getResources().getString(R.string.item_removed);
    }
}
