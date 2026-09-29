.class Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;
.super Ljava/lang/Object;
.source "FrequentAppsGrid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->IconLoaderTask(Landroid/view/View;Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

.field final synthetic val$item:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;

.field final synthetic val$mConvertView:Landroid/view/View;

.field final synthetic val$mItem:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ViewHolder;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ViewHolder;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    .prologue
    .line 656
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;->this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;->val$item:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;

    iput-object p3, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;->val$mItem:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ViewHolder;

    iput-object p4, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;->val$mConvertView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 659
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;->val$item:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;->this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->access$1200(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;->val$item:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;

    iget-object v2, v2, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/Utilities;->isPackageValid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;->val$item:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->shortcutInfo:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;->val$item:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->shortcutInfo:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;

    iget-boolean v1, v1, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;->isIconReady:Z

    if-eqz v1, :cond_1

    .line 661
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;->val$item:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->shortcutInfo:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;

    iget v1, v1, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;->itemType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 662
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;->this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    .line 663
    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->access$1200(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;->val$item:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;

    iget-object v2, v2, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->shortcutInfo:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;->this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    invoke-static {v3}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->access$1500(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;)Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;->getIcon(Lnet/oneplus/h2launcher/AssetCache;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 664
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;->this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->access$2000(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;)I

    move-result v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;->this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->access$2000(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;)I

    move-result v2

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 666
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;->val$mItem:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ViewHolder;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v0, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 667
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;->val$mItem:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ViewHolder;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;->val$item:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;

    iget-object v2, v2, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->shortcutInfo:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;

    iget-object v2, v2, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;->val$mItem:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ViewHolder;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ViewHolder;->name:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 673
    .end local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;->val$mConvertView:Landroid/view/View;

    new-instance v2, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2$1;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2$1;-><init>(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 704
    :goto_1
    return-void

    .line 670
    :cond_0
    const-string v1, "FrequentAppsGrid"

    const-string v2, "item type in shortcutInfo is not correct."

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 698
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;->val$mItem:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ViewHolder;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ViewHolder;->name:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 699
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;->val$mItem:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ViewHolder;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 700
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;->val$mItem:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ViewHolder;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 702
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;->val$mConvertView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1
.end method
