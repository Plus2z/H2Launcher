.class Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder$LoadOneDayOnePhotoTask;
.super Landroid/os/AsyncTask;
.source "OneDayOnePhotoTileViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadOneDayOnePhotoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mImageViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder;


# direct methods
.method private constructor <init>(Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder;Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 50
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder$LoadOneDayOnePhotoTask;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder$LoadOneDayOnePhotoTask;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 52
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder$LoadOneDayOnePhotoTask;->mImageViewRef:Ljava/lang/ref/WeakReference;

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder;Landroid/content/Context;Landroid/widget/ImageView;Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Landroid/widget/ImageView;
    .param p4, "x3"    # Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder$1;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder$LoadOneDayOnePhotoTask;-><init>(Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder;Landroid/content/Context;Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 58
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder$LoadOneDayOnePhotoTask;->mContextRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder$LoadOneDayOnePhotoTask;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 59
    invoke-static {v0}, Lnet/oneplus/h2launcher/onedayonephoto/OneDayOnePhotoHelper;->loadLatestThumbnail(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 61
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder$LoadOneDayOnePhotoTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 67
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder$LoadOneDayOnePhotoTask;->mImageViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder$LoadOneDayOnePhotoTask;->mImageViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .local v0, "imageView":Landroid/widget/ImageView;
    if-nez v0, :cond_1

    .line 68
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "invalid image view"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :goto_0
    return-void

    .line 72
    .restart local v0    # "imageView":Landroid/widget/ImageView;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 73
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 74
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "one day one photo thumbnail: W=%d, H=%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 75
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 74
    invoke-static {v1, v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 77
    :cond_2
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "one day one photo thumbnail not found, set default icon"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const v1, 0x7f02014d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 46
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/OneDayOnePhotoTileViewHolder$LoadOneDayOnePhotoTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
