.class public Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/ItemShadowDecorator;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;
.source "ItemShadowDecorator.java"


# instance fields
.field private final mShadowDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private final mShadowPadding:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/NinePatchDrawable;)V
    .locals 2
    .param p1, "shadow"    # Landroid/graphics/drawable/NinePatchDrawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;-><init>()V

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/ItemShadowDecorator;->mShadowPadding:Landroid/graphics/Rect;

    .line 43
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/ItemShadowDecorator;->mShadowDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 44
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/ItemShadowDecorator;->mShadowDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/ItemShadowDecorator;->mShadowPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 45
    return-void
.end method

.method private static shouldDrawDropShadow(Landroid/view/View;)Z
    .locals 4
    .param p0, "child"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v1

    .line 79
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getAlpha(Landroid/view/View;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 84
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 88
    instance-of v2, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_2

    .line 90
    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p4, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 102
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 15
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p3, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    .line 49
    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildCount()I

    move-result v3

    .line 51
    .local v3, "childCount":I
    if-nez v3, :cond_1

    .line 73
    :cond_0
    return-void

    .line 55
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 56
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 58
    .local v2, "child":Landroid/view/View;
    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/ItemShadowDecorator;->shouldDrawDropShadow(Landroid/view/View;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 55
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 62
    :cond_2
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-int v8, v10

    .line 63
    .local v8, "tx":I
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-int v9, v10

    .line 65
    .local v9, "ty":I
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v10

    iget-object v11, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/ItemShadowDecorator;->mShadowPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    sub-int v5, v10, v11

    .line 66
    .local v5, "left":I
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v10

    iget-object v11, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/ItemShadowDecorator;->mShadowPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int v6, v10, v11

    .line 67
    .local v6, "right":I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v10

    iget-object v11, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/ItemShadowDecorator;->mShadowPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int v7, v10, v11

    .line 68
    .local v7, "top":I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v10

    iget-object v11, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/ItemShadowDecorator;->mShadowPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v1, v10, v11

    .line 70
    .local v1, "bottom":I
    iget-object v10, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/ItemShadowDecorator;->mShadowDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    add-int v11, v5, v8

    add-int v12, v7, v9

    add-int v13, v6, v8

    add-int v14, v1, v9

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 71
    iget-object v10, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/decoration/ItemShadowDecorator;->mShadowDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method
