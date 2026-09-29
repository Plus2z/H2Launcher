.class Lnet/oneplus/h2launcher/quickpage/NotePanel$9;
.super Ljava/lang/Object;
.source "NotePanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/NotePanel;->addReminder(Ljava/util/Calendar;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

.field final synthetic val$calendar:Ljava/util/Calendar;

.field final synthetic val$isNewMemo:Z

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/NotePanel;Ljava/util/Calendar;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/NotePanel;

    .prologue
    .line 549
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9;->val$calendar:Ljava/util/Calendar;

    iput-object p3, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9;->val$title:Ljava/lang/String;

    iput-boolean p4, p0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9;->val$isNewMemo:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 552
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$100(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.WRITE_CALENDAR"

    invoke-static {v2, v3}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 554
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$502(Lnet/oneplus/h2launcher/quickpage/NotePanel;Z)Z

    .line 555
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$400(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Calendar permission not granted for adding Calendar event"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "calendar_access_level"

    aput-object v3, v4, v2

    .line 563
    .local v4, "calendarsProjection":[Ljava/lang/String;
    const-string v18, "calendar_access_level=700"

    .line 566
    .local v18, "selection":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$100(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "calendar_access_level=700"

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 567
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 570
    .local v16, "managedCursor":Landroid/database/Cursor;
    if-eqz v16, :cond_2

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 571
    const-string v2, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 572
    .local v15, "idIndex":I
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 573
    .local v12, "calendarId":I
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 589
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$100(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 590
    .local v13, "cr":Landroid/content/ContentResolver;
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 591
    .local v19, "values":Landroid/content/ContentValues;
    const-string v2, "dtstart"

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9;->val$calendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 592
    const-string v2, "dtend"

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9;->val$calendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    const-wide/32 v8, 0xea60

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 593
    const-string v2, "title"

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9;->val$title:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const-string v2, "calendar_id"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 595
    const-string v2, "eventTimezone"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const-string v2, "hasAlarm"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 598
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    invoke-virtual {v13, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    .line 599
    .local v14, "event":Landroid/net/Uri;
    if-nez v14, :cond_3

    .line 601
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v2

    new-instance v3, Lnet/oneplus/h2launcher/quickpage/NotePanel$9$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel$9$2;-><init>(Lnet/oneplus/h2launcher/quickpage/NotePanel$9;)V

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/util/TaskWorker;->postUI(Ljava/lang/Runnable;)V

    .line 608
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$502(Lnet/oneplus/h2launcher/quickpage/NotePanel;Z)Z

    goto/16 :goto_0

    .line 575
    .end local v12    # "calendarId":I
    .end local v13    # "cr":Landroid/content/ContentResolver;
    .end local v14    # "event":Landroid/net/Uri;
    .end local v15    # "idIndex":I
    .end local v19    # "values":Landroid/content/ContentValues;
    :cond_2
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v2

    new-instance v3, Lnet/oneplus/h2launcher/quickpage/NotePanel$9$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lnet/oneplus/h2launcher/quickpage/NotePanel$9$1;-><init>(Lnet/oneplus/h2launcher/quickpage/NotePanel$9;)V

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/util/TaskWorker;->postUI(Ljava/lang/Runnable;)V

    .line 584
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$502(Lnet/oneplus/h2launcher/quickpage/NotePanel;Z)Z

    goto/16 :goto_0

    .line 612
    .restart local v12    # "calendarId":I
    .restart local v13    # "cr":Landroid/content/ContentResolver;
    .restart local v14    # "event":Landroid/net/Uri;
    .restart local v15    # "idIndex":I
    .restart local v19    # "values":Landroid/content/ContentValues;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-virtual {v14}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$602(Lnet/oneplus/h2launcher/quickpage/NotePanel;J)J

    .line 614
    new-instance v19, Landroid/content/ContentValues;

    .end local v19    # "values":Landroid/content/ContentValues;
    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 615
    .restart local v19    # "values":Landroid/content/ContentValues;
    const-string v2, "event_id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v3}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$600(Lnet/oneplus/h2launcher/quickpage/NotePanel;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 616
    const-string v2, "method"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 617
    const-string v2, "minutes"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 618
    sget-object v2, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    invoke-virtual {v13, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v17

    .line 620
    .local v17, "result":Landroid/net/Uri;
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v2

    new-instance v3, Lnet/oneplus/h2launcher/quickpage/NotePanel$9$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v1}, Lnet/oneplus/h2launcher/quickpage/NotePanel$9$3;-><init>(Lnet/oneplus/h2launcher/quickpage/NotePanel$9;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/util/TaskWorker;->postUI(Ljava/lang/Runnable;)V

    .line 649
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9;->val$isNewMemo:Z

    if-nez v2, :cond_0

    .line 650
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$100(Lnet/oneplus/h2launcher/quickpage/NotePanel;)Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    iget v7, v2, Lnet/oneplus/h2launcher/quickpage/NotePanel;->mId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$1300(Lnet/oneplus/h2launcher/quickpage/NotePanel;)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/NotePanel$9;->this$0:Lnet/oneplus/h2launcher/quickpage/NotePanel;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/NotePanel;->access$600(Lnet/oneplus/h2launcher/quickpage/NotePanel;)J

    move-result-wide v10

    invoke-static/range {v6 .. v11}, Lnet/oneplus/h2launcher/LauncherModel;->addNoteReminder(Landroid/content/Context;IJJ)V

    goto/16 :goto_0
.end method
