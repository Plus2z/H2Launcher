.class public Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRowViewHolder;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
.source "IconRearrangementRowViewHolder.java"


# instance fields
.field mContent:Landroid/view/ViewGroup;

.field mIconView:Lnet/oneplus/h2launcher/BubbleTextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lnet/oneplus/h2launcher/BubbleTextView;)V
    .locals 0
    .param p1, "v"    # Landroid/view/ViewGroup;
    .param p2, "iconView"    # Lnet/oneplus/h2launcher/BubbleTextView;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 15
    iput-object p1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRowViewHolder;->mContent:Landroid/view/ViewGroup;

    .line 16
    iput-object p2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRowViewHolder;->mIconView:Lnet/oneplus/h2launcher/BubbleTextView;

    .line 17
    return-void
.end method


# virtual methods
.method getContent()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRowViewHolder;->mContent:Landroid/view/ViewGroup;

    return-object v0
.end method
