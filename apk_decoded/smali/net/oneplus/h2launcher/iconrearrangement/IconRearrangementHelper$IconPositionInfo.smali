.class Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;
.super Ljava/lang/Object;
.source "IconRearrangementHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IconPositionInfo"
.end annotation


# instance fields
.field cellX:I

.field cellY:I

.field fromWorkspace:Z

.field inFolderIcon:Lnet/oneplus/h2launcher/FolderIcon;

.field parentLayout:Lnet/oneplus/h2launcher/CellLayout;

.field final synthetic this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    .prologue
    .line 923
    iput-object p1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
