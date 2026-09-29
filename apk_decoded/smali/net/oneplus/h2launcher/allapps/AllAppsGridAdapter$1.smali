.class Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$1;
.super Ljava/lang/Object;
.source "AllAppsGridAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    .prologue
    .line 507
    iput-object p1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$1;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 510
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$1;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    invoke-static {v0}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->access$200(Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;)Lnet/oneplus/h2launcher/Launcher;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$1;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    invoke-static {v1}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->access$000(Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter$1;->this$0:Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;

    invoke-static {v2}, Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;->access$100(Lnet/oneplus/h2launcher/allapps/AllAppsGridAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lnet/oneplus/h2launcher/Launcher;->startSearchFromAllApps(Landroid/view/View;Landroid/content/Intent;Ljava/lang/String;)V

    .line 511
    return-void
.end method
