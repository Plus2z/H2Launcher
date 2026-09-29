.class public abstract Lnet/oneplus/h2launcher/oos/BaseLoader;
.super Ljava/lang/Object;
.source "BaseLoader.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lnet/oneplus/h2launcher/oos/BaseLoader;->mContext:Landroid/content/Context;

    .line 11
    return-void
.end method


# virtual methods
.method protected abstract load(Lnet/oneplus/h2launcher/oos/StyleLoaderCallback;)V
.end method

.method protected abstract reload()V
.end method
