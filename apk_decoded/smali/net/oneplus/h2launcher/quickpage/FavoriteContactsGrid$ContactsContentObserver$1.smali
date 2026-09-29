.class Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactsContentObserver$1;
.super Ljava/lang/Object;
.source "FavoriteContactsGrid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactsContentObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactsContentObserver;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactsContentObserver;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactsContentObserver;

    .prologue
    .line 80
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactsContentObserver$1;->this$1:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactsContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 83
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FrequentContactsLoader;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactsContentObserver$1;->this$1:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactsContentObserver;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactsContentObserver;->this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FrequentContactsLoader;-><init>(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FrequentContactsLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 84
    return-void
.end method
