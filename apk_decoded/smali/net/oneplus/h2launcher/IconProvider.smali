.class public Lnet/oneplus/h2launcher/IconProvider;
.super Landroid/content/ContentProvider;
.source "IconProvider.java"


# static fields
.field private static final ASSET_PACK:I = 0x8

.field private static final ASSET_PACK_ID:I = 0x9

.field public static final ASSET_PACK_URI:Landroid/net/Uri;

.field private static final CONTENT_TYPE_ASSET_PACK:Ljava/lang/String; = "vnd.android.cursor.item/asset_pack"

.field private static final CONTENT_TYPE_CUSTOM_LABEL:Ljava/lang/String; = "vnd.android.cursor.item/custom_label"

.field private static final CONTENT_TYPE_DYNAMIC_ICON:Ljava/lang/String; = "vnd.android.cursor.item/dynamic_icon"

.field private static final CONTENT_TYPE_ICON:Ljava/lang/String; = "vnd.android.cursor.item/icon"

.field private static final CONTENT_TYPE_SOUND:Ljava/lang/String; = "vnd.android.cursor.item/sound"

.field private static final CUSTOM_LABEL:I = 0xa

.field private static final CUSTOM_LABEL_ID:I = 0xb

.field public static final CUSTOM_LABEL_URI:Landroid/net/Uri;

.field private static final DYNAMIC_ICON:I = 0x4

.field private static final DYNAMIC_ICON_ID:I = 0x5

.field public static final DYNAMIC_ICON_URI:Landroid/net/Uri;

.field public static final EXTERNAL_ICON_URI:Landroid/net/Uri;

.field private static final ICON:I = 0x2

.field public static final ICON_AUTHORIY:Ljava/lang/String; = "net.oneplus.h2launcher.IconProvider"

.field private static final ICON_EXTERNAL:I = 0x1

.field private static final ICON_ID:I = 0x3

.field public static final ICON_URI:Landroid/net/Uri;

.field private static final SOUND:I = 0x6

.field private static final SOUND_ID:I = 0x7

.field public static final SOUND_URI:Landroid/net/Uri;

.field public static final TAG:Ljava/lang/String;

