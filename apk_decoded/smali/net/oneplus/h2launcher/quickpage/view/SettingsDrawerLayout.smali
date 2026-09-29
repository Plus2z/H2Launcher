.class public Lnet/oneplus/h2launcher/quickpage/view/SettingsDrawerLayout;
.super Landroid/support/v4/widget/DrawerLayout;
.source "SettingsDrawerLayout.java"

# interfaces
.implements Lnet/oneplus/h2launcher/Insettable;


# instance fields
.field private mDisallowIntercept:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v2, :cond_0

    iget-boolean v1, p0, Lnet/oneplus/h2launcher/quickpage/view/SettingsDrawerLayout;->mDisallowIntercept:Z

    if-eqz v1, :cond_0

    .line 38
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/quickpage/view/SettingsDrawerLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 39
    invoke-super {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 40
    .local v0, "handled":Z
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/quickpage/view/SettingsDrawerLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 43
    .end local v0    # "handled":Z
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/quickpage/view/SettingsDrawerLayout;->mDisallowIntercept:Z

    .line 32
    invoke-super {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 33
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 49
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/SettingsDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/SettingsDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .line 51
    .local v0, "activity":Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;
    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->setInsets(Landroid/graphics/Rect;)V

    .line 53
    .end local v0    # "activity":Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;
    :cond_0
    return-void
.end method
