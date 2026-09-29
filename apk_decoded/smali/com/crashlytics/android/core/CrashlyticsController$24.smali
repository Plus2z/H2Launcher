.class Lcom/crashlytics/android/core/CrashlyticsController$24;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Lcom/crashlytics/android/core/CrashlyticsController$FileOutputStreamWriteAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/CrashlyticsController;->writeSessionDevice(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/core/CrashlyticsController;

.field final synthetic val$arch:I

.field final synthetic val$availableProcessors:I

.field final synthetic val$diskSpace:J

.field final synthetic val$ids:Ljava/util/Map;

.field final synthetic val$isEmulator:Z

.field final synthetic val$state:I

.field final synthetic val$totalRam:J


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/CrashlyticsController;IIJJZLjava/util/Map;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/crashlytics/android/core/CrashlyticsController;

    .prologue
    .line 1268
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsController$24;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    iput p2, p0, Lcom/crashlytics/android/core/CrashlyticsController$24;->val$arch:I

    iput p3, p0, Lcom/crashlytics/android/core/CrashlyticsController$24;->val$availableProcessors:I

    iput-wide p4, p0, Lcom/crashlytics/android/core/CrashlyticsController$24;->val$totalRam:J

    iput-wide p6, p0, Lcom/crashlytics/android/core/CrashlyticsController$24;->val$diskSpace:J

    iput-boolean p8, p0, Lcom/crashlytics/android/core/CrashlyticsController$24;->val$isEmulator:Z

    iput-object p9, p0, Lcom/crashlytics/android/core/CrashlyticsController$24;->val$ids:Ljava/util/Map;

    iput p10, p0, Lcom/crashlytics/android/core/CrashlyticsController$24;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/FileOutputStream;)V
    .locals 2
    .param p1, "arg"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1271
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Lcom/crashlytics/android/core/CrashlyticsController$24$1;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/CrashlyticsController$24$1;-><init>(Lcom/crashlytics/android/core/CrashlyticsController$24;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1284
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1271
    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1285
    return-void
.end method
