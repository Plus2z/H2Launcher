.class public Lnet/oneplus/h2launcher/CheckableFrameLayout;
.super Landroid/widget/FrameLayout;
.source "CheckableFrameLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field mChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lnet/oneplus/h2launcher/CheckableFrameLayout;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/CheckableFrameLayout;->mChecked:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 57
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 58
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CheckableFrameLayout;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    sget-object v1, Lnet/oneplus/h2launcher/CheckableFrameLayout;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/CheckableFrameLayout;->mergeDrawableStates([I[I)[I

    .line 61
    :cond_0
    return-object v0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 45
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/CheckableFrameLayout;->mChecked:Z

    if-eq p1, v0, :cond_0

    .line 46
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/CheckableFrameLayout;->mChecked:Z

    .line 47
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CheckableFrameLayout;->refreshDrawableState()V

    .line 49
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/CheckableFrameLayout;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/CheckableFrameLayout;->setChecked(Z)V

    .line 53
    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
