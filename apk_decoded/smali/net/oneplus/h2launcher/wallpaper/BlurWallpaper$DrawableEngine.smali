.class Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "BlurWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrawableEngine"
.end annotation


# static fields
.field private static final ALPHA_MULTIPLE:I = 0x2

.field private static final MSG_CHANGE_WALLPAPER:I = 0x1f4


# instance fields
.field private final BLUR_SCALE:F

.field private final KEY_OFFSET:Ljava/lang/String;

.field private final MSG_DO_BLUR:I

.field private final MSG_DRAW_FRAME:I

.field private final MSG_DRAW_LANDSCAPE:I

.field private final MSG_UPDATE_WALLPAPER:I

.field private final PENDING_THRESHOLD:I

.field private final POSITION_HOME:I

.field private final POSITION_HOME_RIGHT:I

.field private final POSITION_UNKNOWN:I

.field private final TAG:Ljava/lang/String;

.field private isRTL:Z

.field mBackgroundHeight:I

.field mBackgroundWidth:I

.field mBlurBackground:Landroid/graphics/Bitmap;

.field private mBlurWallpaperReceiver:Landroid/content/BroadcastReceiver;

.field mColorMaskColor:I

.field private mContext:Landroid/content/Context;

.field private mCurrentOffSetPixel:I

.field mCurrentWallpaperType:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;

.field private mDefaultDisplay:Landroid/view/Display;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field mFinalBlurAlphaBackground:Landroid/graphics/Bitmap;

.field mFinalBlurBackground:Landroid/graphics/Bitmap;

.field mForceDrawFrame:Z

.field private mGestureSharedPrefs:Landroid/content/SharedPreferences;

.field private mHandler:Landroid/os/Handler;

.field mHomeBackground:Landroid/graphics/Bitmap;

.field mIsBlur:Z

.field private mIsWallpaperUpdated:Z

.field mLandscapeBackground:Landroid/graphics/Bitmap;

.field private mLastOffSetPixel:I

.field private mLastOnePageOffsetPixel:I

.field private mLastPosition:I

