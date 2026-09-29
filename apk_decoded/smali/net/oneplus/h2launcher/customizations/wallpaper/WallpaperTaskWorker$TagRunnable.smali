.class Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;
.super Ljava/lang/Object;
.source "WallpaperTaskWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TagRunnable"
.end annotation


# instance fields
.field mCallStack:Ljava/lang/String;

.field public mPriority:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;

.field mRunnable:Ljava/lang/Runnable;

.field public mTag:J

.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;JLnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;Ljava/lang/Runnable;)V
    .locals 2
    .param p2, "tag"    # J
    .param p4, "priority"    # Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;
    .param p5, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 152
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-wide p2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;->mTag:J

    .line 154
    iput-object p4, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;->mPriority:Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$Priority;

    .line 155
    iput-object p5, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;->mRunnable:Ljava/lang/Runnable;

    .line 156
    const/16 v0, 0xa

    invoke-static {v0}, Lnet/oneplus/h2launcher/util/Logger;->getCallStack(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;->mCallStack:Ljava/lang/String;

    .line 157
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/WallpaperTaskWorker$TagRunnable;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 162
    return-void
.end method
