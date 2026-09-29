.class public Lnet/oneplus/h2launcher/crop/UCropActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "UCropActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/crop/UCropActivity$OnUCropFrameLayoutChangeListener;,
        Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;
    }
.end annotation


# static fields
.field public static final DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

.field public static final DEFAULT_COMPRESS_QUALITY:I = 0x64

.field private static final STORAGE_PERMISSION_REQUEST:I = 0x64

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBlockingView:Landroid/view/View;

.field private mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private mCompressQuality:I

.field private mGestureCropImageView:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

.field private mGestureCropImageView2:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

.field private mOutputUri:Landroid/net/Uri;

.field private mOutputUri2:Landroid/net/Uri;

.field private mOverlayView:Lnet/oneplus/h2launcher/crop/view/OverlayView;

.field private mOverlayView2:Lnet/oneplus/h2launcher/crop/view/OverlayView;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mStatusBarColor:I

.field private mToolbarColor:I

.field private mToolbarTitle:Ljava/lang/String;

.field private mToolbarWidgetColor:I

.field private mUCropView:Lnet/oneplus/h2launcher/crop/view/UCropView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lnet/oneplus/h2launcher/crop/UCropActivity;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    .line 60
    const-class v0, Lnet/oneplus/h2launcher/crop/UCropActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/crop/UCropActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 78
    sget-object v0, Lnet/oneplus/h2launcher/crop/UCropActivity;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 79
    const/16 v0, 0x64

    iput v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mCompressQuality:I

    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/crop/UCropActivity;)Lnet/oneplus/h2launcher/crop/callback/BitmapCropCallback;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/crop/UCropActivity;

    .prologue
    .line 56
    invoke-direct {p0}, Lnet/oneplus/h2launcher/crop/UCropActivity;->getCropCallbackSecondary()Lnet/oneplus/h2launcher/crop/callback/BitmapCropCallback;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/crop/UCropActivity;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/crop/UCropActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method static synthetic access$1000(Lnet/oneplus/h2launcher/crop/UCropActivity;)Lnet/oneplus/h2launcher/crop/view/OverlayView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/crop/UCropActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mOverlayView2:Lnet/oneplus/h2launcher/crop/view/OverlayView;

    return-object v0
.end method

.method static synthetic access$1100(Lnet/oneplus/h2launcher/crop/UCropActivity;Landroid/net/Uri;Landroid/net/Uri;FFII)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/crop/UCropActivity;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Landroid/net/Uri;
    .param p3, "x3"    # F
    .param p4, "x4"    # F
    .param p5, "x5"    # I
    .param p6, "x6"    # I

    .prologue
    .line 56
    invoke-direct/range {p0 .. p6}, Lnet/oneplus/h2launcher/crop/UCropActivity;->setResultUri(Landroid/net/Uri;Landroid/net/Uri;FFII)V

    return-void
.end method

