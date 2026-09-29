.class Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController$1;
.super Ljava/lang/Object;
.source "DefaultAppSearchController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;

    .prologue
    .line 63
    iput-object p1, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController$1;->this$0:Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController$1;->this$0:Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;

    iget-object v0, v0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchController;->mAppsRecyclerView:Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerView;->requestFocus()Z

    .line 67
    return-void
.end method
