.class Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$QuickPageContentObserver$1;
.super Ljava/lang/Object;
.source "QuickPageBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$QuickPageContentObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$QuickPageContentObserver;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$QuickPageContentObserver;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$QuickPageContentObserver;

    .prologue
    .line 1380
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$QuickPageContentObserver$1;->this$1:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$QuickPageContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1383
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$QuickPageContentObserver$1;->this$1:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$QuickPageContentObserver;

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$QuickPageContentObserver;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->updateExternalWidget()V

    .line 1384
    return-void
.end method
