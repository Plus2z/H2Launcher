.class Lnet/oneplus/h2launcher/quickpage/NotePanel$1;
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


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/NotePanel;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/NotePanel;

    .prologue
    .line 120
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$1;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 123
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$1;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$1;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$100(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.WRITE_CALENDAR"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/PermissionUtils;->hasGrantedPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$002(Lnet/oneplus/h2launcher/quickpage/NotePanel;Z)Z

    .line 125
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$1;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$000(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$1;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$200(Lnet/oneplus/h2launcher/quickpage/NotePanel;Z)V

    .line 133
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$1;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$100(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    const-string v1, "android.permission.WRITE_CALENDAR"

    const/16 v2, 0xc8

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/util/PermissionUtils;->requestPermission(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 131
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$1;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$302(Lnet/oneplus/h2launcher/quickpage/NotePanel;Z)Z

    goto :goto_0
.end method
