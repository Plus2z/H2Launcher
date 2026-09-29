.class Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$19;
.super Ljava/lang/Object;
.source "IconRearrangementHelper.java"

# interfaces
.implements Lnet/oneplus/h2launcher/LauncherModel$ItemInfoFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->removeItemsByPackageName(Ljava/util/ArrayList;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

.field final synthetic val$cns:Ljava/util/HashSet;

.field final synthetic val$packageNames:Ljava/util/HashSet;

.field final synthetic val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;Ljava/util/HashSet;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/util/HashSet;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    .prologue
    .line 833
    iput-object p1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$19;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    iput-object p2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$19;->val$packageNames:Ljava/util/HashSet;

    iput-object p3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$19;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    iput-object p4, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$19;->val$cns:Ljava/util/HashSet;

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
    .line 837
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$19;->val$packageNames:Ljava/util/HashSet;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lnet/oneplus/h2launcher/ItemInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$19;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 838
    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$19;->val$cns:Ljava/util/HashSet;

    invoke-virtual {v0, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 840
    const/4 v0, 0x1

    .line 842
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
