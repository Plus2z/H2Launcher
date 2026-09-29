.class Lnet/oneplus/h2launcher/Launcher$23;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


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
    .line 2620
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$23;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2623
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2624
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2625
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$23;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iput-boolean v6, v1, Lnet/oneplus/h2launcher/Launcher;->mUserPresent:Z

    .line 2626
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$23;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v1, v1, Lnet/oneplus/h2launcher/Launcher;->mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/DragLayer;->clearAllResizeFrames()V

    .line 2627
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$23;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->updateAutoAdvanceState()V

    .line 2629
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$23;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v1, v1, Lnet/oneplus/h2launcher/Launcher;->mState:Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v2, Lnet/oneplus/h2launcher/Launcher$State;->SEARCH:Lnet/oneplus/h2launcher/Launcher$State;

    if-ne v1, v2, :cond_0

    .line 2630
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$23;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v1}, Lnet/oneplus/h2launcher/Launcher;->access$1700(Lnet/oneplus/h2launcher/Launcher;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchController;->hideGlobalSearchWithoutAnimation()V

    .line 2636
    :cond_0
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->isSimplifiedLayout()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$23;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v1, v1, Lnet/oneplus/h2launcher/Launcher;->mAppsView:Lnet/oneplus/h2launcher/allapps/AllAppsContainerView;

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$23;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v1, v1, Lnet/oneplus/h2launcher/Launcher;->mWidgetsView:Lnet/oneplus/h2launcher/widget/WidgetsContainerView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$23;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v1, v1, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    iget-wide v2, v1, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 2638
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$23;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1, v6}, Lnet/oneplus/h2launcher/Launcher;->showWorkspace(Z)V

    .line 2654
    :cond_2
    :goto_0
    const-string v1, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 2655
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2656
    :cond_3
    const-string v1, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2657
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$23;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

    move-result-object v1

    invoke-virtual {v1, v7}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->setUserForeground(Z)V

    .line 2659
    :cond_4
    invoke-static {}, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->getInstance()Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$23;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/wallpaper/H2BlurWallpaperEventHandler;->onUserSwitched(Landroid/content/Context;)V

    .line 2660
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$23;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v1}, Lnet/oneplus/h2launcher/Launcher;->access$1800(Lnet/oneplus/h2launcher/Launcher;)V

    .line 2664
    :cond_5
    :goto_1
    return-void

    .line 2640
    :cond_6
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2641
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$23;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iput-boolean v7, v1, Lnet/oneplus/h2launcher/Launcher;->mUserPresent:Z

    .line 2642
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$23;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->updateAutoAdvanceState()V

    goto :goto_0

    .line 2661
    :cond_7
    const-string v1, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2662
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$23;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;

    move-result-object v1

    invoke-virtual {v1, v6}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$Model;->setUserForeground(Z)V

    goto :goto_1
.end method
