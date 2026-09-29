.class Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;
.super Lnet/oneplus/h2launcher/ShortcutInfo;
.source "FrequentAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShelfShortcutInfo"
.end annotation


# instance fields
.field isIconReady:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 742
    invoke-direct {p0}, Lnet/oneplus/h2launcher/ShortcutInfo;-><init>()V

    .line 743
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;->isIconReady:Z

    return-void
.end method

.method synthetic constructor <init>(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$1;

    .prologue
    .line 742
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$ShelfShortcutInfo;-><init>()V

    return-void
.end method
