.class Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$5;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->filterCurrentWorkspaceItems(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lnet/oneplus/h2launcher/ItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    .prologue
    .line 3392
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$5;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 3392
    check-cast p1, Lnet/oneplus/h2launcher/ItemInfo;

    check-cast p2, Lnet/oneplus/h2launcher/ItemInfo;

    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$5;->compare(Lnet/oneplus/h2launcher/ItemInfo;Lnet/oneplus/h2launcher/ItemInfo;)I

    move-result v0

    return v0
.end method

.method public compare(Lnet/oneplus/h2launcher/ItemInfo;Lnet/oneplus/h2launcher/ItemInfo;)I
    .locals 4
    .param p1, "lhs"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p2, "rhs"    # Lnet/oneplus/h2launcher/ItemInfo;

    .prologue
    .line 3395
    iget-wide v0, p1, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    iget-wide v2, p2, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
