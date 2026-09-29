.class Lnet/oneplus/h2launcher/MemoryDumpActivity$1;
.super Ljava/lang/Object;
.source "MemoryDumpActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/MemoryDumpActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/MemoryDumpActivity;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/MemoryDumpActivity;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/MemoryDumpActivity;

    .prologue
    .line 156
    iput-object p1, p0, Lnet/oneplus/h2launcher/MemoryDumpActivity$1;->this$0:Lnet/oneplus/h2launcher/MemoryDumpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lnet/oneplus/h2launcher/MemoryDumpActivity$1;->this$0:Lnet/oneplus/h2launcher/MemoryDumpActivity;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/MemoryDumpActivity;->finish()V

    .line 160
    return-void
.end method
