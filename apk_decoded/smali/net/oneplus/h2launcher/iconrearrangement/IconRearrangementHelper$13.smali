.class Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$13;
.super Ljava/lang/Object;
.source "IconRearrangementHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->generateMergeFolderRecyclerViewItemAnimator(Ljava/util/ArrayList;Ljava/util/ArrayList;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

.field final synthetic val$folderButton:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;

.field final synthetic val$info:Lnet/oneplus/h2launcher/ShortcutInfo;

.field final synthetic val$movingView:Lnet/oneplus/h2launcher/BubbleTextView;

.field final synthetic val$recyclerViewContainer:Landroid/widget/RelativeLayout;

.field final synthetic val$shortcutInfos:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/ShortcutInfo;Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;Landroid/widget/RelativeLayout;Lnet/oneplus/h2launcher/BubbleTextView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    .prologue
    .line 559
    iput-object p1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$13;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    iput-object p2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$13;->val$shortcutInfos:Ljava/util/ArrayList;

    iput-object p3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$13;->val$info:Lnet/oneplus/h2launcher/ShortcutInfo;

    iput-object p4, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$13;->val$folderButton:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;

    iput-object p5, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$13;->val$recyclerViewContainer:Landroid/widget/RelativeLayout;

    iput-object p6, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$13;->val$movingView:Lnet/oneplus/h2launcher/BubbleTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 562
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 12
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v11, 0x0

    .line 566
    iget-object v9, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$13;->val$shortcutInfos:Ljava/util/ArrayList;

    iget-object v10, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$13;->val$info:Lnet/oneplus/h2launcher/ShortcutInfo;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 567
    .local v6, "icons":I
    add-int/lit8 v6, v6, 0x1

    .line 568
    invoke-static {}, Lnet/oneplus/h2launcher/FolderIcon;->getNumItemsInPreview()I

    move-result v9

    if-le v6, v9, :cond_0

    .line 569
    invoke-static {}, Lnet/oneplus/h2launcher/FolderIcon;->getNumItemsInPreview()I

    move-result v6

    .line 572
    :cond_0
    iget-object v9, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$13;->val$folderButton:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;

    invoke-virtual {v9}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->getFakeIconDrawableLength()I

    move-result v8

    .line 573
    .local v8, "nowLength":I
    if-le v6, v8, :cond_3

    .line 574
    new-array v2, v6, [Landroid/graphics/drawable/Drawable;

    .line 575
    .local v2, "drawableList":[Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v9

    invoke-virtual {v9}, Lnet/oneplus/h2launcher/LauncherAppState;->getAssetCache()Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v0

    .line 576
    .local v0, "assetCache":Lnet/oneplus/h2launcher/AssetCache;
    iget-object v9, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$13;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    iget-object v9, v9, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v9}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0095

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 577
    .local v5, "iconSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_2

    .line 578
    iget-object v9, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$13;->val$shortcutInfos:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 580
    .local v7, "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    instance-of v9, v7, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    if-eqz v9, :cond_1

    .line 581
    check-cast v7, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    .end local v7    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-interface {v7}, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;->getStaticDrawable()Lnet/oneplus/h2launcher/FastBitmapDrawable;

    move-result-object v4

    .line 586
    .local v4, "iconDrawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    aput-object v4, v2, v3

    .line 587
    aget-object v9, v2, v3

    invoke-virtual {v9, v11, v11, v5, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 577
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 583
    .end local v4    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v7    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_1
    invoke-virtual {v7, v0}, Lnet/oneplus/h2launcher/ShortcutInfo;->getIcon(Lnet/oneplus/h2launcher/AssetCache;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 584
    .local v1, "b":Landroid/graphics/Bitmap;
    iget-object v9, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$13;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    iget-object v9, v9, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v9, v1}, Lnet/oneplus/h2launcher/Launcher;->createIconDrawable(Landroid/graphics/Bitmap;)Lnet/oneplus/h2launcher/FastBitmapDrawable;

    move-result-object v4

    .restart local v4    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 589
    .end local v1    # "b":Landroid/graphics/Bitmap;
    .end local v4    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v7    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_2
    iget-object v9, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$13;->val$folderButton:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;

    invoke-virtual {v9, v2}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->setFakeIconDrawable([Landroid/graphics/drawable/Drawable;)V

    .line 590
    iget-object v9, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$13;->val$folderButton:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;

    invoke-virtual {v9}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->invalidate()V

    .line 592
    .end local v0    # "assetCache":Lnet/oneplus/h2launcher/AssetCache;
    .end local v2    # "drawableList":[Landroid/graphics/drawable/Drawable;
    .end local v3    # "i":I
    .end local v5    # "iconSize":I
    :cond_3
    iget-object v9, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$13;->val$recyclerViewContainer:Landroid/widget/RelativeLayout;

    iget-object v10, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$13;->val$movingView:Lnet/oneplus/h2launcher/BubbleTextView;

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 593
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 597
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 601
    return-void
.end method
