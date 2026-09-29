.class Lnet/oneplus/h2launcher/Workspace$8;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Workspace;->getPageIndicatorClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Workspace;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Workspace;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Workspace;

    .prologue
    .line 1938
    iput-object p1, p0, Lnet/oneplus/h2launcher/Workspace$8;->this$0:Lnet/oneplus/h2launcher/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1941
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$8;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Workspace;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Launcher;->showOverviewMode(Z)V

    .line 1942
    return-void
.end method
