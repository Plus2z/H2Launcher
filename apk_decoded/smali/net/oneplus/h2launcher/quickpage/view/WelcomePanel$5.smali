.class Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$5;
.super Ljava/lang/Object;
.source "WelcomePanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->configurePanel(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

.field final synthetic val$parent:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

.field final synthetic val$weatherEnabled:Z


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;ZLnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    .prologue
    .line 146
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$5;->this$0:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    iput-boolean p2, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$5;->val$weatherEnabled:Z

    iput-object p3, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$5;->val$parent:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 149
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$5;->val$weatherEnabled:Z

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$5;->this$0:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$5;->val$parent:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->launchWeatherAp(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-static {}, Lnet/oneplus/h2launcher/util/AnalyticHelper;->get()Lnet/oneplus/h2launcher/util/AnalyticHelper;

    move-result-object v0

    const-string v1, "launcher.shelf"

    const-string v2, "shelf_weather_click"

    const-string v3, "1"

    invoke-virtual {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/util/AnalyticHelper;->putAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_0
    return-void
.end method
