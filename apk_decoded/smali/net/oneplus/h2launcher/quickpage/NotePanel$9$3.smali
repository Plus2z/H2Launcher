.class Lnet/oneplus/h2launcher/quickpage/NotePanel$9$3;
.super Ljava/lang/Object;
.source "NotePanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/NotePanel$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$9;

.field final synthetic val$result:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/NotePanel$9;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/quickpage/NotePanel$9;

    .prologue
    .line 620
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9$3;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$9;

    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9$3;->val$result:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 623
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9$3;->val$result:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 625
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9$3;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$9;

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$100(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0080

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 626
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9$3;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$9;

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v0, v8}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$502(Lnet/oneplus/h2launcher/quickpage/NotePanel;Z)Z

    .line 646
    :goto_0
    return-void

    .line 629
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9$3;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$9;

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$100(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0089

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 630
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 633
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9$3;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$9;

    iget-boolean v0, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9;->val$isNewMemo:Z

    if-eqz v0, :cond_1

    .line 634
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9$3;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$9;

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    .line 635
    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1300(Lnet/oneplus/h2launcher/quickpage/NotePanel;)J

    move-result-wide v0

    .line 636
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/high16 v6, 0x80000

    .line 634
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    .line 637
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 638
    .local v7, "time":Ljava/lang/String;
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9$3;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$9;

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1100(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 639
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9$3;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$9;

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1100(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 641
    .end local v7    # "time":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9$3;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$9;

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$502(Lnet/oneplus/h2launcher/quickpage/NotePanel;Z)Z

    .line 643
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9$3;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$9;

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->updateReminderVisibility()V

    .line 644
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9$3;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$9;

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->notifyItemContentChanged()V

    goto :goto_0
.end method
