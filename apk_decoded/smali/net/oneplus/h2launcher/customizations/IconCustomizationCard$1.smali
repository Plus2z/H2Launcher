.class Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$1;
.super Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;
.source "IconCustomizationCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->getSaveCustomizationTask()Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 276
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$1;->this$0:Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;

    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;-><init>(Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 279
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$1;->this$0:Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;

    invoke-static {v3}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->access$000(Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 280
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 281
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$1;->this$0:Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;

    invoke-static {v3}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->access$100(Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 282
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$1;->this$0:Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;

    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$1;->this$0:Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;

    invoke-static {v4}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->access$300(Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->access$202(Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;Ljava/lang/String;)Ljava/lang/String;

    .line 283
    const-string v3, "icon_pack_saved"

    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$1;->this$0:Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;

    invoke-static {v4}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->access$200(Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 284
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 287
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->access$400()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$1;->this$0:Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;

    .line 288
    invoke-static {v4}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->access$200(Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "0"

    .line 289
    .local v2, "packType":Ljava/lang/String;
    :goto_0
    const-string v3, "icon_pack"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .end local v2    # "packType":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$1;->this$0:Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;

    invoke-static {v3}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->access$500(Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 293
    const-string v3, "current_icon_size"

    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$1;->this$0:Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;

    invoke-static {v4}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->access$600(Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;)I

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 294
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 297
    const-string v3, "icon_size"

    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$1;->this$0:Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;

    .line 298
    invoke-static {v4}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;->access$600(Lnet/oneplus/h2launcher/customizations/IconCustomizationCard;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 297
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :cond_1
    invoke-static {}, Lnet/oneplus/h2launcher/util/AnalyticHelper;->get()Lnet/oneplus/h2launcher/util/AnalyticHelper;

    move-result-object v3

    const-string v4, "launcher.options"

    invoke-virtual {v3, v4, v0}, Lnet/oneplus/h2launcher/util/AnalyticHelper;->putAnalytics(Ljava/lang/String;Ljava/util/Map;)V

    .line 303
    return-void

    .line 288
    :cond_2
    const-string v2, "1"

    goto :goto_0
.end method
