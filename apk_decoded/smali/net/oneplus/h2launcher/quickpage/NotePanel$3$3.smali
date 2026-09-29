.class Lnet/oneplus/h2launcher/quickpage/NotePanel$3$3;
.super Ljava/lang/Object;
.source "NotePanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 206
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3$3;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 210
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3$3;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$3;

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1000(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3$3;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$3;

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1300(Lnet/oneplus/h2launcher/quickpage/NotePanel;)J

    move-result-wide v2

    .line 212
    .local v2, "reminderTime":J
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3$3;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$3;

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$600(Lnet/oneplus/h2launcher/quickpage/NotePanel;)J

    move-result-wide v4

    .line 214
    .local v4, "reminderId":J
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3$3;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$3;

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3$3;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$3;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/NotePanel$3;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    const-wide/16 v6, -0x1

    invoke-static {v1, v6, v7}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$602(Lnet/oneplus/h2launcher/quickpage/NotePanel;J)J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1302(Lnet/oneplus/h2launcher/quickpage/NotePanel;J)J

    .line 216
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3$3;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$3;

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3;->val$mQuickPage:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3$3;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$3;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/NotePanel$3;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1000(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->addNote(Ljava/lang/String;JJ)V

    .line 219
    .end local v2    # "reminderTime":J
    .end local v4    # "reminderId":J
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3$3;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$3;

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1000(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3$3;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$3;

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$800(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 221
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3$3;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$3;

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$302(Lnet/oneplus/h2launcher/quickpage/NotePanel;Z)Z

    .line 222
    return-void
.end method
