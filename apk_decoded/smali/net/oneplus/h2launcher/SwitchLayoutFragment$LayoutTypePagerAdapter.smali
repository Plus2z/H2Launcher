.class public Lnet/oneplus/h2launcher/SwitchLayoutFragment$LayoutTypePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "SwitchLayoutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/SwitchLayoutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LayoutTypePagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/SwitchLayoutFragment;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/SwitchLayoutFragment;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    .prologue
    .line 203
    iput-object p1, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment$LayoutTypePagerAdapter;->this$0:Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 269
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 270
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment$LayoutTypePagerAdapter;->this$0:Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    invoke-static {v0}, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->access$400(Lnet/oneplus/h2launcher/SwitchLayoutFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 11
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 217
    iget-object v7, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment$LayoutTypePagerAdapter;->this$0:Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 218
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_1

    .line 219
    iget-object v7, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment$LayoutTypePagerAdapter;->this$0:Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    invoke-static {v7}, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->access$200(Lnet/oneplus/h2launcher/SwitchLayoutFragment;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "[instantiateItem] context is null."

    invoke-static {v7, v8}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_0
    :goto_0
    return-object v6

    .line 223
    :cond_1
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 224
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f0400c9

    invoke-virtual {v3, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 225
    .local v6, "view":Landroid/view/View;
    const v7, 0x7f1101bb

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 226
    .local v2, "imageView":Landroid/widget/ImageView;
    const v7, 0x7f1101bc

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 227
    .local v0, "checked":Landroid/widget/ImageView;
    const v7, 0x7f1101bd

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 228
    .local v5, "title":Landroid/widget/TextView;
    const v7, 0x7f1101be

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 230
    .local v4, "subtitle":Landroid/widget/TextView;
    packed-switch p2, :pswitch_data_0

    .line 251
    iget-object v7, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment$LayoutTypePagerAdapter;->this$0:Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    invoke-static {v7}, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->access$200(Lnet/oneplus/h2launcher/SwitchLayoutFragment;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_2
    :goto_1
    iget-object v7, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment$LayoutTypePagerAdapter;->this$0:Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    invoke-static {v7}, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->access$000(Lnet/oneplus/h2launcher/SwitchLayoutFragment;)I

    move-result v7

    if-ne p2, v7, :cond_3

    .line 255
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 260
    :goto_2
    if-eqz v6, :cond_0

    .line 261
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 232
    :pswitch_0
    const v7, 0x7f0201be

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 233
    iget-object v7, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment$LayoutTypePagerAdapter;->this$0:Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    invoke-static {v7, v9}, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->access$500(Lnet/oneplus/h2launcher/SwitchLayoutFragment;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 234
    const v7, 0x7f0b00c4

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 235
    const v7, 0x7f0b00c3

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 238
    :pswitch_1
    const v7, 0x7f0201bb

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 239
    iget-object v7, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment$LayoutTypePagerAdapter;->this$0:Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    invoke-static {v7, v10}, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->access$500(Lnet/oneplus/h2launcher/SwitchLayoutFragment;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 240
    const v7, 0x7f0b00bf

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 241
    const v7, 0x7f0b00be

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 244
    iget-object v7, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment$LayoutTypePagerAdapter;->this$0:Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    invoke-static {v7}, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->access$000(Lnet/oneplus/h2launcher/SwitchLayoutFragment;)I

    move-result v7

    if-ne v7, v9, :cond_2

    .line 245
    iget-object v7, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment$LayoutTypePagerAdapter;->this$0:Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    invoke-static {v7}, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->access$600(Lnet/oneplus/h2launcher/SwitchLayoutFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v7

    iget-object v8, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment$LayoutTypePagerAdapter;->this$0:Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    invoke-static {v8}, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->access$000(Lnet/oneplus/h2launcher/SwitchLayoutFragment;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 246
    iget-object v7, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment$LayoutTypePagerAdapter;->this$0:Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    invoke-static {v7}, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->access$700(Lnet/oneplus/h2launcher/SwitchLayoutFragment;)[I

    move-result-object v7

    aget v7, v7, v9

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 247
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 257
    :cond_3
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 230
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 212
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
