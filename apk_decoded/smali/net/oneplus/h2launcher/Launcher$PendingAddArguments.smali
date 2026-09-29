.class Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingAddArguments"
.end annotation


# instance fields
.field appWidgetId:I

.field cellX:I

.field cellY:I

.field container:J

.field intent:Landroid/content/Intent;

.field requestCode:I

.field screenId:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/oneplus/h2launcher/Launcher$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/oneplus/h2launcher/Launcher$1;

    .prologue
    .line 535
    invoke-direct {p0}, Lnet/oneplus/h2launcher/Launcher$PendingAddArguments;-><init>()V

    return-void
.end method