.method static synthetic access$1200(Lnet/oneplus/h2launcher/crop/UCropActivity;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/crop/UCropActivity;

    .prologue
    .line 56
    invoke-direct {p0}, Lnet/oneplus/h2launcher/crop/UCropActivity;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$1400(Lnet/oneplus/h2launcher/crop/UCropActivity;)Lnet/oneplus/h2launcher/crop/view/UCropView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/crop/UCropActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mUCropView:Lnet/oneplus/h2launcher/crop/view/UCropView;

    return-object v0
.end method

.method static synthetic access$1500(Lnet/oneplus/h2launcher/crop/UCropActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/crop/UCropActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mBlockingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lnet/oneplus/h2launcher/crop/UCropActivity;I)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/crop/UCropActivity;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/crop/UCropActivity;->setStatusBarColor(I)V

    return-void
.end method

.method static synthetic access$1700(Lnet/oneplus/h2launcher/crop/UCropActivity;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/crop/UCropActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/crop/UCropActivity;->setImageData(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lnet/oneplus/h2launcher/crop/UCropActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/crop/UCropActivity;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/crop/UCropActivity;

    .prologue
    .line 56
    iget v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mCompressQuality:I

    return v0
.end method

.method static synthetic access$300(Lnet/oneplus/h2launcher/crop/UCropActivity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/crop/UCropActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mOutputUri2:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lnet/oneplus/h2launcher/crop/UCropActivity;)Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/crop/UCropActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mGestureCropImageView2:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    return-object v0
.end method

.method static synthetic access$500(Lnet/oneplus/h2launcher/crop/UCropActivity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/crop/UCropActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mOutputUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600(Lnet/oneplus/h2launcher/crop/UCropActivity;)Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/crop/UCropActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mGestureCropImageView:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    return-object v0
.end method

.method static synthetic access$700(Lnet/oneplus/h2launcher/crop/UCropActivity;)Lnet/oneplus/h2launcher/crop/view/OverlayView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/crop/UCropActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mOverlayView:Lnet/oneplus/h2launcher/crop/view/OverlayView;

    return-object v0
.end method

.method static synthetic access$800(Lnet/oneplus/h2launcher/crop/UCropActivity;Landroid/net/Uri;FI)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/crop/UCropActivity;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # F
    .param p3, "x3"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/crop/UCropActivity;->setResultUri(Landroid/net/Uri;FI)V

    return-void
.end method

.method static synthetic access$900(Lnet/oneplus/h2launcher/crop/UCropActivity;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/crop/UCropActivity;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/crop/UCropActivity;->setResultException(Ljava/lang/Throwable;)V

    return-void
.end method

.method private addBlockingView()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 367
    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mBlockingView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 368
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mBlockingView:Landroid/view/View;

    .line 369
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 370
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x3

    const v2, 0x7f1101cc

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 371
    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mBlockingView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mBlockingView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 375
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    const v1, 0x7f1101cb

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/crop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mBlockingView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 376
    return-void
.end method

.method private cropAndSaveImage()V
    .locals 5

    .prologue
    .line 379
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mBlockingView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 380
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/UCropActivity;->supportInvalidateOptionsMenu()V

    .line 382
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mGestureCropImageView:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget v2, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mCompressQuality:I

    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mOutputUri:Landroid/net/Uri;

    new-instance v4, Lnet/oneplus/h2launcher/crop/UCropActivity$1;

    invoke-direct {v4, p0}, Lnet/oneplus/h2launcher/crop/UCropActivity$1;-><init>(Lnet/oneplus/h2launcher/crop/UCropActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->cropAndSaveImage(Landroid/graphics/Bitmap$CompressFormat;ILandroid/net/Uri;Lnet/oneplus/h2launcher/crop/callback/BitmapCropCallback;)V

    .line 403
    return-void
.end method

.method private dismissProgressDialog()V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 468
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 470
    :cond_0
    return-void
.end method

.method private getCropCallbackSecondary()Lnet/oneplus/h2launcher/crop/callback/BitmapCropCallback;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mOutputUri2:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 407
    const/4 v0, 0x0

    .line 410
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lnet/oneplus/h2launcher/crop/UCropActivity$2;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/crop/UCropActivity$2;-><init>(Lnet/oneplus/h2launcher/crop/UCropActivity;)V

    goto :goto_0
.end method

.method private initiateRootViews()V
    .locals 4

    .prologue
    .line 308
    const v1, 0x7f1101d0

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/crop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/crop/view/UCropView;

    iput-object v1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mUCropView:Lnet/oneplus/h2launcher/crop/view/UCropView;

    .line 309
    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mUCropView:Lnet/oneplus/h2launcher/crop/view/UCropView;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/crop/view/UCropView;->getCropImageView()Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mGestureCropImageView:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    .line 310
    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mUCropView:Lnet/oneplus/h2launcher/crop/view/UCropView;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/crop/view/UCropView;->getOverlayView()Lnet/oneplus/h2launcher/crop/view/OverlayView;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mOverlayView:Lnet/oneplus/h2launcher/crop/view/OverlayView;

    .line 312
    const v1, 0x7f1101cf

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/crop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/crop/view/UCropView;

    .line 313
    .local v0, "uCropViewSecondary":Lnet/oneplus/h2launcher/crop/view/UCropView;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/crop/view/UCropView;->getCropImageView()Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mGestureCropImageView2:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    .line 314
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/crop/view/UCropView;->getOverlayView()Lnet/oneplus/h2launcher/crop/view/OverlayView;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mOverlayView2:Lnet/oneplus/h2launcher/crop/view/OverlayView;

    .line 316
    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mGestureCropImageView:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    new-instance v2, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;

    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mUCropView:Lnet/oneplus/h2launcher/crop/view/UCropView;

    invoke-direct {v2, p0, v3}, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;-><init>(Lnet/oneplus/h2launcher/crop/UCropActivity;Lnet/oneplus/h2launcher/crop/view/UCropView;)V

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->setTransformImageListener(Lnet/oneplus/h2launcher/crop/view/TransformImageView$TransformImageListener;)V

    .line 317
    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mGestureCropImageView2:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    new-instance v2, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;

    invoke-direct {v2, p0, v0}, Lnet/oneplus/h2launcher/crop/UCropActivity$TransformImageListenerImp;-><init>(Lnet/oneplus/h2launcher/crop/UCropActivity;Lnet/oneplus/h2launcher/crop/view/UCropView;)V

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->setTransformImageListener(Lnet/oneplus/h2launcher/crop/view/TransformImageView$TransformImageListener;)V

    .line 319
    return-void
.end method

.method private processOptions(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v10, 0x1f4

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/high16 v6, 0x41200000    # 10.0f

    const/4 v7, 0x0

    .line 225
    const-string v3, "net.oneplus.h2launcher.CompressionFormatName"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, "compressionFormatName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 227
    .local v1, "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 228
    invoke-static {v2}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v1

    .line 230
    :cond_0
    if-nez v1, :cond_1

    sget-object v1, Lnet/oneplus/h2launcher/crop/UCropActivity;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    .end local v1    # "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    :cond_1
    iput-object v1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 232
    const-string v3, "net.oneplus.h2launcher.CompressionQuality"

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mCompressQuality:I

    .line 235
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mGestureCropImageView:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    invoke-virtual {v3, v7}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->setRotateEnabled(Z)V

    .line 236
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mGestureCropImageView:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    const-string v4, "net.oneplus.h2launcher.MaxBitmapSize"

    const/16 v5, 0xc00

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->setMaxBitmapSize(I)V

    .line 237
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mGestureCropImageView:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    const-string v4, "net.oneplus.h2launcher.MaxScaleMultiplier"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v4

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->setMaxScaleMultiplier(F)V

    .line 238
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mGestureCropImageView:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    const-string v4, "net.oneplus.h2launcher.ImageToCropBoundsAnimDuration"

    invoke-virtual {p1, v4, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->setImageToWrapCropBoundsAnimDuration(J)V

    .line 240
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mGestureCropImageView2:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    invoke-virtual {v3, v7}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->setRotateEnabled(Z)V

    .line 241
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mGestureCropImageView2:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    const-string v4, "net.oneplus.h2launcher.MaxBitmapSize"

    const/16 v5, 0xc00

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->setMaxBitmapSize(I)V

    .line 242
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mGestureCropImageView2:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    const-string v4, "net.oneplus.h2launcher.MaxScaleMultiplier"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v4

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->setMaxScaleMultiplier(F)V

    .line 243
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mGestureCropImageView2:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    const-string v4, "net.oneplus.h2launcher.ImageToCropBoundsAnimDuration"

    invoke-virtual {p1, v4, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->setImageToWrapCropBoundsAnimDuration(J)V

    .line 246
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mOverlayView:Lnet/oneplus/h2launcher/crop/view/OverlayView;

    const-string v4, "net.oneplus.h2launcher.DimmedLayerColor"

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/UCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0353

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->setDimmedColor(I)V

    .line 247
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mOverlayView:Lnet/oneplus/h2launcher/crop/view/OverlayView;

    const-string v4, "net.oneplus.h2launcher.OvalDimmedLayer"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->setOvalDimmedLayer(Z)V

    .line 249
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mOverlayView:Lnet/oneplus/h2launcher/crop/view/OverlayView;

    const-string v4, "net.oneplus.h2launcher.ShowCropFrame"

    invoke-virtual {p1, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->setShowCropFrame(Z)V

    .line 250
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mOverlayView:Lnet/oneplus/h2launcher/crop/view/OverlayView;

    const-string v4, "net.oneplus.h2launcher.CropFrameColor"

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/UCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0351

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->setCropFrameColor(I)V

    .line 251
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mOverlayView:Lnet/oneplus/h2launcher/crop/view/OverlayView;

    const-string v4, "net.oneplus.h2launcher.CropFrameStrokeWidth"

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/UCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0140

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->setCropFrameStrokeWidth(I)V

    .line 253
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mOverlayView:Lnet/oneplus/h2launcher/crop/view/OverlayView;

    const-string v4, "net.oneplus.h2launcher.ShowCropGrid"

    invoke-virtual {p1, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->setShowCropGrid(Z)V

    .line 254
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mOverlayView:Lnet/oneplus/h2launcher/crop/view/OverlayView;

    const-string v4, "net.oneplus.h2launcher.CropGridRowCount"

    invoke-virtual {p1, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->setCropGridRowCount(I)V

    .line 255
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mOverlayView:Lnet/oneplus/h2launcher/crop/view/OverlayView;

    const-string v4, "net.oneplus.h2launcher.CropGridColumnCount"

    invoke-virtual {p1, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->setCropGridColumnCount(I)V

    .line 256
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mOverlayView:Lnet/oneplus/h2launcher/crop/view/OverlayView;

    const-string v4, "net.oneplus.h2launcher.CropGridColor"

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/UCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0352

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->setCropGridColor(I)V

    .line 257
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mOverlayView:Lnet/oneplus/h2launcher/crop/view/OverlayView;

    const-string v4, "net.oneplus.h2launcher.CropGridStrokeWidth"

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/UCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0141

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->setCropGridStrokeWidth(I)V

    .line 259
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mOverlayView:Lnet/oneplus/h2launcher/crop/view/OverlayView;

    const-string v4, "net.oneplus.h2launcher.ShowCropCoverColorMask"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->setShowCropCoverColorMask(Z)V

    .line 260
    const-string v3, "net.oneplus.h2launcher.CropCoverImage"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 261
    .local v0, "bytes":[B
    if-eqz v0, :cond_2

    .line 262
    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mOverlayView:Lnet/oneplus/h2launcher/crop/view/OverlayView;

    array-length v4, v0

    invoke-static {v0, v7, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->setCropCoverImage(Landroid/graphics/Bitmap;)V

    .line 264
    :cond_2
    return-void
.end method

.method private setAllowedGestures()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 354
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mGestureCropImageView:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->setScaleEnabled(Z)V

    .line 355
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mGestureCropImageView:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->setRotateEnabled(Z)V

    .line 357
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mGestureCropImageView2:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->setScaleEnabled(Z)V

    .line 358
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mGestureCropImageView2:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->setRotateEnabled(Z)V

    .line 359
    return-void
.end method

.method private setImageData(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 165
    const-string v6, "net.oneplus.h2launcher.InputUri"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 166
    .local v3, "inputUri":Landroid/net/Uri;
    const-string v6, "net.oneplus.h2launcher.OutputUri"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    iput-object v6, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mOutputUri:Landroid/net/Uri;

    .line 167
    const-string v6, "net.oneplus.h2launcher.OutputUriSecondary"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    iput-object v6, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mOutputUri2:Landroid/net/Uri;

    .line 168
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/crop/UCropActivity;->processOptions(Landroid/content/Intent;)V

    .line 170
    if-eqz v3, :cond_3

    iget-object v6, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mOutputUri:Landroid/net/Uri;

    if-eqz v6, :cond_3

    .line 172
    :try_start_0
    invoke-direct {p0}, Lnet/oneplus/h2launcher/crop/UCropActivity;->showProgressDialog()V

    .line 173
    iget-object v6, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mGestureCropImageView:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    iget-object v7, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mOutputUri:Landroid/net/Uri;

    invoke-virtual {v6, v3, v7}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->setImageUri(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 174
    iget-object v6, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mOutputUri2:Landroid/net/Uri;

    if-eqz v6, :cond_0

    .line 175
    iget-object v6, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mGestureCropImageView2:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    iget-object v7, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mOutputUri2:Landroid/net/Uri;

    invoke-virtual {v6, v3, v7}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->setImageUri(Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_0
    :goto_0
    const-string v6, "net.oneplus.h2launcher.AspectRatioSet"

    invoke-virtual {p1, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 187
    const-string v6, "net.oneplus.h2launcher.AspectRatioX"

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    .line 188
    .local v0, "aspectRatioX":F
    const-string v6, "net.oneplus.h2launcher.AspectRatioY"

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    .line 190
    .local v1, "aspectRatioY":F
    cmpl-float v6, v0, v8

    if-lez v6, :cond_5

    cmpl-float v6, v1, v8

    if-lez v6, :cond_5

    .line 191
    iget-object v6, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mGestureCropImageView:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    div-float v7, v0, v1

    invoke-virtual {v6, v7}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->setTargetAspectRatio(F)V

    .line 192
    iget-object v6, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mGestureCropImageView:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->getTargetAspectRatio()F

    move-result v6

    sget v7, Lnet/oneplus/h2launcher/crop/view/CropImageView;->LANDSCAPE_IMAGE_ASPECT_RATIO:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_4

    .line 193
    iget-object v6, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mGestureCropImageView2:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    sget v7, Lnet/oneplus/h2launcher/crop/view/CropImageView;->PORTRAIT_IMAGE_ASPECT_RATIO:F

    invoke-virtual {v6, v7}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->setTargetAspectRatio(F)V

    .line 203
    .end local v0    # "aspectRatioX":F
    .end local v1    # "aspectRatioY":F
    :cond_1
    :goto_1
    const-string v6, "net.oneplus.h2launcher.MaxSizeSet"

    invoke-virtual {p1, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 204
    const-string v6, "net.oneplus.h2launcher.MaxSizeX"

    invoke-virtual {p1, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 205
    .local v4, "maxSizeX":I
    const-string v6, "net.oneplus.h2launcher.MaxSizeY"

    invoke-virtual {p1, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 207
    .local v5, "maxSizeY":I
    if-lez v4, :cond_6

    if-lez v5, :cond_6

    .line 208
    iget-object v6, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mGestureCropImageView:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    invoke-virtual {v6, v4}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->setMaxResultImageSizeX(I)V

    .line 209
    iget-object v6, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mGestureCropImageView:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    invoke-virtual {v6, v5}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->setMaxResultImageSizeY(I)V

    .line 210
    iget-object v6, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mGestureCropImageView2:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    invoke-virtual {v6, v4}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->setMaxResultImageSizeX(I)V

    .line 211
    iget-object v6, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mGestureCropImageView2:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    invoke-virtual {v6, v5}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->setMaxResultImageSizeY(I)V

    .line 216
    .end local v4    # "maxSizeX":I
    .end local v5    # "maxSizeY":I
    :cond_2
    :goto_2
    return-void

    .line 177
    :catch_0
    move-exception v2

    .line 178
    .local v2, "e":Ljava/lang/Exception;
    invoke-direct {p0, v2}, Lnet/oneplus/h2launcher/crop/UCropActivity;->setResultException(Ljava/lang/Throwable;)V

    .line 179
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/UCropActivity;->finish()V

    goto :goto_0

    .line 182
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v6, Ljava/lang/NullPointerException;

    const v7, 0x7f0b013d

    invoke-virtual {p0, v7}, Lnet/oneplus/h2launcher/crop/UCropActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lnet/oneplus/h2launcher/crop/UCropActivity;->setResultException(Ljava/lang/Throwable;)V

    .line 183
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/UCropActivity;->finish()V

    goto :goto_0

    .line 195
    .restart local v0    # "aspectRatioX":F
    .restart local v1    # "aspectRatioY":F
    :cond_4
    iget-object v6, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mGestureCropImageView2:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    sget v7, Lnet/oneplus/h2launcher/crop/view/CropImageView;->LANDSCAPE_IMAGE_ASPECT_RATIO:F

    invoke-virtual {v6, v7}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->setTargetAspectRatio(F)V

    goto :goto_1

    .line 198
    :cond_5
    iget-object v6, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mGestureCropImageView:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    invoke-virtual {v6, v8}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->setTargetAspectRatio(F)V

    .line 199
    iget-object v6, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mGestureCropImageView2:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    invoke-virtual {v6, v8}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->setTargetAspectRatio(F)V

    goto :goto_1

    .line 213
    .end local v0    # "aspectRatioX":F
    .end local v1    # "aspectRatioY":F
    .restart local v4    # "maxSizeX":I
    .restart local v5    # "maxSizeY":I
    :cond_6
    sget-object v6, Lnet/oneplus/h2launcher/crop/UCropActivity;->TAG:Ljava/lang/String;

    const-string v7, "EXTRA_MAX_SIZE_X and EXTRA_MAX_SIZE_Y must be greater than 0"

    invoke-static {v6, v7}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private setResultException(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 450
    const/16 v0, 0x60

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "net.oneplus.h2launcher.Error"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/h2launcher/crop/UCropActivity;->setResult(ILandroid/content/Intent;)V

    .line 451
    invoke-direct {p0}, Lnet/oneplus/h2launcher/crop/UCropActivity;->dismissProgressDialog()V

    .line 452
    return-void
.end method

.method private setResultUri(Landroid/net/Uri;FI)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "resultAspectRatio"    # F
    .param p3, "maskColor"    # I

    .prologue
    .line 430
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "net.oneplus.h2launcher.InputUri"

    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mGestureCropImageView:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    .line 431
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->getImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "net.oneplus.h2launcher.OutputUri"

    .line 432
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "net.oneplus.h2launcher.OutputMaskColor"

    .line 433
    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "net.oneplus.h2launcher.CropAspectRatio"

    .line 434
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v1

    .line 430
    invoke-virtual {p0, v0, v1}, Lnet/oneplus/h2launcher/crop/UCropActivity;->setResult(ILandroid/content/Intent;)V

    .line 435
    return-void
.end method

.method private setResultUri(Landroid/net/Uri;Landroid/net/Uri;FFII)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "uri2"    # Landroid/net/Uri;
    .param p3, "resultAspectRatio"    # F
    .param p4, "resultAspectRatio2"    # F
    .param p5, "maskColor"    # I
    .param p6, "maskColor2"    # I

    .prologue
    .line 439
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "net.oneplus.h2launcher.InputUri"

    iget-object v3, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mGestureCropImageView:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    .line 440
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->getImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "net.oneplus.h2launcher.OutputUri"

    .line 441
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "net.oneplus.h2launcher.OutputMaskColor"

    .line 442
    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "net.oneplus.h2launcher.CropAspectRatio"

    .line 443
    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "net.oneplus.h2launcher.OutputUriSecondary"

    .line 444
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "net.oneplus.h2launcher.OutputMaskColorSecondary"

    .line 445
    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "net.oneplus.h2launcher.CropAspectRatioSecondary"

    .line 446
    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v1

    .line 439
    invoke-virtual {p0, v0, v1}, Lnet/oneplus/h2launcher/crop/UCropActivity;->setResult(ILandroid/content/Intent;)V

    .line 447
    return-void
.end method

.method private setStatusBarColor(I)V
    .locals 2
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 346
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 347
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/UCropActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/UCropActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 351
    :cond_0
    return-void
.end method

.method private setupAppBar()V
    .locals 6

    .prologue
    .line 281
    iget v5, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mStatusBarColor:I

    invoke-direct {p0, v5}, Lnet/oneplus/h2launcher/crop/UCropActivity;->setStatusBarColor(I)V

    .line 283
    const v5, 0x7f1101cc

    invoke-virtual {p0, v5}, Lnet/oneplus/h2launcher/crop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/Toolbar;

    .line 284
    .local v2, "toolbar":Landroid/support/v7/widget/Toolbar;
    iget v5, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mToolbarColor:I

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    .line 285
    iget v5, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mToolbarWidgetColor:I

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 287
    const v5, 0x7f1101cd

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 288
    .local v3, "toolbarTitle":Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 289
    iget v5, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mToolbarWidgetColor:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 290
    iget-object v5, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mToolbarTitle:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    :cond_0
    const v5, 0x7f0200d6

    .line 295
    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 296
    .local v1, "stateButtonDrawable":Landroid/graphics/drawable/Drawable;
    const v5, 0x7f0e0356

    invoke-static {p0, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    .line 297
    .local v4, "upIconColor":I
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 298
    invoke-virtual {v2, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 300
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/crop/UCropActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 301
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/UCropActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 302
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_1

    .line 303
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 305
    :cond_1
    return-void
.end method

.method private setupViews(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 267
    const-string v0, "net.oneplus.h2launcher.StatusBarColor"

    const v1, 0x7f0e0354

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mStatusBarColor:I

    .line 268
    const-string v0, "net.oneplus.h2launcher.ToolbarColor"

    const v1, 0x7f0e0355

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mToolbarColor:I

    .line 269
    const-string v0, "net.oneplus.h2launcher.UcropToolbarWidgetColor"

    const v1, 0x7f0e0357

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mToolbarWidgetColor:I

    .line 270
    const-string v0, "net.oneplus.h2launcher.UcropToolbarTitleText"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mToolbarTitle:Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mToolbarTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mToolbarTitle:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mToolbarTitle:Ljava/lang/String;

    .line 273
    invoke-direct {p0}, Lnet/oneplus/h2launcher/crop/UCropActivity;->setupAppBar()V

    .line 274
    invoke-direct {p0}, Lnet/oneplus/h2launcher/crop/UCropActivity;->initiateRootViews()V

    .line 275
    return-void

    .line 271
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/UCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private showProgressDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 455
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 458
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 459
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0b0076

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/crop/UCropActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 460
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 461
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 462
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 463
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 323
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onAttachedToWindow()V

    .line 325
    sget-boolean v1, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_LOLLIPOP:Z

    if-eqz v1, :cond_0

    .line 326
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/UCropActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 327
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit16 v2, v2, 0x700

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 331
    const/high16 v1, 0xc000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 333
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 334
    iget v1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mStatusBarColor:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 335
    iget v1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mToolbarColor:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 337
    .end local v0    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    if-eqz p1, :cond_0

    .line 86
    sget-object v2, Lnet/oneplus/h2launcher/crop/UCropActivity;->TAG:Ljava/lang/String;

    const-string v3, "Restored wallpaper cropper is not allowed"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/UCropActivity;->finish()V

    .line 90
    :cond_0
    invoke-static {p0}, Lnet/oneplus/h2launcher/Utilities;->isDarkModeTheme(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0a0104

    :goto_0
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/crop/UCropActivity;->setTheme(I)V

    .line 91
    const v2, 0x7f0400cc

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/crop/UCropActivity;->setContentView(I)V

    .line 93
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/UCropActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 95
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/crop/UCropActivity;->setupViews(Landroid/content/Intent;)V

    .line 96
    invoke-direct {p0}, Lnet/oneplus/h2launcher/crop/UCropActivity;->setAllowedGestures()V

    .line 97
    invoke-direct {p0}, Lnet/oneplus/h2launcher/crop/UCropActivity;->addBlockingView()V

    .line 99
    const v2, 0x7f1101ce

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/crop/UCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 100
    .local v1, "ucropFrame":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 101
    new-instance v2, Lnet/oneplus/h2launcher/crop/UCropActivity$OnUCropFrameLayoutChangeListener;

    invoke-direct {v2, p0, v0}, Lnet/oneplus/h2launcher/crop/UCropActivity$OnUCropFrameLayoutChangeListener;-><init>(Lnet/oneplus/h2launcher/crop/UCropActivity;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 103
    :cond_1
    return-void

    .line 90
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "ucropFrame":Landroid/view/View;
    :cond_2
    const v2, 0x7f0a0103

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 107
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/UCropActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f120001

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 109
    const v2, 0x7f110204

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 110
    .local v0, "menuItemCrop":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 111
    .local v1, "menuItemCropIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 113
    iget v2, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mToolbarWidgetColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 114
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 117
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 122
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f110204

    if-ne v0, v1, :cond_1

    .line 123
    invoke-direct {p0}, Lnet/oneplus/h2launcher/crop/UCropActivity;->cropAndSaveImage()V

    .line 127
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 124
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 125
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/UCropActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 145
    packed-switch p1, :pswitch_data_0

    .line 159
    :cond_0
    return-void

    .line 147
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 148
    aget-object v1, p2, v0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    aget v1, p3, v0

    if-nez v1, :cond_2

    .line 150
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/UCropActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/crop/UCropActivity;->setImageData(Landroid/content/Intent;)V

    .line 147
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_2
    sget-object v1, Lnet/oneplus/h2launcher/crop/UCropActivity;->TAG:Ljava/lang/String;

    const-string v2, "permission not granted by user"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/crop/UCropActivity;->finish()V

    goto :goto_1

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 133
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mGestureCropImageView:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mGestureCropImageView:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->cancelAllAnimations()V

    .line 136
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mGestureCropImageView2:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCropActivity;->mGestureCropImageView2:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->cancelAllAnimations()V

    .line 139
    :cond_1
    invoke-direct {p0}, Lnet/oneplus/h2launcher/crop/UCropActivity;->dismissProgressDialog()V

    .line 140
    return-void
.end method
