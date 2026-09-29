.class Lnet/oneplus/h2launcher/Folder$5;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Lnet/oneplus/h2launcher/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Folder;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Folder;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Folder;

    .prologue
    .line 602
    iput-object p1, p0, Lnet/oneplus/h2launcher/Folder$5;->this$0:Lnet/oneplus/h2launcher/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lnet/oneplus/h2launcher/Alarm;)V
    .locals 3
    .param p1, "alarm"    # Lnet/oneplus/h2launcher/Alarm;

    .prologue
    .line 604
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder$5;->this$0:Lnet/oneplus/h2launcher/Folder;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Folder;->mContent:Lnet/oneplus/h2launcher/FolderContent;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Folder$5;->this$0:Lnet/oneplus/h2launcher/Folder;

    iget v1, v1, Lnet/oneplus/h2launcher/Folder;->mEmptyCellRank:I

    iget-object v2, p0, Lnet/oneplus/h2launcher/Folder$5;->this$0:Lnet/oneplus/h2launcher/Folder;

    iget v2, v2, Lnet/oneplus/h2launcher/Folder;->mTargetRank:I

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/FolderContent;->realTimeReorder(II)V

    .line 605
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder$5;->this$0:Lnet/oneplus/h2launcher/Folder;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Folder$5;->this$0:Lnet/oneplus/h2launcher/Folder;

    iget v1, v1, Lnet/oneplus/h2launcher/Folder;->mTargetRank:I

    iput v1, v0, Lnet/oneplus/h2launcher/Folder;->mEmptyCellRank:I

    .line 606
    return-void
.end method
