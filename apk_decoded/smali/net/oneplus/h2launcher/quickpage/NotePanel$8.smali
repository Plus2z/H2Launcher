.class Lnet/oneplus/h2launcher/quickpage/NotePanel$8;
.super Ljava/lang/Object;
.source "NotePanel.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


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

.field final synthetic val$c:Ljava/util/Calendar;

.field final synthetic val$cancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic val$isNewMemo:Z

.field final synthetic val$listener:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/NotePanel;Ljava/util/Calendar;ZLandroid/view/inputmethod/InputMethodManager;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/NotePanel;

    .prologue
    .line 510
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8;->val$c:Ljava/util/Calendar;

    iput-boolean p3, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8;->val$isNewMemo:Z

    iput-object p4, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iput-object p5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8;->val$cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    iput-object p6, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8;->val$listener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 8
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 514
    iget-object v7, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$100(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a02a5

    new-instance v3, Lnet/oneplus/h2launcher/quickpage/NotePanel$8$1;

    invoke-direct {v3, p0, p2, p3, p4}, Lnet/oneplus/h2launcher/quickpage/NotePanel$8$1;-><init>(Lnet/oneplus/h2launcher/quickpage/NotePanel$8;III)V

    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8;->val$c:Ljava/util/Calendar;

    const/16 v5, 0xb

    .line 531
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8;->val$c:Ljava/util/Calendar;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    .line 532
    invoke-static {v6}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$100(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 514
    invoke-static {v7, v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1902(Lnet/oneplus/h2launcher/quickpage/NotePanel;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 533
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1900(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8;->val$cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 534
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1900(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8;->val$listener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 535
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$8;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1900(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 536
    return-void
.end method
