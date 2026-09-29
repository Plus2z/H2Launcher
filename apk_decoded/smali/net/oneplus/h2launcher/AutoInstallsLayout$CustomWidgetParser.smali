.class public Lnet/oneplus/h2launcher/AutoInstallsLayout$CustomWidgetParser;
.super Ljava/lang/Object;
.source "AutoInstallsLayout.java"

# interfaces
.implements Lnet/oneplus/h2launcher/AutoInstallsLayout$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/AutoInstallsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CustomWidgetParser"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;


# direct methods
.method protected constructor <init>(Lnet/oneplus/h2launcher/AutoInstallsLayout;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/AutoInstallsLayout;

    .prologue
    .line 562
    iput-object p1, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout$CustomWidgetParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;)J
    .locals 10
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 567
    const-string v6, "packageName"

    invoke-static {p1, v6}, Lnet/oneplus/h2launcher/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 568
    .local v3, "packageName":Ljava/lang/String;
    const-string v6, "className"

    invoke-static {p1, v6}, Lnet/oneplus/h2launcher/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 569
    .local v1, "className":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 571
    :cond_0
    const-wide/16 v4, -0x1

    .line 594
    :cond_1
    :goto_0
    return-wide v4

    .line 574
    :cond_2
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    .local v2, "cn":Landroid/content/ComponentName;
    iget-object v6, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout$CustomWidgetParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    iget-object v6, v6, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v7, "spanX"

    const-string v8, "spanX"

    invoke-static {p1, v8}, Lnet/oneplus/h2launcher/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iget-object v6, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout$CustomWidgetParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    iget-object v6, v6, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v7, "spanY"

    const-string v8, "spanY"

    invoke-static {p1, v8}, Lnet/oneplus/h2launcher/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const-wide/16 v4, -0x1

    .line 580
    .local v4, "insertedId":J
    :try_start_0
    iget-object v6, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout$CustomWidgetParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    iget-object v6, v6, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v6}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 582
    .local v0, "appWidgetId":I
    iget-object v6, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout$CustomWidgetParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    iget-object v6, v6, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v7, "itemType"

    const/4 v8, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 583
    iget-object v6, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout$CustomWidgetParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    iget-object v6, v6, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v7, "appWidgetId"

    const/16 v8, -0x64

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 584
    iget-object v6, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout$CustomWidgetParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    iget-object v6, v6, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v7, "appWidgetProvider"

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iget-object v6, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout$CustomWidgetParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    iget-object v6, v6, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v7, "_id"

    iget-object v8, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout$CustomWidgetParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    iget-object v8, v8, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mCallback:Lnet/oneplus/h2launcher/AutoInstallsLayout$LayoutParserCallback;

    invoke-interface {v8}, Lnet/oneplus/h2launcher/AutoInstallsLayout$LayoutParserCallback;->generateNewItemId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 586
    iget-object v6, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout$CustomWidgetParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    iget-object v6, v6, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mCallback:Lnet/oneplus/h2launcher/AutoInstallsLayout$LayoutParserCallback;

    iget-object v7, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout$CustomWidgetParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    iget-object v7, v7, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v8, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout$CustomWidgetParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    iget-object v8, v8, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-interface {v6, v7, v8}, Lnet/oneplus/h2launcher/AutoInstallsLayout$LayoutParserCallback;->insertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 587
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_1

    .line 588
    iget-object v6, p0, Lnet/oneplus/h2launcher/AutoInstallsLayout$CustomWidgetParser;->this$0:Lnet/oneplus/h2launcher/AutoInstallsLayout;

    iget-object v6, v6, Lnet/oneplus/h2launcher/AutoInstallsLayout;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v6, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 591
    .end local v0    # "appWidgetId":I
    :catch_0
    move-exception v6

    goto/16 :goto_0
.end method
