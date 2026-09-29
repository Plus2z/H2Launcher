.class public Lnet/oneplus/h2launcher/AutoInstallsLayout$ShortcutParser;
.super Ljava/lang/Object;
.source "AutoInstallsLayout.java"

# interfaces
.implements Lnet/oneplus/h2launcher/AutoInstallsLayout$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/AutoInstallsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ShortcutParser"
.end annotation


# instance fields
.field private final mIconRes:Landroid/content/res/Resources;

.field final synthetic this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/AutoInstallsLayout;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/AutoInstallsLayout;
    .param p2, "iconRes"    # Landroid/content/res/Resources;

    .prologue
    .line 420
    iput-object p1, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout$ShortcutParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    iput-object p2, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout$ShortcutParser;->mIconRes:Landroid/content/res/Resources;

    .line 422
    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;)J
    .locals 8
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    const-wide/16 v4, -0x1

    const/4 v7, 0x0

    .line 426
    const-string v6, "title"

    invoke-static {p1, v6, v7}, Lnet/oneplus/h2launcher/AutoInstallsLayout;->getAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v3

    .line 427
    .local v3, "titleResId":I
    const-string v6, "icon"

    invoke-static {p1, v6, v7}, Lnet/oneplus/h2launcher/AutoInstallsLayout;->getAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v1

    .line 429
    .local v1, "iconId":I
    if-eqz v3, :cond_0

    if-nez v1, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-wide v4

    .line 434
    :cond_1
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/AutoInstallsLayout$ShortcutParser;->parseIntent(Landroid/content/res/XmlResourceParser;)Landroid/content/Intent;

    move-result-object v2

    .line 435
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 439
    iget-object v6, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout$ShortcutParser;->mIconRes:Landroid/content/res/Resources;

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 440
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 445
    iget-object v4, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout$ShortcutParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    iget-object v4, v4, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    iget-object v5, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout$ShortcutParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    iget-object v5, v5, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lnet/oneplus/h2launcher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/ItemInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 446
    iget-object v4, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout$ShortcutParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    iget-object v4, v4, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v5, "iconType"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 447
    iget-object v4, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout$ShortcutParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    iget-object v4, v4, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v5, "iconPackage"

    iget-object v6, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout$ShortcutParser;->mIconRes:Landroid/content/res/Resources;

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v4, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout$ShortcutParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    iget-object v4, v4, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v5, "iconResource"

    iget-object v6, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout$ShortcutParser;->mIconRes:Landroid/content/res/Resources;

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const/high16 v4, 0x10200000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 452
    iget-object v4, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout$ShortcutParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    iget-object v5, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout$ShortcutParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    iget-object v5, v5, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v2, v6}, Lnet/oneplus/h2launcher/AutoInstallsLayout;->addShortcut(Ljava/lang/String;Landroid/content/Intent;I)J

    move-result-wide v4

    goto :goto_0
.end method

.method protected parseIntent(Landroid/content/res/XmlResourceParser;)Landroid/content/Intent;
    .locals 4
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    const/4 v1, 0x0

    .line 457
    const-string v2, "url"

    invoke-static {p1, v2}, Lnet/oneplus/h2launcher/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_1

    .line 462
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0
.end method
