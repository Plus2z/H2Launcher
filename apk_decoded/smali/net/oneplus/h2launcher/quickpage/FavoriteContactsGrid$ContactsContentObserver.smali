.class Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactsContentObserver;
.super Landroid/database/ContentObserver;
.source "FavoriteContactsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactsContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)V
    .locals 1

    .prologue
    .line 71
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactsContentObserver;->this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 73
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 78
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactsContentObserver;->this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->access$000(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactsContentObserver;->this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->access$000(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactsContentObserver$1;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactsContentObserver$1;-><init>(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactsContentObserver;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 86
    return-void
.end method
