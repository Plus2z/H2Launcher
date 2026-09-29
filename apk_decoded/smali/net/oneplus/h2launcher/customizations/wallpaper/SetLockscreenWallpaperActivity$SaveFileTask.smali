.class Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask;
.super Landroid/os/AsyncTask;
.source "SetLockscreenWallpaperActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveFileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFileUri:Landroid/net/Uri;

.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;Landroid/net/Uri;)V
    .locals 2
    .param p2, "fileUri"    # Landroid/net/Uri;

    .prologue
    .line 209
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 210
    iput-object p2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask;->mFileUri:Landroid/net/Uri;

    .line 211
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask;->mFileUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 212
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file uri is empty"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask;->cancel(Z)Z

    .line 214
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->finish()V

    .line 216
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/net/Uri;
    .locals 27
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->access$200(Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;)Landroid/net/Uri;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->access$102(Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 222
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask;->mFileUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v8

    .local v8, "inputStream":Ljava/io/InputStream;
    const/16 v22, 0x0

    .line 223
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->access$100(Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;)Landroid/net/Uri;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v12

    .line 222
    .local v12, "outputStream":Ljava/io/OutputStream;
    const/16 v21, 0x0

    .line 226
    :try_start_2
    invoke-static {v8}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->readStream(Ljava/io/InputStream;)[B

    move-result-object v7

    .line 227
    .local v7, "imageBytes":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 228
    .local v3, "context":Landroid/content/Context;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-static {v3, v0}, Lnet/oneplus/h2launcher/Utilities;->getScreenDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v5

    .line 229
    .local v5, "dimens":Landroid/graphics/Point;
    const/16 v19, 0x0

    .line 230
    .local v19, "screen":I
    const/4 v11, 0x0

    .line 231
    .local v11, "orientation":I
    iget v14, v5, Landroid/graphics/Point;->x:I

    .line 232
    .local v14, "requiredWidth":I
    iget v13, v5, Landroid/graphics/Point;->y:I

    .line 234
    .local v13, "requiredHeight":I
    new-instance v4, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v4, v7, v0, v1, v11}, Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;-><init>([BIZI)V

    .line 235
    .local v4, "createParams":Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;
    invoke-static {v3, v4, v14, v13}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->getBitmapOption(Landroid/content/Context;Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;II)Landroid/graphics/BitmapFactory$Options;

    move-result-object v10

    .line 237
    .local v10, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x0

    .line 238
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_0

    .line 239
    const/16 v20, 0x0

    array-length v0, v7

    move/from16 v23, v0

    move/from16 v0, v20

    move/from16 v1, v23

    invoke-static {v7, v0, v1, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 242
    :cond_0
    if-nez v2, :cond_4

    .line 243
    const-string v20, "failed to decode selected image file: %s"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask;->mFileUri:Landroid/net/Uri;

    move-object/from16 v25, v0

    .line 244
    invoke-virtual/range {v25 .. v25}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    .line 243
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 245
    .local v9, "message":Ljava/lang/String;
    new-instance v20, Ljava/lang/RuntimeException;

    move-object/from16 v0, v20

    invoke-direct {v0, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 222
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "context":Landroid/content/Context;
    .end local v4    # "createParams":Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;
    .end local v5    # "dimens":Landroid/graphics/Point;
    .end local v7    # "imageBytes":[B
    .end local v9    # "message":Ljava/lang/String;
    .end local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v11    # "orientation":I
    .end local v13    # "requiredHeight":I
    .end local v14    # "requiredWidth":I
    .end local v19    # "screen":I
    :catch_0
    move-exception v20

    :try_start_3
    throw v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 269
    :catchall_0
    move-exception v21

    move-object/from16 v26, v21

    move-object/from16 v21, v20

    move-object/from16 v20, v26

    :goto_0
    if-eqz v12, :cond_1

    if-eqz v21, :cond_b

    :try_start_4
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_1
    :goto_1
    :try_start_5
    throw v20
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 222
    .end local v12    # "outputStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v20

    :try_start_6
    throw v20
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 269
    :catchall_1
    move-exception v21

    move-object/from16 v26, v21

    move-object/from16 v21, v20

    move-object/from16 v20, v26

    :goto_2
    if-eqz v8, :cond_2

    if-eqz v21, :cond_c

    :try_start_7
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_4

    :cond_2
    :goto_3
    :try_start_8
    throw v20
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_4

    .end local v8    # "inputStream":Ljava/io/InputStream;
    :catch_2
    move-exception v6

    .line 270
    .local v6, "e":Ljava/lang/Throwable;
    :goto_4
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->access$000()Ljava/lang/String;

    move-result-object v20

    const-string v21, "failed to save user selected image, error=%s"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v20 .. v22}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->get()Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;

    move-result-object v20

    new-instance v21, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask$1;-><init>(Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask;)V

    invoke-virtual/range {v20 .. v21}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;->post(Ljava/lang/Runnable;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->access$300(Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->finish()V

    .line 281
    const/16 v20, 0x0

    .end local v6    # "e":Ljava/lang/Throwable;
    :cond_3
    :goto_5
    return-object v20

    .line 249
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "context":Landroid/content/Context;
    .restart local v4    # "createParams":Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;
    .restart local v5    # "dimens":Landroid/graphics/Point;
    .restart local v7    # "imageBytes":[B
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v11    # "orientation":I
    .restart local v12    # "outputStream":Ljava/io/OutputStream;
    .restart local v13    # "requiredHeight":I
    .restart local v14    # "requiredWidth":I
    .restart local v19    # "screen":I
    :cond_4
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask;->mFileUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapUtils;->getRotationFromExif(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v18

    .line 250
    .local v18, "rotation":I
    move/from16 v0, v18

    invoke-static {v2, v0}, Lnet/oneplus/h2launcher/customizations/wallpaper/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 251
    .local v17, "rotated":Landroid/graphics/Bitmap;
    move-object/from16 v0, v17

    if-eq v0, v2, :cond_5

    .line 252
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 256
    :cond_5
    move-object/from16 v0, v17

    invoke-static {v0, v14, v13}, Lnet/oneplus/h2launcher/util/WallpaperUtils;->resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/util/Pair;

    move-result-object v16

    .line 257
    .local v16, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Landroid/graphics/Bitmap;>;"
    move-object/from16 v0, v16

    iget-object v15, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Landroid/graphics/Bitmap;

    .line 258
    .local v15, "resized":Landroid/graphics/Bitmap;
    move-object/from16 v0, v17

    if-eq v15, v0, :cond_6

    .line 259
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 263
    :cond_6
    sget-object v20, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v23, 0x64

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v15, v0, v1, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 264
    if-eqz v12, :cond_7

    .line 265
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    .line 267
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->access$100(Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;)Landroid/net/Uri;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-result-object v20

    .line 269
    if-eqz v12, :cond_8

    if-eqz v21, :cond_9

    :try_start_a
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :cond_8
    :goto_6
    if-eqz v8, :cond_3

    if-eqz v22, :cond_a

    :try_start_b
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_5

    :catch_3
    move-exception v21

    :try_start_c
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_5

    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "context":Landroid/content/Context;
    .end local v4    # "createParams":Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;
    .end local v5    # "dimens":Landroid/graphics/Point;
    .end local v7    # "imageBytes":[B
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v11    # "orientation":I
    .end local v12    # "outputStream":Ljava/io/OutputStream;
    .end local v13    # "requiredHeight":I
    .end local v14    # "requiredWidth":I
    .end local v15    # "resized":Landroid/graphics/Bitmap;
    .end local v16    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Landroid/graphics/Bitmap;>;"
    .end local v17    # "rotated":Landroid/graphics/Bitmap;
    .end local v18    # "rotation":I
    .end local v19    # "screen":I
    :catch_4
    move-exception v6

    goto/16 :goto_4

    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "context":Landroid/content/Context;
    .restart local v4    # "createParams":Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;
    .restart local v5    # "dimens":Landroid/graphics/Point;
    .restart local v7    # "imageBytes":[B
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v11    # "orientation":I
    .restart local v12    # "outputStream":Ljava/io/OutputStream;
    .restart local v13    # "requiredHeight":I
    .restart local v14    # "requiredWidth":I
    .restart local v15    # "resized":Landroid/graphics/Bitmap;
    .restart local v16    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Landroid/graphics/Bitmap;>;"
    .restart local v17    # "rotated":Landroid/graphics/Bitmap;
    .restart local v18    # "rotation":I
    .restart local v19    # "screen":I
    :catch_5
    move-exception v23

    :try_start_d
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "context":Landroid/content/Context;
    .end local v4    # "createParams":Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;
    .end local v5    # "dimens":Landroid/graphics/Point;
    .end local v7    # "imageBytes":[B
    .end local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v11    # "orientation":I
    .end local v12    # "outputStream":Ljava/io/OutputStream;
    .end local v13    # "requiredHeight":I
    .end local v14    # "requiredWidth":I
    .end local v15    # "resized":Landroid/graphics/Bitmap;
    .end local v16    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Landroid/graphics/Bitmap;>;"
    .end local v17    # "rotated":Landroid/graphics/Bitmap;
    .end local v18    # "rotation":I
    .end local v19    # "screen":I
    :catchall_2
    move-exception v20

    move-object/from16 v21, v22

    goto/16 :goto_2

    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "context":Landroid/content/Context;
    .restart local v4    # "createParams":Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;
    .restart local v5    # "dimens":Landroid/graphics/Point;
    .restart local v7    # "imageBytes":[B
    .restart local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v11    # "orientation":I
    .restart local v12    # "outputStream":Ljava/io/OutputStream;
    .restart local v13    # "requiredHeight":I
    .restart local v14    # "requiredWidth":I
    .restart local v15    # "resized":Landroid/graphics/Bitmap;
    .restart local v16    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Landroid/graphics/Bitmap;>;"
    .restart local v17    # "rotated":Landroid/graphics/Bitmap;
    .restart local v18    # "rotation":I
    .restart local v19    # "screen":I
    :cond_9
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_6

    :cond_a
    :try_start_e
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_4

    goto :goto_5

    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "context":Landroid/content/Context;
    .end local v4    # "createParams":Lnet/oneplus/h2launcher/util/WallpaperUtils$CreateParams;
    .end local v5    # "dimens":Landroid/graphics/Point;
    .end local v7    # "imageBytes":[B
    .end local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v11    # "orientation":I
    .end local v13    # "requiredHeight":I
    .end local v14    # "requiredWidth":I
    .end local v15    # "resized":Landroid/graphics/Bitmap;
    .end local v16    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Landroid/graphics/Bitmap;>;"
    .end local v17    # "rotated":Landroid/graphics/Bitmap;
    .end local v18    # "rotation":I
    .end local v19    # "screen":I
    :catch_6
    move-exception v23

    :try_start_f
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto/16 :goto_1

    .end local v12    # "outputStream":Ljava/io/OutputStream;
    :catch_7
    move-exception v22

    :try_start_10
    invoke-virtual/range {v21 .. v22}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_c
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_10} :catch_4

    goto/16 :goto_3

    .restart local v12    # "outputStream":Ljava/io/OutputStream;
    :catchall_3
    move-exception v20

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 206
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask;->doInBackground([Ljava/lang/Void;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 4
    .param p1, "result"    # Landroid/net/Uri;

    .prologue
    .line 286
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 287
    :cond_0
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "failed to load file uri"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 292
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "crop cancelled since activity is finishing"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 296
    :cond_2
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/Utilities;->getScreenDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v0

    .line 297
    .local v0, "dimens":Landroid/graphics/Point;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.CROP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 301
    const-string v2, "crop"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    const-string v2, "aspectX"

    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 303
    const-string v2, "aspectY"

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 304
    const-string v2, "outputX"

    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 305
    const-string v2, "outputY"

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 306
    const-string v2, "output"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 307
    const-string v2, "outputFormat"

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 206
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/customizations/wallpaper/SetLockscreenWallpaperActivity$SaveFileTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method
