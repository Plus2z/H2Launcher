.class Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetSelectionAdapter;
.super Landroid/widget/ArrayAdapter;
.source "WidgetPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetSelectionAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lnet/oneplus/h2launcher/model/WidgetItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/model/WidgetItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/model/WidgetItem;>;"
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetSelectionAdapter;->this$0:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;

    .line 204
    const v0, 0x7f0400bb

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 205
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetSelectionAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 206
    return-void
.end method


# virtual methods
.method destroy()V
    .locals 0

    .prologue
    .line 209
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetSelectionAdapter;->clear()V

    .line 210
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 217
    if-nez p2, :cond_1

    .line 218
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetSelectionAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0400bb

    const/4 v4, 0x0

    .line 219
    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 220
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$ViewHolder;

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetSelectionAdapter;->this$0:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$ViewHolder;-><init>(Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$1;)V

    .line 221
    .local v0, "viewHolder":Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$ViewHolder;
    const v2, 0x7f1101ac

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/widget/WidgetCell;

    iput-object v2, v0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$ViewHolder;->widget:Lnet/oneplus/h2launcher/widget/WidgetCell;

    .line 222
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 228
    :goto_0
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/model/WidgetItem;

    .line 229
    .local v1, "widget":Lnet/oneplus/h2launcher/model/WidgetItem;
    if-eqz v1, :cond_0

    .line 230
    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$ViewHolder;->widget:Lnet/oneplus/h2launcher/widget/WidgetCell;

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetSelectionAdapter;->this$0:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;

    invoke-static {v3}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->access$100(Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;)Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lnet/oneplus/h2launcher/widget/WidgetCell;->applyFromCellItem(Lnet/oneplus/h2launcher/model/WidgetItem;Lnet/oneplus/h2launcher/WidgetPreviewLoader;)V

    .line 231
    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$ViewHolder;->widget:Lnet/oneplus/h2launcher/widget/WidgetCell;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/widget/WidgetCell;->ensurePreview()V

    .line 233
    new-instance v2, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetSelectionAdapter$1;

    invoke-direct {v2, p0, v1}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetSelectionAdapter$1;-><init>(Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetSelectionAdapter;Lnet/oneplus/h2launcher/model/WidgetItem;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    :cond_0
    return-object p2

    .line 224
    .end local v0    # "viewHolder":Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$ViewHolder;
    .end local v1    # "widget":Lnet/oneplus/h2launcher/model/WidgetItem;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$ViewHolder;

    .line 225
    .restart local v0    # "viewHolder":Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$ViewHolder;
    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$ViewHolder;->widget:Lnet/oneplus/h2launcher/widget/WidgetCell;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/widget/WidgetCell;->clear()V

    goto :goto_0
.end method
