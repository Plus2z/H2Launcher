.class final Lnet/oneplus/h2launcher/WidgetPreviewLoader$WidgetCacheKey;
.super Lnet/oneplus/h2launcher/util/ComponentKey;
.source "WidgetPreviewLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/WidgetPreviewLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WidgetCacheKey"
.end annotation


# instance fields
.field final size:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/lang/String;)V
    .locals 0
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "size"    # Ljava/lang/String;

    .prologue
    .line 711
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 712
    iput-object p3, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$WidgetCacheKey;->size:Ljava/lang/String;

    .line 713
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 722
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/util/ComponentKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lnet/oneplus/h2launcher/WidgetPreviewLoader$WidgetCacheKey;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lnet/oneplus/h2launcher/WidgetPreviewLoader$WidgetCacheKey;->size:Ljava/lang/String;

    iget-object v1, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$WidgetCacheKey;->size:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 717
    invoke-super {p0}, Lnet/oneplus/h2launcher/util/ComponentKey;->hashCode()I

    move-result v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$WidgetCacheKey;->size:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
