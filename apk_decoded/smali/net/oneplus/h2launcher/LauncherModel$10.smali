.class final Lnet/oneplus/h2launcher/LauncherModel$10;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherModel;->updateQuickPageItemId(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$values:Landroid/content/ContentValues;

.field final synthetic val$where:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1086
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$10;->val$cr:Landroid/content/ContentResolver;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherModel$10;->val$values:Landroid/content/ContentValues;

    iput-object p3, p0, Lnet/oneplus/h2launcher/LauncherModel$10;->val$where:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1088
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel$10;->val$cr:Landroid/content/ContentResolver;

    sget-object v1, Lnet/oneplus/h2launcher/LauncherSettings$QuickPage;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel$10;->val$values:Landroid/content/ContentValues;

    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherModel$10;->val$where:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1089
    return-void
.end method
