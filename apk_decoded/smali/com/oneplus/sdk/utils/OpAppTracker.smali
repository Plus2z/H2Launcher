.class public Lcom/oneplus/sdk/utils/OpAppTracker;
.super Ljava/lang/Object;


# static fields
.field public static final DATA_MESSAGE:Ljava/lang/String; = "message"

.field public static final RESULT_FAIL:I = -0x1

.field public static final RESULT_SUCCESS:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return v0
.end method
