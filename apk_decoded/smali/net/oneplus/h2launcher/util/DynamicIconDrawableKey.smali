.class public Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;
.super Ljava/lang/Object;
.source "DynamicIconDrawableKey.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final assetPackName:Ljava/lang/String;

.field private final mHashCode:I

.field public final resource:Ljava/lang/String;

.field public final user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 2
    .param p1, "resource"    # Ljava/lang/String;
    .param p2, "assetPackName"    # Ljava/lang/String;
    .param p3, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-boolean v0, Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 33
    :cond_0
    sget-boolean v0, Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 34
    :cond_1
    sget-boolean v0, Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 35
    :cond_2
    iput-object p2, p0, Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;->assetPackName:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;->resource:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;->mHashCode:I

    .line 40
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 49
    move-object v0, p1

    check-cast v0, Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;

    .line 50
    .local v0, "other":Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;
    iget-object v1, v0, Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;->resource:Ljava/lang/String;

    iget-object v2, p0, Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;->resource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    iget-object v2, p0, Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;->assetPackName:Ljava/lang/String;

    iget-object v2, p0, Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;->assetPackName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lnet/oneplus/h2launcher/util/DynamicIconDrawableKey;->mHashCode:I

    return v0
.end method
