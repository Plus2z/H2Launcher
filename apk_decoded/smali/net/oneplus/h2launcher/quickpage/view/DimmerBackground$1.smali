.class Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground$1;
.super Ljava/lang/Object;
.source "DimmerBackground.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;

    .prologue
    .line 52
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 55
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v1

    .line 70
    :goto_1
    return v0

    .line 57
    :pswitch_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;

    invoke-virtual {v2, v1}, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->setClickable(Z)V

    .line 58
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->access$000(Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;)I

    move-result v2

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;

    .line 59
    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->access$100(Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    :cond_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->access$200(Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;)Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground$Callback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 61
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->access$200(Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;)Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground$Callback;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->access$000(Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;)I

    move-result v2

    invoke-interface {v1, v2}, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground$Callback;->onTouch(I)V

    goto :goto_1

    .line 67
    :pswitch_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;

    invoke-virtual {v2, v0}, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->setClickable(Z)V

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
