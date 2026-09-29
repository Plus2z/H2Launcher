.class public Lnet/oneplus/h2launcher/quickpage/widget/FlowIconTextView;
.super Landroid/widget/TextView;
.source "FlowIconTextView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FlowIconTextView"


# instance fields
.field private mDesiredHeight:I

.field private mDesiredWidth:I

.field private mHighlightFilter:Landroid/graphics/PorterDuffColorFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnet/oneplus/h2launcher/quickpage/widget/FlowIconTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/quickpage/widget/FlowIconTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v4, 0x7f0200b5

    const/4 v3, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e02a9

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/FlowIconTextView;->mHighlightFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 38
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/widget/FlowIconTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/FlowIconTextView;->mDesiredWidth:I

    .line 39
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/widget/FlowIconTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/FlowIconTextView;->mDesiredHeight:I

    .line 40
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 46
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/widget/FlowIconTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 47
    .local v0, "f":Landroid/graphics/Paint$FontMetricsInt;
    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v4, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v2, v3, v4

    .line 49
    .local v2, "textHeight":I
    iget v3, p0, Lnet/oneplus/h2launcher/quickpage/widget/FlowIconTextView;->mDesiredHeight:I

    iget v4, p0, Lnet/oneplus/h2launcher/quickpage/widget/FlowIconTextView;->mDesiredWidth:I

    sub-int/2addr v3, v4

    sub-int v1, v3, v2

    .line 50
    .local v1, "padding":I
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/quickpage/widget/FlowIconTextView;->setCompoundDrawablePadding(I)V

    .line 52
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/widget/FlowIconTextView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/widget/FlowIconTextView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lnet/oneplus/h2launcher/quickpage/widget/FlowIconTextView;->setMeasuredDimension(II)V

    .line 53
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 58
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/widget/FlowIconTextView;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 59
    const/4 v0, 0x0

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 61
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 63
    :pswitch_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/widget/FlowIconTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/widget/FlowIconTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/widget/FlowIconTextView;->mHighlightFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 69
    :pswitch_2
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/widget/FlowIconTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/widget/FlowIconTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
