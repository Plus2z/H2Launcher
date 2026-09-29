.class Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AppSearchHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field private image:Landroid/widget/ImageView;

.field private title:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter$ViewHolder;

    .prologue
    .line 79
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter$ViewHolder;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$002(Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 79
    iput-object p1, p0, Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter$ViewHolder;->title:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter$ViewHolder;

    .prologue
    .line 79
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$102(Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 79
    iput-object p1, p0, Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    return-object p1
.end method
