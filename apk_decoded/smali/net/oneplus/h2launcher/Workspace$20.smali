.class Lnet/oneplus/h2launcher/Workspace$20;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lnet/oneplus/h2launcher/Workspace$ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Workspace;->getWidgetForAppWidgetId(I)Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Workspace;

.field final synthetic val$appWidgetId:I


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Workspace;I)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Workspace;

    .prologue
    .line 4484
    iput-object p1, p0, Lnet/oneplus/h2launcher/Workspace$20;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iput p2, p0, Lnet/oneplus/h2launcher/Workspace$20;->val$appWidgetId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lnet/oneplus/h2launcher/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 2
    .param p1, "info"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    .line 4488
    instance-of v0, p1, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    .end local p1    # "info":Lnet/oneplus/h2launcher/ItemInfo;
    iget v0, p1, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->appWidgetId:I

    iget v1, p0, Lnet/oneplus/h2launcher/Workspace$20;->val$appWidgetId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
