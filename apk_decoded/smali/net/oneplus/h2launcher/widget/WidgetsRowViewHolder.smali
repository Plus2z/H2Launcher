.class public Lnet/oneplus/h2launcher/widget/WidgetsRowViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "WidgetsRowViewHolder.java"


# instance fields
.field mContent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "v"    # Landroid/view/ViewGroup;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 27
    iput-object p1, p0, Lnet/oneplus/h2launcher/widget/WidgetsRowViewHolder;->mContent:Landroid/view/ViewGroup;

    .line 28
    return-void
.end method


# virtual methods
.method getContent()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetsRowViewHolder;->mContent:Landroid/view/ViewGroup;

    return-object v0
.end method
