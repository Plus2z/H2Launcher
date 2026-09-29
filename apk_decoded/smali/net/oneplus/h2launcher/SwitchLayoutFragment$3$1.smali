.class Lnet/oneplus/h2launcher/SwitchLayoutFragment$3$1;
.super Ljava/lang/Object;
.source "SwitchLayoutFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/SwitchLayoutFragment$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/SwitchLayoutFragment$3;

.field final synthetic val$color:I


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/SwitchLayoutFragment$3;I)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/SwitchLayoutFragment$3;

    .prologue
    .line 141
    iput-object p1, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment$3$1;->this$1:Lnet/oneplus/h2launcher/SwitchLayoutFragment$3;

    iput p2, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment$3$1;->val$color:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment$3$1;->this$1:Lnet/oneplus/h2launcher/SwitchLayoutFragment$3;

    iget-object v0, v0, Lnet/oneplus/h2launcher/SwitchLayoutFragment$3;->this$0:Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    invoke-static {v0}, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->access$300(Lnet/oneplus/h2launcher/SwitchLayoutFragment;)Lnet/oneplus/h2launcher/customizations/WallpaperBackground;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment$3$1;->val$color:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/customizations/WallpaperBackground;->setColor(IZ)V

    .line 145
    return-void
.end method
