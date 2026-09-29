.class Lnet/oneplus/h2launcher/quickpage/NotePanel$9$2;
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


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/NotePanel$9;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/quickpage/NotePanel$9;

    .prologue
    .line 601
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9$2;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 604
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9$2;->this$1:Lnet/oneplus/h2launcher/quickpage/NotePanel$9;

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$100(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0080

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 605
    return-void
.end method
