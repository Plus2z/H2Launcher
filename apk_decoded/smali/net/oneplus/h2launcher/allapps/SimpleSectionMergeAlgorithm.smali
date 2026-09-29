.class final Lnet/oneplus/h2launcher/allapps/SimpleSectionMergeAlgorithm;
.super Ljava/lang/Object;
.source "AllAppsContainerView.java"

# interfaces
.implements Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$MergeAlgorithm;


# instance fields
.field private mAsciiEncoder:Ljava/nio/charset/CharsetEncoder;

.field private mMaxAllowableMerges:I

.field private mMinAppsPerRow:I

.field private mMinRowsInMergedSection:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "minAppsPerRow"    # I
    .param p2, "minRowsInMergedSection"    # I
    .param p3, "maxNumMerges"    # I

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput p1, p0, Lnet/oneplus/h2launcher/allapps/SimpleSectionMergeAlgorithm;->mMinAppsPerRow:I

    .line 97
    iput p2, p0, Lnet/oneplus/h2launcher/allapps/SimpleSectionMergeAlgorithm;->mMinRowsInMergedSection:I

    .line 98
    iput p3, p0, Lnet/oneplus/h2launcher/allapps/SimpleSectionMergeAlgorithm;->mMaxAllowableMerges:I

    .line 99
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/allapps/SimpleSectionMergeAlgorithm;->mAsciiEncoder:Ljava/nio/charset/CharsetEncoder;

    .line 100
    return-void
.end method


# virtual methods
.method public continueMerging(Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;III)Z
    .locals 8
    .param p1, "section"    # Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;
    .param p2, "withSection"    # Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;
    .param p3, "sectionAppCount"    # I
    .param p4, "numAppsPerRow"    # I
    .param p5, "mergeCount"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 107
    iget-object v5, p1, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    iget v5, v5, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    if-eq v5, v3, :cond_0

    .line 124
    :goto_0
    return v4

    .line 114
    :cond_0
    div-int v2, p3, p4

    .line 115
    .local v2, "rows":I
    rem-int v0, p3, p4

    .line 119
    .local v0, "cols":I
    const/4 v1, 0x0

    .line 120
    .local v1, "isCrossScript":Z
    iget-object v5, p1, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    if-eqz v5, :cond_1

    iget-object v5, p2, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    if-eqz v5, :cond_1

    .line 121
    iget-object v5, p0, Lnet/oneplus/h2launcher/allapps/SimpleSectionMergeAlgorithm;->mAsciiEncoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v6, p1, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v6, v6, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v5

    iget-object v6, p0, Lnet/oneplus/h2launcher/allapps/SimpleSectionMergeAlgorithm;->mAsciiEncoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v7, p2, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v7, v7, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    .line 122
    invoke-virtual {v6, v7}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eq v5, v6, :cond_2

    move v1, v3

    .line 124
    :cond_1
    :goto_1
    if-lez v0, :cond_3

    iget v5, p0, Lnet/oneplus/h2launcher/allapps/SimpleSectionMergeAlgorithm;->mMinAppsPerRow:I

    if-ge v0, v5, :cond_3

    iget v5, p0, Lnet/oneplus/h2launcher/allapps/SimpleSectionMergeAlgorithm;->mMinRowsInMergedSection:I

    if-ge v2, v5, :cond_3

    iget v5, p0, Lnet/oneplus/h2launcher/allapps/SimpleSectionMergeAlgorithm;->mMaxAllowableMerges:I

    if-ge p5, v5, :cond_3

    if-nez v1, :cond_3

    :goto_2
    move v4, v3

    goto :goto_0

    :cond_2
    move v1, v4

    .line 122
    goto :goto_1

    :cond_3
    move v3, v4

    .line 124
    goto :goto_2
.end method
