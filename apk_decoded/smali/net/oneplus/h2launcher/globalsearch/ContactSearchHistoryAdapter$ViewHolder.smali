.class Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ContactSearchHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field private displayName:Landroid/widget/TextView;

.field private image:Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;

    .prologue
    .line 170
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;->displayName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$002(Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 170
    iput-object p1, p0, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;->displayName:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;)Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;

    .prologue
    .line 170
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;->image:Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;

    return-object v0
.end method

.method static synthetic access$102(Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;)Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;
    .param p1, "x1"    # Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;

    .prologue
    .line 170
    iput-object p1, p0, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter$ViewHolder;->image:Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;

    return-object p1
.end method
