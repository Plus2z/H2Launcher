.class Lnet/oneplus/h2launcher/quickpage/NotePanel$10;
.super Ljava/lang/Object;
.source "NotePanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/NotePanel;->cancelReminder(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

.field final synthetic val$eventId:J


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/NotePanel;J)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/NotePanel;

    .prologue
    .line 657
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$10;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    iput-wide p2, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$10;->val$eventId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 660
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$10;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v3}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$100(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.WRITE_CALENDAR"

    invoke-static {v3, v4}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 662
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$10;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v3, v8}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$502(Lnet/oneplus/h2launcher/quickpage/NotePanel;Z)Z

    .line 663
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$10;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v3}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$400(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Permission not granted for removing Calendar event"

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 667
    :cond_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$10;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v3}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$100(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 668
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$10;->val$eventId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 669
    .local v1, "deleteUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 670
    invoke-virtual {v0, v1, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 671
    .local v2, "result":I
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$10;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v3}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$400(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cancel reminder id:%d result:%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-wide v6, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$10;->val$eventId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
