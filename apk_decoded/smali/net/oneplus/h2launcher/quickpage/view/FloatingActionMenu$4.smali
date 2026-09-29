.class Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$4;
.super Ljava/lang/Object;
.source "FloatingActionMenu.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    .prologue
    .line 197
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$4;->this$0:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .prologue
    .line 200
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$4;->this$0:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 201
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$4;->this$0:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 203
    .local v0, "itemPadding":I
    const/4 v1, 0x0

    .local v1, "itemType":I
    :goto_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$4;->this$0:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->access$600(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 206
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$4;->this$0:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->access$700(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;)[Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;

    move-result-object v2

    aget-object v2, v2, v1

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$4;->this$0:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    .line 207
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0076

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v3, v0

    int-to-float v3, v3

    iput v3, v2, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;->offset:F

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    :cond_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$4;->this$0:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->access$802(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;Z)Z

    .line 211
    return-void
.end method
