.class public Lnet/oneplus/h2launcher/CommonAppTypeParser;
.super Ljava/lang/Object;
.source "CommonAppTypeParser.java"

# interfaces
.implements Lnet/oneplus/h2launcher/AutoInstallsLayout$LayoutParserCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/CommonAppTypeParser$MyLayoutParser;
    }
.end annotation


# static fields
.field private static final RESTORE_FLAG_BIT_SHIFT:I = 0x4

.field public static final SUPPORTED_TYPE_COUNT:I = 0x7

.field private static final TAG:Ljava/lang/String; = "CommonAppTypeParser"


# instance fields
.field final mContext:Landroid/content/Context;

.field private final mItemId:J

.field final mResId:I

.field parsedIntent:Landroid/content/Intent;

.field parsedTitle:Ljava/lang/String;

.field parsedValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(JILandroid/content/Context;)V
    .locals 1
    .param p1, "itemId"    # J
    .param p3, "itemType"    # I
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-wide p1, p0, Lnet/oneplus/h2launcher/CommonAppTypeParser;->mItemId:J

    .line 56
    iput-object p4, p0, Lnet/oneplus/h2launcher/CommonAppTypeParser;->mContext:Landroid/content/Context;

    .line 57
    invoke-static {p3}, Lnet/oneplus/h2launcher/CommonAppTypeParser;->getResourceForItemType(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/CommonAppTypeParser;->mResId:I

    .line 58
    return-void
.end method

.method public static decodeItemTypeFromFlag(I)I
    .locals 1
    .param p0, "flag"    # I

    .prologue
    .line 149
    and-int/lit16 v0, p0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static encodeItemTypeToFlag(I)I
    .locals 1
    .param p0, "itemType"    # I

    .prologue
    .line 145
    shl-int/lit8 v0, p0, 0x4

    return v0
.end method

.method public static getResourceForItemType(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 120
    packed-switch p0, :pswitch_data_0

    .line 140
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 122
    :pswitch_0
    const v0, 0x7f080005

    goto :goto_0

    .line 125
    :pswitch_1
    const v0, 0x7f080004

    goto :goto_0

    .line 128
    :pswitch_2
    const v0, 0x7f080002

    goto :goto_0

    .line 131
    :pswitch_3
    const/high16 v0, 0x7f080000

    goto :goto_0

    .line 134
    :pswitch_4
    const v0, 0x7f080003

    goto :goto_0

    .line 137
    :pswitch_5
    const v0, 0x7f080001

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public findDefaultApp()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 81
    iget v1, p0, Lnet/oneplus/h2launcher/CommonAppTypeParser;->mResId:I

    if-nez v1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v0

    .line 85
    :cond_1
    iput-object v2, p0, Lnet/oneplus/h2launcher/CommonAppTypeParser;->parsedIntent:Landroid/content/Intent;

    .line 86
    iput-object v2, p0, Lnet/oneplus/h2launcher/CommonAppTypeParser;->parsedValues:Landroid/content/ContentValues;

    .line 87
    new-instance v1, Lnet/oneplus/h2launcher/CommonAppTypeParser$MyLayoutParser;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/CommonAppTypeParser$MyLayoutParser;-><init>(Lnet/oneplus/h2launcher/CommonAppTypeParser;)V

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CommonAppTypeParser$MyLayoutParser;->parseValues()V

    .line 88
    iget-object v1, p0, Lnet/oneplus/h2launcher/CommonAppTypeParser;->parsedValues:Landroid/content/ContentValues;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/CommonAppTypeParser;->parsedIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public generateNewItemId()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lnet/oneplus/h2launcher/CommonAppTypeParser;->mItemId:J

    return-wide v0
.end method

.method public insertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v1, 0x0

    .line 67
    iput-object p2, p0, Lnet/oneplus/h2launcher/CommonAppTypeParser;->parsedValues:Landroid/content/ContentValues;

    .line 70
    const-string v2, "iconType"

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 71
    const-string v2, "iconPackage"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v2, "iconResource"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v0, "icon"

    check-cast v1, [B

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 74
    const-wide/16 v0, 0x1

    return-wide v0
.end method
