.class Lnet/oneplus/h2launcher/quickpage/NotePanel$3;
.super Ljava/lang/Object;
.source "NotePanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/NotePanel;-><init>(Landroid/content/Context;Ljava/lang/String;JJJIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

.field final synthetic val$mQuickPage:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/NotePanel;Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/NotePanel;

    .prologue
    .line 166
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3;->val$mQuickPage:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 169
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$800(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 171
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1000(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$900(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1000(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lnet/oneplus/h2launcher/quickpage/NotePanel$3$1;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/quickpage/NotePanel$3$1;-><init>(Lnet/oneplus/h2launcher/quickpage/NotePanel$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 181
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1000(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 182
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1000(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lnet/oneplus/h2launcher/quickpage/NotePanel$3$2;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/quickpage/NotePanel$3$2;-><init>(Lnet/oneplus/h2launcher/quickpage/NotePanel$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 205
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1200(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0b001a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 206
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1200(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lnet/oneplus/h2launcher/quickpage/NotePanel$3$3;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/quickpage/NotePanel$3$3;-><init>(Lnet/oneplus/h2launcher/quickpage/NotePanel$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1100(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/widget/Button;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 226
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1100(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 227
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1100(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 228
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1100(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0b0087

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 229
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1100(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lnet/oneplus/h2launcher/quickpage/NotePanel$3$4;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/quickpage/NotePanel$3$4;-><init>(Lnet/oneplus/h2launcher/quickpage/NotePanel$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    return-void
.end method
