.class public Lnet/oneplus/h2launcher/globalsearch/EmptyContactData;
.super Lnet/oneplus/h2launcher/globalsearch/ContactData;
.source "EmptyContactData.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6
    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, v0, v1, v2, v2}, Lnet/oneplus/h2launcher/globalsearch/ContactData;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/Intent;)V

    .line 7
    return-void
.end method
