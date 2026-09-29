.class Lnet/oneplus/h2launcher/customizations/DragHelper$2;
.super Ljava/lang/Object;
.source "DragHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/DragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/DragHelper;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/DragHelper;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/DragHelper;

    .prologue
    .line 37
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/DragHelper$2;->this$0:Lnet/oneplus/h2launcher/customizations/DragHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/DragHelper$2;->this$0:Lnet/oneplus/h2launcher/customizations/DragHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/customizations/DragHelper;->setDragState(I)V

    .line 40
    return-void
.end method
