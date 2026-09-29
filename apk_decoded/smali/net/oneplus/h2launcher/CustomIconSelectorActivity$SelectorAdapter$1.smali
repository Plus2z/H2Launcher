.class Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$1;
.super Landroid/os/AsyncTask;
.source "CustomIconSelectorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field drawable:Landroid/graphics/drawable/Drawable;

.field final synthetic this$1:Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;

.field final synthetic val$icon:Landroid/widget/ImageView;

.field final synthetic val$item:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;

    .prologue
    .line 390
    iput-object p1, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$1;->this$1:Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;

    iput-object p2, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$1;->val$icon:Landroid/widget/ImageView;

    iput-object p3, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$1;->val$item:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 395
    monitor-enter p0

    .line 397
    :try_start_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$1;->val$icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$1;->val$item:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$1;->this$1:Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;

    iget-object v0, v0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter;->this$0:Lnet/oneplus/h2launcher/CustomIconSelectorActivity;

    iget-object v1, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$1;->val$item:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity;->access$1000(Lnet/oneplus/h2launcher/CustomIconSelectorActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$1;->drawable:Landroid/graphics/drawable/Drawable;

    .line 400
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    iget-object v0, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$1;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 400
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 390
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$1;->doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 406
    if-eqz p1, :cond_0

    .line 407
    iget-object v0, p0, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$1;->val$icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 409
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 410
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 390
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/CustomIconSelectorActivity$SelectorAdapter$1;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
