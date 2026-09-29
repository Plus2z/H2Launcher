.class public Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;
.super Ljava/lang/Object;
.source "LauncherAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DragInfo"
.end annotation


# instance fields
.field public dragType:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragType;

.field public info:Lnet/oneplus/h2launcher/ItemInfo;

.field public item:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
