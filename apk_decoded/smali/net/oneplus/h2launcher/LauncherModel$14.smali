.class final Lnet/oneplus/h2launcher/LauncherModel$14;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherModel;->addNoteReminder(Landroid/content/Context;IJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$reminderId:J

.field final synthetic val$values:Landroid/content/ContentValues;

.field final synthetic val$whereArgs:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/content/ContentValues;[Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 1152
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$14;->val$cr:Landroid/content/ContentResolver;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherModel$14;->val$values:Landroid/content/ContentValues;

    iput-object p3, p0, Lnet/oneplus/h2launcher/LauncherModel$14;->val$whereArgs:[Ljava/lang/String;

    iput-wide p4, p0, Lnet/oneplus/h2launcher/LauncherModel$14;->val$reminderId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1154
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$14;->val$cr:Landroid/content/ContentResolver;

    sget-object v2, Lnet/oneplus/h2launcher/LauncherSettings$QuickPage;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherModel$14;->val$values:Landroid/content/ContentValues;

    const-string v4, "_id = ? AND type = ?"

    iget-object v5, p0, Lnet/oneplus/h2launcher/LauncherModel$14;->val$whereArgs:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1155
    .local v0, "result":I
    const-string v1, "Launcher.Model"

    const-string v2, "add reminder id:%d result:%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p0, Lnet/oneplus/h2launcher/LauncherModel$14;->val$reminderId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1156
    return-void
.end method
