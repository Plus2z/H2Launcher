.class Lnet/oneplus/h2launcher/InstallShortcutReceiver$Decoder;
.super Lorg/json/JSONObject;
.source "InstallShortcutReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/InstallShortcutReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Decoder"
.end annotation


# instance fields
.field public final launcherIntent:Landroid/content/Intent;

.field public final user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .param p1, "encoded"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 632
    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 633
    const-string v0, "intent.launch"

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/InstallShortcutReceiver$Decoder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$Decoder;->launcherIntent:Landroid/content/Intent;

    .line 634
    const-string v0, "userHandle"

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/InstallShortcutReceiver$Decoder;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v0

    const-string v1, "userHandle"

    .line 635
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/InstallShortcutReceiver$Decoder;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getUserForSerialNumber(J)Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v0

    .line 636
    :goto_0
    iput-object v0, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$Decoder;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 637
    iget-object v0, p0, Lnet/oneplus/h2launcher/InstallShortcutReceiver$Decoder;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    if-nez v0, :cond_1

    .line 638
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Invalid user"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 636
    :cond_0
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v0

    goto :goto_0

    .line 640
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;Lnet/oneplus/h2launcher/InstallShortcutReceiver$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lnet/oneplus/h2launcher/InstallShortcutReceiver$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 627
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/InstallShortcutReceiver$Decoder;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
