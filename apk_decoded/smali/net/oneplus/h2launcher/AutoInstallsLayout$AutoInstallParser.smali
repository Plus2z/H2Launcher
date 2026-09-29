.class public Lnet/oneplus/h2launcher/AutoInstallsLayout$AutoInstallParser;
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
    name = "AutoInstallParser"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;


# direct methods
.method protected constructor <init>(Lnet/oneplus/h2launcher/AutoInstallsLayout;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/AutoInstallsLayout;

    .prologue
    .line 391
    iput-object p1, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout$AutoInstallParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;)J
    .locals 6
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    .line 395
    const-string v3, "packageName"

    invoke-static {p1, v3}, Lnet/oneplus/h2launcher/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 396
    .local v2, "packageName":Ljava/lang/String;
    const-string v3, "className"

    invoke-static {p1, v3}, Lnet/oneplus/h2launcher/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "className":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 399
    :cond_0
    const-wide/16 v4, -0x1

    .line 408
    :goto_0
    return-wide v4

    .line 402
    :cond_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout$AutoInstallParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    iget-object v3, v3, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v4, "restored"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 403
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v4, "android.intent.category.LAUNCHER"

    .line 404
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10200000

    .line 406
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 408
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout$AutoInstallParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    iget-object v4, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout$AutoInstallParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    iget-object v4, v4, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mContext:Landroid/content/Context;

    const v5, 0x7f0b008e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v5}, Lnet/oneplus/h2launcher/AutoInstallsLayout;->addShortcut(Ljava/lang/String;Landroid/content/Intent;I)J

    move-result-wide v4

    goto :goto_0
.end method
