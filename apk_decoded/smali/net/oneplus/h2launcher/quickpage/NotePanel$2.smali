.class Lnet/oneplus/h2launcher/quickpage/NotePanel$2;
.super Ljava/lang/Object;
.source "NotePanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/NotePanel;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/NotePanel;

    .prologue
    .line 151
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$2;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 155
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$2;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$400(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "edit dialog canceled"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$2;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$500(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$2;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$600(Lnet/oneplus/h2launcher/quickpage/NotePanel;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 157
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$2;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$2;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$600(Lnet/oneplus/h2launcher/quickpage/NotePanel;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$700(Lnet/oneplus/h2launcher/quickpage/NotePanel;J)V

    .line 158
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$2;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$502(Lnet/oneplus/h2launcher/quickpage/NotePanel;Z)Z

    .line 159
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$2;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->updateReminderVisibility()V

    .line 161
    :cond_0
    return-void
.end method
