.class final Lnet/oneplus/h2launcher/allapps/FullMergeAlgorithm;
.super Ljava/lang/Object;
.source "AllAppsContainerView.java"

# interfaces
.implements Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$MergeAlgorithm;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public continueMerging(Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;III)Z
    .locals 2
    .param p1, "section"    # Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;
    .param p2, "withSection"    # Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;
    .param p3, "sectionAppCount"    # I
    .param p4, "numAppsPerRow"    # I
    .param p5, "mergeCount"    # I

    .prologue
    const/4 v0, 0x1

    .line 75
    iget-object v1, p1, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    iget v1, v1, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    if-eq v1, v0, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 79
    :cond_0
    return v0
.end method
