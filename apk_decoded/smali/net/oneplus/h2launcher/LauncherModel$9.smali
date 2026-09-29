.class final Lnet/oneplus/h2launcher/LauncherModel$9;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherModel;->addQuickPageItem(Landroid/content/Context;IIILjava/lang/String;ILjava/lang/String;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/content/ContentValues;)V
    .locals 0

    .prologue
    .line 1069
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$9;->val$cr:Landroid/content/ContentResolver;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherModel$9;->val$values:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1071
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel$9;->val$cr:Landroid/content/ContentResolver;

    sget-object v1, Lnet/oneplus/h2launcher/LauncherSettings$QuickPage;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel$9;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1072
    return-void
.end method
