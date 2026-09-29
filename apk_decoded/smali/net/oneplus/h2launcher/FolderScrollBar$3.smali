.class Lnet/oneplus/h2launcher/FolderScrollBar$3;
.super Ljava/lang/Object;
.source "FolderScrollBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/FolderScrollBar;->playShowAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/FolderScrollBar;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/FolderScrollBar;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/FolderScrollBar;

    .prologue
    .line 169
    iput-object p1, p0, Lnet/oneplus/h2launcher/FolderScrollBar$3;->this$0:Lnet/oneplus/h2launcher/FolderScrollBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderScrollBar$3;->this$0:Lnet/oneplus/h2launcher/FolderScrollBar;

    invoke-static {v0}, Lnet/oneplus/h2launcher/FolderScrollBar;->access$200(Lnet/oneplus/h2launcher/FolderScrollBar;)V

    .line 173
    return-void
.end method
