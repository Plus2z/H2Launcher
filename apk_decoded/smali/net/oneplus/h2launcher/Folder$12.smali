.class Lnet/oneplus/h2launcher/Folder$12;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Lnet/oneplus/h2launcher/Workspace$ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Folder;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Folder;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Folder;

    .prologue
    .line 1182
    iput-object p1, p0, Lnet/oneplus/h2launcher/Folder$12;->this$0:Lnet/oneplus/h2launcher/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lnet/oneplus/h2launcher/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "info"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    .line 1185
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder$12;->this$0:Lnet/oneplus/h2launcher/Folder;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1186
    const/4 v0, 0x0

    return v0
.end method
