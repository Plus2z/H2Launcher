.class Lnet/oneplus/h2launcher/LauncherClings$7;
.super Ljava/lang/Object;
.source "LauncherClings.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherClings;->showWallpapersCling()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/LauncherClings;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherClings;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/LauncherClings;

    .prologue
    .line 336
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherClings$7;->this$0:Lnet/oneplus/h2launcher/LauncherClings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 340
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherClings$7;->this$0:Lnet/oneplus/h2launcher/LauncherClings;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherClings;->dismissWallpapersCling()V

    .line 341
    const/4 v0, 0x1

    return v0
.end method
