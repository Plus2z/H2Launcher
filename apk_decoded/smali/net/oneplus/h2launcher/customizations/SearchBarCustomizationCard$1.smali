.class Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard$1;
.super Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;
.source "SearchBarCustomizationCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;->getSaveCustomizationTask()Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;

.field final synthetic val$searchBarStyle:Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;Ljava/lang/String;Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard$1;->this$0:Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;

    iput-object p3, p0, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard$1;->val$searchBarStyle:Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;-><init>(Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 84
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard$1;->this$0:Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard$1;->val$searchBarStyle:Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->setSearchBarStyle(Landroid/content/Context;Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;)V

    .line 87
    const-string v0, "0"

    .line 88
    .local v0, "style":Ljava/lang/String;
    sget-object v1, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard$2;->$SwitchMap$net$oneplus$h2launcher$config$PreferencesHelper$SearchBarStyle:[I

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/SearchBarCustomizationCard$1;->val$searchBarStyle:Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 99
    :goto_0
    invoke-static {}, Lnet/oneplus/h2launcher/util/AnalyticHelper;->get()Lnet/oneplus/h2launcher/util/AnalyticHelper;

    move-result-object v1

    const-string v2, "launcher.options"

    const-string v3, "search_bar"

    invoke-virtual {v1, v2, v3, v0}, Lnet/oneplus/h2launcher/util/AnalyticHelper;->putAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void

    .line 90
    :pswitch_0
    const-string v0, "0"

    .line 91
    goto :goto_0

    .line 93
    :pswitch_1
    const-string v0, "1"

    .line 94
    goto :goto_0

    .line 96
    :pswitch_2
    const-string v0, "2"

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
