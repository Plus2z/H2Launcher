.class public abstract Lnet/oneplus/h2launcher/model/AbstractUserComparator;
.super Ljava/lang/Object;
.source "AbstractUserComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lnet/oneplus/h2launcher/ItemInfo;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mMyUser:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

.field private final mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    .local p0, "this":Lnet/oneplus/h2launcher/model/AbstractUserComparator;, "Lnet/oneplus/h2launcher/model/AbstractUserComparator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/model/AbstractUserComparator;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    .line 36
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/model/AbstractUserComparator;->mMyUser:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 37
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lnet/oneplus/h2launcher/model/AbstractUserComparator;, "Lnet/oneplus/h2launcher/model/AbstractUserComparator<TT;>;"
    check-cast p1, Lnet/oneplus/h2launcher/ItemInfo;

    check-cast p2, Lnet/oneplus/h2launcher/ItemInfo;

    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/model/AbstractUserComparator;->compare(Lnet/oneplus/h2launcher/ItemInfo;Lnet/oneplus/h2launcher/ItemInfo;)I

    move-result v0

    return v0
.end method

.method public compare(Lnet/oneplus/h2launcher/ItemInfo;Lnet/oneplus/h2launcher/ItemInfo;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lnet/oneplus/h2launcher/model/AbstractUserComparator;, "Lnet/oneplus/h2launcher/model/AbstractUserComparator<TT;>;"
    .local p1, "lhs":Lnet/oneplus/h2launcher/ItemInfo;, "TT;"
    .local p2, "rhs":Lnet/oneplus/h2launcher/ItemInfo;, "TT;"
    iget-object v2, p0, Lnet/oneplus/h2launcher/model/AbstractUserComparator;->mMyUser:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    iget-object v3, p1, Lnet/oneplus/h2launcher/ItemInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    const/4 v2, -0x1

    .line 46
    :goto_0
    return v2

    .line 44
    :cond_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/model/AbstractUserComparator;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    iget-object v3, p1, Lnet/oneplus/h2launcher/ItemInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 45
    .local v0, "aUserSerial":Ljava/lang/Long;
    iget-object v2, p0, Lnet/oneplus/h2launcher/model/AbstractUserComparator;->mUserManager:Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    iget-object v3, p2, Lnet/oneplus/h2launcher/ItemInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 46
    .local v1, "bUserSerial":Ljava/lang/Long;
    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v2

    goto :goto_0
.end method
