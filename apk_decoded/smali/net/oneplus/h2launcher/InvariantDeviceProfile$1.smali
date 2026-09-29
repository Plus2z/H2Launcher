.class Lnet/oneplus/h2launcher/InvariantDeviceProfile$1;
.super Ljava/lang/Object;
.source "InvariantDeviceProfile.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/InvariantDeviceProfile;->findClosestDeviceProfiles(FFLjava/util/ArrayList;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lnet/oneplus/h2launcher/InvariantDeviceProfile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

.field final synthetic val$height:F

.field final synthetic val$width:F


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/InvariantDeviceProfile;FF)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    .prologue
    .line 350
    iput-object p1, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile$1;->this$0:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    iput p2, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile$1;->val$width:F

    iput p3, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile$1;->val$height:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 350
    check-cast p1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    check-cast p2, Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/InvariantDeviceProfile$1;->compare(Lnet/oneplus/h2launcher/InvariantDeviceProfile;Lnet/oneplus/h2launcher/InvariantDeviceProfile;)I

    move-result v0

    return v0
.end method

.method public compare(Lnet/oneplus/h2launcher/InvariantDeviceProfile;Lnet/oneplus/h2launcher/InvariantDeviceProfile;)I
    .locals 6
    .param p1, "a"    # Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    .param p2, "b"    # Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    .prologue
    .line 352
    iget-object v0, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile$1;->this$0:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    iget v1, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile$1;->val$width:F

    iget v2, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile$1;->val$height:F

    iget v3, p1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->minWidthDps:F

    iget v4, p1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->minHeightDps:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->dist(FFFF)F

    move-result v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile$1;->this$0:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    iget v2, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile$1;->val$width:F

    iget v3, p0, Lnet/oneplus/h2launcher/InvariantDeviceProfile$1;->val$height:F

    iget v4, p2, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->minWidthDps:F

    iget v5, p2, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->minHeightDps:F

    .line 353
    invoke-virtual {v1, v2, v3, v4, v5}, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->dist(FFFF)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
