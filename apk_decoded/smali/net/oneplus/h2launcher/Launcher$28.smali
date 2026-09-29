.class Lnet/oneplus/h2launcher/Launcher$28;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Launcher;->onClickPendingWidget(Lnet/oneplus/h2launcher/PendingAppWidgetHostView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Launcher;

.field final synthetic val$info:Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$v:Lnet/oneplus/h2launcher/PendingAppWidgetHostView;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Launcher;Lnet/oneplus/h2launcher/PendingAppWidgetHostView;Ljava/lang/String;Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 3937
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$28;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iput-object p2, p0, Lnet/oneplus/h2launcher/Launcher$28;->val$v:Lnet/oneplus/h2launcher/PendingAppWidgetHostView;

    iput-object p3, p0, Lnet/oneplus/h2launcher/Launcher$28;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lnet/oneplus/h2launcher/Launcher$28;->val$info:Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 3939
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$28;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$28;->val$v:Lnet/oneplus/h2launcher/PendingAppWidgetHostView;

    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$28;->val$packageName:Ljava/lang/String;

    invoke-static {v2}, Lnet/oneplus/h2launcher/LauncherModel;->getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher$28;->val$info:Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    invoke-virtual {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 3940
    return-void
.end method
