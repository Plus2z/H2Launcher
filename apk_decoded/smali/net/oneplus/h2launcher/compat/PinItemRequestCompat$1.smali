.class final Lnet/oneplus/h2launcher/compat/PinItemRequestCompat$1;
.super Ljava/lang/Object;
.source "PinItemRequestCompat.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;
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
        "Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat$1;->createFromParcel(Landroid/os/Parcel;)Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    .line 111
    .local v0, "object":Landroid/os/Parcelable;
    new-instance v1, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;

    invoke-direct {v1, v0, v2}, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;-><init>(Landroid/os/Parcelable;Lnet/oneplus/h2launcher/compat/PinItemRequestCompat$1;)V

    return-object v1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat$1;->newArray(I)[Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 115
    new-array v0, p1, [Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;

    return-object v0
.end method
