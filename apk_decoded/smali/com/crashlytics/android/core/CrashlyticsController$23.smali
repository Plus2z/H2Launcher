.class Lcom/crashlytics/android/core/CrashlyticsController$23;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Lcom/crashlytics/android/core/CrashlyticsController$CodedOutputStreamWriteAction;


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
    .line 1247
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsController$23;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    iput p2, p0, Lcom/crashlytics/android/core/CrashlyticsController$23;->val$arch:I

    iput p3, p0, Lcom/crashlytics/android/core/CrashlyticsController$23;->val$availableProcessors:I

    iput-wide p4, p0, Lcom/crashlytics/android/core/CrashlyticsController$23;->val$totalRam:J

    iput-wide p6, p0, Lcom/crashlytics/android/core/CrashlyticsController$23;->val$diskSpace:J

    iput-boolean p8, p0, Lcom/crashlytics/android/core/CrashlyticsController$23;->val$isEmulator:Z

    iput-object p9, p0, Lcom/crashlytics/android/core/CrashlyticsController$23;->val$ids:Ljava/util/Map;

    iput p10, p0, Lcom/crashlytics/android/core/CrashlyticsController$23;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeTo(Lcom/crashlytics/android/core/CodedOutputStream;)V
    .locals 13
    .param p1, "arg"    # Lcom/crashlytics/android/core/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1250
    iget v1, p0, Lcom/crashlytics/android/core/CrashlyticsController$23;->val$arch:I

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget v3, p0, Lcom/crashlytics/android/core/CrashlyticsController$23;->val$availableProcessors:I

    iget-wide v4, p0, Lcom/crashlytics/android/core/CrashlyticsController$23;->val$totalRam:J

    iget-wide v6, p0, Lcom/crashlytics/android/core/CrashlyticsController$23;->val$diskSpace:J

    iget-boolean v8, p0, Lcom/crashlytics/android/core/CrashlyticsController$23;->val$isEmulator:Z

    iget-object v9, p0, Lcom/crashlytics/android/core/CrashlyticsController$23;->val$ids:Ljava/util/Map;

    iget v10, p0, Lcom/crashlytics/android/core/CrashlyticsController$23;->val$state:I

    sget-object v11, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v12, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    move-object v0, p1

    invoke-static/range {v0 .. v12}, Lcom/crashlytics/android/core/SessionProtobufHelper;->writeSessionDevice(Lcom/crashlytics/android/core/CodedOutputStream;ILjava/lang/String;IJJZLjava/util/Map;ILjava/lang/String;Ljava/lang/String;)V

    .line 1263
    return-void
.end method