.field private static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mIconDb:Lnet/oneplus/h2launcher/IconDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 23
    const-class v0, Lnet/oneplus/h2launcher/IconProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/IconProvider;->TAG:Ljava/lang/String;

    .line 25
    const-string v0, "content://net.oneplus.h2launcher.IconProvider/data"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/IconProvider;->EXTERNAL_ICON_URI:Landroid/net/Uri;

    .line 26
    const-string v0, "content://net.oneplus.h2launcher.IconProvider/icon"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/IconProvider;->ICON_URI:Landroid/net/Uri;

    .line 27
    const-string v0, "content://net.oneplus.h2launcher.IconProvider/dynamic_icon"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/IconProvider;->DYNAMIC_ICON_URI:Landroid/net/Uri;

    .line 28
    const-string v0, "content://net.oneplus.h2launcher.IconProvider/sound"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/IconProvider;->SOUND_URI:Landroid/net/Uri;

    .line 29
    const-string v0, "content://net.oneplus.h2launcher.IconProvider/asset_pack"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/IconProvider;->ASSET_PACK_URI:Landroid/net/Uri;

    .line 30
    const-string v0, "content://net.oneplus.h2launcher.IconProvider/custom_label"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/IconProvider;->CUSTOM_LABEL_URI:Landroid/net/Uri;

    .line 31
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lnet/oneplus/h2launcher/IconProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 51
    sget-object v0, Lnet/oneplus/h2launcher/IconProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "net.oneplus.h2launcher.IconProvider"

    const-string v2, "data"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    sget-object v0, Lnet/oneplus/h2launcher/IconProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "net.oneplus.h2launcher.IconProvider"

    const-string v2, "icon"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 53
    sget-object v0, Lnet/oneplus/h2launcher/IconProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "net.oneplus.h2launcher.IconProvider"

    const-string v2, "dynamic_icon"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    sget-object v0, Lnet/oneplus/h2launcher/IconProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "net.oneplus.h2launcher.IconProvider"

    const-string v2, "sound"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 55
    sget-object v0, Lnet/oneplus/h2launcher/IconProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "net.oneplus.h2launcher.IconProvider"

    const-string v2, "asset_pack"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    sget-object v0, Lnet/oneplus/h2launcher/IconProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "net.oneplus.h2launcher.IconProvider"

    const-string v2, "custom_label"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    sget-object v0, Lnet/oneplus/h2launcher/IconProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "net.oneplus.h2launcher.IconProvider"

    const-string v2, "icon/#"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    sget-object v0, Lnet/oneplus/h2launcher/IconProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "net.oneplus.h2launcher.IconProvider"

    const-string v2, "dynamic_icon/#"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    sget-object v0, Lnet/oneplus/h2launcher/IconProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "net.oneplus.h2launcher.IconProvider"

    const-string v2, "sound/#"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    sget-object v0, Lnet/oneplus/h2launcher/IconProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "net.oneplus.h2launcher.IconProvider"

    const-string v2, "asset_pack/#"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    sget-object v0, Lnet/oneplus/h2launcher/IconProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "net.oneplus.h2launcher.IconProvider"

    const-string v2, "custom_label/#"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static drawableToByte(Landroid/graphics/drawable/Drawable;)[B
    .locals 4
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 252
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 253
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 254
    .local v1, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 255
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method private getCurrentAssetPack()Ljava/lang/String;
    .locals 3

    .prologue
    .line 246
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/IconProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "icon_pack_shared_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "current_icon_pack"

    const-string v2, "SYSTEM_DEFAULT_ICONS"

    .line 247
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWithIdSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;

    .prologue
    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rowid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "selectionWithId":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 175
    :goto_0
    return-object p2

    .line 173
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 127
    const/4 v2, 0x0

    .line 128
    .local v2, "id":I
    iget-object v4, p0, Lnet/oneplus/h2launcher/IconProvider;->mIconDb:Lnet/oneplus/h2launcher/IconDBHelper;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/IconDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 130
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    sget-object v4, Lnet/oneplus/h2launcher/IconProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_0
    move v3, v2

    .line 164
    :goto_1
    return v3

    .line 132
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/IconProvider;->getWithIdSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 134
    :pswitch_1
    const-string v4, "icons"

    invoke-virtual {v0, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 135
    goto :goto_0

    .line 137
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/IconProvider;->getWithIdSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 139
    :pswitch_3
    const-string v4, "dynamicIcon"

    invoke-virtual {v0, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 140
    goto :goto_0

    .line 142
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/IconProvider;->getWithIdSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 144
    :pswitch_5
    const-string v4, "sound"

    invoke-virtual {v0, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 145
    goto :goto_0

    .line 147
    :pswitch_6
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/IconProvider;->getWithIdSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 149
    :pswitch_7
    const-string v4, "assetPack"

    invoke-virtual {v0, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 150
    goto :goto_0

    .line 152
    :pswitch_8
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/IconProvider;->getWithIdSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 154
    :pswitch_9
    const-string v4, "customLabel"

    invoke-virtual {v0, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 155
    goto :goto_0

    .line 159
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Landroid/database/sqlite/SQLiteFullException;
    sget-object v4, Lnet/oneplus/h2launcher/IconProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete occur SQLiteFullException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 162
    .end local v1    # "e":Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v1

    .line 163
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    sget-object v4, Lnet/oneplus/h2launcher/IconProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete occur SQLiteException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 130
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 66
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "getType"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    sget-object v0, Lnet/oneplus/h2launcher/IconProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 88
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 71
    :pswitch_0
    const-string v0, "vnd.android.cursor.item/icon"

    goto :goto_0

    .line 75
    :pswitch_1
    const-string v0, "vnd.android.cursor.item/dynamic_icon"

    goto :goto_0

    .line 78
    :pswitch_2
    const-string v0, "vnd.android.cursor.item/sound"

    goto :goto_0

    .line 81
    :pswitch_3
    const-string v0, "vnd.android.cursor.item/asset_pack"

    goto :goto_0

    .line 84
    :pswitch_4
    const-string v0, "vnd.android.cursor.item/custom_label"

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v4, 0x0

    .line 93
    iget-object v5, p0, Lnet/oneplus/h2launcher/IconProvider;->mIconDb:Lnet/oneplus/h2launcher/IconDBHelper;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/IconDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 96
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    sget-object v5, Lnet/oneplus/h2launcher/IconProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 121
    :goto_0
    :pswitch_0
    return-object v4

    .line 98
    :pswitch_1
    const-string v5, "icons"

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v0, v5, v6, p2, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    .line 99
    .local v2, "id":J
    sget-object v5, Lnet/oneplus/h2launcher/IconProvider;->ICON_URI:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto :goto_0

    .line 102
    .end local v2    # "id":J
    :pswitch_2
    const-string v5, "dynamicIcon"

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v0, v5, v6, p2, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    .line 103
    .restart local v2    # "id":J
    sget-object v5, Lnet/oneplus/h2launcher/IconProvider;->DYNAMIC_ICON_URI:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto :goto_0

    .line 105
    .end local v2    # "id":J
    :pswitch_3
    const-string v5, "sound"

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v0, v5, v6, p2, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    .line 106
    .restart local v2    # "id":J
    sget-object v5, Lnet/oneplus/h2launcher/IconProvider;->SOUND_URI:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto :goto_0

    .line 108
    .end local v2    # "id":J
    :pswitch_4
    const-string v5, "assetPack"

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v0, v5, v6, p2, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    .line 109
    .restart local v2    # "id":J
    sget-object v5, Lnet/oneplus/h2launcher/IconProvider;->ASSET_PACK_URI:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto :goto_0

    .line 111
    .end local v2    # "id":J
    :pswitch_5
    const-string v5, "customLabel"

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v0, v5, v6, p2, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    .line 112
    .restart local v2    # "id":J
    sget-object v5, Lnet/oneplus/h2launcher/IconProvider;->CUSTOM_LABEL_URI:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    goto :goto_0

    .line 116
    .end local v2    # "id":J
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Landroid/database/sqlite/SQLiteFullException;
    sget-object v5, Lnet/oneplus/h2launcher/IconProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert occur SQLiteFullException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    .end local v1    # "e":Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v1

    .line 120
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    sget-object v5, Lnet/oneplus/h2launcher/IconProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert occur SQLiteException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 180
    new-instance v0, Lnet/oneplus/h2launcher/IconDBHelper;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/IconProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/IconDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/IconProvider;->mIconDb:Lnet/oneplus/h2launcher/IconDBHelper;

    .line 181
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 187
    iget-object v2, p0, Lnet/oneplus/h2launcher/IconProvider;->mIconDb:Lnet/oneplus/h2launcher/IconDBHelper;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/IconDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 188
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 189
    .local v10, "cursor":Landroid/database/Cursor;
    sget-object v2, Lnet/oneplus/h2launcher/IconProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 242
    :goto_0
    return-object v10

    .line 191
    :pswitch_0
    if-nez p5, :cond_0

    .line 192
    const-string p5, ""

    .line 194
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iconType desc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 195
    const-string v11, "iconType != 1"

    .line 196
    .local v11, "ignoreIconTypeDynamic":Ljava/lang/String;
    if-nez p3, :cond_3

    .line 197
    move-object p3, v11

    .line 202
    :goto_1
    invoke-direct {p0}, Lnet/oneplus/h2launcher/IconProvider;->getCurrentAssetPack()Ljava/lang/String;

    move-result-object v9

    .line 203
    .local v9, "currentAssetPack":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND ( iconType != 2 OR ( iconType = 2 AND assetPackName = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\') )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 208
    :cond_1
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/oos/StyleManager;->showDynamicIcon()Z

    move-result v2

    if-nez v2, :cond_2

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND ( iconType != 4 )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 212
    :cond_2
    const-string v2, "icons"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 214
    goto :goto_0

    .line 199
    .end local v9    # "currentAssetPack":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 216
    .end local v11    # "ignoreIconTypeDynamic":Ljava/lang/String;
    :pswitch_1
    invoke-direct {p0, p1, p3}, Lnet/oneplus/h2launcher/IconProvider;->getWithIdSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 218
    :pswitch_2
    const-string v2, "icons"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 219
    goto/16 :goto_0

    .line 221
    :pswitch_3
    invoke-direct {p0, p1, p3}, Lnet/oneplus/h2launcher/IconProvider;->getWithIdSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 223
    :pswitch_4
    const-string v2, "dynamicIcon"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 224
    goto/16 :goto_0

    .line 226
    :pswitch_5
    invoke-direct {p0, p1, p3}, Lnet/oneplus/h2launcher/IconProvider;->getWithIdSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 228
    :pswitch_6
    const-string v2, "sound"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 229
    goto/16 :goto_0

    .line 231
    :pswitch_7
    invoke-direct {p0, p1, p3}, Lnet/oneplus/h2launcher/IconProvider;->getWithIdSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 233
    :pswitch_8
    const-string v2, "assetPack"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 234
    goto/16 :goto_0

    .line 236
    :pswitch_9
    invoke-direct {p0, p1, p3}, Lnet/oneplus/h2launcher/IconProvider;->getWithIdSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 238
    :pswitch_a
    const-string v2, "customLabel"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 239
    goto/16 :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 260
    const/4 v2, 0x0

    .line 261
    .local v2, "id":I
    iget-object v4, p0, Lnet/oneplus/h2launcher/IconProvider;->mIconDb:Lnet/oneplus/h2launcher/IconDBHelper;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/IconDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 263
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    sget-object v4, Lnet/oneplus/h2launcher/IconProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_0
    move v3, v2

    .line 297
    :goto_1
    return v3

    .line 265
    :pswitch_0
    invoke-direct {p0, p1, p3}, Lnet/oneplus/h2launcher/IconProvider;->getWithIdSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 267
    :pswitch_1
    const-string v4, "icons"

    invoke-virtual {v0, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 268
    goto :goto_0

    .line 270
    :pswitch_2
    invoke-direct {p0, p1, p3}, Lnet/oneplus/h2launcher/IconProvider;->getWithIdSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 272
    :pswitch_3
    const-string v4, "dynamicIcon"

    invoke-virtual {v0, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 273
    goto :goto_0

    .line 275
    :pswitch_4
    invoke-direct {p0, p1, p3}, Lnet/oneplus/h2launcher/IconProvider;->getWithIdSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 277
    :pswitch_5
    const-string v4, "sound"

    invoke-virtual {v0, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 278
    goto :goto_0

    .line 280
    :pswitch_6
    invoke-direct {p0, p1, p3}, Lnet/oneplus/h2launcher/IconProvider;->getWithIdSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 282
    :pswitch_7
    const-string v4, "assetPack"

    invoke-virtual {v0, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 283
    goto :goto_0

    .line 285
    :pswitch_8
    invoke-direct {p0, p1, p3}, Lnet/oneplus/h2launcher/IconProvider;->getWithIdSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 287
    :pswitch_9
    const-string v4, "customLabel"

    invoke-virtual {v0, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 288
    goto :goto_0

    .line 292
    :catch_0
    move-exception v1

    .line 293
    .local v1, "e":Landroid/database/sqlite/SQLiteFullException;
    sget-object v4, Lnet/oneplus/h2launcher/IconProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update occur SQLiteFullException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 295
    .end local v1    # "e":Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v1

    .line 296
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    sget-object v4, Lnet/oneplus/h2launcher/IconProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update occur SQLiteException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 263
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
