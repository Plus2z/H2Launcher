.class final Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$1;
.super Ljava/lang/Object;
.source "LauncherAppsCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->createShortcutInfoFromPinItemRequest(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;J)Lnet/oneplus/h2launcher/ShortcutInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$acceptDelay:J

.field final synthetic val$request:Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;


# direct methods
.method constructor <init>(JLnet/oneplus/h2launcher/compat/PinItemRequestCompat;)V
    .locals 1

    .prologue
    .line 155
    iput-wide p1, p0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$1;->val$acceptDelay:J

    iput-object p3, p0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$1;->val$request:Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 159
    :try_start_0
    iget-wide v0, p0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$1;->val$acceptDelay:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$1;->val$request:Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat$1;->val$request:Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/compat/PinItemRequestCompat;->accept()Z

    .line 166
    :cond_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    goto :goto_0
.end method
