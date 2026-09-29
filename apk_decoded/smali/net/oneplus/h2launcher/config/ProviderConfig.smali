.class public Lnet/oneplus/h2launcher/config/ProviderConfig;
.super Ljava/lang/Object;
.source "ProviderConfig.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String;

.field public static final NOTE_AUTHORITY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "net.oneplus.h2launcher.settings"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/config/ProviderConfig;->AUTHORITY:Ljava/lang/String;

    .line 22
    const-string v0, "net.oneplus.h2launcher.settings.note"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/config/ProviderConfig;->NOTE_AUTHORITY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
