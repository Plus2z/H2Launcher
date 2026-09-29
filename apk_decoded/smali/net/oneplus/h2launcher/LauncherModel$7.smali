.class final Lnet/oneplus/h2launcher/LauncherModel$7;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lnet/oneplus/h2launcher/ItemInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$item:Lnet/oneplus/h2launcher/ItemInfo;

.field final synthetic val$itemId:J

.field final synthetic val$stackTrace:[Ljava/lang/StackTraceElement;

.field final synthetic val$uri:Landroid/net/Uri;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Lnet/oneplus/h2launcher/ItemInfo;J[Ljava/lang/StackTraceElement;)V
    .locals 1

    .prologue
    .line 743
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$7;->val$cr:Landroid/content/ContentResolver;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherModel$7;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lnet/oneplus/h2launcher/LauncherModel$7;->val$values:Landroid/content/ContentValues;

    iput-object p4, p0, Lnet/oneplus/h2launcher/LauncherModel$7;->val$item:Lnet/oneplus/h2launcher/ItemInfo;

    iput-wide p5, p0, Lnet/oneplus/h2launcher/LauncherModel$7;->val$itemId:J

    iput-object p7, p0, Lnet/oneplus/h2launcher/LauncherModel$7;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 745
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel$7;->val$cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$7;->val$uri:Landroid/net/Uri;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherModel$7;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 746
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel$7;->val$item:Lnet/oneplus/h2launcher/ItemInfo;

    iget-wide v2, p0, Lnet/oneplus/h2launcher/LauncherModel$7;->val$itemId:J

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherModel$7;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-static {v0, v2, v3, v1}, Lnet/oneplus/h2launcher/LauncherModel;->updateItemArrays(Lnet/oneplus/h2launcher/ItemInfo;J[Ljava/lang/StackTraceElement;)V

    .line 747
    return-void
.end method
