.class Lnet/oneplus/h2launcher/Workspace$18;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lnet/oneplus/h2launcher/Workspace$ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Workspace;->getHomescreenIconByItemId(J)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Workspace;

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Workspace;J)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Workspace;

    .prologue
    .line 4464
    iput-object p1, p0, Lnet/oneplus/h2launcher/Workspace$18;->this$0:Lnet/oneplus/h2launcher/Workspace;

    iput-wide p2, p0, Lnet/oneplus/h2launcher/Workspace$18;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lnet/oneplus/h2launcher/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 4
    .param p1, "info"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    .line 4468
    if-eqz p1, :cond_0

    iget-wide v0, p1, Lnet/oneplus/h2launcher/ItemInfo;->id:J

    iget-wide v2, p0, Lnet/oneplus/h2launcher/Workspace$18;->val$id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
