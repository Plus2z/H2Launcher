.class Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$2;
.super Ljava/lang/Object;
.source "FavoriteContactsGrid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->getFavoriteContacts()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    .prologue
    .line 292
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$2;->this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$2;->this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->access$200(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)Lnet/oneplus/h2launcher/quickpage/view/EmptyView;

    move-result-object v0

    const v1, 0x7f0b0081

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/EmptyView;->setEmptyMessage(I)V

    .line 296
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$2;->this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->access$200(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)Lnet/oneplus/h2launcher/quickpage/view/EmptyView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/EmptyView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    return-void
.end method
