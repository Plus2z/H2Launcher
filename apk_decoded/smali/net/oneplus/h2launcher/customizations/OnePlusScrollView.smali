.class public Lnet/oneplus/h2launcher/customizations/OnePlusScrollView;
.super Landroid/widget/ScrollView;
.source "OnePlusScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/customizations/OnePlusScrollView$OnScrollListener;
    }
.end annotation


# instance fields
.field private mOnScrollListener:Lnet/oneplus/h2launcher/customizations/OnePlusScrollView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 6
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 28
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 29
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/OnePlusScrollView;->mOnScrollListener:Lnet/oneplus/h2launcher/customizations/OnePlusScrollView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/OnePlusScrollView;->mOnScrollListener:Lnet/oneplus/h2launcher/customizations/OnePlusScrollView$OnScrollListener;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lnet/oneplus/h2launcher/customizations/OnePlusScrollView$OnScrollListener;->onScrollChanged(Lnet/oneplus/h2launcher/customizations/OnePlusScrollView;IIII)V

    .line 32
    :cond_0
    return-void
.end method

.method public setOnScrollListener(Lnet/oneplus/h2launcher/customizations/OnePlusScrollView$OnScrollListener;)V
    .locals 0
    .param p1, "onScrollListener"    # Lnet/oneplus/h2launcher/customizations/OnePlusScrollView$OnScrollListener;

    .prologue
    .line 23
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/OnePlusScrollView;->mOnScrollListener:Lnet/oneplus/h2launcher/customizations/OnePlusScrollView$OnScrollListener;

    .line 24
    return-void
.end method
