.class public abstract Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;
.super Lnet/oneplus/gallery3d/glrenderer/BasicTexture;
.source "UploadedTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/gallery3d/glrenderer/UploadedTexture$BorderKey;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Texture"

.field private static final UPLOAD_LIMIT:I = 0x64

.field private static sBorderKey:Lnet/oneplus/gallery3d/glrenderer/UploadedTexture$BorderKey;

.field private static sBorderLines:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lnet/oneplus/gallery3d/glrenderer/UploadedTexture$BorderKey;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sUploadedCount:I


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field private mBorder:I

.field private mContentValid:Z

.field private mIsUploading:Z

.field private mOpaque:Z

.field private mThrottled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    .line 50
    new-instance v0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture$BorderKey;

    invoke-direct {v0}, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture$BorderKey;-><init>()V

    sput-object v0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->sBorderKey:Lnet/oneplus/gallery3d/glrenderer/UploadedTexture$BorderKey;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;-><init>(Z)V

    .line 68
    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 3
    .param p1, "hasBorder"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lnet/oneplus/gallery3d/glrenderer/BasicTexture;-><init>(Lnet/oneplus/gallery3d/glrenderer/GLCanvas;II)V

    .line 54
    iput-boolean v2, p0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mContentValid:Z

    .line 57
    iput-boolean v1, p0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mIsUploading:Z

    .line 58
    iput-boolean v2, p0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mOpaque:Z

    .line 59
    iput-boolean v1, p0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mThrottled:Z

    .line 72
    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p0, v2}, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->setBorder(Z)V

    .line 74
    iput v2, p0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    .line 76
    :cond_0
    return-void
.end method

.method private freeBitmap()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lnet/oneplus/gallery3d/common/Utils;->assertTrue(Z)V

    .line 150
    iget-object v0, p0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->onFreeBitmap(Landroid/graphics/Bitmap;)V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 152
    return-void

    .line 149
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 137
    iget-object v2, p0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 138
    invoke-virtual {p0}, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->onGetBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 139
    iget-object v2, p0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, p0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    mul-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 140
    .local v1, "w":I
    iget-object v2, p0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    mul-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 141
    .local v0, "h":I
    iget v2, p0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mWidth:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 142
    invoke-virtual {p0, v1, v0}, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->setSize(II)V

    .line 145
    .end local v0    # "h":I
    .end local v1    # "w":I
    :cond_0
    iget-object v2, p0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    return-object v2
.end method

