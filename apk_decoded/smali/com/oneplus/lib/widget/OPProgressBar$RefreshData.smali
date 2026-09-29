.class Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;
.super Ljava/lang/Object;
.source "OPProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/OPProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RefreshData"
.end annotation


# static fields
.field private static final POOL_MAX:I = 0x18

.field private static final sPool:Lcom/oneplus/lib/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/lib/util/Pools$SynchronizedPool",
            "<",
            "Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public fromUser:Z

.field public id:I

.field public progress:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1257
    new-instance v0, Lcom/oneplus/lib/util/Pools$SynchronizedPool;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lcom/oneplus/lib/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->sPool:Lcom/oneplus/lib/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(IIZ)Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;
    .locals 2
    .param p0, "id"    # I
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z

    .prologue
    .line 1265
    sget-object v1, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->sPool:Lcom/oneplus/lib/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Lcom/oneplus/lib/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;

    .line 1266
    .local v0, "rd":Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;
    if-nez v0, :cond_0

    .line 1267
    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;

    .end local v0    # "rd":Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;
    invoke-direct {v0}, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;-><init>()V

    .line 1269
    .restart local v0    # "rd":Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;
    :cond_0
    iput p0, v0, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->id:I

    .line 1270
    iput p1, v0, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->progress:I

    .line 1271
    iput-boolean p2, v0, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->fromUser:Z

    .line 1272
    return-object v0
.end method


# virtual methods
.method public recycle()V
    .locals 1

    .prologue
    .line 1276
    sget-object v0, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->sPool:Lcom/oneplus/lib/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 1277
    return-void
.end method
