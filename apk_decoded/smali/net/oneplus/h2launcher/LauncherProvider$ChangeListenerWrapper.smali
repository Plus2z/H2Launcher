.class Lnet/oneplus/h2launcher/LauncherProvider$ChangeListenerWrapper;
.super Ljava/lang/Object;
.source "LauncherProvider.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/LauncherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChangeListenerWrapper"
.end annotation


# static fields
.field private static final MSG_EXTRACTED_COLORS_CHANGED:I = 0x2


# instance fields
.field private mListener:Lnet/oneplus/h2launcher/LauncherProviderChangeListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1862
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/oneplus/h2launcher/LauncherProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/oneplus/h2launcher/LauncherProvider$1;

    .prologue
    .line 1862
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherProvider$ChangeListenerWrapper;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lnet/oneplus/h2launcher/LauncherProvider$ChangeListenerWrapper;Lnet/oneplus/h2launcher/LauncherProviderChangeListener;)Lnet/oneplus/h2launcher/LauncherProviderChangeListener;
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/LauncherProvider$ChangeListenerWrapper;
    .param p1, "x1"    # Lnet/oneplus/h2launcher/LauncherProviderChangeListener;

    .prologue
    .line 1862
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherProvider$ChangeListenerWrapper;->mListener:Lnet/oneplus/h2launcher/LauncherProviderChangeListener;

    return-object p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1870
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherProvider$ChangeListenerWrapper;->mListener:Lnet/oneplus/h2launcher/LauncherProviderChangeListener;

    if-eqz v0, :cond_0

    .line 1871
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1877
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1873
    :pswitch_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherProvider$ChangeListenerWrapper;->mListener:Lnet/oneplus/h2launcher/LauncherProviderChangeListener;

    invoke-interface {v0}, Lnet/oneplus/h2launcher/LauncherProviderChangeListener;->onExtractedColorsChanged()V

    goto :goto_0

    .line 1871
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
