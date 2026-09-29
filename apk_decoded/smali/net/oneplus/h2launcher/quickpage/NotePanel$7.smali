.class Lnet/oneplus/h2launcher/quickpage/NotePanel$7;
.super Ljava/lang/Object;
.source "NotePanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/NotePanel;->showDateSelectionDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/NotePanel;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/NotePanel;

    .prologue
    .line 501
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$7;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$7;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 505
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$7;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$7;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1000(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 506
    return-void
.end method
