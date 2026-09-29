.class public Lnet/oneplus/h2launcher/SpringLoadedDragController;
.super Ljava/lang/Object;
.source "SpringLoadedDragController.java"

# interfaces
.implements Lnet/oneplus/h2launcher/OnAlarmListener;


# instance fields
.field final ENTER_SPRING_LOAD_CANCEL_HOVER_TIME:J

.field final ENTER_SPRING_LOAD_HOVER_TIME:J

.field final EXIT_SPRING_LOAD_HOVER_TIME:J

.field mAlarm:Lnet/oneplus/h2launcher/Alarm;

.field private mLauncher:Lnet/oneplus/h2launcher/Launcher;

.field private mScreen:Lnet/oneplus/h2launcher/CellLayout;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/Launcher;)V
    .locals 2
    .param p1, "launcher"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lnet/oneplus/h2launcher/SpringLoadedDragController;->ENTER_SPRING_LOAD_HOVER_TIME:J

    .line 22
    const-wide/16 v0, 0x3b6

    iput-wide v0, p0, Lnet/oneplus/h2launcher/SpringLoadedDragController;->ENTER_SPRING_LOAD_CANCEL_HOVER_TIME:J

    .line 23
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lnet/oneplus/h2launcher/SpringLoadedDragController;->EXIT_SPRING_LOAD_HOVER_TIME:J

    .line 32
    iput-object p1, p0, Lnet/oneplus/h2launcher/SpringLoadedDragController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 33
    new-instance v0, Lnet/oneplus/h2launcher/Alarm;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/Alarm;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/SpringLoadedDragController;->mAlarm:Lnet/oneplus/h2launcher/Alarm;

    .line 34
    iget-object v0, p0, Lnet/oneplus/h2launcher/SpringLoadedDragController;->mAlarm:Lnet/oneplus/h2launcher/Alarm;

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/Alarm;->setOnAlarmListener(Lnet/oneplus/h2launcher/OnAlarmListener;)V

    .line 35
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lnet/oneplus/h2launcher/SpringLoadedDragController;->mAlarm:Lnet/oneplus/h2launcher/Alarm;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Alarm;->cancelAlarm()V

    .line 39
    return-void
.end method

.method public onAlarm(Lnet/oneplus/h2launcher/Alarm;)V
    .locals 3
    .param p1, "alarm"    # Lnet/oneplus/h2launcher/Alarm;

    .prologue
    .line 51
    iget-object v2, p0, Lnet/oneplus/h2launcher/SpringLoadedDragController;->mScreen:Lnet/oneplus/h2launcher/CellLayout;

    if-eqz v2, :cond_1

    .line 53
    iget-object v2, p0, Lnet/oneplus/h2launcher/SpringLoadedDragController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v1

    .line 54
    .local v1, "w":Lnet/oneplus/h2launcher/Workspace;
    iget-object v2, p0, Lnet/oneplus/h2launcher/SpringLoadedDragController;->mScreen:Lnet/oneplus/h2launcher/CellLayout;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 55
    .local v0, "page":I
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->getCurrentPage()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 56
    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/Workspace;->snapToPage(I)V

    .line 61
    .end local v0    # "page":I
    .end local v1    # "w":Lnet/oneplus/h2launcher/Workspace;
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/SpringLoadedDragController;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getDragController()Lnet/oneplus/h2launcher/DragController;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/DragController;->cancelDrag()V

    goto :goto_0
.end method

.method public setAlarm(Lnet/oneplus/h2launcher/CellLayout;)V
    .locals 3
    .param p1, "cl"    # Lnet/oneplus/h2launcher/CellLayout;

    .prologue
    .line 43
    iget-object v0, p0, Lnet/oneplus/h2launcher/SpringLoadedDragController;->mAlarm:Lnet/oneplus/h2launcher/Alarm;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Alarm;->cancelAlarm()V

    .line 44
    iget-object v2, p0, Lnet/oneplus/h2launcher/SpringLoadedDragController;->mAlarm:Lnet/oneplus/h2launcher/Alarm;

    if-nez p1, :cond_0

    const-wide/16 v0, 0x3b6

    :goto_0
    invoke-virtual {v2, v0, v1}, Lnet/oneplus/h2launcher/Alarm;->setAlarm(J)V

    .line 46
    iput-object p1, p0, Lnet/oneplus/h2launcher/SpringLoadedDragController;->mScreen:Lnet/oneplus/h2launcher/CellLayout;

    .line 47
    return-void

    .line 44
    :cond_0
    const-wide/16 v0, 0x1f4

    goto :goto_0
.end method
