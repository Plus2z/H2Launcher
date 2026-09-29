.class public Lnet/oneplus/h2launcher/quickpage/view/util/DrawableUtils;
.super Ljava/lang/Object;
.source "DrawableUtils.java"


# static fields
.field private static final EMPTY_STATE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lnet/oneplus/h2launcher/quickpage/view/util/DrawableUtils;->EMPTY_STATE:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearState(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 25
    if-eqz p0, :cond_0

    .line 26
    sget-object v0, Lnet/oneplus/h2launcher/quickpage/view/util/DrawableUtils;->EMPTY_STATE:[I

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 28
    :cond_0
    return-void
.end method
