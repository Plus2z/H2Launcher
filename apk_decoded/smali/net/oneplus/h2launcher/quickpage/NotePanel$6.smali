.class Lnet/oneplus/h2launcher/quickpage/NotePanel$6;
.super Ljava/lang/Object;
.source "NotePanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/NotePanel;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/NotePanel;

    .prologue
    .line 495
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$6;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 498
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$6;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->updateReminderVisibility()V

    .line 499
    return-void
.end method
