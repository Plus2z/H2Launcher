.class public Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;
.super Ljava/lang/Object;
.source "StickyGridHeadersBaseAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Position"
.end annotation


# instance fields
.field protected mHeader:I

.field protected mPosition:I

.field final synthetic this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;


# direct methods
.method protected constructor <init>(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;II)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;
    .param p2, "position"    # I
    .param p3, "header"    # I

    .prologue
    .line 467
    iput-object p1, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 468
    iput p2, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    .line 469
    iput p3, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mHeader:I

    .line 470
    return-void
.end method