.method private static getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "vertical"    # Z
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;
    .param p2, "length"    # I

    .prologue
    const/4 v3, 0x1

    .line 122
    sget-object v1, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->sBorderKey:Lnet/oneplus/gallery3d/glrenderer/UploadedTexture$BorderKey;

    .line 123
    .local v1, "key":Lnet/oneplus/gallery3d/glrenderer/UploadedTexture$BorderKey;
    iput-boolean p0, v1, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture$BorderKey;->vertical:Z

    .line 124
    iput-object p1, v1, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture$BorderKey;->config:Landroid/graphics/Bitmap$Config;

    .line 125
    iput p2, v1, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture$BorderKey;->length:I

    .line 126
    sget-object v2, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 127
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 128
    if-eqz p0, :cond_1

    .line 129
    invoke-static {v3, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 131
    :goto_0
    sget-object v2, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    invoke-virtual {v1}, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture$BorderKey;->clone()Lnet/oneplus/gallery3d/glrenderer/UploadedTexture$BorderKey;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_0
    return-object v0

    .line 130
    :cond_1
    invoke-static {p2, v3, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static resetUploadLimit()V
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    sput v0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->sUploadedCount:I

    .line 206
    return-void
.end method

.method public static uploadLimitReached()Z
    .locals 2

    .prologue
    .line 209
    sget v0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->sUploadedCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private uploadToCanvas(Lnet/oneplus/gallery3d/glrenderer/GLCanvas;)V
    .locals 23
    .param p1, "canvas"    # Lnet/oneplus/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 214
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 215
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_5

    .line 217
    :try_start_0
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 218
    .local v17, "bWidth":I
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    .line 219
    .local v16, "bHeight":I
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    mul-int/lit8 v2, v2, 0x2

    add-int v22, v17, v2

    .line 220
    .local v22, "width":I
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    mul-int/lit8 v2, v2, 0x2

    add-int v19, v16, v2

    .line 221
    .local v19, "height":I
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->getTextureWidth()I

    move-result v21

    .line 222
    .local v21, "texWidth":I
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->getTextureHeight()I

    move-result v20

    .line 224
    .local v20, "texHeight":I
    move/from16 v0, v17

    move/from16 v1, v21

    if-gt v0, v1, :cond_1

    move/from16 v0, v16

    move/from16 v1, v20

    if-gt v0, v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lnet/oneplus/gallery3d/common/Utils;->assertTrue(Z)V

    .line 227
    invoke-interface/range {p1 .. p1}, Lnet/oneplus/gallery3d/glrenderer/GLCanvas;->getGLId()Lnet/oneplus/gallery3d/glrenderer/GLId;

    move-result-object v2

    invoke-interface {v2}, Lnet/oneplus/gallery3d/glrenderer/GLId;->generateTexture()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mId:I

    .line 228
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lnet/oneplus/gallery3d/glrenderer/GLCanvas;->setTextureParameters(Lnet/oneplus/gallery3d/glrenderer/BasicTexture;)V

    .line 230
    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 231
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v6}, Lnet/oneplus/gallery3d/glrenderer/GLCanvas;->initializeTexture(Lnet/oneplus/gallery3d/glrenderer/BasicTexture;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :cond_0
    :goto_1
    invoke-direct/range {p0 .. p0}, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->freeBitmap()V

    .line 266
    invoke-virtual/range {p0 .. p1}, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->setAssociatedCanvas(Lnet/oneplus/gallery3d/glrenderer/GLCanvas;)V

    .line 267
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mState:I

    .line 268
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mContentValid:Z

    .line 273
    return-void

    .line 224
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 233
    :cond_2
    :try_start_1
    invoke-static {v6}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v7

    .line 234
    .local v7, "format":I
    invoke-static {v6}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v8

    .line 235
    .local v8, "type":I
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v18

    .line 237
    .local v18, "config":Landroid/graphics/Bitmap$Config;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v7, v8}, Lnet/oneplus/gallery3d/glrenderer/GLCanvas;->initializeTextureSize(Lnet/oneplus/gallery3d/glrenderer/BasicTexture;II)V

    .line 238
    move-object/from16 v0, p0

    iget v4, v0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    move-object/from16 v0, p0

    iget v5, v0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    invoke-interface/range {v2 .. v8}, Lnet/oneplus/gallery3d/glrenderer/GLCanvas;->texSubImage2D(Lnet/oneplus/gallery3d/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V

    .line 240
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    if-lez v2, :cond_3

    .line 242
    const/4 v2, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v2, v0, v1}, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 243
    .local v13, "line":Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p0

    move v14, v7

    move v15, v8

    invoke-interface/range {v9 .. v15}, Lnet/oneplus/gallery3d/glrenderer/GLCanvas;->texSubImage2D(Lnet/oneplus/gallery3d/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V

    .line 246
    const/4 v2, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v2, v0, v1}, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 247
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p0

    move v14, v7

    move v15, v8

    invoke-interface/range {v9 .. v15}, Lnet/oneplus/gallery3d/glrenderer/GLCanvas;->texSubImage2D(Lnet/oneplus/gallery3d/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V

    .line 251
    .end local v13    # "line":Landroid/graphics/Bitmap;
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    add-int v2, v2, v17

    move/from16 v0, v21

    if-ge v2, v0, :cond_4

    .line 252
    const/4 v2, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v2, v0, v1}, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 253
    .restart local v13    # "line":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    add-int v11, v2, v17

    const/4 v12, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p0

    move v14, v7

    move v15, v8

    invoke-interface/range {v9 .. v15}, Lnet/oneplus/gallery3d/glrenderer/GLCanvas;->texSubImage2D(Lnet/oneplus/gallery3d/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V

    .line 257
    .end local v13    # "line":Landroid/graphics/Bitmap;
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    add-int v2, v2, v16

    move/from16 v0, v20

    if-ge v2, v0, :cond_0

    .line 258
    const/4 v2, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v2, v0, v1}, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 259
    .restart local v13    # "line":Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    add-int v12, v2, v16

    move-object/from16 v9, p1

    move-object/from16 v10, p0

    move v14, v7

    move v15, v8

    invoke-interface/range {v9 .. v15}, Lnet/oneplus/gallery3d/glrenderer/GLCanvas;->texSubImage2D(Lnet/oneplus/gallery3d/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 263
    .end local v7    # "format":I
    .end local v8    # "type":I
    .end local v13    # "line":Landroid/graphics/Bitmap;
    .end local v16    # "bHeight":I
    .end local v17    # "bWidth":I
    .end local v18    # "config":Landroid/graphics/Bitmap$Config;
    .end local v19    # "height":I
    .end local v20    # "texHeight":I
    .end local v21    # "texWidth":I
    .end local v22    # "width":I
    :catchall_0
    move-exception v2

    invoke-direct/range {p0 .. p0}, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->freeBitmap()V

    throw v2

    .line 270
    :cond_5
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mState:I

    .line 271
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Texture load fail, no bitmap"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getHeight()I
    .locals 2

    .prologue
    .line 162
    iget v0, p0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    .line 163
    :cond_0
    iget v0, p0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mHeight:I

    return v0
.end method

.method protected getTarget()I
    .locals 1

    .prologue
    .line 283
    const/16 v0, 0xde1

    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 156
    iget v0, p0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    .line 157
    :cond_0
    iget v0, p0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mWidth:I

    return v0
.end method

.method protected invalidateContent()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 171
    iget-object v0, p0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->freeBitmap()V

    .line 172
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mContentValid:Z

    .line 173
    iput v1, p0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mWidth:I

    .line 174
    iput v1, p0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mHeight:I

    .line 175
    return-void
.end method

.method public isContentValid()Z
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mContentValid:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mOpaque:Z

    return v0
.end method

.method public isUploading()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mIsUploading:Z

    return v0
.end method

.method protected onBind(Lnet/oneplus/gallery3d/glrenderer/GLCanvas;)Z
    .locals 1
    .param p1, "canvas"    # Lnet/oneplus/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->updateContent(Lnet/oneplus/gallery3d/glrenderer/GLCanvas;)V

    .line 278
    invoke-virtual {p0}, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->isContentValid()Z

    move-result v0

    return v0
.end method

.method protected abstract onFreeBitmap(Landroid/graphics/Bitmap;)V
.end method

.method protected abstract onGetBitmap()Landroid/graphics/Bitmap;
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 297
    invoke-super {p0}, Lnet/oneplus/gallery3d/glrenderer/BasicTexture;->recycle()V

    .line 298
    iget-object v0, p0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->freeBitmap()V

    .line 299
    :cond_0
    return-void
.end method

.method protected setIsUploading(Z)V
    .locals 0
    .param p1, "uploading"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mIsUploading:Z

    .line 80
    return-void
.end method

.method public setOpaque(Z)V
    .locals 0
    .param p1, "isOpaque"    # Z

    .prologue
    .line 287
    iput-boolean p1, p0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mOpaque:Z

    .line 288
    return-void
.end method

.method protected setThrottled(Z)V
    .locals 0
    .param p1, "throttled"    # Z

    .prologue
    .line 117
    iput-boolean p1, p0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mThrottled:Z

    .line 118
    return-void
.end method

.method public updateContent(Lnet/oneplus/gallery3d/glrenderer/GLCanvas;)V
    .locals 7
    .param p1, "canvas"    # Lnet/oneplus/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 189
    invoke-virtual {p0}, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 190
    iget-boolean v0, p0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mThrottled:Z

    if-eqz v0, :cond_1

    sget v0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->sUploadedCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->sUploadedCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-direct {p0, p1}, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->uploadToCanvas(Lnet/oneplus/gallery3d/glrenderer/GLCanvas;)V

    goto :goto_0

    .line 194
    :cond_2
    iget-boolean v0, p0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mContentValid:Z

    if-nez v0, :cond_0

    .line 195
    invoke-direct {p0}, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 196
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v4}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v5

    .line 197
    .local v5, "format":I
    invoke-static {v4}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v6

    .line 198
    .local v6, "type":I
    iget v2, p0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    iget v3, p0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    move-object v0, p1

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Lnet/oneplus/gallery3d/glrenderer/GLCanvas;->texSubImage2D(Lnet/oneplus/gallery3d/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V

    .line 199
    invoke-direct {p0}, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->freeBitmap()V

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/gallery3d/glrenderer/UploadedTexture;->mContentValid:Z

    goto :goto_0
.end method
