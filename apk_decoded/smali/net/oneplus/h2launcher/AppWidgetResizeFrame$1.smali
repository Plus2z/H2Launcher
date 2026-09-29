.class Lnet/oneplus/h2launcher/AppWidgetResizeFrame$1;
.super Ljava/lang/Object;
.source "AppWidgetResizeFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->onTouchUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/AppWidgetResizeFrame;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/AppWidgetResizeFrame;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/AppWidgetResizeFrame;

    .prologue
    .line 389
    iput-object p1, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame$1;->this$0:Lnet/oneplus/h2launcher/AppWidgetResizeFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame$1;->this$0:Lnet/oneplus/h2launcher/AppWidgetResizeFrame;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->snapToWidget(Z)V

    .line 393
    return-void
.end method
