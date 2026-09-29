.class final Lcom/crashlytics/android/core/CrashlyticsController$ReportUploaderFilesProvider;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Lcom/crashlytics/android/core/ReportUploader$ReportFilesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/CrashlyticsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReportUploaderFilesProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/core/CrashlyticsController;


# direct methods
.method private constructor <init>(Lcom/crashlytics/android/core/CrashlyticsController;)V
    .locals 0

    .prologue
    .line 1690
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsController$ReportUploaderFilesProvider;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/crashlytics/android/core/CrashlyticsController;Lcom/crashlytics/android/core/CrashlyticsController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/crashlytics/android/core/CrashlyticsController;
    .param p2, "x1"    # Lcom/crashlytics/android/core/CrashlyticsController$1;

    .prologue
    .line 1690
    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/CrashlyticsController$ReportUploaderFilesProvider;-><init>(Lcom/crashlytics/android/core/CrashlyticsController;)V

    return-void
.end method


# virtual methods
.method public getCompleteSessionFiles()[Ljava/io/File;
    .locals 1

    .prologue
    .line 1693
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsController$ReportUploaderFilesProvider;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashlyticsController;->listCompleteSessionFiles()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getInvalidSessionFiles()[Ljava/io/File;
    .locals 1

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsController$ReportUploaderFilesProvider;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashlyticsController;->getInvalidFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getNativeReportFiles()[Ljava/io/File;
    .locals 1

    .prologue
    .line 1703
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsController$ReportUploaderFilesProvider;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/CrashlyticsController;->listNativeSessionFileDirectories()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
