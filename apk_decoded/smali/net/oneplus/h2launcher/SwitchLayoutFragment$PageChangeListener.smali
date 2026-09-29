.class public Lnet/oneplus/h2launcher/SwitchLayoutFragment$PageChangeListener;
.super Ljava/lang/Object;
.source "SwitchLayoutFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/SwitchLayoutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/SwitchLayoutFragment;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/SwitchLayoutFragment;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    .prologue
    .line 273
    iput-object p1, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment$PageChangeListener;->this$0:Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 319
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 277
    return-void
.end method

.method public onPageSelected(I)V
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 281
    iget-object v6, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment$PageChangeListener;->this$0:Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    invoke-static {v6}, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->access$600(Lnet/oneplus/h2launcher/SwitchLayoutFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v6

    if-nez v6, :cond_0

    .line 282
    iget-object v6, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment$PageChangeListener;->this$0:Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    invoke-static {v6}, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->access$200(Lnet/oneplus/h2launcher/SwitchLayoutFragment;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "[onPageSelected] view pager is null. Should not be here"

    invoke-static {v6, v7}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v6, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment$PageChangeListener;->this$0:Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    invoke-static {v6}, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->access$600(Lnet/oneplus/h2launcher/SwitchLayoutFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    .line 287
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 288
    iget-object v6, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment$PageChangeListener;->this$0:Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    invoke-static {v6}, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->access$600(Lnet/oneplus/h2launcher/SwitchLayoutFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 289
    .local v5, "view":Landroid/view/View;
    if-nez v5, :cond_2

    .line 287
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 291
    :cond_2
    const v6, 0x7f1101bc

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 292
    .local v0, "checked":Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 294
    const v6, 0x7f1101be

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 295
    .local v4, "subtitle":Landroid/widget/TextView;
    if-eqz v4, :cond_1

    .line 297
    const v6, 0x7f1101bb

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 298
    .local v3, "imageView":Landroid/widget/ImageView;
    if-eqz v3, :cond_1

    .line 300
    if-ne p1, v2, :cond_3

    .line 301
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    iget-object v6, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment$PageChangeListener;->this$0:Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    invoke-static {v6}, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->access$700(Lnet/oneplus/h2launcher/SwitchLayoutFragment;)[I

    move-result-object v6

    aget v6, v6, v2

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 304
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 306
    :cond_3
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    iget-object v6, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment$PageChangeListener;->this$0:Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    invoke-static {v6}, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->access$800(Lnet/oneplus/h2launcher/SwitchLayoutFragment;)[I

    move-result-object v6

    aget v6, v6, v2

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 309
    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 313
    .end local v0    # "checked":Landroid/widget/ImageView;
    .end local v3    # "imageView":Landroid/widget/ImageView;
    .end local v4    # "subtitle":Landroid/widget/TextView;
    .end local v5    # "view":Landroid/view/View;
    :cond_4
    iget-object v6, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment$PageChangeListener;->this$0:Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    invoke-static {v6, p1}, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->access$002(Lnet/oneplus/h2launcher/SwitchLayoutFragment;I)I

    goto :goto_0
.end method
