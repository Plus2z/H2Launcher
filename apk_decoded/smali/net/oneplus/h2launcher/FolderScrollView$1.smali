.class Lnet/oneplus/h2launcher/FolderScrollView$1;
.super Ljava/lang/Object;
.source "FolderScrollView.java"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/FolderScrollView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/FolderScrollView;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/FolderScrollView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/FolderScrollView;

    .prologue
    .line 35
    iput-object p1, p0, Lnet/oneplus/h2launcher/FolderScrollView$1;->this$0:Lnet/oneplus/h2launcher/FolderScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "scrollX"    # I
    .param p3, "scrollY"    # I
    .param p4, "oldScrollX"    # I
    .param p5, "oldScrollY"    # I

    .prologue
    .line 38
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderScrollView$1;->this$0:Lnet/oneplus/h2launcher/FolderScrollView;

    invoke-static {v1}, Lnet/oneplus/h2launcher/FolderScrollView;->access$000(Lnet/oneplus/h2launcher/FolderScrollView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnScrollChangeListener;

    .line 39
    .local v0, "listener":Landroid/view/View$OnScrollChangeListener;
    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 40
    invoke-interface/range {v0 .. v5}, Landroid/view/View$OnScrollChangeListener;->onScrollChange(Landroid/view/View;IIII)V

    goto :goto_0

    .line 43
    .end local v0    # "listener":Landroid/view/View$OnScrollChangeListener;
    :cond_1
    return-void
.end method
