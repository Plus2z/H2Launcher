.class Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DimmerBackground.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;

    .prologue
    .line 137
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 140
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->access$300(Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/DimmerBackground;->setVisibility(I)V

    .line 143
    :cond_0
    return-void
.end method
