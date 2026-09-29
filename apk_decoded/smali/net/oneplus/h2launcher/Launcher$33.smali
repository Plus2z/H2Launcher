.class Lnet/oneplus/h2launcher/Launcher$33;
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

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Launcher;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 4510
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$33;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iput-object p2, p0, Lnet/oneplus/h2launcher/Launcher$33;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 4513
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$33;->this$0:Lnet/oneplus/h2launcher/Launcher;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 4514
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 4515
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$33;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$33;->val$packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/Launcher;->access$2100(Lnet/oneplus/h2launcher/Launcher;Ljava/lang/String;)V

    .line 4516
    return-void
.end method
