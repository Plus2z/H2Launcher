.class Lnet/oneplus/h2launcher/WeatherProvider$1;
.super Ljava/lang/Object;
.source "WeatherProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/WeatherProvider;->queryWeatherInformation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/WeatherProvider;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/WeatherProvider;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/WeatherProvider;

    .prologue
    .line 312
    iput-object p1, p0, Lnet/oneplus/h2launcher/WeatherProvider$1;->this$0:Lnet/oneplus/h2launcher/WeatherProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 314
    invoke-static {}, Lnet/oneplus/h2launcher/WeatherProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "begin querying weather info"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lnet/oneplus/h2launcher/WeatherProvider$1;->this$0:Lnet/oneplus/h2launcher/WeatherProvider;

    invoke-static {v0}, Lnet/oneplus/h2launcher/WeatherProvider;->access$200(Lnet/oneplus/h2launcher/WeatherProvider;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/WeatherProvider$1;->this$0:Lnet/oneplus/h2launcher/WeatherProvider;

    invoke-static {v1}, Lnet/oneplus/h2launcher/WeatherProvider;->access$100(Lnet/oneplus/h2launcher/WeatherProvider;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 317
    .local v6, "cursor":Landroid/database/Cursor;
    iget-object v0, p0, Lnet/oneplus/h2launcher/WeatherProvider$1;->this$0:Lnet/oneplus/h2launcher/WeatherProvider;

    invoke-static {v0, v6}, Lnet/oneplus/h2launcher/WeatherProvider;->access$300(Lnet/oneplus/h2launcher/WeatherProvider;Landroid/database/Cursor;)V

    .line 318
    invoke-static {}, Lnet/oneplus/h2launcher/WeatherProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "finish querying weather info"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    return-void
.end method
