.class Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;
.super Lnet/oneplus/h2launcher/quickpage/rebound/SpringLooper;
.source "AndroidSpringLooperFactory.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChoreographerAndroidSpringLooper"
.end annotation


# instance fields
.field private final mChoreographer:Landroid/view/Choreographer;

.field private final mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private mLastTime:J

.field private mStarted:Z


# direct methods
.method public constructor <init>(Landroid/view/Choreographer;)V
    .locals 1
    .param p1, "choreographer"    # Landroid/view/Choreographer;

    .prologue
    .line 109
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/rebound/SpringLooper;-><init>()V

    .line 110
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mChoreographer:Landroid/view/Choreographer;

    .line 111
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;-><init>(Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 123
    return-void
.end method

.method static synthetic access$400(Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    .prologue
    .line 95
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mStarted:Z

    return v0
.end method

.method static synthetic access$500(Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;)J
    .locals 2
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    .prologue
    .line 95
    iget-wide v0, p0, Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mLastTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;J)J
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;
    .param p1, "x1"    # J

    .prologue
    .line 95
    iput-wide p1, p0, Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mLastTime:J

    return-wide p1
.end method

.method static synthetic access$600(Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;)Landroid/view/Choreographer$FrameCallback;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    .prologue
    .line 95
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    return-object v0
.end method

.method static synthetic access$700(Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;)Landroid/view/Choreographer;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    .prologue
    .line 95
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method public static create()Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;-><init>(Landroid/view/Choreographer;)V

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 2

    .prologue
    .line 127
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mStarted:Z

    if-eqz v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 130
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mStarted:Z

    .line 131
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mLastTime:J

    .line 132
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 133
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mStarted:Z

    .line 139
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 140
    return-void
.end method
