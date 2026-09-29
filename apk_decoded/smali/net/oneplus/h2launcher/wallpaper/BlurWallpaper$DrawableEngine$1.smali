.class Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;
.super Landroid/os/Handler;
.source "BlurWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->onCreate(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 359
    iput-object p1, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 362
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 364
    :sswitch_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    invoke-static {v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->access$200(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;)V

    goto :goto_0

    .line 369
    :sswitch_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    invoke-static {v2}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->access$400(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v2

    invoke-static {v0, v2}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->access$302(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;I)I

    .line 371
    :cond_1
    :goto_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    invoke-static {v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->access$300(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;)I

    move-result v0

    if-le v0, v9, :cond_2

    .line 372
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    invoke-static {v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->access$310(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;)I

    .line 373
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    invoke-static {v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->access$400(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v12, v0

    .line 374
    .local v12, "radius":F
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    invoke-static {v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->access$400(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    invoke-static {v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->access$400(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    goto :goto_1

    .line 379
    .end local v12    # "radius":F
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    invoke-static {v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->access$400(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 380
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    iget-object v0, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->this$0:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->access$500(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;)I

    move-result v0

    if-lez v0, :cond_0

    .line 381
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    iget v2, v2, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mXOffsetPixel:I

    mul-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->access$602(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;I)I

    .line 382
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    invoke-static {v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->access$700(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "workaround to redraw and currentOffSetPixel: %d"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    .line 383
    invoke-static {v5}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->access$600(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 382
    invoke-static {v0, v2, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    :goto_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    iget-object v3, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mHomeBackground:Landroid/graphics/Bitmap;

    .line 393
    .local v3, "resultBitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    invoke-static {v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->access$600(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;)I

    move-result v0

    if-nez v0, :cond_7

    .line 394
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    iget-object v0, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mCurrentWallpaperType:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;

    sget-object v2, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;->CLEAR:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    iget-object v0, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->this$0:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->access$500(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;)I

    move-result v0

    if-lez v0, :cond_5

    .line 395
    :cond_3
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 396
    .local v1, "sh":Landroid/view/SurfaceHolder;
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    iget-object v2, v2, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mHomeBackground:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    .line 397
    invoke-static {v4}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->access$600(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;)I

    move-result v4

    .line 396
    invoke-static {v0, v2, v3, v4}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->access$800(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)[Landroid/graphics/Rect;

    move-result-object v13

    .line 398
    .local v13, "rectArray":[Landroid/graphics/Rect;
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    aget-object v2, v13, v8

    aget-object v4, v13, v9

    invoke-static {v0, v2, v4}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->access$900(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    .line 399
    invoke-static {v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->access$1000(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;)I

    move-result v0

    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    invoke-static {v2}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->access$600(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;)I

    move-result v2

    if-eq v0, v2, :cond_5

    .line 400
    :cond_4
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    iget-object v2, v2, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mHomeBackground:Landroid/graphics/Bitmap;

    aget-object v4, v13, v8

    aget-object v5, v13, v9

    iget-object v6, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    .line 402
    invoke-static {v6}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->access$600(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;)I

    move-result v6

    .line 400
    invoke-static/range {v0 .. v6}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->access$1100(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;Landroid/view/SurfaceHolder;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 405
    .end local v1    # "sh":Landroid/view/SurfaceHolder;
    .end local v13    # "rectArray":[Landroid/graphics/Rect;
    :cond_5
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    sget-object v2, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;->CLEAR:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;

    iput-object v2, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mCurrentWallpaperType:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;

    .line 420
    :goto_3
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    invoke-static {v2}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->access$600(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;)I

    move-result v2

    invoke-static {v0, v2}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->access$1002(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;I)I

    goto/16 :goto_0

    .line 388
    .end local v3    # "resultBitmap":Landroid/graphics/Bitmap;
    :cond_6
    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    invoke-static {v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->access$400(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v2, v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->access$602(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;I)I

    .line 389
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    invoke-static {v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->access$400(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    goto/16 :goto_2

    .line 407
    .restart local v3    # "resultBitmap":Landroid/graphics/Bitmap;
    :cond_7
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 408
    .restart local v1    # "sh":Landroid/view/SurfaceHolder;
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    invoke-static {v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->access$600(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;)I

    move-result v0

    if-lez v0, :cond_8

    .line 409
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    iget-object v2, v2, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mHomeBackground:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    iget-object v4, v4, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mFinalBlurBackground:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    .line 410
    invoke-static {v5}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->access$600(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;)I

    move-result v5

    .line 409
    invoke-static {v0, v2, v4, v5}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->access$800(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)[Landroid/graphics/Rect;

    move-result-object v13

    .line 411
    .restart local v13    # "rectArray":[Landroid/graphics/Rect;
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    aget-object v2, v13, v8

    aget-object v4, v13, v9

    iget-object v5, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    .line 412
    invoke-static {v5}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->access$600(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;)I

    move-result v5

    .line 411
    invoke-static {v0, v2, v4, v5}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->access$1200(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 413
    iget-object v4, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    iget-object v6, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mHomeBackground:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    iget-object v7, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mFinalBlurBackground:Landroid/graphics/Bitmap;

    aget-object v8, v13, v8

    aget-object v9, v13, v9

    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    .line 415
    invoke-static {v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->access$600(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;)I

    move-result v10

    move-object v5, v1

    .line 413
    invoke-static/range {v4 .. v10}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->access$1100(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;Landroid/view/SurfaceHolder;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 418
    .end local v13    # "rectArray":[Landroid/graphics/Rect;
    :cond_8
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    sget-object v2, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;->BLUR:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;

    iput-object v2, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mCurrentWallpaperType:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$WallpaperType;

    goto :goto_3

    .line 424
    .end local v1    # "sh":Landroid/view/SurfaceHolder;
    .end local v3    # "resultBitmap":Landroid/graphics/Bitmap;
    :sswitch_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->drawFrame()V

    .line 428
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    invoke-static {v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->access$1300(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 429
    new-instance v11, Landroid/content/Intent;

    const-string v0, "net.oneplus.h2launcher.action.FIRST_FRAME_DRAWN"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 430
    .local v11, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    iget-object v0, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->this$0:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;

    invoke-virtual {v0, v11}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->sendBroadcast(Landroid/content/Intent;)V

    .line 432
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_9
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    invoke-static {v0, v8}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->access$1302(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;Z)Z

    goto/16 :goto_0

    .line 436
    :sswitch_3
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 437
    .restart local v1    # "sh":Landroid/view/SurfaceHolder;
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    iget-object v2, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    iget-object v2, v2, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLandscapeBackground:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->access$1400(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;Landroid/view/SurfaceHolder;Landroid/graphics/Bitmap;)V

    .line 438
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/Rect;

    iput-object v2, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->mLastRectArray:[Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 442
    .end local v1    # "sh":Landroid/view/SurfaceHolder;
    :sswitch_4
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    invoke-static {v0}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->access$700(Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "MSG_CHANGE_WALLPAPER"

    invoke-static {v0, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    new-instance v11, Landroid/content/Intent;

    const-string v0, "net.oneplus.h2launcher.action.BLUR_WALLPAPER_WALLPAPER_CHANGED"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 444
    .restart local v11    # "intent":Landroid/content/Intent;
    iget-object v0, p0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine$1;->this$1:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;

    iget-object v0, v0, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper$DrawableEngine;->this$0:Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;

    invoke-virtual {v0, v11}, Lnet/oneplus/h2launcher/wallpaper/BlurWallpaper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 362
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
        0x190 -> :sswitch_3
        0x1f4 -> :sswitch_4
    .end sparse-switch
.end method
