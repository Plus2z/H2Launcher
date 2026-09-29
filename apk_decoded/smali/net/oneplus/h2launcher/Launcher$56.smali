.class Lnet/oneplus/h2launcher/Launcher$56;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Launcher;->bindShortcutsChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Launcher;

.field final synthetic val$removed:Ljava/util/ArrayList;

.field final synthetic val$updated:Ljava/util/ArrayList;

.field final synthetic val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 6779
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$56;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iput-object p2, p0, Lnet/oneplus/h2launcher/Launcher$56;->val$updated:Ljava/util/ArrayList;

    iput-object p3, p0, Lnet/oneplus/h2launcher/Launcher$56;->val$removed:Ljava/util/ArrayList;

    iput-object p4, p0, Lnet/oneplus/h2launcher/Launcher$56;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 6781
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$56;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$56;->val$updated:Ljava/util/ArrayList;

    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$56;->val$removed:Ljava/util/ArrayList;

    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher$56;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/Launcher;->bindShortcutsChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 6782
    return-void
.end method
