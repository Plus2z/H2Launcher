.class public Lnet/oneplus/h2launcher/customizations/WallpaperBackground;
.super Landroid/widget/LinearLayout;
.source "WallpaperBackground.java"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperBackground;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, -0x1

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperBackground;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 31
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 33
    .local v4, "theme":Landroid/content/res/Resources$Theme;
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    .local v0, "backgroundDim":Landroid/view/View;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 35
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const v5, 0x7f0e0359

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 36
    .local v1, "dimColor":I
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 38
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperBackground;->addView(Landroid/view/View;)V

    .line 39
    return-void
.end method


# virtual methods
.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperBackground;->setColor(IZ)V

    .line 43
    return-void
.end method

.method public setColor(IZ)V
    .locals 5
    .param p1, "color"    # I
    .param p2, "animated"    # Z

    .prologue
    .line 46
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperBackground;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    .line 47
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 48
    .local v1, "newBackground":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x2

    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/WallpaperBackground;->mBackground:Landroid/graphics/drawable/Drawable;

    aput-object v4, v0, v3

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 49
    .local v0, "layers":[Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 50
    .local v2, "transition":Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/customizations/WallpaperBackground;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 51
    iput-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperBackground;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 52
    const/16 v3, 0xe1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 57
    .end local v0    # "layers":[Landroid/graphics/drawable/Drawable;
    .end local v1    # "newBackground":Landroid/graphics/drawable/Drawable;
    .end local v2    # "transition":Landroid/graphics/drawable/TransitionDrawable;
    :goto_0
    return-void

    .line 54
    :cond_0
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperBackground;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 55
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/WallpaperBackground;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/customizations/WallpaperBackground;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
