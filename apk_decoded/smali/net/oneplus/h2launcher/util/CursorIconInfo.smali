.class public Lnet/oneplus/h2launcher/util/CursorIconInfo;
.super Ljava/lang/Object;
.source "CursorIconInfo.java"


# instance fields
.field public final iconIndex:I

.field public final iconPackageIndex:I

.field public final iconResourceIndex:I

.field public final iconTypeIndex:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "iconType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/util/CursorIconInfo;->iconTypeIndex:I

    .line 41
    const-string v0, "icon"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/util/CursorIconInfo;->iconIndex:I

    .line 42
    const-string v0, "iconPackage"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/util/CursorIconInfo;->iconPackageIndex:I

    .line 43
    const-string v0, "iconResource"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/util/CursorIconInfo;->iconResourceIndex:I

    .line 44
    return-void
.end method


# virtual methods
.method public loadIcon(Landroid/database/Cursor;Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "info"    # Lnet/oneplus/h2launcher/ShortcutInfo;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "icon":Landroid/graphics/Bitmap;
    iget v5, p0, Lnet/oneplus/h2launcher/util/CursorIconInfo;->iconTypeIndex:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 49
    .local v1, "iconType":I
    packed-switch v1, :pswitch_data_0

    .line 69
    :cond_0
    :goto_0
    invoke-static {v0}, Lnet/oneplus/h2launcher/IconCache;->checkAndResizeIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 70
    .local v3, "resizedIcon":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_4

    .line 73
    .end local v3    # "resizedIcon":Landroid/graphics/Bitmap;
    :goto_1
    return-object v3

    .line 51
    :pswitch_0
    iget v5, p0, Lnet/oneplus/h2launcher/util/CursorIconInfo;->iconPackageIndex:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "packageName":Ljava/lang/String;
    iget v5, p0, Lnet/oneplus/h2launcher/util/CursorIconInfo;->iconResourceIndex:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, "resourceName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 54
    :cond_1
    new-instance v5, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v5}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v5, p2, Lnet/oneplus/h2launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 55
    iget-object v5, p2, Lnet/oneplus/h2launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v2, v5, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 56
    iget-object v5, p2, Lnet/oneplus/h2launcher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v4, v5, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 57
    invoke-static {v2, v4, p3}, Lnet/oneplus/h2launcher/Utilities;->createIconBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 59
    :cond_2
    if-nez v0, :cond_0

    .line 61
    iget v5, p0, Lnet/oneplus/h2launcher/util/CursorIconInfo;->iconIndex:I

    invoke-static {p1, v5, p3}, Lnet/oneplus/h2launcher/Utilities;->createIconBitmap(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 65
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "resourceName":Ljava/lang/String;
    :pswitch_1
    iget v5, p0, Lnet/oneplus/h2launcher/util/CursorIconInfo;->iconIndex:I

    invoke-static {p1, v5, p3}, Lnet/oneplus/h2launcher/Utilities;->createIconBitmap(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_3

    const/4 v5, 0x1

    :goto_2
    iput-boolean v5, p2, Lnet/oneplus/h2launcher/ShortcutInfo;->customIcon:Z

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .restart local v3    # "resizedIcon":Landroid/graphics/Bitmap;
    :cond_4
    move-object v3, v0

    .line 73
    goto :goto_1

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
