.class public Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;
.super Ljava/lang/Object;
.source "FolderIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/FolderIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FolderRingAnimator"
.end annotation


# static fields
.field public static sPreviewPadding:I

.field public static sPreviewSize:I

.field public static sSharedInnerRingDrawable:Landroid/graphics/drawable/Drawable;

.field public static sSharedOuterRingDrawable:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mAcceptAnimator:Landroid/animation/ValueAnimator;

.field mCellLayout:Lnet/oneplus/h2launcher/CellLayout;

.field public mCellX:I

.field public mCellY:I

.field private mContext:Landroid/content/Context;

.field public mFolderIcon:Lnet/oneplus/h2launcher/FolderIcon;

.field private mGrid:Lnet/oneplus/h2launcher/DeviceProfile;

.field public mInnerRingSize:F

.field private mNeutralAnimator:Landroid/animation/ValueAnimator;

.field public mOuterRingSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 245
    sput-object v1, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->sSharedOuterRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 246
    sput-object v1, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->sSharedInnerRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 247
    sput v0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->sPreviewSize:I

    .line 248
    sput v0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->sPreviewPadding:I

    return-void
.end method

.method public constructor <init>(Lnet/oneplus/h2launcher/Launcher;Lnet/oneplus/h2launcher/FolderIcon;)V
    .locals 4
    .param p1, "launcher"    # Lnet/oneplus/h2launcher/Launcher;
    .param p2, "folderIcon"    # Lnet/oneplus/h2launcher/FolderIcon;

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mFolderIcon:Lnet/oneplus/h2launcher/FolderIcon;

    .line 256
    iput-object p2, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mFolderIcon:Lnet/oneplus/h2launcher/FolderIcon;

    .line 257
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mContext:Landroid/content/Context;

    .line 258
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 262
    .local v0, "res":Landroid/content/res/Resources;
    sget-boolean v1, Lnet/oneplus/h2launcher/FolderIcon;->sStaticValuesDirty:Z

    if-eqz v1, :cond_1

    .line 263
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 264
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FolderRingAnimator loading drawables on non-UI thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 265
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 268
    :cond_0
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mGrid:Lnet/oneplus/h2launcher/DeviceProfile;

    .line 269
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mGrid:Lnet/oneplus/h2launcher/DeviceProfile;

    iget v1, v1, Lnet/oneplus/h2launcher/DeviceProfile;->folderIconSizePx:I

    sput v1, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->sPreviewSize:I

    .line 270
    const v1, 0x7f0c0259

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->sPreviewPadding:I

    .line 271
    const v1, 0x7f02019d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->sSharedOuterRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 272
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/oos/StyleManager;->showStandardFolderIconShape()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f02019c

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->sSharedInnerRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 273
    const v1, 0x7f02019e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lnet/oneplus/h2launcher/FolderIcon;->sSharedFolderLeaveBehind:Landroid/graphics/drawable/Drawable;

    .line 274
    const/4 v1, 0x0

    sput-boolean v1, Lnet/oneplus/h2launcher/FolderIcon;->sStaticValuesDirty:Z

    .line 276
    :cond_1
    return-void

    .line 272
    :cond_2
    const v1, 0x7f020061

    goto :goto_0
.end method


# virtual methods
.method public animateToAcceptState()V
    .locals 4

    .prologue
    .line 279
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 282
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    .line 283
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 285
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mGrid:Lnet/oneplus/h2launcher/DeviceProfile;

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/Utilities;->getFolderIconSize(Landroid/content/Context;Lnet/oneplus/h2launcher/DeviceProfile;)I

    move-result v0

    .line 286
    .local v0, "previewSize":I
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator$1;

    invoke-direct {v2, p0, v0}, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator$1;-><init>(Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 296
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator$2;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator$2;-><init>(Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 304
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 305
    return-void

    .line 282
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public animateToNaturalState()V
    .locals 4

    .prologue
    .line 308
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 311
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    .line 312
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 314
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mGrid:Lnet/oneplus/h2launcher/DeviceProfile;

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/Utilities;->getFolderIconSize(Landroid/content/Context;Lnet/oneplus/h2launcher/DeviceProfile;)I

    move-result v0

    .line 315
    .local v0, "previewSize":I
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator$3;

    invoke-direct {v2, p0, v0}, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator$3;-><init>(Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 325
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator$4;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator$4;-><init>(Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 336
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 337
    return-void

    .line 311
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getCell([I)V
    .locals 2
    .param p1, "loc"    # [I

    .prologue
    .line 341
    const/4 v0, 0x0

    iget v1, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mCellX:I

    aput v1, p1, v0

    .line 342
    const/4 v0, 0x1

    iget v1, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mCellY:I

    aput v1, p1, v0

    .line 343
    return-void
.end method

.method public getInnerRingSize()F
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mInnerRingSize:F

    return v0
.end method

.method public getOuterRingSize()F
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mOuterRingSize:F

    return v0
.end method

.method public setCell(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 347
    iput p1, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mCellX:I

    .line 348
    iput p2, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mCellY:I

    .line 349
    return-void
.end method

.method public setCellLayout(Lnet/oneplus/h2launcher/CellLayout;)V
    .locals 0
    .param p1, "layout"    # Lnet/oneplus/h2launcher/CellLayout;

    .prologue
    .line 352
    iput-object p1, p0, Lnet/oneplus/h2launcher/FolderIcon$FolderRingAnimator;->mCellLayout:Lnet/oneplus/h2launcher/CellLayout;

    .line 353
    return-void
.end method
