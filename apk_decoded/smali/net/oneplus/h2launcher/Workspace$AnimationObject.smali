.class Lnet/oneplus/h2launcher/Workspace$AnimationObject;
.super Ljava/lang/Object;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimationObject"
.end annotation


# instance fields
.field mAnimationStartOffset:F

.field mAnimationStartTime:J

.field final synthetic this$0:Lnet/oneplus/h2launcher/Workspace;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Workspace;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Workspace;

    .prologue
    .line 1559
    iput-object p1, p0, Lnet/oneplus/h2launcher/Workspace$AnimationObject;->this$0:Lnet/oneplus/h2launcher/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
