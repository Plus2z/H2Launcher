.class Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;
.super Ljava/lang/RuntimeException;
.source "StickyGridHeadersGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RuntimePlatformSupportException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5a5f9f5d38e819daL


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1183
    iput-object p1, p0, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;->this$0:Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;

    .line 1184
    invoke-static {}, Lnet/oneplus/h2launcher/stickygridheaders/StickyGridHeadersGridView;->access$700()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1185
    return-void
.end method
