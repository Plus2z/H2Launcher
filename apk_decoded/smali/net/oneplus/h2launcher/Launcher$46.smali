.class Lnet/oneplus/h2launcher/Launcher$46;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Launcher;->bindItems(Ljava/util/ArrayList;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Launcher;

.field final synthetic val$anim:Landroid/animation/AnimatorSet;

.field final synthetic val$bounceAnimators:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Launcher;Landroid/animation/AnimatorSet;Ljava/util/Collection;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 6313
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$46;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iput-object p2, p0, Lnet/oneplus/h2launcher/Launcher$46;->val$anim:Landroid/animation/AnimatorSet;

    iput-object p3, p0, Lnet/oneplus/h2launcher/Launcher$46;->val$bounceAnimators:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 6315
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$46;->val$anim:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$46;->val$bounceAnimators:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 6316
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$46;->val$anim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 6317
    return-void
.end method
