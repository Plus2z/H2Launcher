.class interface abstract Lcom/crashlytics/android/core/ReportUploader$ReportFilesProvider;
.super Ljava/lang/Object;
.source "ReportUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/ReportUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ReportFilesProvider"
.end annotation


# virtual methods
.method public abstract getCompleteSessionFiles()[Ljava/io/File;
.end method

.method public abstract getInvalidSessionFiles()[Ljava/io/File;
.end method

.method public abstract getNativeReportFiles()[Ljava/io/File;
.end method
