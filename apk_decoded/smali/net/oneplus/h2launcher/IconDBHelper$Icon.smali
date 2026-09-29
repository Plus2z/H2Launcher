.class public abstract Lnet/oneplus/h2launcher/IconDBHelper$Icon;
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
    name = "Icon"
.end annotation


# static fields
.field public static final COLUMN_ICON:Ljava/lang/String; = "icon"

.field public static final COLUMN_ICON_LOW_RES:Ljava/lang/String; = "icon_low_res"

.field public static final COLUMN_ICON_TYPE:Ljava/lang/String; = "iconType"

.field public static final COLUMN_LABEL:Ljava/lang/String; = "label"

.field public static final COLUMN_LAST_UPDATED:Ljava/lang/String; = "lastUpdated"

.field public static final COLUMN_SYSTEM_STATE:Ljava/lang/String; = "system_state"

.field public static final COLUMN_VERSION:Ljava/lang/String; = "version"

.field public static final ICON_TYPE_CUSTOM:I = 0x3

.field public static final ICON_TYPE_DEFAULT:I = 0x0

.field public static final ICON_TYPE_DYNAMIC:I = 0x1

.field public static final ICON_TYPE_DYNAMIC_ICON_CACHE:I = 0x4

.field public static final ICON_TYPE_ICONPACK:I = 0x2


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/IconDBHelper;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/IconDBHelper;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/IconDBHelper;

    .prologue
    .line 36
    iput-object p1, p0, Lnet/oneplus/h2launcher/IconDBHelper$Icon;->this$0:Lnet/oneplus/h2launcher/IconDBHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
