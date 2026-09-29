.class public Lnet/oneplus/h2launcher/customizations/OptionButton;
.super Landroid/widget/Button;
.source "OptionButton.java"


# instance fields
.field private mNonSelectedTextColor:I

.field private mSelectedBgColor:I

.field private mSelectedTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/customizations/OptionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const v0, 0x7f0e00b8

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/customizations/OptionButton;->mSelectedBgColor:I

    .line 26
    const v0, 0x7f0e00ba

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/customizations/OptionButton;->mSelectedTextColor:I

    .line 27
    const v0, 0x7f0e00b9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/customizations/OptionButton;->mNonSelectedTextColor:I

    .line 28
    return-void
.end method


# virtual methods
.method public setSelected(Z)V
    .locals 1
    .param p1, "selected"    # Z

    .prologue
    .line 32
    if-eqz p1, :cond_0

    iget v0, p0, Lnet/oneplus/h2launcher/customizations/OptionButton;->mSelectedBgColor:I

    :goto_0
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/customizations/OptionButton;->setBackgroundColor(I)V

    .line 33
    if-eqz p1, :cond_1

    iget v0, p0, Lnet/oneplus/h2launcher/customizations/OptionButton;->mSelectedTextColor:I

    :goto_1
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/customizations/OptionButton;->setTextColor(I)V

    .line 34
    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 33
    :cond_1
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/OptionButton;->mNonSelectedTextColor:I

    goto :goto_1
.end method
