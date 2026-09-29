.class Lnet/oneplus/h2launcher/Launcher$35;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Launcher;->startApplicationEditDialog(Landroid/content/ComponentName;Landroid/view/View;Lnet/oneplus/h2launcher/ItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Launcher;

.field final synthetic val$appLabel:Landroid/widget/EditText;

.field final synthetic val$enableEditImage:Z

.field final synthetic val$enableEditLabel:Z

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Launcher;Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;ZLandroid/widget/EditText;Z)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 4552
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$35;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iput-object p2, p0, Lnet/oneplus/h2launcher/Launcher$35;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lnet/oneplus/h2launcher/Launcher$35;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    iput-boolean p4, p0, Lnet/oneplus/h2launcher/Launcher$35;->val$enableEditImage:Z

    iput-object p5, p0, Lnet/oneplus/h2launcher/Launcher$35;->val$appLabel:Landroid/widget/EditText;

    iput-boolean p6, p0, Lnet/oneplus/h2launcher/Launcher$35;->val$enableEditLabel:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 4555
    const-string v1, "Launcher"

    const-string v2, "[edit app] reset app packageName:%s"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lnet/oneplus/h2launcher/Launcher$35;->val$packageName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4556
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$35;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$35;->this$0:Lnet/oneplus/h2launcher/Launcher;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/Launcher;->access$2302(Lnet/oneplus/h2launcher/Launcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/Launcher;->access$2202(Lnet/oneplus/h2launcher/Launcher;Ljava/lang/String;)Ljava/lang/String;

    .line 4557
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$35;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v1, v6}, Lnet/oneplus/h2launcher/Launcher;->access$2402(Lnet/oneplus/h2launcher/Launcher;Z)Z

    .line 4559
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$35;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v1}, Lnet/oneplus/h2launcher/Launcher;->access$2500(Lnet/oneplus/h2launcher/Launcher;)Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$35;->val$packageName:Ljava/lang/String;

    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher$35;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v1, v2, v3, v6}, Lnet/oneplus/h2launcher/AssetCache;->updateIconsForPkg(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Z)V

    .line 4560
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/Launcher$35;->val$enableEditImage:Z

    if-eqz v1, :cond_0

    .line 4561
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$35;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v1}, Lnet/oneplus/h2launcher/Launcher;->access$2700(Lnet/oneplus/h2launcher/Launcher;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$35;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher$35;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher$35;->this$0:Lnet/oneplus/h2launcher/Launcher;

    .line 4563
    invoke-static {v4}, Lnet/oneplus/h2launcher/Launcher;->access$2600(Lnet/oneplus/h2launcher/Launcher;)Ljava/lang/String;

    move-result-object v4

    .line 4562
    invoke-static {v2, v3, v4}, Lnet/oneplus/h2launcher/config/CustomInfoHelper;->getCurrentIconForComponent(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 4561
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4566
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$35;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$35;->this$0:Lnet/oneplus/h2launcher/Launcher;

    .line 4567
    invoke-static {v2}, Lnet/oneplus/h2launcher/Launcher;->access$2600(Lnet/oneplus/h2launcher/Launcher;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/config/CustomInfoHelper;->getDefaultLabelForComponent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4569
    .local v0, "originLable":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 4570
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$35;->val$appLabel:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lnet/oneplus/h2launcher/Launcher$35;->val$enableEditLabel:Z

    if-eqz v1, :cond_1

    .line 4571
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$35;->val$appLabel:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4572
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$35;->val$appLabel:Landroid/widget/EditText;

    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$35;->val$appLabel:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 4575
    :cond_1
    return-void
.end method
