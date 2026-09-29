.class Lnet/oneplus/h2launcher/Launcher$58;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Launcher;->bindComponentsRemoved(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/compat/UserHandleCompat;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Launcher;

.field final synthetic val$appInfos:Ljava/util/ArrayList;

.field final synthetic val$packageNames:Ljava/util/ArrayList;

.field final synthetic val$reason:I

.field final synthetic val$shortcutInfos:Ljava/util/ArrayList;

.field final synthetic val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/compat/UserHandleCompat;I)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 6841
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$58;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iput-object p2, p0, Lnet/oneplus/h2launcher/Launcher$58;->val$packageNames:Ljava/util/ArrayList;

    iput-object p3, p0, Lnet/oneplus/h2launcher/Launcher$58;->val$appInfos:Ljava/util/ArrayList;

    iput-object p4, p0, Lnet/oneplus/h2launcher/Launcher$58;->val$shortcutInfos:Ljava/util/ArrayList;

    iput-object p5, p0, Lnet/oneplus/h2launcher/Launcher$58;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    iput p6, p0, Lnet/oneplus/h2launcher/Launcher$58;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 6843
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$58;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$58;->val$packageNames:Ljava/util/ArrayList;

    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$58;->val$appInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher$58;->val$shortcutInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher$58;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    iget v5, p0, Lnet/oneplus/h2launcher/Launcher$58;->val$reason:I

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/Launcher;->bindComponentsRemoved(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/compat/UserHandleCompat;I)V

    .line 6844
    return-void
.end method
