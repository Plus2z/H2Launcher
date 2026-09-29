.class Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$3;
.super Ljava/lang/Object;
.source "CustomizationsContainerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 189
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$3;->this$0:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 192
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView$3;->this$0:Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;

    iget-object v0, v0, Lnet/oneplus/h2launcher/customizations/CustomizationsContainerView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->onBackPressed()V

    .line 193
    return-void
.end method
