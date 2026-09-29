.class final Lnet/oneplus/h2launcher/LauncherModel$16;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Lnet/oneplus/h2launcher/LauncherModel$ItemInfoFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherModel;->getItemsByPackageName(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$pn:Ljava/lang/String;

.field final synthetic val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 0

    .prologue
    .line 1303
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$16;->val$pn:Ljava/lang/String;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherModel$16;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterItem(Lnet/oneplus/h2launcher/ItemInfo;Lnet/oneplus/h2launcher/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "parent"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p2, "info"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p3, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 1306
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$16;->val$pn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lnet/oneplus/h2launcher/ItemInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$16;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
