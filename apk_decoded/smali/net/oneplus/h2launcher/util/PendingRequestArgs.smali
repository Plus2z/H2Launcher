.class public Lnet/oneplus/h2launcher/util/PendingRequestArgs;
.super Lnet/oneplus/h2launcher/ItemInfo;
.source "PendingRequestArgs.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lnet/oneplus/h2launcher/util/PendingRequestArgs;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_APP_WIDGET:I = 0x2

.field private static final TYPE_INTENT:I = 0x1

.field private static final TYPE_NONE:I


# instance fields
.field private final mArg1:I

.field private final mObject:Landroid/os/Parcelable;

.field private final mObjectType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lnet/oneplus/h2launcher/util/PendingRequestArgs$1;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/util/PendingRequestArgs$1;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/util/PendingRequestArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IILandroid/os/Parcelable;)V
    .locals 0
    .param p1, "arg1"    # I
    .param p2, "objectType"    # I
    .param p3, "object"    # Landroid/os/Parcelable;

    .prologue
    .line 48
    invoke-direct {p0}, Lnet/oneplus/h2launcher/ItemInfo;-><init>()V

    .line 49
    iput p1, p0, Lnet/oneplus/h2launcher/util/PendingRequestArgs;->mArg1:I

    .line 50
    iput p2, p0, Lnet/oneplus/h2launcher/util/PendingRequestArgs;->mObjectType:I

    .line 51
    iput-object p3, p0, Lnet/oneplus/h2launcher/util/PendingRequestArgs;->mObject:Landroid/os/Parcelable;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Lnet/oneplus/h2launcher/ItemInfo;-><init>()V

    .line 55
    sget-object v0, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/util/PendingRequestArgs;->readFromValues(Landroid/content/ContentValues;)V

    .line 56
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    iput-object v0, p0, Lnet/oneplus/h2launcher/util/PendingRequestArgs;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/util/PendingRequestArgs;->mArg1:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/util/PendingRequestArgs;->mObjectType:I

    .line 60
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/util/PendingRequestArgs;->mObject:Landroid/os/Parcelable;

    .line 61
    return-void
.end method

.method public constructor <init>(Lnet/oneplus/h2launcher/ItemInfo;)V
    .locals 1
    .param p1, "info"    # Lnet/oneplus/h2launcher/ItemInfo;

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Lnet/oneplus/h2launcher/ItemInfo;-><init>()V

    .line 41
    iput v0, p0, Lnet/oneplus/h2launcher/util/PendingRequestArgs;->mArg1:I

    .line 42
    iput v0, p0, Lnet/oneplus/h2launcher/util/PendingRequestArgs;->mObjectType:I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/util/PendingRequestArgs;->mObject:Landroid/os/Parcelable;

    .line 45
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/util/PendingRequestArgs;->copyFrom(Lnet/oneplus/h2launcher/ItemInfo;)V

    .line 46
    return-void
.end method

.method public static forIntent(ILandroid/content/Intent;Lnet/oneplus/h2launcher/ItemInfo;)Lnet/oneplus/h2launcher/util/PendingRequestArgs;
    .locals 2
    .param p0, "requestCode"    # I
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Lnet/oneplus/h2launcher/ItemInfo;

    .prologue
    .line 105
    new-instance v0, Lnet/oneplus/h2launcher/util/PendingRequestArgs;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lnet/oneplus/h2launcher/util/PendingRequestArgs;-><init>(IILandroid/os/Parcelable;)V

    .line 106
    .local v0, "args":Lnet/oneplus/h2launcher/util/PendingRequestArgs;
    invoke-virtual {v0, p2}, Lnet/oneplus/h2launcher/util/PendingRequestArgs;->copyFrom(Lnet/oneplus/h2launcher/ItemInfo;)V

    .line 107
    return-object v0
.end method

.method public static forWidgetInfo(ILnet/oneplus/h2launcher/widget/WidgetAddFlowHandler;Lnet/oneplus/h2launcher/ItemInfo;)Lnet/oneplus/h2launcher/util/PendingRequestArgs;
    .locals 2
    .param p0, "appWidgetId"    # I
    .param p1, "widgetHandler"    # Lnet/oneplus/h2launcher/widget/WidgetAddFlowHandler;
    .param p2, "info"    # Lnet/oneplus/h2launcher/ItemInfo;

    .prologue
    .line 98
    new-instance v0, Lnet/oneplus/h2launcher/util/PendingRequestArgs;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1}, Lnet/oneplus/h2launcher/util/PendingRequestArgs;-><init>(IILandroid/os/Parcelable;)V

    .line 100
    .local v0, "args":Lnet/oneplus/h2launcher/util/PendingRequestArgs;
    invoke-virtual {v0, p2}, Lnet/oneplus/h2launcher/util/PendingRequestArgs;->copyFrom(Lnet/oneplus/h2launcher/ItemInfo;)V

    .line 101
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public getPendingIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 89
    iget v0, p0, Lnet/oneplus/h2launcher/util/PendingRequestArgs;->mObjectType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/util/PendingRequestArgs;->mObject:Landroid/os/Parcelable;

    check-cast v0, Landroid/content/Intent;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRequestCode()I
    .locals 2

    .prologue
    .line 93
    iget v0, p0, Lnet/oneplus/h2launcher/util/PendingRequestArgs;->mObjectType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lnet/oneplus/h2launcher/util/PendingRequestArgs;->mArg1:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWidgetHandler()Lnet/oneplus/h2launcher/widget/WidgetAddFlowHandler;
    .locals 2

    .prologue
    .line 81
    iget v0, p0, Lnet/oneplus/h2launcher/util/PendingRequestArgs;->mObjectType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/util/PendingRequestArgs;->mObject:Landroid/os/Parcelable;

    check-cast v0, Lnet/oneplus/h2launcher/widget/WidgetAddFlowHandler;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWidgetId()I
    .locals 2

    .prologue
    .line 85
    iget v0, p0, Lnet/oneplus/h2launcher/util/PendingRequestArgs;->mObjectType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lnet/oneplus/h2launcher/util/PendingRequestArgs;->mArg1:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 70
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 71
    .local v0, "itemValues":Landroid/content/ContentValues;
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/util/PendingRequestArgs;->writeToValues(Landroid/content/ContentValues;)V

    .line 72
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->writeToParcel(Landroid/os/Parcel;I)V

    .line 73
    iget-object v1, p0, Lnet/oneplus/h2launcher/util/PendingRequestArgs;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 75
    iget v1, p0, Lnet/oneplus/h2launcher/util/PendingRequestArgs;->mArg1:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget v1, p0, Lnet/oneplus/h2launcher/util/PendingRequestArgs;->mObjectType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object v1, p0, Lnet/oneplus/h2launcher/util/PendingRequestArgs;->mObject:Landroid/os/Parcelable;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 78
    return-void
.end method
