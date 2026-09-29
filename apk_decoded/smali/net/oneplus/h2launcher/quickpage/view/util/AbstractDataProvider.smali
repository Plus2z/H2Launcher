.class public abstract Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider;
.super Ljava/lang/Object;
.source "AbstractDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addItem(Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;)V
.end method

.method public abstract getCount()I
.end method

.method public abstract getItem(I)Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;
.end method

.method public abstract moveItem(II)V
.end method

.method public abstract removeItem(I)V
.end method
