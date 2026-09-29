.class interface abstract Lcom/crashlytics/android/core/Report;
.super Ljava/lang/Object;
.source "Report.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/core/Report$Type;
    }
.end annotation


# virtual methods
.method public abstract getCustomHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFile()Ljava/io/File;
.end method

.method public abstract getFileName()Ljava/lang/String;
.end method

.method public abstract getFiles()[Ljava/io/File;
.end method

.method public abstract getIdentifier()Ljava/lang/String;
.end method

.method public abstract getType()Lcom/crashlytics/android/core/Report$Type;
.end method

.method public abstract remove()V
.end method
