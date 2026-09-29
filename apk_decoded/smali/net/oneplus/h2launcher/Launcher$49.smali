.class Lnet/oneplus/h2launcher/Launcher$49;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Launcher;->bindAppWidget(Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Launcher;

.field final synthetic val$item:Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Launcher;Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 6363
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$49;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iput-object p2, p0, Lnet/oneplus/h2launcher/Launcher$49;->val$item:Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 6365
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$49;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$49;->val$item:Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Launcher;->bindAppWidget(Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;)V

    .line 6366
    return-void
.end method
