.class public Lnet/oneplus/h2launcher/util/PackageUserKey;
.super Ljava/lang/Object;
.source "PackageUserKey.java"


# instance fields
.field private mHashCode:I

.field public mPackageName:Ljava/lang/String;

.field public mUser:Lnet/oneplus/h2launcher/compat/UserHandleCompat;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/util/PackageUserKey;->update(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 16
    return-void
.end method

.method private update(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 19
    iput-object p1, p0, Lnet/oneplus/h2launcher/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lnet/oneplus/h2launcher/util/PackageUserKey;->mUser:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/util/PackageUserKey;->mHashCode:I

    .line 22
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 31
    instance-of v2, p1, Lnet/oneplus/h2launcher/util/PackageUserKey;

    if-nez v2, :cond_1

    .line 33
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 32
    check-cast v0, Lnet/oneplus/h2launcher/util/PackageUserKey;

    .line 33
    .local v0, "otherKey":Lnet/oneplus/h2launcher/util/PackageUserKey;
    iget-object v2, p0, Lnet/oneplus/h2launcher/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    iget-object v3, v0, Lnet/oneplus/h2launcher/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/oneplus/h2launcher/util/PackageUserKey;->mUser:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    iget-object v3, v0, Lnet/oneplus/h2launcher/util/PackageUserKey;->mUser:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lnet/oneplus/h2launcher/util/PackageUserKey;->mHashCode:I

    return v0
.end method
