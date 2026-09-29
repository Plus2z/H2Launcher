.class Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton$1;
.super Landroid/view/ViewOutlineProvider;
.source "OnePlusFloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;

    .prologue
    .line 179
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .prologue
    const/4 v3, 0x0

    .line 182
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->access$000(Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;)I

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0c007e

    :goto_0
    invoke-static {v2, v1}, Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;->access$100(Lnet/oneplus/h2launcher/quickpage/view/OnePlusFloatingActionButton;I)I

    move-result v0

    .line 184
    .local v0, "size":I
    invoke-virtual {p2, v3, v3, v0, v0}, Landroid/graphics/Outline;->setOval(IIII)V

    .line 185
    return-void

    .line 182
    .end local v0    # "size":I
    :cond_0
    const v1, 0x7f0c007d

    goto :goto_0
.end method
