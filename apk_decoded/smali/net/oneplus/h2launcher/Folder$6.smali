.class Lnet/oneplus/h2launcher/Folder$6;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Lnet/oneplus/h2launcher/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Folder;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Folder;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Folder;

    .prologue
    .line 673
    iput-object p1, p0, Lnet/oneplus/h2launcher/Folder$6;->this$0:Lnet/oneplus/h2launcher/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lnet/oneplus/h2launcher/Alarm;)V
    .locals 1
    .param p1, "alarm"    # Lnet/oneplus/h2launcher/Alarm;

    .prologue
    .line 675
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder$6;->this$0:Lnet/oneplus/h2launcher/Folder;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Folder;->completeDragExit()V

    .line 676
    return-void
.end method
