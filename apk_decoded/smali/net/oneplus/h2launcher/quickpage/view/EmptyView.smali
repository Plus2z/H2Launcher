.class public Lnet/oneplus/h2launcher/quickpage/view/EmptyView;
.super Landroid/widget/RelativeLayout;
.source "EmptyView.java"


# instance fields
.field private mEmptyImage:Landroid/widget/ImageView;

.field private mEmptyText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/EmptyView;->init(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/EmptyView;->init(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/EmptyView;->init(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040053

    invoke-static {v0, v1, p0}, Lnet/oneplus/h2launcher/quickpage/view/EmptyView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 34
    const v0, 0x7f1100f4

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/EmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/EmptyView;->mEmptyImage:Landroid/widget/ImageView;

    .line 35
    const v0, 0x7f1100f5

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/EmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/EmptyView;->mEmptyText:Landroid/widget/TextView;

    .line 36
    return-void
.end method


# virtual methods
.method public setEmptyImage(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/EmptyView;->mEmptyImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 40
    return-void
.end method

.method public setEmptyMessage(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/EmptyView;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 44
    return-void
.end method
