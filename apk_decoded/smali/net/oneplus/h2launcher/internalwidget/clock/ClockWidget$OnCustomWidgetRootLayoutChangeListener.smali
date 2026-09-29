.class Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget$OnCustomWidgetRootLayoutChangeListener;
.super Ljava/lang/Object;
.source "ClockWidget.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnCustomWidgetRootLayoutChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;


# direct methods
.method private constructor <init>(Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget$OnCustomWidgetRootLayoutChangeListener;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;
    .param p2, "x1"    # Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget$1;

    .prologue
    .line 307
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget$OnCustomWidgetRootLayoutChangeListener;-><init>(Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;)V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    const/4 v2, 0x0

    .line 312
    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget$OnCustomWidgetRootLayoutChangeListener;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->access$102(Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;Z)Z

    .line 313
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 314
    iget-object v1, p0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget$OnCustomWidgetRootLayoutChangeListener;->this$0:Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;

    invoke-static {v1}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->access$200(Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 315
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    check-cast v0, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockViewGroup;->updateShadowImmediately()V

    .line 316
    :cond_0
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncher()Lnet/oneplus/h2launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->updateWallpaperPreview()V

    .line 317
    return-void
.end method
