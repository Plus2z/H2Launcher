.class Lnet/oneplus/h2launcher/Launcher$53;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Launcher;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Launcher;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 6713
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$53;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 6715
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$53;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$53;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v1, v1, Lnet/oneplus/h2launcher/Launcher;->mTmpAppsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Launcher;->bindAllApplications(Ljava/util/ArrayList;)V

    .line 6716
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$53;->this$0:Lnet/oneplus/h2launcher/Launcher;

    const/4 v1, 0x0

    iput-object v1, v0, Lnet/oneplus/h2launcher/Launcher;->mTmpAppsList:Ljava/util/ArrayList;

    .line 6717
    return-void
.end method
