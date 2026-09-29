.class Lnet/oneplus/h2launcher/Workspace$21;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lnet/oneplus/h2launcher/Workspace$ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Workspace;->getFirstMatch(Lnet/oneplus/h2launcher/Workspace$ItemOperator;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Workspace;

.field final synthetic val$operator:Lnet/oneplus/h2launcher/Workspace$ItemOperator;

.field final synthetic val$value:[Landroid/view/View;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Workspace;Lnet/oneplus/h2launcher/Workspace$ItemOperator;[Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Workspace;

    .prologue
    .line 4496
    iput-object p1, p0, Lnet/oneplus/h2launcher/Workspace$21;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iput-object p2, p0, Lnet/oneplus/h2launcher/Workspace$21;->val$operator:Lnet/oneplus/h2launcher/Workspace$ItemOperator;

    iput-object p3, p0, Lnet/oneplus/h2launcher/Workspace$21;->val$value:[Landroid/view/View;

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
    const/4 v0, 0x0

    .line 4499
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace$21;->val$operator:Lnet/oneplus/h2launcher/Workspace$ItemOperator;

    invoke-interface {v1, p1, p2, p3}, Lnet/oneplus/h2launcher/Workspace$ItemOperator;->evaluate(Lnet/oneplus/h2launcher/ItemInfo;Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4500
    iget-object v1, p0, Lnet/oneplus/h2launcher/Workspace$21;->val$value:[Landroid/view/View;

    aput-object p2, v1, v0

    .line 4501
    const/4 v0, 0x1

    .line 4503
    :cond_0
    return v0
.end method
