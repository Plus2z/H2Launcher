.class public abstract Lnet/oneplus/h2launcher/IconDBHelper$DynamicIcon;
.super Ljava/lang/Object;
.source "IconDBHelper.java"

# interfaces
.implements Lnet/oneplus/h2launcher/IconDBHelper$CommonColumn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/IconDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "DynamicIcon"
.end annotation


# static fields
.field public static final COLUMN_CONFIG:Ljava/lang/String; = "config"


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/IconDBHelper;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/IconDBHelper;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/IconDBHelper;

    .prologue
    .line 52
    iput-object p1, p0, Lnet/oneplus/h2launcher/IconDBHelper$DynamicIcon;->this$0:Lnet/oneplus/h2launcher/IconDBHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
