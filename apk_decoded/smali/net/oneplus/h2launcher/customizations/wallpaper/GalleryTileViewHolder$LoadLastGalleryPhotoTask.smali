.class Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder$LoadLastGalleryPhotoTask;
.super Landroid/os/AsyncTask;
.source "GalleryTileViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadLastGalleryPhotoTask"
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

.field private mInfo:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder;


# direct methods
.method private constructor <init>(Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder;Landroid/content/Context;Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;Landroid/widget/ImageView;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "info"    # Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    .param p4, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 60
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder$LoadLastGalleryPhotoTask;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 61
    iput-object p3, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder$LoadLastGalleryPhotoTask;->mInfo:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    .line 62
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder$LoadLastGalleryPhotoTask;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 63
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder$LoadLastGalleryPhotoTask;->mImageViewRef:Ljava/lang/ref/WeakReference;

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder;Landroid/content/Context;Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;Landroid/widget/ImageView;Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;
    .param p4, "x3"    # Landroid/widget/ImageView;
    .param p5, "x4"    # Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder$1;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder$LoadLastGalleryPhotoTask;-><init>(Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder;Landroid/content/Context;Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 68
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder$LoadLastGalleryPhotoTask;->getThumbnailOfLastPhoto()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder$LoadLastGalleryPhotoTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected getThumbnailOfLastPhoto()Landroid/graphics/Bitmap;
    .locals 14

    .prologue
    .line 88
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder$LoadLastGalleryPhotoTask;->mContextRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder$LoadLastGalleryPhotoTask;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    .local v6, "context":Landroid/content/Context;
    if-nez v6, :cond_2

    .line 89
    .end local v6    # "context":Landroid/content/Context;
    :cond_0
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "failed to get context from weak reference"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/4 v12, 0x0

    .line 126
    :cond_1
    :goto_0
    return-object v12

    .line 95
    .restart local v6    # "context":Landroid/content/Context;
    :cond_2
    const-string v10, "android.permission.READ_EXTERNAL_STORAGE"

    .line 96
    .local v10, "permission":Ljava/lang/String;
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v6, v0}, Lnet/oneplus/h2launcher/util/PermissionUtils;->hasGrantedPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 97
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "failed to get thumbnail of last photo since permission[%s] not granted"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    const/4 v12, 0x0

    goto :goto_0

    .line 102
    :cond_3
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "datetaken"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "datetaken DESC LIMIT 1"

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 109
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 110
    .local v12, "thumb":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_1

    .line 111
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 112
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 113
    .local v8, "id":I
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 114
    .local v9, "path":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    int-to-long v2, v8

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 116
    if-eqz v12, :cond_4

    .line 117
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v13

    .line 118
    .local v13, "uri":Landroid/net/Uri;
    invoke-static {v6, v13}, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapUtils;->getRotationFromExif(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v11

    .line 119
    .local v11, "rotation":I
    if-eqz v11, :cond_4

    .line 120
    invoke-static {v12, v11}, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 124
    .end local v8    # "id":I
    .end local v9    # "path":Ljava/lang/String;
    .end local v11    # "rotation":I
    .end local v13    # "uri":Landroid/net/Uri;
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 74
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder$LoadLastGalleryPhotoTask;->mImageViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder$LoadLastGalleryPhotoTask;->mImageViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 78
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder$LoadLastGalleryPhotoTask;->mInfo:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    if-eqz v2, :cond_1

    .line 80
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder$LoadLastGalleryPhotoTask;->mContextRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder$LoadLastGalleryPhotoTask;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 81
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder$LoadLastGalleryPhotoTask;->mInfo:Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v3, v2, Lnet/oneplus/h2launcher/customizations/wallpaper/tileInfo/WallpaperTileInfo;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 84
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 55
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/GalleryTileViewHolder$LoadLastGalleryPhotoTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
