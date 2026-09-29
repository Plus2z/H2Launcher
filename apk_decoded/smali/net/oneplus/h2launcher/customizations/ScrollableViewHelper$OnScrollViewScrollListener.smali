.class final Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$OnScrollViewScrollListener;
.super Ljava/lang/Object;
.source "ScrollableViewHelper.java"

# interfaces
.implements Lnet/oneplus/h2launcher/customizations/OnePlusScrollView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnScrollViewScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;


# direct methods
.method private constructor <init>(Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$OnScrollViewScrollListener;->this$0:Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;
    .param p2, "x1"    # Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$1;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$OnScrollViewScrollListener;-><init>(Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;)V

    return-void
.end method


# virtual methods
.method public onScrollChanged(Lnet/oneplus/h2launcher/customizations/OnePlusScrollView;IIII)V
    .locals 1
    .param p1, "scrollView"    # Lnet/oneplus/h2launcher/customizations/OnePlusScrollView;
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "oldl"    # I
    .param p5, "oldt"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$OnScrollViewScrollListener;->this$0:Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;->access$200(Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;)Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$OnScrollViewScrollListener;->this$0:Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;->access$200(Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper;)Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p3}, Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$OnScrollListener;->onScroll(I)V

    .line 111
    :cond_0
    return-void
.end method