.field mLastRectArray:[Landroid/graphics/Rect;

.field private mLastRequestedHeight:I

.field private mLastRequestedWidth:I

.field mLastRotation:I

.field mLastSurfaceHeight:I

.field mLastSurfaceWidth:I

.field mLastXOffsetPixel:I

.field mLastYTranslation:I

.field private mNavigationBarHeight:I

.field mOffsetsChanged:Z

.field private mOnePageOffsetPixel:I

.field mOrientation:I

.field mOriginalWallpaper:Landroid/graphics/Bitmap;

.field private mPendingTaskSize:I

.field mRectArray:[Landroid/graphics/Rect;

.field mScale:F

.field mScrollMode:I

.field private mTaskLinkedList:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mVisible:Z

.field mXOffset:F

.field mXOffsetPixel:I

.field mXOffsetStep:F

.field mXOffsetStepPixel:F

.field mYOffset:F

.field final synthetic this$0:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;)V
    .locals 7
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;

    .prologue
    const/4 v6, 0x2

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 296
    iput-object p1, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->this$0:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;

    .line 297
    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".Engine"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->TAG:Ljava/lang/String;

    .line 218
    iput v3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOrientation:I

    .line 219
    iput v5, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mColorMaskColor:I

    .line 220
    iput v4, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mScrollMode:I

    .line 221
    iput-boolean v4, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mIsBlur:Z

    .line 222
    new-array v0, v6, [Landroid/graphics/Rect;

    iput-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mRectArray:[Landroid/graphics/Rect;

    .line 223
    new-array v0, v6, [Landroid/graphics/Rect;

    iput-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastRectArray:[Landroid/graphics/Rect;

    .line 225
    iput v3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mBackgroundWidth:I

    iput v3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mBackgroundHeight:I

    .line 226
    iput v3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    iput v3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    .line 227
    iput v3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastRotation:I

    .line 228
    iput v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mXOffset:F

    .line 229
    iput v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mYOffset:F

    .line 230
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mScale:F

    .line 231
    iput v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mXOffsetStep:F

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mXOffsetStepPixel:F

    .line 237
    iput-boolean v4, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mVisible:Z

    .line 241
    iput v3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mXOffsetPixel:I

    .line 242
    iput v3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastXOffsetPixel:I

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mHandler:Landroid/os/Handler;

    .line 246
    const/16 v0, 0x64

    iput v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->MSG_UPDATE_WALLPAPER:I

    .line 247
    const/16 v0, 0xc8

    iput v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->MSG_DO_BLUR:I

    .line 248
    const/16 v0, 0x12c

    iput v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->MSG_DRAW_FRAME:I

    .line 249
    const/16 v0, 0x190

    iput v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->MSG_DRAW_LANDSCAPE:I

    .line 251
    const-string v0, "key_offset"

    iput-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->KEY_OFFSET:Ljava/lang/String;

    .line 255
    iput v5, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mPendingTaskSize:I

    .line 256
    iput v4, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->PENDING_THRESHOLD:I

    .line 259
    iput v3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mDisplayWidth:I

    .line 260
    iput v3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mDisplayHeight:I

    .line 262
    iput v3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastRequestedWidth:I

    .line 263
    iput v3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastRequestedHeight:I

    .line 271
    iput v4, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOnePageOffsetPixel:I

    .line 272
    iput v5, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mCurrentOffSetPixel:I

    .line 273
    iput v5, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastOffSetPixel:I

    .line 276
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->BLUR_SCALE:F

    .line 278
    sget-object v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;->NONE:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;

    iput-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mCurrentWallpaperType:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;

    .line 280
    new-instance v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$BlurWallpaperSettingsReceiver;

    iget-object v1, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->this$0:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$BlurWallpaperSettingsReceiver;-><init>(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$1;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mBlurWallpaperReceiver:Landroid/content/BroadcastReceiver;

    .line 282
    iput v3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mNavigationBarHeight:I

    .line 284
    iput-boolean v5, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mIsWallpaperUpdated:Z

    .line 286
    iput-boolean v5, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->isRTL:Z

    .line 290
    const/16 v0, -0x64

    iput v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->POSITION_UNKNOWN:I

    .line 291
    iput v4, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->POSITION_HOME:I

    .line 292
    iput v6, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->POSITION_HOME_RIGHT:I

    .line 293
    const/16 v0, -0x64

    iput v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastPosition:I

    .line 294
    iput v4, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastOnePageOffsetPixel:I

    .line 298
    return-void
.end method

.method static synthetic access$1000(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    .prologue
    .line 205
    iget v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastOffSetPixel:I

    return v0
.end method

.method static synthetic access$1002(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;I)I
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;
    .param p1, "x1"    # I

    .prologue
    .line 205
    iput p1, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastOffSetPixel:I

    return p1
.end method

.method static synthetic access$1100(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;Landroid/view/SurfaceHolder;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;
    .param p1, "x1"    # Landroid/view/SurfaceHolder;
    .param p2, "x2"    # Landroid/graphics/Bitmap;
    .param p3, "x3"    # Landroid/graphics/Bitmap;
    .param p4, "x4"    # Landroid/graphics/Rect;
    .param p5, "x5"    # Landroid/graphics/Rect;
    .param p6, "x6"    # I

    .prologue
    .line 205
    invoke-direct/range {p0 .. p6}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->drawWallpaperWithCanvas(Landroid/view/SurfaceHolder;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    return-void
.end method

.method static synthetic access$1200(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;
    .param p1, "x1"    # Landroid/graphics/Rect;
    .param p2, "x2"    # Landroid/graphics/Rect;
    .param p3, "x3"    # I

    .prologue
    .line 205
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->isNeedDrawOnNonHomePage(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    .prologue
    .line 205
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mIsWallpaperUpdated:Z

    return v0
.end method

.method static synthetic access$1302(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;
    .param p1, "x1"    # Z

    .prologue
    .line 205
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mIsWallpaperUpdated:Z

    return p1
.end method

.method static synthetic access$1400(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;Landroid/view/SurfaceHolder;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;
    .param p1, "x1"    # Landroid/view/SurfaceHolder;
    .param p2, "x2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->drawWallpaperWithCanvas(Landroid/view/SurfaceHolder;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1600(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    .prologue
    .line 205
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    .prologue
    .line 205
    invoke-direct {p0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->updateWallpaperLocked()V

    return-void
.end method

.method static synthetic access$2000(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->isProviderNotify(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    .prologue
    .line 205
    iget v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mPendingTaskSize:I

    return v0
.end method

.method static synthetic access$302(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;I)I
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;
    .param p1, "x1"    # I

    .prologue
    .line 205
    iput p1, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mPendingTaskSize:I

    return p1
.end method

.method static synthetic access$310(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;)I
    .locals 2
    .param p0, "x0"    # Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    .prologue
    .line 205
    iget v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mPendingTaskSize:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mPendingTaskSize:I

    return v0
.end method

.method static synthetic access$400(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    .prologue
    .line 205
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mTaskLinkedList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic access$600(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    .prologue
    .line 205
    iget v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mCurrentOffSetPixel:I

    return v0
.end method

.method static synthetic access$602(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;I)I
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;
    .param p1, "x1"    # I

    .prologue
    .line 205
    iput p1, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mCurrentOffSetPixel:I

    return p1
.end method

.method static synthetic access$700(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    .prologue
    .line 205
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)[Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # Landroid/graphics/Bitmap;
    .param p3, "x3"    # I

    .prologue
    .line 205
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->calcRect(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)[Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;
    .param p1, "x1"    # Landroid/graphics/Rect;
    .param p2, "x2"    # Landroid/graphics/Rect;

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->compareRectEqual(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method private calcRect(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)[Landroid/graphics/Rect;
    .locals 5
    .param p1, "homeBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "nonHomeBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "offSet"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1212
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mRectArray:[Landroid/graphics/Rect;

    aget-object v0, v0, v4

    if-nez v0, :cond_0

    .line 1213
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mRectArray:[Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v4

    .line 1215
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mRectArray:[Landroid/graphics/Rect;

    aget-object v0, v0, v3

    if-nez v0, :cond_1

    .line 1216
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mRectArray:[Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v3

    .line 1219
    :cond_1
    if-eqz p2, :cond_6

    if-eqz p1, :cond_6

    .line 1221
    if-gez p3, :cond_2

    .line 1222
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->TAG:Ljava/lang/String;

    const-string v1, " no shelf ~~~~~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    :cond_2
    invoke-direct {p0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->isOriginalScrollMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1226
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mRectArray:[Landroid/graphics/Rect;

    aget-object v0, v0, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1227
    iget v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mDisplayWidth:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_4

    .line 1228
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->isRTL:Z

    if-nez v0, :cond_3

    .line 1229
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mRectArray:[Landroid/graphics/Rect;

    aget-object v0, v0, v3

    iget v1, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mDisplayWidth:I

    add-int/2addr v1, p3

    iget v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mDisplayHeight:I

    invoke-virtual {v0, p3, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1236
    :goto_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mRectArray:[Landroid/graphics/Rect;

    .line 1251
    :goto_1
    return-object v0

    .line 1231
    :cond_3
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mRectArray:[Landroid/graphics/Rect;

    aget-object v0, v0, v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mDisplayWidth:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, p3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v2, p3

    iget v3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mDisplayHeight:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1234
    :cond_4
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mRectArray:[Landroid/graphics/Rect;

    aget-object v0, v0, v3

    iget v1, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mDisplayWidth:I

    iget v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mDisplayHeight:I

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1239
    :cond_5
    iget v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOrientation:I

    if-ne v0, v3, :cond_8

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mIsBlur:Z

    if-eqz v0, :cond_8

    .line 1240
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mRectArray:[Landroid/graphics/Rect;

    aget-object v0, v0, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1241
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->isRTL:Z

    if-nez v0, :cond_7

    .line 1242
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mRectArray:[Landroid/graphics/Rect;

    aget-object v0, v0, v3

    iget v1, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mDisplayWidth:I

    add-int/2addr v1, p3

    iget v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mDisplayHeight:I

    invoke-virtual {v0, p3, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1251
    :cond_6
    :goto_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mRectArray:[Landroid/graphics/Rect;

    goto :goto_1

    .line 1244
    :cond_7
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mRectArray:[Landroid/graphics/Rect;

    aget-object v0, v0, v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mDisplayWidth:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, p3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v2, p3

    iget v3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mDisplayHeight:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    .line 1247
    :cond_8
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mRectArray:[Landroid/graphics/Rect;

    aget-object v0, v0, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1248
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mRectArray:[Landroid/graphics/Rect;

    aget-object v0, v0, v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2
.end method

.method private compareRectEqual(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 5
    .param p1, "srcHomeRect"    # Landroid/graphics/Rect;
    .param p2, "srcNonHomeRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 497
    const/4 v0, 0x0

    .line 499
    .local v0, "isEqual":Z
    iget-object v3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->this$0:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;

    invoke-static {v3}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->access$500(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;)I

    move-result v3

    if-lez v3, :cond_0

    .line 500
    iget-object v1, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compareRectEqual mReDrawCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->this$0:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;

    invoke-static {v4}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->access$500(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v1, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->this$0:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;

    invoke-static {v1}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->access$510(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;)I

    .line 523
    :goto_0
    return v2

    .line 504
    :cond_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastRectArray:[Landroid/graphics/Rect;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    iget-object v3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastRectArray:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    if-nez v3, :cond_2

    .line 505
    :cond_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastRectArray:[Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    aput-object v4, v3, v2

    .line 506
    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastRectArray:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    aput-object v3, v2, v1

    move v2, v0

    .line 507
    goto :goto_0

    .line 510
    :cond_2
    iget-object v3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastRectArray:[Landroid/graphics/Rect;

    aget-object v3, v3, v2

    if-eqz v3, :cond_3

    if-eqz p1, :cond_3

    iget-object v3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastRectArray:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    if-eqz v3, :cond_3

    if-eqz p2, :cond_3

    .line 511
    iget-object v3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastRectArray:[Landroid/graphics/Rect;

    aget-object v3, v3, v2

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastRectArray:[Landroid/graphics/Rect;

    aget-object v3, v3, v2

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastRectArray:[Landroid/graphics/Rect;

    aget-object v3, v3, v2

    .line 513
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastRectArray:[Landroid/graphics/Rect;

    aget-object v3, v3, v2

    .line 514
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastRectArray:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->left:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastRectArray:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastRectArray:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    .line 517
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastRectArray:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    .line 518
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ne v3, v4, :cond_4

    move v0, v1

    .line 520
    :cond_3
    :goto_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastRectArray:[Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    aput-object v4, v3, v2

    .line 521
    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastRectArray:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    aput-object v3, v2, v1

    move v2, v0

    .line 523
    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 518
    goto :goto_1
.end method

.method private createBlurWallpaper()V
    .locals 26

    .prologue
    .line 754
    new-instance v12, Ljava/io/File;

    new-instance v21, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->this$0:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->getFilesDir()Ljava/io/File;

    move-result-object v22

    const-string v23, "blur_wallpaper"

    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 755
    .local v12, "fileBlur":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 756
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 757
    .local v18, "start":J
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 758
    .local v14, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v0, v14}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mFinalBlurBackground:Landroid/graphics/Bitmap;

    .line 759
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v10, v22, v18

    .line 760
    .local v10, "diff":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mFinalBlurBackground decode spend "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mFinalBlurBackground:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "mFinalBlurBackground# use file cache"

    invoke-static/range {v21 .. v22}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    .end local v14    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-void

    .line 768
    .end local v10    # "diff":J
    .end local v18    # "start":J
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mHomeBackground:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const v22, 0x3f19999a    # 0.6f

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v7, v0

    .line 769
    .local v7, "blurWallpaperWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mHomeBackground:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const v22, 0x3f19999a    # 0.6f

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v6, v0

    .line 771
    .local v6, "blurWallpaperHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mHomeBackground:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v0, v7, v6, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mBlurBackground:Landroid/graphics/Bitmap;

    .line 773
    const/high16 v17, 0x42c60000    # 99.0f

    .line 774
    .local v17, "shelf_radius":F
    const/high16 v21, 0x41c80000    # 25.0f

    div-float v21, v17, v21

    move/from16 v0, v21

    float-to-int v13, v0

    .line 775
    .local v13, "num":I
    invoke-static {}, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->clearCacheBitmap()V

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mBlurBackground:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v13}, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->createCacheBlurBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    .line 777
    const-wide/16 v18, 0x0

    .line 778
    .restart local v18    # "start":J
    const-wide/16 v10, 0x0

    .line 780
    .restart local v10    # "diff":J
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->isOriginalScrollMode()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 781
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->getOrCreateOriginalWallpaper()Landroid/graphics/Bitmap;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->cropWallpaperDoubleWidth(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mFinalBlurBackground:Landroid/graphics/Bitmap;

    .line 782
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->saveBitmapAsFile()V

    goto/16 :goto_0

    .line 786
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mIsBlur:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    .line 787
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOrientation:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 788
    const v9, 0x3f19999a    # 0.6f

    .line 789
    .local v9, "downScale":F
    const/high16 v15, 0x42c60000    # 99.0f

    .line 790
    .local v15, "radius":F
    const/16 v5, 0xf2

    .line 792
    .local v5, "alpha":I
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->getOrCreateOriginalWallpaper()Landroid/graphics/Bitmap;

    move-result-object v20

    .line 793
    .local v20, "wallpaper":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mDisplayHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    mul-float v16, v21, v9

    .line 794
    .local v16, "scale":F
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v16

    move/from16 v0, v21

    float-to-int v7, v0

    .line 795
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mDisplayHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v9

    move/from16 v0, v21

    float-to-int v6, v0

    .line 797
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 798
    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v7, v6, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mBlurBackground:Landroid/graphics/Bitmap;

    .line 800
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v10, v22, v18

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "createScaledBitmap# "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 804
    invoke-static {}, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->clearCacheBitmap()V

    .line 805
    const/high16 v21, 0x41c80000    # 25.0f

    div-float v21, v15, v21

    move/from16 v0, v21

    float-to-int v13, v0

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mBlurBackground:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v13}, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->createCacheBlurBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    .line 807
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v10, v22, v18

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "createCacheBlurBitmap# "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mBlurBackground:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v15}, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->stageBlur(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mFinalBlurBackground:Landroid/graphics/Bitmap;

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mFinalBlurBackground:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    int-to-float v0, v7

    move/from16 v22, v0

    div-float v22, v22, v9

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    .line 814
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    int-to-float v0, v6

    move/from16 v23, v0

    div-float v23, v23, v9

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v24, v0

    .line 815
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    .line 813
    invoke-static/range {v21 .. v24}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mFinalBlurBackground:Landroid/graphics/Bitmap;

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mFinalBlurBackground:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mFinalBlurBackground:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    .line 817
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    sget-object v23, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 816
    invoke-static/range {v21 .. v23}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mFinalBlurAlphaBackground:Landroid/graphics/Bitmap;

    .line 818
    new-instance v8, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mFinalBlurAlphaBackground:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 819
    .local v8, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 820
    .local v4, "a":Landroid/graphics/Paint;
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 821
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mColorMaskColor:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mFinalBlurBackground:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v8, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 823
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mFinalBlurAlphaBackground:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mFinalBlurBackground:Landroid/graphics/Bitmap;

    .line 825
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v10, v22, v18

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "BitmapBlur# stageBlur: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    .end local v4    # "a":Landroid/graphics/Paint;
    .end local v5    # "alpha":I
    .end local v8    # "canvas":Landroid/graphics/Canvas;
    .end local v9    # "downScale":F
    .end local v15    # "radius":F
    .end local v16    # "scale":F
    .end local v20    # "wallpaper":Landroid/graphics/Bitmap;
    :goto_1
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->saveBitmapAsFile()V

    goto/16 :goto_0

    .line 829
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mHomeBackground:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v0, v7, v6, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mBlurBackground:Landroid/graphics/Bitmap;

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mBlurBackground:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->stageBlur(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mFinalBlurBackground:Landroid/graphics/Bitmap;

    .line 833
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v10, v22, v18

    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "portrait createBitmap spend "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 840
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mDisplayWidth:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mDisplayHeight:I

    move/from16 v22, v0

    sget-object v23, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v21 .. v23}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mFinalBlurBackground:Landroid/graphics/Bitmap;

    .line 842
    new-instance v8, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mFinalBlurBackground:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 843
    .restart local v8    # "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mColorMaskColor:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_1
.end method

.method private createHomePageWallpaper()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 915
    const/4 v3, 0x0

    .line 917
    .local v3, "temp":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOriginalWallpaper:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOriginalWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 918
    :cond_0
    invoke-direct {p0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->getOrCreateOriginalWallpaper()Landroid/graphics/Bitmap;

    .line 921
    :cond_1
    invoke-direct {p0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->isOriginalScrollMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 922
    iget-boolean v4, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->isRTL:Z

    if-nez v4, :cond_3

    .line 923
    iget-object v4, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOriginalWallpaper:Landroid/graphics/Bitmap;

    invoke-direct {p0, v4}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->cropWallpaperInLeft(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mHomeBackground:Landroid/graphics/Bitmap;

    .line 950
    :cond_2
    :goto_0
    return-void

    .line 925
    :cond_3
    iget-object v4, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOriginalWallpaper:Landroid/graphics/Bitmap;

    invoke-direct {p0, v4}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->cropWallpaperInRight(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mHomeBackground:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 930
    :cond_4
    iget v4, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 931
    iget v4, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mDisplayWidth:I

    iget v5, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mDisplayHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 932
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 933
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Rect;

    iget-object v4, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOriginalWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOriginalWallpaper:Landroid/graphics/Bitmap;

    .line 934
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v2, v7, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 935
    .local v2, "src":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    iget v4, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mDisplayWidth:I

    iget v5, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mDisplayWidth:I

    int-to-float v5, v5

    .line 936
    invoke-static {}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->getLandscapeWallpaperAspectRatio()F

    move-result v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v1, v7, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 937
    .local v1, "dst":Landroid/graphics/Rect;
    iget-object v4, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOriginalWallpaper:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v2, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 942
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "dst":Landroid/graphics/Rect;
    .end local v2    # "src":Landroid/graphics/Rect;
    :cond_5
    :goto_1
    if-eqz v3, :cond_2

    .line 946
    iget v4, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mColorMaskColor:I

    iget v5, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOrientation:I

    invoke-virtual {p0, v3, v4, v5}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->paintWallpaperColorMask(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mHomeBackground:Landroid/graphics/Bitmap;

    .line 947
    iget-object v4, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mHomeBackground:Landroid/graphics/Bitmap;

    if-eq v4, v3, :cond_2

    iget-object v4, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOriginalWallpaper:Landroid/graphics/Bitmap;

    if-eq v4, v3, :cond_2

    .line 948
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 938
    :cond_6
    iget v4, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOrientation:I

    if-nez v4, :cond_5

    .line 939
    iget-object v4, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOriginalWallpaper:Landroid/graphics/Bitmap;

    invoke-direct {p0, v4}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->cropWallpaperInCenter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1
.end method

.method private createLandScapeWallpaper()V
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOriginalWallpaper:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 909
    invoke-direct {p0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->getOrCreateOriginalWallpaper()Landroid/graphics/Bitmap;

    .line 911
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOriginalWallpaper:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->cropLandscapeWallpaperInCenter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLandscapeBackground:Landroid/graphics/Bitmap;

    .line 912
    return-void
.end method

.method private cropLandscapeWallpaperInCenter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "srcBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 995
    iget v5, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mDisplayHeight:I

    .line 996
    .local v5, "surfaceWidth":I
    iget v4, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mDisplayWidth:I

    .line 997
    .local v4, "surfaceHeight":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 998
    .local v3, "srcWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 1000
    .local v2, "srcHeight":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1001
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1003
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    div-int/lit8 v9, v5, 0x2

    sub-int v6, v8, v9

    .line 1004
    .local v6, "x":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    div-int/lit8 v9, v4, 0x2

    sub-int v7, v8, v9

    .line 1007
    .local v7, "y":I
    if-ne v3, v5, :cond_0

    if-ne v2, v4, :cond_0

    .line 1008
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1009
    .local v1, "duplicateBitmap":Landroid/graphics/Bitmap;
    invoke-static {v1, v6, v7, v5, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1013
    .end local v1    # "duplicateBitmap":Landroid/graphics/Bitmap;
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 1011
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {p1, v6, v7, v5, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private cropWallpaperDoubleWidth(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "srcBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 1040
    iget v4, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mDisplayWidth:I

    mul-int/lit8 v3, v4, 0x2

    .line 1041
    .local v3, "surfaceWidth":I
    iget v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mDisplayHeight:I

    .line 1042
    .local v2, "surfaceHeight":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 1043
    .local v1, "srcWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 1045
    .local v0, "srcHeight":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1046
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1049
    invoke-static {p1, v5, v5, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1051
    return-object p1
.end method

.method private cropWallpaperInCenter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "srcBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1017
    iget v3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mDisplayWidth:I

    .line 1018
    .local v3, "surfaceWidth":I
    iget v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mDisplayHeight:I

    .line 1019
    .local v2, "surfaceHeight":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 1020
    .local v1, "srcWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 1021
    .local v0, "srcHeight":I
    iget v6, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mDisplayWidth:I

    if-le v1, v6, :cond_0

    iget v6, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mDisplayHeight:I

    if-le v0, v6, :cond_0

    const/16 v6, 0x5a0

    if-ne v1, v6, :cond_0

    const/16 v6, 0xc30

    if-ne v0, v6, :cond_0

    .line 1024
    move v3, v1

    .line 1025
    move v2, v0

    .line 1028
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1029
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1031
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v3, 0x2

    sub-int v4, v6, v7

    .line 1032
    .local v4, "x":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v2, 0x2

    sub-int v5, v6, v7

    .line 1034
    .local v5, "y":I
    invoke-static {p1, v4, v5, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1036
    return-object p1
.end method

.method private cropWallpaperInLeft(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "srcBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 1055
    iget v3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mDisplayWidth:I

    .line 1056
    .local v3, "surfaceWidth":I
    iget v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mDisplayHeight:I

    .line 1057
    .local v2, "surfaceHeight":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 1058
    .local v1, "srcWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 1060
    .local v0, "srcHeight":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1061
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1063
    invoke-static {p1, v5, v5, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1065
    return-object p1
.end method

.method private cropWallpaperInRight(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "srcBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1069
    iget v3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mDisplayWidth:I

    .line 1070
    .local v3, "surfaceWidth":I
    iget v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mDisplayHeight:I

    .line 1071
    .local v2, "surfaceHeight":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 1072
    .local v1, "srcWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 1074
    .local v0, "srcHeight":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1075
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1076
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v4, v3

    const/4 v5, 0x0

    invoke-static {p1, v4, v5, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1078
    return-object p1
.end method

.method private drawWallpaperWithCanvas(Landroid/view/SurfaceHolder;Landroid/graphics/Bitmap;)V
    .locals 11
    .param p1, "sh"    # Landroid/view/SurfaceHolder;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1255
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v6

    .line 1256
    .local v6, "sf":Landroid/view/Surface;
    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1257
    iget-object v7, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->TAG:Ljava/lang/String;

    const-string v10, "surface not ready "

    invoke-static {v7, v10}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    :cond_0
    :goto_0
    return-void

    .line 1260
    :cond_1
    invoke-virtual {v6}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 1261
    .local v0, "c":Landroid/graphics/Canvas;
    if-eqz v0, :cond_0

    .line 1263
    if-eqz p2, :cond_2

    .line 1264
    const-wide/16 v8, 0x0

    .line 1268
    .local v8, "start":J
    :try_start_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v5

    .line 1269
    .local v5, "frame":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 1270
    .local v3, "dw":I
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 1271
    .local v2, "dh":I
    new-instance v1, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-direct {v1, v7, v10, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1273
    .local v1, "dest":Landroid/graphics/Rect;
    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, p2, v7, v1, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1282
    .end local v1    # "dest":Landroid/graphics/Rect;
    .end local v2    # "dh":I
    .end local v3    # "dw":I
    .end local v5    # "frame":Landroid/graphics/Rect;
    .end local v8    # "start":J
    :cond_2
    :try_start_1
    invoke-virtual {v6, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1283
    :catch_0
    move-exception v4

    .line 1284
    .local v4, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v4}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 1281
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    .restart local v8    # "start":J
    :catchall_0
    move-exception v7

    .line 1282
    :try_start_2
    invoke-virtual {v6, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1285
    :goto_1
    throw v7

    .line 1283
    :catch_1
    move-exception v4

    .line 1284
    .restart local v4    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v4}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1
.end method

.method private drawWallpaperWithCanvas(Landroid/view/SurfaceHolder;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 14
    .param p1, "sh"    # Landroid/view/SurfaceHolder;
    .param p2, "homeBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "nonHomeBitmap"    # Landroid/graphics/Bitmap;
    .param p4, "homeSrcRect"    # Landroid/graphics/Rect;
    .param p5, "nonHomeSrcRect"    # Landroid/graphics/Rect;
    .param p6, "offSet"    # I

    .prologue
    .line 1292
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v7

    .line 1294
    .local v7, "sf":Landroid/view/Surface;
    invoke-virtual {v7}, Landroid/view/Surface;->isValid()Z

    move-result v10

    if-nez v10, :cond_1

    .line 1295
    iget-object v10, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->TAG:Ljava/lang/String;

    const-string v11, "surface not ready "

    invoke-static {v10, v11}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    :cond_0
    :goto_0
    return-void

    .line 1298
    :cond_1
    invoke-virtual {v7}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object v4

    .line 1299
    .local v4, "c":Landroid/graphics/Canvas;
    if-eqz v4, :cond_0

    .line 1301
    if-eqz p3, :cond_2

    if-eqz p2, :cond_2

    .line 1302
    const-wide/16 v8, 0x0

    .line 1306
    .local v8, "start":J
    :try_start_0
    new-instance v5, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mDisplayWidth:I

    iget v13, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mDisplayHeight:I

    invoke-direct {v5, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1308
    .local v5, "dest":Landroid/graphics/Rect;
    if-lez p6, :cond_3

    invoke-direct {p0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->isOriginalScrollMode()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1309
    const/4 v10, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-virtual {v4, v0, v1, v5, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1334
    .end local v5    # "dest":Landroid/graphics/Rect;
    .end local v8    # "start":J
    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {v7, v4}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1335
    :catch_0
    move-exception v6

    .line 1336
    .local v6, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 1311
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    .restart local v5    # "dest":Landroid/graphics/Rect;
    .restart local v8    # "start":J
    :cond_3
    if-gez p6, :cond_4

    .line 1312
    mul-int/lit8 p6, p6, -0x1

    .line 1315
    :cond_4
    move/from16 v0, p6

    int-to-float v10, v0

    :try_start_2
    iget v11, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOnePageOffsetPixel:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    const/high16 v11, 0x437f0000    # 255.0f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    mul-int/lit8 v2, v10, 0x2

    .line 1316
    .local v2, "alpha":I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 1317
    .local v3, "alphaPaint":Landroid/graphics/Paint;
    const/16 v10, 0xff

    if-lt v2, v10, :cond_5

    .line 1318
    const/16 v2, 0xff

    .line 1323
    :goto_2
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1324
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-virtual {v4, v0, v1, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1333
    .end local v2    # "alpha":I
    .end local v3    # "alphaPaint":Landroid/graphics/Paint;
    .end local v5    # "dest":Landroid/graphics/Rect;
    :catchall_0
    move-exception v10

    .line 1334
    :try_start_3
    invoke-virtual {v7, v4}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1337
    :goto_3
    throw v10

    .line 1320
    .restart local v2    # "alpha":I
    .restart local v3    # "alphaPaint":Landroid/graphics/Paint;
    .restart local v5    # "dest":Landroid/graphics/Rect;
    :cond_5
    const/4 v10, 0x0

    :try_start_4
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v4, v0, v1, v5, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 1335
    .end local v2    # "alpha":I
    .end local v3    # "alphaPaint":Landroid/graphics/Paint;
    .end local v5    # "dest":Landroid/graphics/Rect;
    :catch_1
    move-exception v6

    .line 1336
    .restart local v6    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_3
.end method

.method private getDefaultWallpaper()I
    .locals 7

    .prologue
    const/4 v4, -0x1

    .line 886
    iget-object v5, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->this$0:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 887
    .local v1, "resources":Landroid/content/res/Resources;
    if-nez v1, :cond_1

    .line 888
    iget-object v5, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->TAG:Ljava/lang/String;

    const-string v6, "getDefaultWallpaper# resources is null"

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 904
    :cond_0
    :goto_0
    return v3

    .line 892
    :cond_1
    iget-object v5, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->this$0:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;

    invoke-static {v5}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->access$1700(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;)Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v5

    const-string v6, "portrait_wallpapers"

    invoke-virtual {v5, v6}, Lnet/oneplus/h2launcher/oos/StyleManager;->getResourceId(Ljava/lang/String;)I

    move-result v2

    .line 893
    .local v2, "wallpaperEntriesResId":I
    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->getWallpaperResourceIds(Landroid/content/res/Resources;I)[I

    move-result-object v0

    .line 894
    .local v0, "entries":[I
    if-eqz v0, :cond_2

    array-length v5, v0

    if-gtz v5, :cond_3

    .line 895
    :cond_2
    iget-object v5, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->TAG:Ljava/lang/String;

    const-string v6, "getDefaultWallpaper# entries is empty!"

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 896
    goto :goto_0

    .line 899
    :cond_3
    const/4 v5, 0x0

    aget v3, v0, v5

    .line 900
    .local v3, "wallpaperResId":I
    if-nez v3, :cond_0

    .line 901
    iget-object v5, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->TAG:Ljava/lang/String;

    const-string v6, "getDefaultWallpaper# can\'t find resource id for default wallpaper"

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 902
    goto :goto_0
.end method

.method private getNavigationBarHeight(Landroid/content/Context;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 454
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 455
    .local v1, "resources":Landroid/content/res/Resources;
    const-string v2, "navigation_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 456
    .local v0, "resourceId":I
    if-lez v0, :cond_0

    .line 457
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 459
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private getOrCreateOriginalWallpaper()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 865
    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOriginalWallpaper:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 866
    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->TAG:Ljava/lang/String;

    const-string v3, "getOrCreateOriginalWallpaper use cache"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOriginalWallpaper:Landroid/graphics/Bitmap;

    .line 882
    :goto_0
    return-object v2

    .line 870
    :cond_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->TAG:Ljava/lang/String;

    const-string v3, "getOrCreateOriginalWallpaper# +"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->this$0:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "wallpaper"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 873
    .local v0, "wallpaper":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 874
    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->TAG:Ljava/lang/String;

    const-string v3, "getOrCreateOriginalWallpaper# wallpaper is null"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    invoke-direct {p0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->getDefaultWallpaper()I

    move-result v1

    .line 876
    .local v1, "wallpaperResId":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 877
    const v1, 0x7f0201d7

    .line 879
    :cond_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->this$0:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 881
    .end local v1    # "wallpaperResId":I
    :cond_2
    iput-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOriginalWallpaper:Landroid/graphics/Bitmap;

    .line 882
    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOriginalWallpaper:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private getSettingProviderData(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v5, -0x1000000

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1082
    iput v8, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOrientation:I

    .line 1083
    iput v5, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mColorMaskColor:I

    .line 1084
    iput-boolean v7, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mIsBlur:Z

    .line 1085
    iput v7, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mScrollMode:I

    .line 1087
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1088
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v3, "oneplus_blur_wallpaper_settings"

    .line 1089
    .local v3, "settingsName":Ljava/lang/String;
    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1090
    .local v4, "settingsValue":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1091
    iget-object v5, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->TAG:Ljava/lang/String;

    const-string v6, "empty global settings value, name=%s"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v8

    invoke-static {v5, v6, v7}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1104
    :goto_0
    return-void

    .line 1096
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1097
    .local v2, "settings":Lorg/json/JSONObject;
    const-string v5, "orientation"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOrientation:I

    .line 1098
    const-string v5, "mask_color"

    const/high16 v6, -0x1000000

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mColorMaskColor:I

    .line 1099
    const-string v5, "blur_enabled"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mIsBlur:Z

    .line 1100
    const-string v5, "scroll_mode"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mScrollMode:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1101
    .end local v2    # "settings":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 1102
    .local v1, "e":Lorg/json/JSONException;
    iget-object v5, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot create wallpaper tile info from JSON, error="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getTransparentColor(I)I
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 988
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 989
    .local v2, "red":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 990
    .local v1, "green":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 991
    .local v0, "blue":I
    const/4 v3, 0x0

    invoke-static {v3, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    return v3
.end method

.method private isNeedDrawOnNonHomePage(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .locals 3
    .param p1, "srcHomeRect"    # Landroid/graphics/Rect;
    .param p2, "srcNonHomeRect"    # Landroid/graphics/Rect;
    .param p3, "currentOffsetPixel"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 465
    invoke-direct {p0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->isOriginalScrollMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 466
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->compareRectEqual(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 471
    .local v0, "needDraw":Z
    :goto_0
    return v0

    .end local v0    # "needDraw":Z
    :cond_0
    move v0, v1

    .line 466
    goto :goto_0

    .line 468
    :cond_1
    invoke-direct {p0, p3}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->isNeedRedrawForBlurOff(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->compareRectEqual(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_3

    .restart local v0    # "needDraw":Z
    :cond_2
    :goto_1
    goto :goto_0

    .end local v0    # "needDraw":Z
    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private isNeedRedrawForBlurOff(I)Z
    .locals 4
    .param p1, "currentOffsetPixel"    # I

    .prologue
    .line 477
    iget v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastOnePageOffsetPixel:I

    iget v3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOnePageOffsetPixel:I

    if-eq v2, v3, :cond_0

    .line 478
    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->TAG:Ljava/lang/String;

    const-string v3, "mOnePageOffsetPixel change need redraw"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const/16 v2, -0x64

    iput v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastPosition:I

    .line 482
    :cond_0
    iget v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOnePageOffsetPixel:I

    if-ge p1, v2, :cond_2

    .line 483
    const/4 v0, 0x1

    .line 487
    .local v0, "cur_position":I
    :goto_0
    iget v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOnePageOffsetPixel:I

    if-lt p1, v2, :cond_1

    iget v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastPosition:I

    if-eq v2, v0, :cond_3

    :cond_1
    const/4 v1, 0x1

    .line 490
    .local v1, "needDraw":Z
    :goto_1
    iput v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastPosition:I

    .line 491
    iget v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOnePageOffsetPixel:I

    iput v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastOnePageOffsetPixel:I

    .line 493
    return v1

    .line 485
    .end local v0    # "cur_position":I
    .end local v1    # "needDraw":Z
    :cond_2
    const/4 v0, 0x2

    .restart local v0    # "cur_position":I
    goto :goto_0

    .line 487
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isOriginalScrollMode()Z
    .locals 1

    .prologue
    .line 1107
    iget v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mScrollMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isProviderNotify(Landroid/content/Context;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    .line 1111
    const/4 v2, 0x1

    .line 1112
    .local v2, "notified":Z
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1113
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v5, "oneplus_blur_wallpaper_settings"

    .line 1114
    .local v5, "settingsName":Ljava/lang/String;
    invoke-static {v0, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1115
    .local v6, "settingsValue":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1116
    iget-object v7, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->TAG:Ljava/lang/String;

    const-string v8, "empty global settings value, name=%s"

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-static {v7, v8, v9}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v2

    .line 1127
    .end local v2    # "notified":Z
    .local v3, "notified":I
    :goto_0
    return v3

    .line 1122
    .end local v3    # "notified":I
    .restart local v2    # "notified":Z
    :cond_0
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1123
    .local v4, "settings":Lorg/json/JSONObject;
    const-string v7, "notify"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v4    # "settings":Lorg/json/JSONObject;
    :goto_1
    move v3, v2

    .line 1127
    .restart local v3    # "notified":I
    goto :goto_0

    .line 1124
    .end local v3    # "notified":I
    :catch_0
    move-exception v1

    .line 1125
    .local v1, "e":Lorg/json/JSONException;
    iget-object v7, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cannot create wallpaper tile info from JSON, error="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private registerBlurWallpaperSettingsReceiver(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1131
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "net.oneplus.h2launcher.action.BLUR_WALLPAPER_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1132
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "net.oneplus.h2launcher.action.SHELF_ENABLED_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1133
    iget-object v1, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mBlurWallpaperReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1134
    return-void
.end method

.method private saveBitmapAsFile()V
    .locals 2

    .prologue
    .line 850
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$2;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$2;-><init>(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 859
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 861
    return-void
.end method

.method private sendHandlerMessage(I)V
    .locals 1
    .param p1, "msg"    # I

    .prologue
    .line 1157
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1158
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1160
    :cond_0
    return-void
.end method

.method private unregisterBlurWallpaperSettingsReceiver(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1137
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mBlurWallpaperReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1138
    return-void
.end method

.method private updateWallpaperLocked()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 704
    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->TAG:Ljava/lang/String;

    const-string v3, "updateWallpaperLocked#"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const/4 v1, 0x0

    .line 707
    .local v1, "exception":Ljava/lang/Throwable;
    :try_start_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->this$0:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lnet/oneplus/h2launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v2

    iput-boolean v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->isRTL:Z

    .line 708
    invoke-static {}, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->clearCacheBitmap()V

    .line 709
    const/4 v2, -0x1

    iput v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mBackgroundWidth:I

    .line 710
    const/4 v2, -0x1

    iput v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mBackgroundHeight:I

    .line 711
    const/4 v2, 0x0

    iput-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOriginalWallpaper:Landroid/graphics/Bitmap;

    .line 712
    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 713
    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->this$0:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mContext:Landroid/content/Context;

    .line 715
    :cond_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->getSettingProviderData(Landroid/content/Context;)V

    .line 716
    invoke-direct {p0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->createHomePageWallpaper()V

    .line 717
    invoke-direct {p0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->createLandScapeWallpaper()V

    .line 718
    invoke-direct {p0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->createBlurWallpaper()V

    .line 719
    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mHomeBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mBackgroundWidth:I

    .line 720
    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mHomeBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mBackgroundHeight:I

    .line 722
    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mBlurBackground:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mBlurBackground:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mFinalBlurBackground:Landroid/graphics/Bitmap;

    if-eq v2, v3, :cond_1

    .line 723
    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mBlurBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 724
    const/4 v2, 0x0

    iput-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mBlurBackground:Landroid/graphics/Bitmap;

    .line 727
    :cond_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOriginalWallpaper:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOriginalWallpaper:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLandscapeBackground:Landroid/graphics/Bitmap;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOriginalWallpaper:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mHomeBackground:Landroid/graphics/Bitmap;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOriginalWallpaper:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mFinalBlurBackground:Landroid/graphics/Bitmap;

    if-eq v2, v3, :cond_2

    .line 729
    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOriginalWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 730
    const/4 v2, 0x0

    iput-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOriginalWallpaper:Landroid/graphics/Bitmap;

    .line 734
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mIsWallpaperUpdated:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 741
    :goto_0
    if-eqz v1, :cond_3

    .line 742
    iput-object v5, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mHomeBackground:Landroid/graphics/Bitmap;

    .line 743
    iput v4, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mBackgroundWidth:I

    .line 744
    iput v4, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mBackgroundHeight:I

    .line 748
    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->TAG:Ljava/lang/String;

    const-string v3, "Unable to load wallpaper!"

    invoke-static {v2, v3, v1}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 749
    invoke-static {}, Lnet/oneplus/h2launcher/wallpaper/BitmapBlur;->clearCacheBitmap()V

    .line 751
    :cond_3
    return-void

    .line 735
    :catch_0
    move-exception v0

    .line 736
    .local v0, "e":Ljava/lang/RuntimeException;
    move-object v1, v0

    .line 739
    goto :goto_0

    .line 737
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 738
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method drawFrame()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 621
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    .line 622
    .local v4, "sh":Landroid/view/SurfaceHolder;
    invoke-interface {v4}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    .line 623
    .local v2, "frame":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 624
    .local v1, "dw":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 625
    .local v0, "dh":I
    iget v6, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    if-ne v1, v6, :cond_0

    iget v6, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    if-eq v0, v6, :cond_2

    :cond_0
    const/4 v5, 0x1

    .line 627
    .local v5, "surfaceDimensionsChanged":Z
    :goto_0
    const/4 v3, 0x1

    .line 628
    .local v3, "redrawNeeded":Z
    if-nez v3, :cond_3

    iget-boolean v6, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOffsetsChanged:Z

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mForceDrawFrame:Z

    if-nez v6, :cond_3

    .line 630
    iget-object v6, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->TAG:Ljava/lang/String;

    const-string v7, "Suppressed drawFrame since redraw is not needed and offsets have not changed."

    invoke-static {v6, v7}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    :cond_1
    :goto_1
    return-void

    .end local v3    # "redrawNeeded":Z
    .end local v5    # "surfaceDimensionsChanged":Z
    :cond_2
    move v5, v7

    .line 625
    goto :goto_0

    .line 637
    .restart local v3    # "redrawNeeded":Z
    .restart local v5    # "surfaceDimensionsChanged":Z
    :cond_3
    iget-object v6, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mHomeBackground:Landroid/graphics/Bitmap;

    if-nez v6, :cond_4

    .line 639
    iget-object v8, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Reloading bitmap: mHomeBackground, bgw, bgh, dw, dh = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mHomeBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v6, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mHomeBackground:Landroid/graphics/Bitmap;

    if-nez v6, :cond_7

    move v6, v7

    .line 641
    :goto_2
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v6, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mHomeBackground:Landroid/graphics/Bitmap;

    if-nez v6, :cond_8

    move v6, v7

    .line 642
    :goto_3
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 639
    invoke-static {v8, v6}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    invoke-direct {p0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->updateWallpaperLocked()V

    .line 646
    iget-object v6, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mHomeBackground:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    .line 662
    :cond_4
    iput-boolean v7, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOffsetsChanged:Z

    .line 663
    if-eqz v5, :cond_5

    .line 664
    iput v1, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    .line 665
    iput v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    .line 668
    :cond_5
    if-nez v3, :cond_6

    iget v6, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastXOffsetPixel:I

    iget v8, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mXOffsetPixel:I

    if-ne v6, v8, :cond_6

    iget-boolean v6, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mForceDrawFrame:Z

    if-eqz v6, :cond_1

    .line 677
    :cond_6
    iget v6, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mXOffsetPixel:I

    iput v6, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastXOffsetPixel:I

    .line 678
    iput-boolean v7, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mForceDrawFrame:Z

    .line 683
    sget-object v6, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;->NONE:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;

    iput-object v6, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mCurrentWallpaperType:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;

    .line 685
    if-le v1, v0, :cond_9

    .line 686
    const/16 v6, 0x190

    invoke-direct {p0, v6}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->sendHandlerMessage(I)V

    goto :goto_1

    .line 639
    :cond_7
    iget-object v6, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mHomeBackground:Landroid/graphics/Bitmap;

    .line 641
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    goto :goto_2

    :cond_8
    iget-object v6, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mHomeBackground:Landroid/graphics/Bitmap;

    .line 642
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    goto :goto_3

    .line 688
    :cond_9
    iget-object v6, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mTaskLinkedList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget v7, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mXOffsetPixel:I

    mul-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 689
    const/16 v6, 0xc8

    invoke-direct {p0, v6}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->sendHandlerMessage(I)V

    goto/16 :goto_1
.end method

.method protected dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "out"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 1164
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1166
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1167
    const-string v0, "ImageWallpaper.DrawableEngine:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1168
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1169
    const-string v0, " mHomeBackground="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1170
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mHomeBackground:Landroid/graphics/Bitmap;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1171
    const-string v0, " mBackgroundWidth="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1172
    iget v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mBackgroundWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1173
    const-string v0, " mBackgroundHeight="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1174
    iget v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mBackgroundHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1176
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1177
    const-string v0, " mLastRotation="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1178
    iget v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastRotation:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1179
    const-string v0, " mLastSurfaceWidth="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1180
    iget v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1181
    const-string v0, " mLastSurfaceHeight="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1182
    iget v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1184
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1185
    const-string v0, " mXOffset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1186
    iget v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mXOffset:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1187
    const-string v0, " mYOffset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1188
    iget v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mYOffset:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 1190
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1191
    const-string v0, " mVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1192
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1193
    const-string v0, " mOffsetsChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1194
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOffsetsChanged:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1196
    const-string v0, " mLastYTranslation="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1197
    iget v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastYTranslation:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1198
    const-string v0, " mScale="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1199
    iget v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mScale:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 1201
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1202
    const-string v0, " mLastRequestedWidth="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1203
    iget v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastRequestedWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1204
    const-string v0, " mLastRequestedHeight="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1205
    iget v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastRequestedHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1207
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1208
    const-string v0, " DisplayInfo at last updateSurfaceSize:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1209
    return-void
.end method

.method public getDensity(Landroid/content/Context;)F
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 698
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 699
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    return v1
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 5
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v4, 0x1

    .line 338
    iget-object v1, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->TAG:Ljava/lang/String;

    const-string v2, "onCreate#"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 342
    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->setOffsetNotificationsEnabled(Z)V

    .line 344
    iget-object v1, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->this$0:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mContext:Landroid/content/Context;

    .line 345
    iget-object v1, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->registerBlurWallpaperSettingsReceiver(Landroid/content/Context;)V

    .line 347
    iget-object v1, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->this$0:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;

    const-string v2, "gesture_settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mGestureSharedPrefs:Landroid/content/SharedPreferences;

    .line 350
    iget-object v1, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lnet/oneplus/h2launcher/Utilities;->getScreenDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v0

    .line 351
    .local v0, "displaySize":Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->y:I

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-le v1, v2, :cond_1

    iget v1, v0, Landroid/graphics/Point;->x:I

    :goto_0
    iput v1, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mDisplayWidth:I

    .line 352
    iget v1, v0, Landroid/graphics/Point;->y:I

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-le v1, v2, :cond_2

    iget v1, v0, Landroid/graphics/Point;->y:I

    :goto_1
    iput v1, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mDisplayHeight:I

    .line 354
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mTaskLinkedList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 355
    iget-object v1, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mNavigationBarHeight:I

    .line 356
    iget v1, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mNavigationBarHeight:I

    if-gez v1, :cond_0

    .line 357
    iget-object v1, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mNavigationBarHeight:I

    .line 359
    :cond_0
    new-instance v1, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;

    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->this$0:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;-><init>(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;Landroid/os/Looper;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mHandler:Landroid/os/Handler;

    .line 450
    const/16 v1, 0x64

    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->sendHandlerMessage(I)V

    .line 451
    return-void

    .line 351
    :cond_1
    iget v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 352
    :cond_2
    iget v1, v0, Landroid/graphics/Point;->x:I

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 528
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 529
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy#"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->trimMemory(I)V

    .line 531
    const/4 v0, -0x1

    iput v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOrientation:I

    .line 532
    const/4 v0, 0x0

    iput v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mColorMaskColor:I

    .line 533
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->unregisterBlurWallpaperSettingsReceiver(Landroid/content/Context;)V

    .line 534
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 535
    iput-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mHandler:Landroid/os/Handler;

    .line 536
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->access$1500(Landroid/content/Context;)V

    .line 537
    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .locals 1
    .param p1, "xOffset"    # F
    .param p2, "yOffset"    # F
    .param p3, "xOffsetStep"    # F
    .param p4, "yOffsetStep"    # F
    .param p5, "xPixels"    # I
    .param p6, "yPixels"    # I

    .prologue
    .line 565
    iget v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mXOffset:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mYOffset:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mXOffsetPixel:I

    if-eq v0, p5, :cond_2

    .line 569
    :cond_0
    iput p1, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mXOffset:F

    .line 570
    iput p2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mYOffset:F

    .line 571
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->isRTL:Z

    if-nez v0, :cond_3

    .line 572
    iput p5, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mXOffsetPixel:I

    .line 577
    :goto_0
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_1

    .line 578
    const/high16 v0, -0x40800000    # -1.0f

    mul-float/2addr p3, v0

    .line 580
    :cond_1
    iput p3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mXOffsetStep:F

    .line 581
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOffsetsChanged:Z

    .line 583
    iget v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mDisplayWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOnePageOffsetPixel:I

    .line 585
    :cond_2
    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->sendHandlerMessage(I)V

    .line 586
    return-void

    .line 574
    :cond_3
    iget v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mDisplayWidth:I

    add-int/2addr v0, p5

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mXOffsetPixel:I

    goto :goto_0
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 591
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->TAG:Ljava/lang/String;

    const-string v1, "onSurfaceChanged# (w, h): (%d, %d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 593
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 594
    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->sendHandlerMessage(I)V

    .line 595
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 605
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 606
    const/4 v0, -0x1

    iput v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    iput v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    .line 607
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 599
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 600
    const/4 v0, -0x1

    iput v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastSurfaceHeight:I

    iput v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastSurfaceWidth:I

    .line 601
    return-void
.end method

.method public onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 612
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->TAG:Ljava/lang/String;

    const-string v1, "onSurfaceRedrawNeeded#"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 615
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->this$0:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->access$502(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;I)I

    .line 616
    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->sendHandlerMessage(I)V

    .line 617
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 546
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 550
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mVisible:Z

    .line 551
    if-eqz p1, :cond_0

    .line 552
    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->sendHandlerMessage(I)V

    .line 555
    :cond_0
    return-void
.end method

.method public paintWallpaperColorMask(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 22
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "maskColor"    # I
    .param p3, "orientation"    # I

    .prologue
    .line 953
    if-nez p2, :cond_0

    .line 984
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p1

    .line 957
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    const/high16 v19, 0x3f800000    # 1.0f

    .line 958
    .local v19, "screenHeightScale":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->this$0:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    .line 959
    .local v13, "context":Landroid/content/Context;
    const/4 v4, 0x1

    invoke-static {v13, v4}, Lnet/oneplus/h2launcher/Utilities;->getScreenDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v17

    .line 960
    .local v17, "realDisplaySize":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->this$0:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;

    invoke-static {v4}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->access$1800(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 961
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v5, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mNavigationBarHeight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    div-float v19, v4, v5

    .line 964
    :cond_1
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 965
    .local v15, "masked":Landroid/graphics/Bitmap;
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    .local v21, "w":I
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 966
    .local v14, "h":I
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 967
    .local v12, "canvas":Landroid/graphics/Canvas;
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    .line 968
    .local v16, "paint":Landroid/graphics/Paint;
    if-nez p3, :cond_2

    .line 969
    new-instance v3, Landroid/graphics/LinearGradient;

    const/4 v4, 0x0

    const v5, 0x3ed1eb85    # 0.41f

    int-to-float v6, v14

    mul-float/2addr v5, v6

    mul-float v5, v5, v19

    const/4 v6, 0x0

    const v7, 0x3f28f5c3    # 0.66f

    int-to-float v8, v14

    mul-float/2addr v7, v8

    mul-float v7, v7, v19

    .line 971
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->getTransparentColor(I)I

    move-result v8

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move/from16 v9, p2

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 974
    .local v3, "gradient":Landroid/graphics/LinearGradient;
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 975
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .end local v3    # "gradient":Landroid/graphics/LinearGradient;
    :goto_1
    move-object/from16 p1, v15

    .line 984
    goto :goto_0

    .line 977
    :cond_2
    invoke-static {}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->getLandscapeWallpaperAspectRatio()F

    move-result v11

    .line 978
    .local v11, "aspectRatio":F
    move/from16 v0, v21

    int-to-float v4, v0

    div-float/2addr v4, v11

    mul-float v4, v4, v19

    float-to-int v0, v4

    move/from16 v20, v0

    .line 979
    .local v20, "top":I
    new-instance v18, Landroid/graphics/Rect;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v4, v1, v2, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 980
    .local v18, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 981
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method protected refresh()V
    .locals 1

    .prologue
    .line 1141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mForceDrawFrame:Z

    .line 1142
    sget-object v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;->NONE:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;

    iput-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mCurrentWallpaperType:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;

    .line 1143
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastRectArray:[Landroid/graphics/Rect;

    .line 1144
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->access$1500(Landroid/content/Context;)V

    .line 1145
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->sendHandlerMessage(I)V

    .line 1146
    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->sendHandlerMessage(I)V

    .line 1147
    return-void
.end method

.method trimMemory(I)V
    .locals 4
    .param p1, "level"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 301
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->TAG:Ljava/lang/String;

    const-string v1, "trimMemory"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_6

    .line 306
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mHomeBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mHomeBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 308
    iput-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mHomeBackground:Landroid/graphics/Bitmap;

    .line 310
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mBlurBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mBlurBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 312
    iput-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mBlurBackground:Landroid/graphics/Bitmap;

    .line 314
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mFinalBlurBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 315
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mFinalBlurBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 316
    iput-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mFinalBlurBackground:Landroid/graphics/Bitmap;

    .line 318
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLandscapeBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 319
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLandscapeBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 320
    iput-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLandscapeBackground:Landroid/graphics/Bitmap;

    .line 322
    :cond_3
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOriginalWallpaper:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 323
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOriginalWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 324
    iput-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mOriginalWallpaper:Landroid/graphics/Bitmap;

    .line 326
    :cond_4
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mFinalBlurAlphaBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 327
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mFinalBlurAlphaBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 328
    iput-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mFinalBlurAlphaBackground:Landroid/graphics/Bitmap;

    .line 330
    :cond_5
    iput v3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mBackgroundWidth:I

    .line 331
    iput v3, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mBackgroundHeight:I

    .line 333
    :cond_6
    return-void
.end method

.method protected updateConfig()V
    .locals 2

    .prologue
    .line 1150
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->isRTL:Z

    iget-object v1, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->this$0:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lnet/oneplus/h2launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1151
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->this$0:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lnet/oneplus/h2launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->isRTL:Z

    .line 1152
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->refresh()V

    .line 1154
    :cond_0
    return-void
.end method
