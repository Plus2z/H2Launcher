.class Lcom/crashlytics/android/core/CompositeCreateReportSpiCall;
.super Ljava/lang/Object;
.source "CompositeCreateReportSpiCall.java"

# interfaces
.implements Lcom/crashlytics/android/core/CreateReportSpiCall;


# instance fields
.field private final javaReportSpiCall:Lcom/crashlytics/android/core/DefaultCreateReportSpiCall;

.field private final nativeReportSpiCall:Lcom/crashlytics/android/core/NativeCreateReportSpiCall;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/core/DefaultCreateReportSpiCall;Lcom/crashlytics/android/core/NativeCreateReportSpiCall;)V
    .locals 0
    .param p1, "javaReportSpiCall"    # Lcom/crashlytics/android/core/DefaultCreateReportSpiCall;
    .param p2, "nativeReportSpiCall"    # Lcom/crashlytics/android/core/NativeCreateReportSpiCall;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/crashlytics/android/core/CompositeCreateReportSpiCall;->javaReportSpiCall:Lcom/crashlytics/android/core/DefaultCreateReportSpiCall;

    .line 11
    iput-object p2, p0, Lcom/crashlytics/android/core/CompositeCreateReportSpiCall;->nativeReportSpiCall:Lcom/crashlytics/android/core/NativeCreateReportSpiCall;

    .line 12
    return-void
.end method


# virtual methods
.method public invoke(Lcom/crashlytics/android/core/CreateReportRequest;)Z
    .locals 3
    .param p1, "requestData"    # Lcom/crashlytics/android/core/CreateReportRequest;

    .prologue
    const/4 v0, 0x1

    .line 16
    sget-object v1, Lcom/crashlytics/android/core/CompositeCreateReportSpiCall$1;->$SwitchMap$com$crashlytics$android$core$Report$Type:[I

    iget-object v2, p1, Lcom/crashlytics/android/core/CreateReportRequest;->report:Lcom/crashlytics/android/core/Report;

    invoke-interface {v2}, Lcom/crashlytics/android/core/Report;->getType()Lcom/crashlytics/android/core/Report$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crashlytics/android/core/Report$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 24
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 18
    :pswitch_0
    iget-object v1, p0, Lcom/crashlytics/android/core/CompositeCreateReportSpiCall;->javaReportSpiCall:Lcom/crashlytics/android/core/DefaultCreateReportSpiCall;

    invoke-virtual {v1, p1}, Lcom/crashlytics/android/core/DefaultCreateReportSpiCall;->invoke(Lcom/crashlytics/android/core/CreateReportRequest;)Z

    goto :goto_0

    .line 21
    :pswitch_1
    iget-object v1, p0, Lcom/crashlytics/android/core/CompositeCreateReportSpiCall;->nativeReportSpiCall:Lcom/crashlytics/android/core/NativeCreateReportSpiCall;

    invoke-virtual {v1, p1}, Lcom/crashlytics/android/core/NativeCreateReportSpiCall;->invoke(Lcom/crashlytics/android/core/CreateReportRequest;)Z

    goto :goto_0

    .line 16
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
