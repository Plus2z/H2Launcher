.class final Lnet/oneplus/h2launcher/widget/WidgetAddFlowHandler$1;
.super Ljava/lang/Object;
.source "WidgetAddFlowHandler.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/widget/WidgetAddFlowHandler;
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
        "Lnet/oneplus/h2launcher/widget/WidgetAddFlowHandler;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/widget/WidgetAddFlowHandler$1;->createFromParcel(Landroid/os/Parcel;)Lnet/oneplus/h2launcher/widget/WidgetAddFlowHandler;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lnet/oneplus/h2launcher/widget/WidgetAddFlowHandler;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 105
    new-instance v0, Lnet/oneplus/h2launcher/widget/WidgetAddFlowHandler;

    invoke-direct {v0, p1}, Lnet/oneplus/h2launcher/widget/WidgetAddFlowHandler;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/widget/WidgetAddFlowHandler$1;->newArray(I)[Lnet/oneplus/h2launcher/widget/WidgetAddFlowHandler;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lnet/oneplus/h2launcher/widget/WidgetAddFlowHandler;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 109
    new-array v0, p1, [Lnet/oneplus/h2launcher/widget/WidgetAddFlowHandler;

    return-object v0
.end method
