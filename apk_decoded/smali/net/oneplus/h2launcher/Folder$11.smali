.class Lnet/oneplus/h2launcher/Folder$11;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Lnet/oneplus/h2launcher/Workspace$ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Folder;->getViewForInfo(Lnet/oneplus/h2launcher/ShortcutInfo;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Folder;

.field final synthetic val$item:Lnet/oneplus/h2launcher/ShortcutInfo;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Folder;Lnet/oneplus/h2launcher/ShortcutInfo;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Folder;

    .prologue
    .line 1159
    iput-object p1, p0, Lnet/oneplus/h2launcher/Folder$11;->this$0:Lnet/oneplus/h2launcher/Folder;

    iput-object p2, p0, Lnet/oneplus/h2launcher/Folder$11;->val$item:Lnet/oneplus/h2launcher/ShortcutInfo;

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
    .line 1163
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder$11;->val$item:Lnet/oneplus/h2launcher/ShortcutInfo;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
