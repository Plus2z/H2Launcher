.class public Lnet/oneplus/h2launcher/compat/UserManagerCompatV16;
.super Lnet/oneplus/h2launcher/compat/UserManagerCompat;
.source "UserManagerCompatV16.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public enableAndResetCache()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public getBadgedDrawableForUser(Landroid/graphics/drawable/Drawable;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p1, "unbadged"    # Landroid/graphics/drawable/Drawable;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 42
    return-object p1
.end method

.method public getBadgedLabelForUser(Ljava/lang/CharSequence;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/lang/CharSequence;
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 50
    return-object p1
.end method

.method public getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J
    .locals 2
    .param p1, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 46
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUserCreationTime(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J
    .locals 2
    .param p1, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 55
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUserForSerialNumber(J)Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .locals 1
    .param p1, "serialNumber"    # J

    .prologue
    .line 37
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v0

    return-object v0
.end method

.method public getUserProfiles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/compat/UserHandleCompat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    .local v0, "profiles":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/compat/UserHandleCompat;>;"
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    return-object v0
.end method

.method public isQuietModeEnabled(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Z
    .locals 1
    .param p1, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public isUserRunning(Landroid/os/UserHandle;)Z
    .locals 1
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public isUserUnlocked(Landroid/os/UserHandle;)Z
    .locals 1
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method
