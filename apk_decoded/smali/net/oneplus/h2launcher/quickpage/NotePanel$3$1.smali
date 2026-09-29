.class Lnet/oneplus/h2launcher/quickpage/NotePanel$3$1;
.super Ljava/lang/Object;
.source "NotePanel.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 172
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3$1;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 175
    if-eqz p2, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3$1;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$3;

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$800(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3$1;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$3;

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$3;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$800(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 179
    :cond_0
    return-void
.end method
