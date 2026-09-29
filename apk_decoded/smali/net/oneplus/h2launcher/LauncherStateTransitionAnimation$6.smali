.class Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$6;
.super Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;
.source "LauncherStateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;->startAnimationToWallpapers(Lnet/oneplus/h2launcher/Workspace$State;ZIILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    .prologue
    .line 340
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$6;->this$0:Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation;

    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaterialRevealViewFinalAlpha(Landroid/view/View;)F
    .locals 1
    .param p1, "revealView"    # Landroid/view/View;

    .prologue
    .line 343
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method isContentViewAlphaEnabled()Z
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x0

    return v0
.end method
