.class Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$8;
.super Ljava/lang/Object;
.source "WelcomePanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->onWeatherUpdated(Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

.field final synthetic val$data:Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    .prologue
    .line 323
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$8;->this$0:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$8;->val$data:Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 326
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$8;->this$0:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->access$600(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 327
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$8;->this$0:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->access$600(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$8;->val$data:Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;

    iget v1, v1, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->weatherCode:I

    invoke-static {v1}, Lnet/oneplus/h2launcher/WeatherProvider;->getWeatherIconResourceId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 328
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$8;->this$0:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->access$700(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$8;->val$data:Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;

    iget-object v2, v2, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->weatherName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$8;->this$0:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->access$900(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$8;->val$data:Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;

    iget v2, v2, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->temperature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$8;->val$data:Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;

    iget-object v2, v2, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->temperatureUnit:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$8;->this$0:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->access$1000(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$8;->val$data:Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;

    iget-object v1, v1, Lnet/oneplus/h2launcher/WeatherProvider$WeatherData;->cityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$8;->this$0:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->access$1102(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;Z)Z

    .line 332
    return-void
.end method
