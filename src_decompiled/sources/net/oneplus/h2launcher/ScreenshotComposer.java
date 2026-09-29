package net.oneplus.h2launcher;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.os.AsyncTask;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.lang.ref.WeakReference;
import net.oneplus.h2launcher.customizations.WallpapersContainerView;
import net.oneplus.h2launcher.oos.StyleManager;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class ScreenshotComposer extends AsyncTask<Void, Bitmap, Bitmap> {
    private final String TAG = "Launcher";
    private CellLayout mCellLayout;
    private Bitmap mCellLayoutDrawingCache;
    private final DeviceProfile mDeviceProfile;
    private Bitmap mDragLayerDrawingCache;
    private final WeakReference<Launcher> mLauncherReference;
    private final Resources mResources;

    public ScreenshotComposer(Launcher launcher) {
        this.mLauncherReference = new WeakReference<>(launcher);
        this.mResources = launcher.getResources();
        this.mDeviceProfile = launcher.getDeviceProfile();
    }

    @Override // android.os.AsyncTask
    protected void onPreExecute() {
        ShortcutAndWidgetContainer container;
        Launcher launcher = this.mLauncherReference.get();
        if (launcher == null) {
            Logger.e("Launcher", "invalid parameter: Launcher");
            return;
        }
        boolean needCaptureEntireScreen = StyleManager.getInstance().needCaptureEntireScreen();
        DragLayer dragLayer = launcher.getDragLayer();
        this.mDragLayerDrawingCache = needCaptureEntireScreen ? dragLayer.getDrawingImage() : null;
        Workspace workspace = launcher.getWorkspace();
        int homescreenIndex = workspace.getHomeScreenPageIndex();
        int index = needCaptureEntireScreen ? Math.max(homescreenIndex, workspace.getCurrentPage()) : homescreenIndex;
        long screenId = workspace.getScreenIdForPageIndex(index);
        this.mCellLayout = workspace.getScreenWithId(screenId);
        if (this.mCellLayout == null || (container = this.mCellLayout.getShortcutsAndWidgets()) == null) {
            Logger.i("Launcher", "screenshot fails, invalid cell content: %s", this.mCellLayout);
            return;
        }
        container.buildDrawingCache();
        Bitmap drawingCache = container.getDrawingCache();
        if (drawingCache == null) {
            Logger.w("Launcher", "failed to get drawing cache: %s", container);
            container.destroyDrawingCache();
        } else {
            this.mCellLayoutDrawingCache = Bitmap.createBitmap(drawingCache);
            container.destroyDrawingCache();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public Bitmap doInBackground(Void... args) {
        return StyleManager.getInstance().needCaptureEntireScreen() ? screenshotEntireScreen(this.mDragLayerDrawingCache, this.mCellLayoutDrawingCache) : screenshotCellLayout(this.mCellLayoutDrawingCache);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(Bitmap cover) {
        Launcher launcher;
        WallpapersContainerView wallpapersView;
        if (this.mLauncherReference != null && (launcher = this.mLauncherReference.get()) != null && (wallpapersView = launcher.getWallpapersView()) != null) {
            BitmapDrawable bb = new BitmapDrawable(this.mResources, cover);
            wallpapersView.getWallpaperPreview().setPreviewCover(bb, 1);
        }
    }

    private Bitmap screenshotEntireScreen(Bitmap dragLayer, Bitmap cellLayout) {
        if (dragLayer == null || dragLayer.isRecycled() || cellLayout == null || cellLayout.isRecycled()) {
            Logger.i("Launcher", "screenshot fails, invalid drawing cache");
            Logger.i("Launcher", "dragLayer:%s, cellLayout:%s");
            if (dragLayer != null) {
                Logger.i("Launcher", "dragLayer isRecycled:%b", Boolean.valueOf(dragLayer.isRecycled()));
            }
            if (cellLayout != null) {
                Logger.i("Launcher", "cellLayout isRecycled:%b", Boolean.valueOf(cellLayout.isRecycled()));
            }
            return null;
        }
        float wallpaperPreviewWidth = this.mResources.getDimensionPixelSize(R.dimen.cropper_preview_item_width);
        float scaleRatio = wallpaperPreviewWidth / dragLayer.getWidth();
        int w = (int) (dragLayer.getWidth() * scaleRatio);
        int h = (int) (dragLayer.getHeight() * scaleRatio);
        Bitmap composite = Bitmap.createScaledBitmap(dragLayer, w, h, true);
        int w2 = (int) (cellLayout.getWidth() * scaleRatio);
        int h2 = (int) (cellLayout.getHeight() * scaleRatio);
        Bitmap cellCache = Bitmap.createScaledBitmap(cellLayout, w2, h2, true);
        Canvas canvas = new Canvas(composite);
        int statusBarHeight = this.mResources.getDimensionPixelSize(R.dimen.status_bar_height);
        Rect workspacePadding = this.mDeviceProfile.getWorkspacePadding(Utilities.isRtl(this.mResources));
        Rect cellRect = new Rect();
        Paint paint = new Paint();
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        cellRect.left = (int) (workspacePadding.left * scaleRatio);
        cellRect.top = (int) ((workspacePadding.top + statusBarHeight) * scaleRatio);
        cellRect.right = (int) ((workspacePadding.left + this.mCellLayout.getWidth()) * scaleRatio);
        cellRect.bottom = (int) ((cellRect.top + this.mCellLayout.getHeight()) * scaleRatio);
        canvas.drawRect(cellRect, paint);
        canvas.drawBitmap(cellCache, cellRect.left, cellRect.top, (Paint) null);
        cellCache.recycle();
        if (this.mCellLayoutDrawingCache != null) {
            this.mCellLayoutDrawingCache.recycle();
            return composite;
        }
        return composite;
    }

    private Bitmap screenshotCellLayout(Bitmap cellLayout) {
        if (cellLayout == null || cellLayout.isRecycled()) {
            Logger.i("Launcher", "screenshot fails, invalid drawing cache");
            Logger.i("Launcher", "cellLayout:%s", cellLayout);
            if (cellLayout != null) {
                Logger.i("Launcher", "cellLayout isRecycled:%b", Boolean.valueOf(cellLayout.isRecycled()));
            }
            return null;
        }
        Context context = this.mLauncherReference.get();
        if (context == null) {
            Logger.e("Launcher", "invalid parameter: Launcher");
            return null;
        }
        DisplayMetrics metrics = new DisplayMetrics();
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        Display display = windowManager.getDefaultDisplay();
        display.getRealMetrics(metrics);
        int screenWidth = metrics.widthPixels;
        int screenHeight = metrics.heightPixels;
        float wallpaperPreviewWidth = this.mResources.getDimensionPixelSize(R.dimen.cropper_preview_item_width);
        float scaleRatio = wallpaperPreviewWidth / screenWidth;
        int w = (int) (screenWidth * scaleRatio);
        int h = (int) (screenHeight * scaleRatio);
        Bitmap composite = Bitmap.createBitmap(w, h, Bitmap.Config.ARGB_8888);
        int w2 = (int) (cellLayout.getWidth() * scaleRatio);
        int h2 = (int) (cellLayout.getHeight() * scaleRatio);
        Bitmap cellCache = Bitmap.createScaledBitmap(cellLayout, w2, h2, true);
        int statusBarHeight = this.mResources.getDimensionPixelSize(R.dimen.status_bar_height);
        Rect workspacePadding = this.mDeviceProfile.getWorkspacePadding(Utilities.isRtl(this.mResources));
        Canvas canvas = new Canvas(composite);
        int paddingTop = (int) (statusBarHeight * scaleRatio);
        int paddingLeft = (int) (workspacePadding.left * scaleRatio);
        canvas.drawBitmap(cellCache, paddingLeft, paddingTop, (Paint) null);
        cellCache.recycle();
        if (this.mCellLayoutDrawingCache != null) {
            this.mCellLayoutDrawingCache.recycle();
            return composite;
        }
        return composite;
    }
}
