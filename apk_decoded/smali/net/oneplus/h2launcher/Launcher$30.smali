.class Lnet/oneplus/h2launcher/Launcher$30;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Launcher;->onClickAppShortcut(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Launcher;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Launcher;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 4048
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$30;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iput-object p2, p0, Lnet/oneplus/h2launcher/Launcher$30;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 4050
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$30;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$30;->val$v:Landroid/view/View;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Launcher;->startAppShortcutOrInfoActivity(Landroid/view/View;)V

    .line 4051
    return-void
.end method
