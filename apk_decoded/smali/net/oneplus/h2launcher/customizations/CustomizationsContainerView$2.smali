.class Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$2;
.super Ljava/lang/Object;
.source "CustomizationsContainerView.java"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    .prologue
    .line 176
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$2;->this$0:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 1
    .param p1, "stub"    # Landroid/view/ViewStub;
    .param p2, "inflated"    # Landroid/view/View;

    .prologue
    .line 179
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$2;->this$0:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    check-cast p2, Landroid/widget/FrameLayout;

    .end local p2    # "inflated":Landroid/view/View;
    invoke-static {v0, p2}, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->access$000(Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;Landroid/widget/FrameLayout;)V

    .line 180
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    .line 181
    return-void
.end method
