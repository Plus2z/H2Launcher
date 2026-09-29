.class Lnet/oneplus/h2launcher/FolderScrollBar$2;
.super Ljava/lang/Object;
.source "FolderScrollBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/FolderScrollBar;
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
    .line 155
    iput-object p1, p0, Lnet/oneplus/h2launcher/FolderScrollBar$2;->this$0:Lnet/oneplus/h2launcher/FolderScrollBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderScrollBar$2;->this$0:Lnet/oneplus/h2launcher/FolderScrollBar;

    invoke-static {v0}, Lnet/oneplus/h2launcher/FolderScrollBar;->access$000(Lnet/oneplus/h2launcher/FolderScrollBar;)Lnet/oneplus/h2launcher/FolderScrollBar$State;

    move-result-object v0

    sget-object v1, Lnet/oneplus/h2launcher/FolderScrollBar$State;->HIDE:Lnet/oneplus/h2launcher/FolderScrollBar$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderScrollBar$2;->this$0:Lnet/oneplus/h2launcher/FolderScrollBar;

    invoke-static {v0}, Lnet/oneplus/h2launcher/FolderScrollBar;->access$000(Lnet/oneplus/h2launcher/FolderScrollBar;)Lnet/oneplus/h2launcher/FolderScrollBar$State;

    move-result-object v0

    sget-object v1, Lnet/oneplus/h2launcher/FolderScrollBar$State;->PLAY_HIDE_ANIMATION:Lnet/oneplus/h2launcher/FolderScrollBar$State;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderScrollBar$2;->this$0:Lnet/oneplus/h2launcher/FolderScrollBar;

    .line 159
    invoke-static {v0}, Lnet/oneplus/h2launcher/FolderScrollBar;->access$100(Lnet/oneplus/h2launcher/FolderScrollBar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderScrollBar$2;->this$0:Lnet/oneplus/h2launcher/FolderScrollBar;

    invoke-static {v0}, Lnet/oneplus/h2launcher/FolderScrollBar;->access$200(Lnet/oneplus/h2launcher/FolderScrollBar;)V

    .line 161
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderScrollBar$2;->this$0:Lnet/oneplus/h2launcher/FolderScrollBar;

    invoke-static {v0}, Lnet/oneplus/h2launcher/FolderScrollBar;->access$300(Lnet/oneplus/h2launcher/FolderScrollBar;)V

    .line 163
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderScrollBar$2;->this$0:Lnet/oneplus/h2launcher/FolderScrollBar;

    invoke-static {v0}, Lnet/oneplus/h2launcher/FolderScrollBar;->access$400(Lnet/oneplus/h2launcher/FolderScrollBar;)V

    .line 164
    return-void
.end method
