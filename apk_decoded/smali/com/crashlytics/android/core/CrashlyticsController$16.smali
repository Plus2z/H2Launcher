.class Lcom/crashlytics/android/core/CrashlyticsController$16;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/CrashlyticsController;->finalizeNativeReport(Lcom/crashlytics/android/core/CrashlyticsNdkData;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/core/CrashlyticsController;

.field final synthetic val$ndkData:Lcom/crashlytics/android/core/CrashlyticsNdkData;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/CrashlyticsController;Lcom/crashlytics/android/core/CrashlyticsNdkData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/crashlytics/android/core/CrashlyticsController;

    .prologue
    .line 961
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsController$16;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    iput-object p2, p0, Lcom/crashlytics/android/core/CrashlyticsController$16;->val$ndkData:Lcom/crashlytics/android/core/CrashlyticsNdkData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 964
    iget-object v3, p0, Lcom/crashlytics/android/core/CrashlyticsController$16;->val$ndkData:Lcom/crashlytics/android/core/CrashlyticsNdkData;

    iget-object v2, v3, Lcom/crashlytics/android/core/CrashlyticsNdkData;->timestampedDirectories:Ljava/util/TreeSet;

    .line 965
    .local v2, "timestampedNativeDirectories":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/io/File;>;"
    iget-object v3, p0, Lcom/crashlytics/android/core/CrashlyticsController$16;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-static {v3}, Lcom/crashlytics/android/core/CrashlyticsController;->access$1600(Lcom/crashlytics/android/core/CrashlyticsController;)Ljava/lang/String;

    move-result-object v1

    .line 967
    .local v1, "previousSessionId":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 968
    invoke-virtual {v2}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 970
    .local v0, "latestDir":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 971
    iget-object v3, p0, Lcom/crashlytics/android/core/CrashlyticsController$16;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    iget-object v4, p0, Lcom/crashlytics/android/core/CrashlyticsController$16;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-static {v4}, Lcom/crashlytics/android/core/CrashlyticsController;->access$400(Lcom/crashlytics/android/core/CrashlyticsController;)Lcom/crashlytics/android/core/CrashlyticsCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/crashlytics/android/core/CrashlyticsCore;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4, v0, v1}, Lcom/crashlytics/android/core/CrashlyticsController;->access$1700(Lcom/crashlytics/android/core/CrashlyticsController;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 976
    .end local v0    # "latestDir":Ljava/io/File;
    :cond_0
    iget-object v3, p0, Lcom/crashlytics/android/core/CrashlyticsController$16;->this$0:Lcom/crashlytics/android/core/CrashlyticsController;

    invoke-static {v3, v2}, Lcom/crashlytics/android/core/CrashlyticsController;->access$1800(Lcom/crashlytics/android/core/CrashlyticsController;Ljava/util/Set;)V

    .line 978
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v3
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 961
    invoke-virtual {p0}, Lcom/crashlytics/android/core/CrashlyticsController$16;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
