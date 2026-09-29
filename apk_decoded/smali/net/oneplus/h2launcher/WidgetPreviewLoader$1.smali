.class Lnet/oneplus/h2launcher/WidgetPreviewLoader$1;
.super Ljava/lang/Object;
.source "WidgetPreviewLoader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/WidgetPreviewLoader;->mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/WidgetPreviewLoader;

.field final synthetic val$drawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/WidgetPreviewLoader;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    .prologue
    .line 490
    iput-object p1, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$1;->this$0:Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    iput-object p2, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$1;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 493
    iget-object v0, p0, Lnet/oneplus/h2launcher/WidgetPreviewLoader$1;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 490
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/WidgetPreviewLoader$1;->call()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
