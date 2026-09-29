.class final Lnet/oneplus/h2launcher/util/PendingRequestArgs$1;
.super Ljava/lang/Object;
.source "PendingRequestArgs.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/util/PendingRequestArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lnet/oneplus/h2launcher/util/PendingRequestArgs;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/util/PendingRequestArgs$1;->createFromParcel(Landroid/os/Parcel;)Lnet/oneplus/h2launcher/util/PendingRequestArgs;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lnet/oneplus/h2launcher/util/PendingRequestArgs;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 113
    new-instance v0, Lnet/oneplus/h2launcher/util/PendingRequestArgs;

    invoke-direct {v0, p1}, Lnet/oneplus/h2launcher/util/PendingRequestArgs;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/util/PendingRequestArgs$1;->newArray(I)[Lnet/oneplus/h2launcher/util/PendingRequestArgs;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lnet/oneplus/h2launcher/util/PendingRequestArgs;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 117
    new-array v0, p1, [Lnet/oneplus/h2launcher/util/PendingRequestArgs;

    return-object v0
.end method
