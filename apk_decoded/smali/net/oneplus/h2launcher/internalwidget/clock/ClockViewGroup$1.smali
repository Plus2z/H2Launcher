.class Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$1;
.super Ljava/lang/Object;
.source "ClockViewGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->updateShadow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;

    .prologue
    .line 132
    iput-object p1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 135
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;

    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;

    invoke-static {v1}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->access$100(Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;)Lnet/oneplus/h2launcher/util/ShadowHelper;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lnet/oneplus/h2launcher/util/ShadowHelper;->createShadow(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->access$002(Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 136
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;

    invoke-static {v0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->access$000(Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup$1;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;

    invoke-static {v3}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->access$000(Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 139
    :cond_0
    return-void
.end method
