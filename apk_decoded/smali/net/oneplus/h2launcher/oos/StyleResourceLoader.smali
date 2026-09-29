.class Lnet/oneplus/h2launcher/oos/StyleResourceLoader;
.super Lnet/oneplus/h2launcher/oos/BaseLoader;
.source "StyleResourceLoader.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/oos/BaseLoader;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method private getDefaultWallpaper(Ljava/lang/String;I)I
    .locals 4
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "layout"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 193
    if-ne p2, v0, :cond_1

    .line 194
    .local v0, "isSimplified":Z
    :goto_0
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    move v1, v2

    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 200
    const-string v1, "16859"

    invoke-direct {p0, v1, p2}, Lnet/oneplus/h2launcher/oos/StyleResourceLoader;->getDefaultWallpaper(Ljava/lang/String;I)I

    move-result v1

    :goto_2
    return v1

    .end local v0    # "isSimplified":Z
    :cond_1
    move v0, v1

    .line 193
    goto :goto_0

    .line 194
    .restart local v0    # "isSimplified":Z
    :pswitch_0
    const-string v3, "16859"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 196
    :pswitch_1
    if-eqz v0, :cond_2

    const v1, 0x7f020269

    goto :goto_2

    :cond_2
    const v1, 0x7f02026d

    goto :goto_2

    .line 194
    :pswitch_data_0
    .packed-switch 0x2cbe497
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private getDefaultWallpaperColor(Ljava/lang/String;)I
    .locals 2
    .param p1, "device"    # Ljava/lang/String;

    .prologue
    .line 168
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 172
    const-string v0, "16859"

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/oos/StyleResourceLoader;->getDefaultWallpaperColor(Ljava/lang/String;)I

    move-result v0

    :goto_1
    return v0

    .line 168
    :pswitch_0
    const-string v1, "16859"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 170
    :pswitch_1
    const/high16 v0, 0x7f0e0000

    goto :goto_1

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x2cbe497
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private getDefaultWallpaperIndex(Ljava/lang/String;II)I
    .locals 4
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "screen"    # I
    .param p3, "layout"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 177
    if-ne p3, v0, :cond_1

    .line 178
    .local v0, "isSimplified":Z
    :goto_0
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    move v1, v2

    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 188
    const-string v1, "16859"

    invoke-direct {p0, v1, p2, p3}, Lnet/oneplus/h2launcher/oos/StyleResourceLoader;->getDefaultWallpaperIndex(Ljava/lang/String;II)I

    move-result v1

    :goto_2
    return v1

    .end local v0    # "isSimplified":Z
    :cond_1
    move v0, v1

    .line 177
    goto :goto_0

    .line 178
    .restart local v0    # "isSimplified":Z
    :pswitch_0
    const-string v3, "16859"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 180
    :pswitch_1
    if-nez p2, :cond_3

    if-eqz v0, :cond_2

    const/high16 v1, 0x7f0f0000

    goto :goto_2

    :cond_2
    const v1, 0x7f0f0004

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    const v1, 0x7f0f0008

    goto :goto_2

    :cond_4
    const v1, 0x7f0f000c

    goto :goto_2

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x2cbe497
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private getLandscapeWallpaper(Ljava/lang/String;)I
    .locals 2
    .param p1, "device"    # Ljava/lang/String;

    .prologue
    .line 74
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 86
    const v0, 0x7f0d0041

    :goto_1
    return v0

    .line 74
    :sswitch_0
    const-string v1, "15801"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "15811"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "16859"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "17801"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "17819"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "18801"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 77
    :pswitch_0
    const v0, 0x7f0d0042

    goto :goto_1

    .line 79
    :pswitch_1
    const v0, 0x7f0d004c

    goto :goto_1

    .line 81
    :pswitch_2
    const v0, 0x7f0d0040

    goto :goto_1

    .line 84
    :pswitch_3
    const v0, 0x7f0d0043

    goto :goto_1

    .line 74
    nop

    :sswitch_data_0
    .sparse-switch
        0x2cb6f95 -> :sswitch_0
        0x2cb6fb4 -> :sswitch_1
        0x2cbe497 -> :sswitch_2
        0x2cc5853 -> :sswitch_3
        0x2cc587a -> :sswitch_4
        0x2ccccb2 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private getPortraitOverlayWallpapers(Ljava/lang/String;)I
    .locals 2
    .param p1, "device"    # Ljava/lang/String;

    .prologue
    .line 111
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 123
    const v0, 0x7f0d0049

    :goto_1
    return v0

    .line 111
    :sswitch_0
    const-string v1, "15801"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "15811"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "16859"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "17801"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "17819"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "18801"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 114
    :pswitch_0
    const v0, 0x7f0d004a

    goto :goto_1

    .line 116
    :pswitch_1
    const v0, 0x7f0d004e

    goto :goto_1

    .line 118
    :pswitch_2
    const v0, 0x7f0d0048

    goto :goto_1

    .line 121
    :pswitch_3
    const v0, 0x7f0d004b

    goto :goto_1

    .line 111
    nop

    :sswitch_data_0
    .sparse-switch
        0x2cb6f95 -> :sswitch_0
        0x2cb6fb4 -> :sswitch_1
        0x2cbe497 -> :sswitch_2
        0x2cc5853 -> :sswitch_3
        0x2cc587a -> :sswitch_4
        0x2ccccb2 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private getPortraitWallpapers(Ljava/lang/String;I)I
    .locals 5
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "layout"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 91
    if-ne p2, v1, :cond_1

    move v0, v1

    .line 92
    .local v0, "isSimplified":Z
    :goto_0
    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    move v2, v3

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 106
    const v1, 0x7f0d0045

    :goto_2
    return v1

    .end local v0    # "isSimplified":Z
    :cond_1
    move v0, v2

    .line 91
    goto :goto_0

    .line 92
    .restart local v0    # "isSimplified":Z
    :sswitch_0
    const-string v1, "15801"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :sswitch_1
    const-string v2, "15811"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_1

    :sswitch_2
    const-string v1, "16859"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "17801"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_4
    const-string v1, "17819"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_5
    const-string v1, "18801"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x5

    goto :goto_1

    .line 95
    :pswitch_0
    const v1, 0x7f0d0046

    goto :goto_2

    .line 97
    :pswitch_1
    if-eqz v0, :cond_2

    const v1, 0x7f0d004d

    goto :goto_2

    :cond_2
    const v1, 0x7f0d004f

    goto :goto_2

    .line 101
    :pswitch_2
    const v1, 0x7f0d0044

    goto :goto_2

    .line 104
    :pswitch_3
    const v1, 0x7f0d0047

    goto :goto_2

    .line 92
    :sswitch_data_0
    .sparse-switch
        0x2cb6f95 -> :sswitch_0
        0x2cb6fb4 -> :sswitch_1
        0x2cbe497 -> :sswitch_2
        0x2cc5853 -> :sswitch_3
        0x2cc587a -> :sswitch_4
        0x2ccccb2 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private getWallpaperNames(Ljava/lang/String;I)I
    .locals 5
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "layout"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 128
    if-ne p2, v1, :cond_1

    move v0, v1

    .line 129
    .local v0, "isSimplified":Z
    :goto_0
    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    move v2, v3

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 143
    const v1, 0x7f0d0035

    :goto_2
    return v1

    .end local v0    # "isSimplified":Z
    :cond_1
    move v0, v2

    .line 128
    goto :goto_0

    .line 129
    .restart local v0    # "isSimplified":Z
    :sswitch_0
    const-string v1, "15801"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :sswitch_1
    const-string v2, "15811"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_1

    :sswitch_2
    const-string v1, "16859"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "17801"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_4
    const-string v1, "17819"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_5
    const-string v1, "18801"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x5

    goto :goto_1

    .line 132
    :pswitch_0
    const v1, 0x7f0d0036

    goto :goto_2

    .line 134
    :pswitch_1
    if-eqz v0, :cond_2

    const v1, 0x7f0d0038

    goto :goto_2

    :cond_2
    const v1, 0x7f0d0039

    goto :goto_2

    .line 138
    :pswitch_2
    const v1, 0x7f0d0034

    goto :goto_2

    .line 141
    :pswitch_3
    const v1, 0x7f0d0037

    goto :goto_2

    .line 129
    :sswitch_data_0
    .sparse-switch
        0x2cb6f95 -> :sswitch_0
        0x2cb6fb4 -> :sswitch_1
        0x2cbe497 -> :sswitch_2
        0x2cc5853 -> :sswitch_3
        0x2cc587a -> :sswitch_4
        0x2ccccb2 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private getWallpaperThumbs(Ljava/lang/String;I)I
    .locals 5
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "layout"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 148
    if-ne p2, v1, :cond_1

    move v0, v1

    .line 149
    .local v0, "isSimplified":Z
    :goto_0
    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    move v2, v3

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 163
    const v1, 0x7f0d003b

    :goto_2
    return v1

    .end local v0    # "isSimplified":Z
    :cond_1
    move v0, v2

    .line 148
    goto :goto_0

    .line 149
    .restart local v0    # "isSimplified":Z
    :sswitch_0
    const-string v1, "15801"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :sswitch_1
    const-string v2, "15811"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_1

    :sswitch_2
    const-string v1, "16859"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "17801"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_4
    const-string v1, "17819"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_5
    const-string v1, "18801"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x5

    goto :goto_1

    .line 152
    :pswitch_0
    const v1, 0x7f0d003c

    goto :goto_2

    .line 154
    :pswitch_1
    if-eqz v0, :cond_2

    const v1, 0x7f0d003e

    goto :goto_2

    :cond_2
    const v1, 0x7f0d003f

    goto :goto_2

    .line 158
    :pswitch_2
    const v1, 0x7f0d003a

    goto :goto_2

    .line 161
    :pswitch_3
    const v1, 0x7f0d003d

    goto :goto_2

    .line 149
    :sswitch_data_0
    .sparse-switch
        0x2cb6f95 -> :sswitch_0
        0x2cb6fb4 -> :sswitch_1
        0x2cbe497 -> :sswitch_2
        0x2cc5853 -> :sswitch_3
        0x2cc587a -> :sswitch_4
        0x2ccccb2 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public load(Lnet/oneplus/h2launcher/oos/StyleLoaderCallback;)V
    .locals 10
    .param p1, "styleLoaderCallback"    # Lnet/oneplus/h2launcher/oos/StyleLoaderCallback;

    .prologue
    const v4, 0x7f020112

    const v5, 0x7f0200f5

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 18
    new-instance v3, Lnet/oneplus/h2launcher/oos/StyleResourceInfo;

    invoke-direct {v3}, Lnet/oneplus/h2launcher/oos/StyleResourceInfo;-><init>()V

    .line 19
    .local v3, "styleResourceInfo":Lnet/oneplus/h2launcher/oos/StyleResourceInfo;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 20
    .local v2, "resourceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {}, Lnet/oneplus/h2launcher/Utilities;->getDeviceTag()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "device":Ljava/lang/String;
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->isSimplifiedLayout()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 23
    const/4 v1, 0x1

    .line 24
    .local v1, "layout":I
    const-string v6, "launcher_layout"

    const v7, 0x7f040071

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v6, "workspace_xml"

    const v7, 0x7f08000a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v6, "workspace_screen_options_translation_y"

    const v7, 0x7f0c003c

    .line 27
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 26
    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v6, "system_default_icons"

    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->isO2Device()Z

    move-result v7

    if-eqz v7, :cond_1

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v4, "landscape_wallpapers"

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/oos/StyleResourceLoader;->getLandscapeWallpaper(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v4, "portrait_wallpapers"

    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/oos/StyleResourceLoader;->getPortraitWallpapers(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v4, "portrait_overlay_wallpapers"

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/oos/StyleResourceLoader;->getPortraitOverlayWallpapers(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v4, "wallpaper_names"

    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/oos/StyleResourceLoader;->getWallpaperNames(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v4, "wallpaper_thumbnails"

    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/oos/StyleResourceLoader;->getWallpaperThumbs(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v4, "default_wallpapers"

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/oos/StyleResourceLoader;->getLandscapeWallpaper(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v4, "default_wallpaper_index"

    .line 37
    invoke-direct {p0, v0, v9, v1}, Lnet/oneplus/h2launcher/oos/StyleResourceLoader;->getDefaultWallpaperIndex(Ljava/lang/String;II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 36
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v4, "default_lock_wallpapers"

    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/oos/StyleResourceLoader;->getPortraitWallpapers(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v4, "default_lock_wallpaper_index"

    .line 40
    invoke-direct {p0, v0, v8, v1}, Lnet/oneplus/h2launcher/oos/StyleResourceLoader;->getDefaultWallpaperIndex(Ljava/lang/String;II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 39
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .end local v1    # "layout":I
    :cond_0
    :goto_1
    const-string v4, "default_simplified_wallpaper"

    invoke-direct {p0, v0, v9}, Lnet/oneplus/h2launcher/oos/StyleResourceLoader;->getDefaultWallpaper(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v4, "default_standard_wallpaper"

    invoke-direct {p0, v0, v8}, Lnet/oneplus/h2launcher/oos/StyleResourceLoader;->getDefaultWallpaper(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v4, "default_wallpaper_color"

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/oos/StyleResourceLoader;->getDefaultWallpaperColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-virtual {v3, v2}, Lnet/oneplus/h2launcher/oos/StyleResourceInfo;->fillStyleResourceInfo(Ljava/util/HashMap;)V

    .line 65
    invoke-interface {p1, v3}, Lnet/oneplus/h2launcher/oos/StyleLoaderCallback;->onStyleResourceLoaded(Lnet/oneplus/h2launcher/oos/StyleResourceInfo;)V

    .line 66
    return-void

    .restart local v1    # "layout":I
    :cond_1
    move v4, v5

    .line 28
    goto/16 :goto_0

    .line 41
    .end local v1    # "layout":I
    :cond_2
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->isStandardLayout()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 42
    const/4 v1, 0x0

    .line 43
    .restart local v1    # "layout":I
    const-string v6, "launcher_layout"

    const v7, 0x7f040072

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v6, "workspace_xml"

    const v7, 0x7f08000e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v6, "workspace_screen_options_translation_y"

    const v7, 0x7f0c003d

    .line 46
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 45
    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v6, "system_default_icons"

    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->isO2Device()Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v4, "landscape_wallpapers"

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/oos/StyleResourceLoader;->getLandscapeWallpaper(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v4, "portrait_wallpapers"

    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/oos/StyleResourceLoader;->getPortraitWallpapers(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v4, "wallpaper_names"

    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/oos/StyleResourceLoader;->getWallpaperNames(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v4, "wallpaper_thumbnails"

    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/oos/StyleResourceLoader;->getWallpaperThumbs(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v4, "default_wallpapers"

    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/oos/StyleResourceLoader;->getPortraitWallpapers(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v4, "default_wallpaper_index"

    .line 55
    invoke-direct {p0, v0, v9, v1}, Lnet/oneplus/h2launcher/oos/StyleResourceLoader;->getDefaultWallpaperIndex(Ljava/lang/String;II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 54
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v4, "default_lock_wallpapers"

    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/oos/StyleResourceLoader;->getPortraitWallpapers(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v4, "default_lock_wallpaper_index"

    .line 58
    invoke-direct {p0, v0, v8, v1}, Lnet/oneplus/h2launcher/oos/StyleResourceLoader;->getDefaultWallpaperIndex(Ljava/lang/String;II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 57
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_3
    move v4, v5

    .line 47
    goto :goto_2
.end method

.method protected reload()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method
