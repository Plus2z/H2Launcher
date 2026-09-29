.class public Lnet/oneplus/h2launcher/SearchBarOverlay;
.super Landroid/widget/RelativeLayout;
.source "SearchBarOverlay.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final NORMAL_STATE_SET:[I

.field private static final TAP_STATE_SET:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lnet/oneplus/h2launcher/SearchBarOverlay;->NORMAL_STATE_SET:[I

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnet/oneplus/h2launcher/SearchBarOverlay;->TAP_STATE_SET:[I

    return-void

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnet/oneplus/h2launcher/SearchBarOverlay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/SearchBarOverlay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lnet/oneplus/h2launcher/SearchBarOverlay;->NORMAL_STATE_SET:[I

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 5

    .prologue
    .line 33
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 35
    const v4, 0x7f1101af

    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/SearchBarOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 36
    .local v3, "ripples":Landroid/view/ViewGroup;
    if-eqz v3, :cond_1

    .line 37
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 38
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 39
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 38
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "index":I
    :cond_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 50
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_0

    sget-boolean v2, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_LOLLIPOP:Z

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 51
    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    .line 52
    .local v1, "rippleDrawable":Landroid/graphics/drawable/RippleDrawable;
    sget-object v2, Lnet/oneplus/h2launcher/SearchBarOverlay;->TAP_STATE_SET:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    .line 53
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/SearchBarOverlay;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lnet/oneplus/h2launcher/SearchBarOverlay$1;

    invoke-direct {v3, p0, v1}, Lnet/oneplus/h2launcher/SearchBarOverlay$1;-><init>(Lnet/oneplus/h2launcher/SearchBarOverlay;Landroid/graphics/drawable/RippleDrawable;)V

    .line 58
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    int-to-long v4, v4

    .line 53
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 60
    .end local v1    # "rippleDrawable":Landroid/graphics/drawable/RippleDrawable;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method
