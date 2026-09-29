.class public Lnet/oneplus/h2launcher/DoubleTapTouchListener;
.super Ljava/lang/Object;
.source "DoubleTapTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/DoubleTapTouchListener$OnDoubleTapSettingsChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mGesture:Landroid/view/GestureDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lnet/oneplus/h2launcher/DoubleTapTouchListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/DoubleTapTouchListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lnet/oneplus/h2launcher/Launcher;)V
    .locals 2
    .param p1, "launcher"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lnet/oneplus/h2launcher/DoubleTapSleepGestureListener;

    invoke-direct {v1, p1}, Lnet/oneplus/h2launcher/DoubleTapSleepGestureListener;-><init>(Lnet/oneplus/h2launcher/Launcher;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/DoubleTapTouchListener;->mGesture:Landroid/view/GestureDetector;

    .line 48
    return-void
.end method

.method public constructor <init>(Lnet/oneplus/h2launcher/Launcher;Lnet/oneplus/h2launcher/Workspace;)V
    .locals 2
    .param p1, "launcher"    # Lnet/oneplus/h2launcher/Launcher;
    .param p2, "workspace"    # Lnet/oneplus/h2launcher/Workspace;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lnet/oneplus/h2launcher/DoubleTapSleepGestureListener;

    invoke-direct {v1, p1, p2}, Lnet/oneplus/h2launcher/DoubleTapSleepGestureListener;-><init>(Lnet/oneplus/h2launcher/Launcher;Lnet/oneplus/h2launcher/Workspace;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/DoubleTapTouchListener;->mGesture:Landroid/view/GestureDetector;

    .line 52
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 56
    iget-object v0, p0, Lnet/oneplus/h2launcher/DoubleTapTouchListener;->mGesture:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
