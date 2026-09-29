.class Lnet/oneplus/h2launcher/LauncherBackupHelper$InvalidBackupException;
.super Ljava/io/IOException;
.source "LauncherBackupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/LauncherBackupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InvalidBackupException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7bf2e87d9bce62baL


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/LauncherBackupHelper;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherBackupHelper;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/LauncherBackupHelper;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1205
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper$InvalidBackupException;->this$0:Lnet/oneplus/h2launcher/LauncherBackupHelper;

    .line 1206
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1207
    return-void
.end method

.method constructor <init>(Lnet/oneplus/h2launcher/LauncherBackupHelper;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/LauncherBackupHelper;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 1201
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherBackupHelper$InvalidBackupException;->this$0:Lnet/oneplus/h2launcher/LauncherBackupHelper;

    .line 1202
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 1203
    return-void
.end method
