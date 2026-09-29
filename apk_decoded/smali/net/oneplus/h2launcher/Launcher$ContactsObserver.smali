.class Lnet/oneplus/h2launcher/Launcher$ContactsObserver;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Launcher;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Launcher;)V
    .locals 1

    .prologue
    .line 3711
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$ContactsObserver;->this$0:Lnet/oneplus/h2launcher/Launcher;

    .line 3712
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3713
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 3717
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 3718
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$ContactsObserver;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v0}, Lnet/oneplus/h2launcher/Launcher;->access$1700(Lnet/oneplus/h2launcher/Launcher;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->getContactsDb()V

    .line 3719
    return-void
.end method
