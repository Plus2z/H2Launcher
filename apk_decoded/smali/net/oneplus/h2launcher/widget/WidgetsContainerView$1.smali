.class Lnet/oneplus/h2launcher/widget/WidgetsContainerView$1;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "WidgetsContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/widget/WidgetsContainerView;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/widget/WidgetsContainerView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/widget/WidgetsContainerView;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 109
    iput-object p1, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView$1;->this$0:Lnet/oneplus/h2launcher/widget/WidgetsContainerView;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getExtraLayoutSpace(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 3
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 112
    iget-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetsContainerView$1;->this$0:Lnet/oneplus/h2launcher/widget/WidgetsContainerView;

    iget-object v1, v1, Lnet/oneplus/h2launcher/widget/WidgetsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v0

    .line 113
    .local v0, "grid":Lnet/oneplus/h2launcher/DeviceProfile;
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->getExtraLayoutSpace(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    iget v2, v0, Lnet/oneplus/h2launcher/DeviceProfile;->availableHeightPx:I

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    return v1
.end method
