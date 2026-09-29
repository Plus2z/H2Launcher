.class public Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;
.super Ljava/lang/Object;
.source "PinItemRequestCompat.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_PIN_ITEM_REQUEST:Ljava/lang/String; = "android.content.pm.extra.PIN_ITEM_REQUEST"

.field public static final REQUEST_TYPE_APPWIDGET:I = 0x2

.field public static final REQUEST_TYPE_SHORTCUT:I = 0x1


# instance fields
.field private final mObject:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat$1;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat$1;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "object"    # Landroid/os/Parcelable;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;->mObject:Landroid/os/Parcelable;

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;Lnet/oneplus/h2launcher/compat/PinItemRequestCompat$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcelable;
    .param p2, "x1"    # Lnet/oneplus/h2launcher/compat/PinItemRequestCompat$1;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method

.method public static getPinItemRequest(Landroid/content/Intent;)Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-static {}, Lnet/oneplus/h2launcher/Utilities;->isAtLeastO()Z

    move-result v2

    if-nez v2, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-object v1

    .line 123
    :cond_1
    const-string v2, "android.content.pm.extra.PIN_ITEM_REQUEST"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 124
    .local v0, "extra":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    new-instance v1, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;

    invoke-direct {v1, v0}, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;-><init>(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method private invokeMethod(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 91
    :try_start_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;->mObject:Landroid/os/Parcelable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;->mObject:Landroid/os/Parcelable;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public accept()Z
    .locals 1

    .prologue
    .line 69
    const-string v0, "accept"

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;->invokeMethod(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public accept(Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 74
    :try_start_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;->mObject:Landroid/os/Parcelable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "accept"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/os/Bundle;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;->mObject:Landroid/os/Parcelable;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 75
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 74
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    :try_start_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;->mObject:Landroid/os/Parcelable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getAppWidgetProviderInfo"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    .line 57
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;->mObject:Landroid/os/Parcelable;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 58
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 83
    :try_start_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;->mObject:Landroid/os/Parcelable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getExtras"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;->mObject:Landroid/os/Parcelable;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-object v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRequestType()I
    .locals 1

    .prologue
    .line 47
    const-string v0, "getRequestType"

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;->invokeMethod(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .locals 1

    .prologue
    .line 51
    const-string v0, "getShortcutInfo"

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;->invokeMethod(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 65
    const-string v0, "isValid"

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;->invokeMethod(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;->mObject:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 105
    return-void
.end method
