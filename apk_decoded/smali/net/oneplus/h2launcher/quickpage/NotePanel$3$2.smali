.class Lnet/oneplus/h2launcher/quickpage/NotePanel$3$2;
.super Ljava/lang/Object;
.source "NotePanel.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/NotePanel$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$3;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/NotePanel$3;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/quickpage/NotePanel$3;

    .prologue
    .line 182
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3$2;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 193
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3$2;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$3;

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1100(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/widget/Button;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 195
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3$2;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$3;

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1100(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 196
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3$2;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$3;

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1200(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0b001a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 202
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3$2;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$3;

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1100(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/widget/Button;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 199
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3$2;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$3;

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1100(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 200
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3$2;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$3;

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1200(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0b0020

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 185
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 189
    return-void
.end method
