.class public Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
.super Ljava/lang/Object;
.source "AlphabeticalAppsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterItem"
.end annotation


# instance fields
.field public appIndex:I

.field public appInfo:Lnet/oneplus/h2launcher/AppInfo;

.field public position:I

.field public rowAppIndex:I

.field public rowIndex:I

.field public sectionAppIndex:I

.field public sectionInfo:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;

.field public sectionName:Ljava/lang/String;

.field public viewType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object v1, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    .line 101
    iput v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->sectionAppIndex:I

    .line 107
    iput-object v1, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->appInfo:Lnet/oneplus/h2launcher/AppInfo;

    .line 109
    iput v0, p0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->appIndex:I

    return-void
.end method

.method public static asApp(ILnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;Ljava/lang/String;ILnet/oneplus/h2launcher/AppInfo;I)Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2
    .param p0, "pos"    # I
    .param p1, "section"    # Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;
    .param p2, "sectionName"    # Ljava/lang/String;
    .param p3, "sectionAppIndex"    # I
    .param p4, "appInfo"    # Lnet/oneplus/h2launcher/AppInfo;
    .param p5, "appIndex"    # I

    .prologue
    .line 129
    new-instance v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    .line 130
    .local v0, "item":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    const/4 v1, 0x1

    iput v1, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 131
    iput p0, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 132
    iput-object p1, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->sectionInfo:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;

    .line 133
    iput-object p2, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    .line 134
    iput p3, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->sectionAppIndex:I

    .line 135
    iput-object p4, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->appInfo:Lnet/oneplus/h2launcher/AppInfo;

    .line 136
    iput p5, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->appIndex:I

    .line 137
    return-object v0
.end method

.method public static asDivider(I)Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2
    .param p0, "pos"    # I

    .prologue
    .line 148
    new-instance v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    .line 149
    .local v0, "item":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    const/4 v1, 0x4

    iput v1, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 150
    iput p0, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 151
    return-object v0
.end method

.method public static asEmptySearch(I)Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2
    .param p0, "pos"    # I

    .prologue
    .line 141
    new-instance v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    .line 142
    .local v0, "item":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    const/4 v1, 0x3

    iput v1, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 143
    iput p0, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 144
    return-object v0
.end method

.method public static asMarketSearch(I)Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2
    .param p0, "pos"    # I

    .prologue
    .line 155
    new-instance v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    .line 156
    .local v0, "item":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    const/4 v1, 0x5

    iput v1, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 157
    iput p0, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 158
    return-object v0
.end method

.method public static asPredictedApp(ILnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;Ljava/lang/String;ILnet/oneplus/h2launcher/AppInfo;I)Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2
    .param p0, "pos"    # I
    .param p1, "section"    # Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;
    .param p2, "sectionName"    # Ljava/lang/String;
    .param p3, "sectionAppIndex"    # I
    .param p4, "appInfo"    # Lnet/oneplus/h2launcher/AppInfo;
    .param p5, "appIndex"    # I

    .prologue
    .line 122
    invoke-static/range {p0 .. p5}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->asApp(ILnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;Ljava/lang/String;ILnet/oneplus/h2launcher/AppInfo;I)Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v0

    .line 123
    .local v0, "item":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    const/4 v1, 0x2

    iput v1, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 124
    return-object v0
.end method

.method public static asSectionBreak(ILnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;)Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2
    .param p0, "pos"    # I
    .param p1, "section"    # Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;

    .prologue
    .line 112
    new-instance v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    .line 113
    .local v0, "item":Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;
    const/4 v1, 0x0

    iput v1, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 114
    iput p0, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 115
    iput-object p1, v0, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;->sectionInfo:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;

    .line 116
    iput-object v0, p1, Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$SectionInfo;->sectionBreakItem:Lnet/oneplus/h2launcher/allapps/AlphabeticalAppsList$AdapterItem;

    .line 117
    return-object v0
.end method
