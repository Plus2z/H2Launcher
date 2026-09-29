.class public Lnet/oneplus/h2launcher/customizations/WallpaperPreview$OnPageChangeListenerAdapter;
.super Ljava/lang/Object;
.source "WallpaperPreview.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/WallpaperPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "OnPageChangeListenerAdapter"
.end annotation


# instance fields
.field mCurrentPosition:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    const/4 v0, -0x1

    iput v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$OnPageChangeListenerAdapter;->mCurrentPosition:I

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 321
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 311
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 315
    iput p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$OnPageChangeListenerAdapter;->mCurrentPosition:I

    .line 316
    return-void
.end method
