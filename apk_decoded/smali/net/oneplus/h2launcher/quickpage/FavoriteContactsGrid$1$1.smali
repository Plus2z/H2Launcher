.class Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$1$1;
.super Ljava/lang/Object;
.source "FavoriteContactsGrid.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$1;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$1;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$1;

    .prologue
    .line 280
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$1$1;->this$1:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 283
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$1$1;->this$1:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$1;

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$1;->this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->access$300(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    const/16 v2, 0xc8

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/util/PermissionUtils;->requestPermission(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 285
    return-void
.end method
