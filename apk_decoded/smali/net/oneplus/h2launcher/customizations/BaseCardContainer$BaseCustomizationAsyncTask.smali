.class abstract Lnet/oneplus/h2launcher/customizations/BaseCardContainer$BaseCustomizationAsyncTask;
.super Landroid/os/AsyncTask;
.source "BaseCardContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/BaseCardContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "BaseCustomizationAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/BaseCardContainer;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/BaseCardContainer;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/BaseCardContainer;

    .prologue
    .line 380
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$BaseCustomizationAsyncTask;->this$0:Lnet/oneplus/h2launcher/customizations/BaseCardContainer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 380
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$BaseCustomizationAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 383
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$BaseCustomizationAsyncTask;->this$0:Lnet/oneplus/h2launcher/customizations/BaseCardContainer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer;->access$002(Lnet/oneplus/h2launcher/customizations/BaseCardContainer;Lnet/oneplus/h2launcher/customizations/BaseCardContainer$BaseCustomizationAsyncTask;)Lnet/oneplus/h2launcher/customizations/BaseCardContainer$BaseCustomizationAsyncTask;

    .line 384
    return-void
.end method
