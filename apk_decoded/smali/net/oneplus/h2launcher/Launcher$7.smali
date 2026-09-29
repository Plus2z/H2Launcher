.class Lnet/oneplus/h2launcher/Launcher$7;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lnet/oneplus/h2launcher/Launcher$LauncherSearchCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Launcher;->setLauncherCallbacks(Lnet/oneplus/h2launcher/LauncherCallbacks;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mHotseatImportanceForAccessibility:I

.field private mHotseatImportanceStored:Z

.field private mWorkspaceImportanceForAccessibility:I

.field private mWorkspaceImportanceStored:Z

.field final synthetic this$0:Lnet/oneplus/h2launcher/Launcher;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Launcher;)V
    .locals 1
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    const/4 v0, 0x0

    .line 943
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$7;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 944
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher$7;->mWorkspaceImportanceStored:Z

    .line 945
    iput-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher$7;->mHotseatImportanceStored:Z

    .line 946
    iput v0, p0, Lnet/oneplus/h2launcher/Launcher$7;->mWorkspaceImportanceForAccessibility:I

    .line 948
    iput v0, p0, Lnet/oneplus/h2launcher/Launcher$7;->mHotseatImportanceForAccessibility:I

    return-void
.end method


# virtual methods
.method public onSearchOverlayClosed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 974
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher$7;->mWorkspaceImportanceStored:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$7;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$7;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    iget v1, p0, Lnet/oneplus/h2launcher/Launcher$7;->mWorkspaceImportanceForAccessibility:I

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Workspace;->setImportantForAccessibility(I)V

    .line 977
    :cond_0
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher$7;->mHotseatImportanceStored:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$7;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mHotseat:Lnet/oneplus/h2launcher/Hotseat;

    if-eqz v0, :cond_1

    .line 978
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$7;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mHotseat:Lnet/oneplus/h2launcher/Hotseat;

    iget v1, p0, Lnet/oneplus/h2launcher/Launcher$7;->mHotseatImportanceForAccessibility:I

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Hotseat;->setImportantForAccessibility(I)V

    .line 980
    :cond_1
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Launcher$7;->mWorkspaceImportanceStored:Z

    .line 981
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/Launcher$7;->mHotseatImportanceStored:Z

    .line 982
    return-void
.end method

.method public onSearchOverlayOpened()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 952
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher$7;->mWorkspaceImportanceStored:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/Launcher$7;->mHotseatImportanceStored:Z

    if-eqz v0, :cond_1

    .line 970
    :cond_0
    :goto_0
    return-void

    .line 957
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$7;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    if-eqz v0, :cond_2

    .line 958
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$7;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    .line 959
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->getImportantForAccessibility()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/Launcher$7;->mWorkspaceImportanceForAccessibility:I

    .line 960
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$7;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/Workspace;->setImportantForAccessibility(I)V

    .line 962
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/Launcher$7;->mWorkspaceImportanceStored:Z

    .line 964
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$7;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mHotseat:Lnet/oneplus/h2launcher/Hotseat;

    if-eqz v0, :cond_0

    .line 965
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$7;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mHotseat:Lnet/oneplus/h2launcher/Hotseat;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Hotseat;->getImportantForAccessibility()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/Launcher$7;->mHotseatImportanceForAccessibility:I

    .line 966
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$7;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mHotseat:Lnet/oneplus/h2launcher/Hotseat;

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/Hotseat;->setImportantForAccessibility(I)V

    .line 968
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/Launcher$7;->mHotseatImportanceStored:Z

    goto :goto_0
.end method
