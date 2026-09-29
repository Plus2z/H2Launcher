.class public Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$SpacingDecoration;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;
.source "WallpapersRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpacingDecoration"
.end annotation


# instance fields
.field private mSpacing:I

.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;I)V
    .locals 1
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;
    .param p2, "spacing"    # I

    .prologue
    .line 214
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$SpacingDecoration;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;-><init>()V

    .line 212
    const/4 v0, 0x0

    iput v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$SpacingDecoration;->mSpacing:I

    .line 215
    iput p2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$SpacingDecoration;->mSpacing:I

    .line 216
    return-void
.end method

.method private getGridItemOffsets(Landroid/graphics/Rect;II)V
    .locals 2
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "column"    # I
    .param p3, "spanCount"    # I

    .prologue
    .line 231
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$SpacingDecoration;->mSpacing:I

    mul-int/2addr v0, p2

    div-int/2addr v0, p3

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 232
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$SpacingDecoration;->mSpacing:I

    add-int/lit8 v1, p3, -0x1

    sub-int/2addr v1, p2

    mul-int/2addr v0, v1

    div-int/2addr v0, p3

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 233
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$SpacingDecoration;->mSpacing:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 234
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 5
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .param p4, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    .prologue
    .line 220
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V

    .line 221
    invoke-virtual {p3, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    .line 222
    .local v2, "position":I
    invoke-virtual {p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v4

    instance-of v4, v4, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;

    if-eqz v4, :cond_0

    .line 223
    invoke-virtual {p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;

    .line 224
    .local v1, "layoutManager":Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->getSpanCount()I

    move-result v3

    .line 225
    .local v3, "spanCount":I
    rem-int v0, v2, v3

    .line 226
    .local v0, "column":I
    invoke-direct {p0, p1, v0, v3}, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpapersRecyclerView$SpacingDecoration;->getGridItemOffsets(Landroid/graphics/Rect;II)V

    .line 228
    .end local v0    # "column":I
    .end local v1    # "layoutManager":Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;
    .end local v3    # "spanCount":I
    :cond_0
    return-void
.end method
