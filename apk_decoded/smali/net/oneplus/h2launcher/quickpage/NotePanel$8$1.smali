.class Lnet/oneplus/h2launcher/quickpage/NotePanel$8$1;
.super Ljava/lang/Object;
.source "NotePanel.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/NotePanel$8;->onDateSet(Landroid/widget/DatePicker;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$8;

.field final synthetic val$dayOfMonth:I

.field final synthetic val$monthOfYear:I

.field final synthetic val$year:I


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/NotePanel$8;III)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/quickpage/NotePanel$8;

    .prologue
    .line 516
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8$1;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$8;

    iput p2, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8$1;->val$year:I

    iput p3, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8$1;->val$monthOfYear:I

    iput p4, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8$1;->val$dayOfMonth:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 7
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    const/4 v6, 0x0

    .line 519
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8$1;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$8;

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8;->val$c:Ljava/util/Calendar;

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8$1;->val$year:I

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8$1;->val$monthOfYear:I

    iget v3, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8$1;->val$dayOfMonth:I

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 520
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8$1;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$8;

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1100(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 522
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8$1;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$8;

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8;->val$isNewMemo:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8$1;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$8;

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$600(Lnet/oneplus/h2launcher/quickpage/NotePanel;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 523
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8$1;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$8;

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8$1;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$8;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/NotePanel$8;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$600(Lnet/oneplus/h2launcher/quickpage/NotePanel;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$700(Lnet/oneplus/h2launcher/quickpage/NotePanel;J)V

    .line 526
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8$1;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$8;

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8$1;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$8;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/NotePanel$8;->val$c:Ljava/util/Calendar;

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8$1;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$8;

    iget-boolean v2, v2, Lnet/oneplus/h2launcher/quickpage/NotePanel$8;->val$isNewMemo:Z

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$2000(Lnet/oneplus/h2launcher/quickpage/NotePanel;Ljava/util/Calendar;Z)V

    .line 529
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8$1;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$8;

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8$1;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$8;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/NotePanel$8;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1000(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 530
    return-void
.end method
