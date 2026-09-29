.class public Lnet/oneplus/gallery3d/exif/ExifTag;
.super Ljava/lang/Object;
.source "ExifTag.java"


# static fields
.field private static final LONG_MAX:J = 0x7fffffffL

.field private static final LONG_MIN:J = -0x80000000L

.field static final SIZE_UNDEFINED:I = 0x0

.field private static final TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final TYPE_ASCII:S = 0x2s

.field public static final TYPE_LONG:S = 0x9s

.field public static final TYPE_RATIONAL:S = 0xas

.field private static final TYPE_TO_SIZE_MAP:[I

.field public static final TYPE_UNDEFINED:S = 0x7s

.field public static final TYPE_UNSIGNED_BYTE:S = 0x1s

.field public static final TYPE_UNSIGNED_LONG:S = 0x4s

.field public static final TYPE_UNSIGNED_RATIONAL:S = 0x5s

.field public static final TYPE_UNSIGNED_SHORT:S = 0x3s

.field private static final UNSIGNED_LONG_MAX:J = 0xffffffffL

.field private static final UNSIGNED_SHORT_MAX:I = 0xffff

.field private static US_ASCII:Ljava/nio/charset/Charset;


# instance fields
.field private mComponentCountActual:I

.field private final mDataType:S

.field private mHasDefinedDefaultComponentCount:Z

.field private mIfd:I

.field private mOffset:I

.field private final mTagId:S

.field private mValue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 71
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lnet/oneplus/gallery3d/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    .line 72
    const/16 v0, 0xb

    new-array v0, v0, [I

    sput-object v0, Lnet/oneplus/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    .line 79
    sget-object v0, Lnet/oneplus/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    aput v2, v0, v2

    .line 80
    sget-object v0, Lnet/oneplus/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    aput v2, v0, v4

    .line 81
    sget-object v0, Lnet/oneplus/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v1, 0x3

    aput v4, v0, v1

    .line 82
    sget-object v0, Lnet/oneplus/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    aput v3, v0, v3

    .line 83
    sget-object v0, Lnet/oneplus/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v1, 0x5

    aput v5, v0, v1

    .line 84
    sget-object v0, Lnet/oneplus/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 85
    sget-object v0, Lnet/oneplus/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/16 v1, 0x9

    aput v3, v0, v1

    .line 86
    sget-object v0, Lnet/oneplus/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/16 v1, 0xa

    aput v5, v0, v1

    .line 106
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd kk:mm:ss"

    .line 107
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lnet/oneplus/gallery3d/exif/ExifTag;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    .line 106
    return-void
.end method

.method constructor <init>(SSIIZ)V
    .locals 1
    .param p1, "tagId"    # S
    .param p2, "type"    # S
    .param p3, "componentCount"    # I
    .param p4, "ifd"    # I
    .param p5, "hasDefinedComponentCount"    # Z

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-short p1, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mTagId:S

    .line 132
    iput-short p2, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mDataType:S

    .line 133
    iput p3, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mComponentCountActual:I

    .line 134
    iput-boolean p5, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    .line 135
    iput p4, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mIfd:I

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 137
    return-void
.end method

.method private checkBadComponentCount(I)Z
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 885
    iget-boolean v0, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mComponentCountActual:I

    if-eq v0, p1, :cond_0

    .line 886
    const/4 v0, 0x1

    .line 888
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkOverflowForRational([Lnet/oneplus/gallery3d/exif/Rational;)Z
    .locals 10
    .param p1, "value"    # [Lnet/oneplus/gallery3d/exif/Rational;

    .prologue
    const-wide/32 v8, 0x7fffffff

    const-wide/32 v6, -0x80000000

    const/4 v1, 0x0

    .line 953
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    .line 954
    .local v0, "v":Lnet/oneplus/gallery3d/exif/Rational;
    invoke-virtual {v0}, Lnet/oneplus/gallery3d/exif/Rational;->getNumerator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    invoke-virtual {v0}, Lnet/oneplus/gallery3d/exif/Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 955
    invoke-virtual {v0}, Lnet/oneplus/gallery3d/exif/Rational;->getNumerator()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-gtz v4, :cond_0

    .line 956
    invoke-virtual {v0}, Lnet/oneplus/gallery3d/exif/Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_2

    .line 957
    :cond_0
    const/4 v1, 0x1

    .line 960
    .end local v0    # "v":Lnet/oneplus/gallery3d/exif/Rational;
    :cond_1
    return v1

    .line 953
    .restart local v0    # "v":Lnet/oneplus/gallery3d/exif/Rational;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private checkOverflowForUnsignedLong([I)Z
    .locals 4
    .param p1, "value"    # [I

    .prologue
    const/4 v1, 0x0

    .line 933
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, p1, v2

    .line 934
    .local v0, "v":I
    if-gez v0, :cond_1

    .line 935
    const/4 v1, 0x1

    .line 938
    .end local v0    # "v":I
    :cond_0
    return v1

    .line 933
    .restart local v0    # "v":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private checkOverflowForUnsignedLong([J)Z
    .locals 8
    .param p1, "value"    # [J

    .prologue
    const/4 v2, 0x0

    .line 924
    array-length v4, p1

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-wide v0, p1, v3

    .line 925
    .local v0, "v":J
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-ltz v5, :cond_0

    const-wide v6, 0xffffffffL

    cmp-long v5, v0, v6

    if-lez v5, :cond_2

    .line 926
    :cond_0
    const/4 v2, 0x1

    .line 929
    .end local v0    # "v":J
    :cond_1
    return v2

    .line 924
    .restart local v0    # "v":J
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private checkOverflowForUnsignedRational([Lnet/oneplus/gallery3d/exif/Rational;)Z
    .locals 10
    .param p1, "value"    # [Lnet/oneplus/gallery3d/exif/Rational;

    .prologue
    const-wide v8, 0xffffffffL

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 942
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    .line 943
    .local v0, "v":Lnet/oneplus/gallery3d/exif/Rational;
    invoke-virtual {v0}, Lnet/oneplus/gallery3d/exif/Rational;->getNumerator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    invoke-virtual {v0}, Lnet/oneplus/gallery3d/exif/Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 944
    invoke-virtual {v0}, Lnet/oneplus/gallery3d/exif/Rational;->getNumerator()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-gtz v4, :cond_0

    .line 945
    invoke-virtual {v0}, Lnet/oneplus/gallery3d/exif/Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_2

    .line 946
    :cond_0
    const/4 v1, 0x1

    .line 949
    .end local v0    # "v":Lnet/oneplus/gallery3d/exif/Rational;
    :cond_1
    return v1

    .line 942
    .restart local v0    # "v":Lnet/oneplus/gallery3d/exif/Rational;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private checkOverflowForUnsignedShort([I)Z
    .locals 5
    .param p1, "value"    # [I

    .prologue
    const/4 v1, 0x0

    .line 915
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget v0, p1, v2

    .line 916
    .local v0, "v":I
    const v4, 0xffff

    if-gt v0, v4, :cond_0

    if-gez v0, :cond_2

    .line 917
    :cond_0
    const/4 v1, 0x1

    .line 920
    .end local v0    # "v":I
    :cond_1
    return v1

    .line 915
    .restart local v0    # "v":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static convertTypeToString(S)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # S

    .prologue
    .line 892
    packed-switch p0, :pswitch_data_0

    .line 910
    :pswitch_0
    const-string v0, ""

    :goto_0
    return-object v0

    .line 894
    :pswitch_1
    const-string v0, "UNSIGNED_BYTE"

    goto :goto_0

    .line 896
    :pswitch_2
    const-string v0, "ASCII"

    goto :goto_0

    .line 898
    :pswitch_3
    const-string v0, "UNSIGNED_SHORT"

    goto :goto_0

    .line 900
    :pswitch_4
    const-string v0, "UNSIGNED_LONG"

    goto :goto_0

    .line 902
    :pswitch_5
    const-string v0, "UNSIGNED_RATIONAL"

    goto :goto_0

    .line 904
    :pswitch_6
    const-string v0, "UNDEFINED"

    goto :goto_0

    .line 906
    :pswitch_7
    const-string v0, "LONG"

    goto :goto_0

    .line 908
    :pswitch_8
    const-string v0, "RATIONAL"

    goto :goto_0

    .line 892
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static getElementSize(S)I
    .locals 1
    .param p0, "type"    # S

    .prologue
    .line 152
    sget-object v0, Lnet/oneplus/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    aget v0, v0, p0

    return v0
.end method

.method public static isValidIfd(I)Z
    .locals 2
    .param p0, "ifdId"    # I

    .prologue
    const/4 v0, 0x1

    .line 113
    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidType(S)Z
    .locals 2
    .param p0, "type"    # S

    .prologue
    const/4 v0, 0x1

    .line 122
    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    const/16 v1, 0xa

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 965
    if-nez p1, :cond_1

    .line 1000
    :cond_0
    :goto_0
    return v1

    .line 968
    :cond_1
    instance-of v2, p1, Lnet/oneplus/gallery3d/exif/ExifTag;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 969
    check-cast v0, Lnet/oneplus/gallery3d/exif/ExifTag;

    .line 970
    .local v0, "tag":Lnet/oneplus/gallery3d/exif/ExifTag;
    iget-short v2, v0, Lnet/oneplus/gallery3d/exif/ExifTag;->mTagId:S

    iget-short v3, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mTagId:S

    if-ne v2, v3, :cond_0

    iget v2, v0, Lnet/oneplus/gallery3d/exif/ExifTag;->mComponentCountActual:I

    iget v3, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mComponentCountActual:I

    if-ne v2, v3, :cond_0

    iget-short v2, v0, Lnet/oneplus/gallery3d/exif/ExifTag;->mDataType:S

    iget-short v3, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mDataType:S

    if-ne v2, v3, :cond_0

    .line 975
    iget-object v2, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-eqz v2, :cond_5

    .line 976
    iget-object v2, v0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 978
    iget-object v2, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [J

    if-eqz v2, :cond_2

    .line 979
    iget-object v2, v0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [J

    if-eqz v2, :cond_0

    .line 982
    iget-object v1, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [J

    check-cast v1, [J

    iget-object v2, v0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v2, [J

    check-cast v2, [J

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    goto :goto_0

    .line 983
    :cond_2
    iget-object v2, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [Lnet/oneplus/gallery3d/exif/Rational;

    if-eqz v2, :cond_3

    .line 984
    iget-object v2, v0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [Lnet/oneplus/gallery3d/exif/Rational;

    if-eqz v2, :cond_0

    .line 987
    iget-object v1, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [Lnet/oneplus/gallery3d/exif/Rational;

    check-cast v1, [Lnet/oneplus/gallery3d/exif/Rational;

    iget-object v2, v0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v2, [Lnet/oneplus/gallery3d/exif/Rational;

    check-cast v2, [Lnet/oneplus/gallery3d/exif/Rational;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 988
    :cond_3
    iget-object v2, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [B

    if-eqz v2, :cond_4

    .line 989
    iget-object v2, v0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [B

    if-eqz v2, :cond_0

    .line 992
    iget-object v1, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    iget-object v2, v0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_0

    .line 994
    :cond_4
    iget-object v1, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    iget-object v2, v0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0

    .line 997
    :cond_5
    iget-object v2, v0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public forceGetValueAsLong(J)J
    .locals 9
    .param p1, "defaultValue"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 731
    invoke-virtual {p0}, Lnet/oneplus/gallery3d/exif/ExifTag;->getValueAsLongs()[J

    move-result-object v1

    .line 732
    .local v1, "l":[J
    if-eqz v1, :cond_1

    array-length v3, v1

    if-lt v3, v4, :cond_1

    .line 733
    aget-wide p1, v1, v8

    .line 743
    .end local p1    # "defaultValue":J
    :cond_0
    :goto_0
    return-wide p1

    .line 735
    .restart local p1    # "defaultValue":J
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/gallery3d/exif/ExifTag;->getValueAsBytes()[B

    move-result-object v0

    .line 736
    .local v0, "b":[B
    if-eqz v0, :cond_2

    array-length v3, v0

    if-lt v3, v4, :cond_2

    .line 737
    aget-byte v3, v0, v8

    int-to-long p1, v3

    goto :goto_0

    .line 739
    :cond_2
    invoke-virtual {p0}, Lnet/oneplus/gallery3d/exif/ExifTag;->getValueAsRationals()[Lnet/oneplus/gallery3d/exif/Rational;

    move-result-object v2

    .line 740
    .local v2, "r":[Lnet/oneplus/gallery3d/exif/Rational;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lt v3, v4, :cond_0

    aget-object v3, v2, v8

    invoke-virtual {v3}, Lnet/oneplus/gallery3d/exif/Rational;->getDenominator()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 741
    aget-object v3, v2, v8

    invoke-virtual {v3}, Lnet/oneplus/gallery3d/exif/Rational;->toDouble()D

    move-result-wide v4

    double-to-long p1, v4

    goto :goto_0
.end method

.method public forceGetValueAsString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 750
    iget-object v1, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 751
    const-string v1, ""

    .line 776
    :goto_0
    return-object v1

    .line 752
    :cond_0
    iget-object v1, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, [B

    if-eqz v1, :cond_2

    .line 753
    iget-short v1, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 754
    new-instance v2, Ljava/lang/String;

    iget-object v1, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    sget-object v3, Lnet/oneplus/gallery3d/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v1, v2

    goto :goto_0

    .line 756
    :cond_1
    iget-object v1, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 758
    :cond_2
    iget-object v1, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, [J

    if-eqz v1, :cond_4

    .line 759
    iget-object v1, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [J

    check-cast v1, [J

    array-length v1, v1

    if-ne v1, v3, :cond_3

    .line 760
    iget-object v1, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [J

    check-cast v1, [J

    aget-wide v2, v1, v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 762
    :cond_3
    iget-object v1, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [J

    check-cast v1, [J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 764
    :cond_4
    iget-object v1, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, [Ljava/lang/Object;

    if-eqz v1, :cond_7

    .line 765
    iget-object v1, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    array-length v1, v1

    if-ne v1, v3, :cond_6

    .line 766
    iget-object v1, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    aget-object v0, v1, v2

    .line 767
    .local v0, "val":Ljava/lang/Object;
    if-nez v0, :cond_5

    .line 768
    const-string v1, ""

    goto :goto_0

    .line 770
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 773
    .end local v0    # "val":Ljava/lang/Object;
    :cond_6
    iget-object v1, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 776
    :cond_7
    iget-object v1, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected forceSetComponentCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 216
    iput p1, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mComponentCountActual:I

    .line 217
    return-void
.end method

.method protected getBytes([B)V
    .locals 2
    .param p1, "buf"    # [B

    .prologue
    .line 839
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/oneplus/gallery3d/exif/ExifTag;->getBytes([BII)V

    .line 840
    return-void
.end method

.method protected getBytes([BII)V
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 853
    iget-short v0, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 854
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get BYTE value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mDataType:S

    .line 855
    invoke-static {v2}, Lnet/oneplus/gallery3d/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 857
    :cond_0
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mComponentCountActual:I

    if-le p3, v2, :cond_1

    iget p3, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mComponentCountActual:I

    .end local p3    # "length":I
    :cond_1
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 859
    return-void
.end method

.method public getComponentCount()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mComponentCountActual:I

    return v0
.end method

.method public getDataSize()I
    .locals 2

    .prologue
    .line 199
    invoke-virtual {p0}, Lnet/oneplus/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v0

    invoke-virtual {p0}, Lnet/oneplus/gallery3d/exif/ExifTag;->getDataType()S

    move-result v1

    invoke-static {v1}, Lnet/oneplus/gallery3d/exif/ExifTag;->getElementSize(S)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public getDataType()S
    .locals 1

    .prologue
    .line 192
    iget-short v0, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mDataType:S

    return v0
.end method

.method public getIfd()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mIfd:I

    return v0
.end method

.method protected getOffset()I
    .locals 1

    .prologue
    .line 866
    iget v0, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mOffset:I

    return v0
.end method

.method protected getRational(I)Lnet/oneplus/gallery3d/exif/Rational;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 828
    iget-short v0, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mDataType:S

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 829
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get RATIONAL value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mDataType:S

    .line 830
    invoke-static {v2}, Lnet/oneplus/gallery3d/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 832
    :cond_0
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [Lnet/oneplus/gallery3d/exif/Rational;

    check-cast v0, [Lnet/oneplus/gallery3d/exif/Rational;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected getString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 807
    iget-short v0, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 808
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get ASCII value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mDataType:S

    .line 809
    invoke-static {v2}, Lnet/oneplus/gallery3d/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 811
    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    sget-object v2, Lnet/oneplus/gallery3d/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method protected getStringByte()[B
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getTagId()S
    .locals 1

    .prologue
    .line 176
    iget-short v0, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mTagId:S

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getValueAsByte(B)B
    .locals 3
    .param p1, "defaultValue"    # B

    .prologue
    .line 593
    invoke-virtual {p0}, Lnet/oneplus/gallery3d/exif/ExifTag;->getValueAsBytes()[B

    move-result-object v0

    .line 594
    .local v0, "b":[B
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 597
    .end local p1    # "defaultValue":B
    :cond_0
    :goto_0
    return p1

    .restart local p1    # "defaultValue":B
    :cond_1
    const/4 v1, 0x0

    aget-byte p1, v0, v1

    goto :goto_0
.end method

.method public getValueAsBytes()[B
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    .line 580
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValueAsInt(I)I
    .locals 3
    .param p1, "defaultValue"    # I

    .prologue
    .line 677
    invoke-virtual {p0}, Lnet/oneplus/gallery3d/exif/ExifTag;->getValueAsInts()[I

    move-result-object v0

    .line 678
    .local v0, "i":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 681
    .end local p1    # "defaultValue":I
    :cond_0
    :goto_0
    return p1

    .restart local p1    # "defaultValue":I
    :cond_1
    const/4 v1, 0x0

    aget p1, v0, v1

    goto :goto_0
.end method

.method public getValueAsInts()[I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 654
    iget-object v3, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-nez v3, :cond_1

    .line 664
    :cond_0
    return-object v0

    .line 656
    :cond_1
    iget-object v3, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v3, v3, [J

    if-eqz v3, :cond_0

    .line 657
    iget-object v3, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v3, [J

    move-object v2, v3

    check-cast v2, [J

    .line 658
    .local v2, "val":[J
    array-length v3, v2

    new-array v0, v3, [I

    .line 659
    .local v0, "arr":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 660
    aget-wide v4, v2, v1

    long-to-int v3, v4

    aput v3, v0, v1

    .line 659
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getValueAsLong(J)J
    .locals 3
    .param p1, "defaultValue"    # J

    .prologue
    .line 708
    invoke-virtual {p0}, Lnet/oneplus/gallery3d/exif/ExifTag;->getValueAsLongs()[J

    move-result-object v0

    .line 709
    .local v0, "l":[J
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 712
    .end local p1    # "defaultValue":J
    :cond_0
    :goto_0
    return-wide p1

    .restart local p1    # "defaultValue":J
    :cond_1
    const/4 v1, 0x0

    aget-wide p1, v0, v1

    goto :goto_0
.end method

.method public getValueAsLongs()[J
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    check-cast v0, [J

    .line 695
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValueAsRational(J)Lnet/oneplus/gallery3d/exif/Rational;
    .locals 5
    .param p1, "defaultValue"    # J

    .prologue
    .line 642
    new-instance v0, Lnet/oneplus/gallery3d/exif/Rational;

    const-wide/16 v2, 0x1

    invoke-direct {v0, p1, p2, v2, v3}, Lnet/oneplus/gallery3d/exif/Rational;-><init>(JJ)V

    .line 643
    .local v0, "defaultVal":Lnet/oneplus/gallery3d/exif/Rational;
    invoke-virtual {p0, v0}, Lnet/oneplus/gallery3d/exif/ExifTag;->getValueAsRational(Lnet/oneplus/gallery3d/exif/Rational;)Lnet/oneplus/gallery3d/exif/Rational;

    move-result-object v1

    return-object v1
.end method

.method public getValueAsRational(Lnet/oneplus/gallery3d/exif/Rational;)Lnet/oneplus/gallery3d/exif/Rational;
    .locals 3
    .param p1, "defaultValue"    # Lnet/oneplus/gallery3d/exif/Rational;

    .prologue
    .line 624
    invoke-virtual {p0}, Lnet/oneplus/gallery3d/exif/ExifTag;->getValueAsRationals()[Lnet/oneplus/gallery3d/exif/Rational;

    move-result-object v0

    .line 625
    .local v0, "r":[Lnet/oneplus/gallery3d/exif/Rational;
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 628
    .end local p1    # "defaultValue":Lnet/oneplus/gallery3d/exif/Rational;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "defaultValue":Lnet/oneplus/gallery3d/exif/Rational;
    :cond_1
    const/4 v1, 0x0

    aget-object p1, v0, v1

    goto :goto_0
.end method

.method public getValueAsRationals()[Lnet/oneplus/gallery3d/exif/Rational;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [Lnet/oneplus/gallery3d/exif/Rational;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [Lnet/oneplus/gallery3d/exif/Rational;

    check-cast v0, [Lnet/oneplus/gallery3d/exif/Rational;

    .line 611
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValueAsString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 543
    iget-object v1, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 550
    :cond_0
    :goto_0
    return-object v0

    .line 545
    :cond_1
    iget-object v1, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 546
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 547
    :cond_2
    iget-object v1, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, [B

    if-eqz v1, :cond_0

    .line 548
    new-instance v1, Ljava/lang/String;

    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    sget-object v2, Lnet/oneplus/gallery3d/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getValueAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 562
    invoke-virtual {p0}, Lnet/oneplus/gallery3d/exif/ExifTag;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 566
    .end local p1    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "defaultValue":Ljava/lang/String;
    :cond_0
    move-object p1, v0

    goto :goto_0
.end method

.method protected getValueAt(I)J
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 791
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    check-cast v0, [J

    aget-wide v0, v0, p1

    .line 794
    :goto_0
    return-wide v0

    .line 793
    :cond_0
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_1

    .line 794
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    aget-byte v0, v0, p1

    int-to-long v0, v0

    goto :goto_0

    .line 796
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get integer value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mDataType:S

    .line 797
    invoke-static {v2}, Lnet/oneplus/gallery3d/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected hasDefinedCount()Z
    .locals 1

    .prologue
    .line 881
    iget-boolean v0, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setHasDefinedCount(Z)V
    .locals 0
    .param p1, "d"    # Z

    .prologue
    .line 877
    iput-boolean p1, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    .line 878
    return-void
.end method

.method protected setIfd(I)V
    .locals 0
    .param p1, "ifdId"    # I

    .prologue
    .line 169
    iput p1, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mIfd:I

    .line 170
    return-void
.end method

.method protected setOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 873
    iput p1, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mOffset:I

    .line 874
    return-void
.end method

.method public setTimeValue(J)Z
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 530
    sget-object v1, Lnet/oneplus/gallery3d/exif/ExifTag;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    monitor-enter v1

    .line 531
    :try_start_0
    sget-object v0, Lnet/oneplus/gallery3d/exif/ExifTag;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/oneplus/gallery3d/exif/ExifTag;->setValue(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 532
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setValue(B)Z
    .locals 2
    .param p1, "value"    # B

    .prologue
    .line 444
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0}, Lnet/oneplus/gallery3d/exif/ExifTag;->setValue([B)Z

    move-result v0

    return v0
.end method

.method public setValue(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 273
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Lnet/oneplus/gallery3d/exif/ExifTag;->setValue([I)Z

    move-result v0

    return v0
.end method

.method public setValue(J)Z
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 310
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    invoke-virtual {p0, v0}, Lnet/oneplus/gallery3d/exif/ExifTag;->setValue([J)Z

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const v5, 0xffff

    const/4 v4, 0x0

    .line 460
    if-nez p1, :cond_1

    .line 515
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v4

    .line 462
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v3, p1, Ljava/lang/Short;

    if-eqz v3, :cond_2

    .line 463
    check-cast p1, Ljava/lang/Short;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v3

    and-int/2addr v3, v5

    invoke-virtual {p0, v3}, Lnet/oneplus/gallery3d/exif/ExifTag;->setValue(I)Z

    move-result v4

    goto :goto_0

    .line 464
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 465
    check-cast p1, Ljava/lang/String;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnet/oneplus/gallery3d/exif/ExifTag;->setValue(Ljava/lang/String;)Z

    move-result v4

    goto :goto_0

    .line 466
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v3, p1, [I

    if-eqz v3, :cond_4

    .line 467
    check-cast p1, [I

    .end local p1    # "obj":Ljava/lang/Object;
    check-cast p1, [I

    invoke-virtual {p0, p1}, Lnet/oneplus/gallery3d/exif/ExifTag;->setValue([I)Z

    move-result v4

    goto :goto_0

    .line 468
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_4
    instance-of v3, p1, [J

    if-eqz v3, :cond_5

    .line 469
    check-cast p1, [J

    .end local p1    # "obj":Ljava/lang/Object;
    check-cast p1, [J

    invoke-virtual {p0, p1}, Lnet/oneplus/gallery3d/exif/ExifTag;->setValue([J)Z

    move-result v4

    goto :goto_0

    .line 470
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_5
    instance-of v3, p1, Lnet/oneplus/gallery3d/exif/Rational;

    if-eqz v3, :cond_6

    .line 471
    check-cast p1, Lnet/oneplus/gallery3d/exif/Rational;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnet/oneplus/gallery3d/exif/ExifTag;->setValue(Lnet/oneplus/gallery3d/exif/Rational;)Z

    move-result v4

    goto :goto_0

    .line 472
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_6
    instance-of v3, p1, [Lnet/oneplus/gallery3d/exif/Rational;

    if-eqz v3, :cond_7

    .line 473
    check-cast p1, [Lnet/oneplus/gallery3d/exif/Rational;

    .end local p1    # "obj":Ljava/lang/Object;
    check-cast p1, [Lnet/oneplus/gallery3d/exif/Rational;

    invoke-virtual {p0, p1}, Lnet/oneplus/gallery3d/exif/ExifTag;->setValue([Lnet/oneplus/gallery3d/exif/Rational;)Z

    move-result v4

    goto :goto_0

    .line 474
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_7
    instance-of v3, p1, [B

    if-eqz v3, :cond_8

    .line 475
    check-cast p1, [B

    .end local p1    # "obj":Ljava/lang/Object;
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lnet/oneplus/gallery3d/exif/ExifTag;->setValue([B)Z

    move-result v4

    goto :goto_0

    .line 476
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_8
    instance-of v3, p1, Ljava/lang/Integer;

    if-eqz v3, :cond_9

    .line 477
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lnet/oneplus/gallery3d/exif/ExifTag;->setValue(I)Z

    move-result v4

    goto :goto_0

    .line 478
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_9
    instance-of v3, p1, Ljava/lang/Long;

    if-eqz v3, :cond_a

    .line 479
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lnet/oneplus/gallery3d/exif/ExifTag;->setValue(J)Z

    move-result v4

    goto :goto_0

    .line 480
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_a
    instance-of v3, p1, Ljava/lang/Byte;

    if-eqz v3, :cond_b

    .line 481
    check-cast p1, Ljava/lang/Byte;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-virtual {p0, v3}, Lnet/oneplus/gallery3d/exif/ExifTag;->setValue(B)Z

    move-result v4

    goto/16 :goto_0

    .line 482
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_b
    instance-of v3, p1, [Ljava/lang/Short;

    if-eqz v3, :cond_e

    .line 484
    check-cast p1, [Ljava/lang/Short;

    .end local p1    # "obj":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [Ljava/lang/Short;

    .line 485
    .local v0, "arr":[Ljava/lang/Short;
    array-length v3, v0

    new-array v1, v3, [I

    .line 486
    .local v1, "fin":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_d

    .line 487
    aget-object v3, v0, v2

    if-nez v3, :cond_c

    move v3, v4

    :goto_2
    aput v3, v1, v2

    .line 486
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 487
    :cond_c
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    and-int/2addr v3, v5

    goto :goto_2

    .line 489
    :cond_d
    invoke-virtual {p0, v1}, Lnet/oneplus/gallery3d/exif/ExifTag;->setValue([I)Z

    move-result v4

    goto/16 :goto_0

    .line 490
    .end local v0    # "arr":[Ljava/lang/Short;
    .end local v1    # "fin":[I
    .end local v2    # "i":I
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_e
    instance-of v3, p1, [Ljava/lang/Integer;

    if-eqz v3, :cond_11

    .line 492
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "obj":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [Ljava/lang/Integer;

    .line 493
    .local v0, "arr":[Ljava/lang/Integer;
    array-length v3, v0

    new-array v1, v3, [I

    .line 494
    .restart local v1    # "fin":[I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    array-length v3, v0

    if-ge v2, v3, :cond_10

    .line 495
    aget-object v3, v0, v2

    if-nez v3, :cond_f

    move v3, v4

    :goto_4
    aput v3, v1, v2

    .line 494
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 495
    :cond_f
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_4

    .line 497
    :cond_10
    invoke-virtual {p0, v1}, Lnet/oneplus/gallery3d/exif/ExifTag;->setValue([I)Z

    move-result v4

    goto/16 :goto_0

    .line 498
    .end local v0    # "arr":[Ljava/lang/Integer;
    .end local v1    # "fin":[I
    .end local v2    # "i":I
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_11
    instance-of v3, p1, [Ljava/lang/Long;

    if-eqz v3, :cond_14

    .line 500
    check-cast p1, [Ljava/lang/Long;

    .end local p1    # "obj":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [Ljava/lang/Long;

    .line 501
    .local v0, "arr":[Ljava/lang/Long;
    array-length v3, v0

    new-array v1, v3, [J

    .line 502
    .local v1, "fin":[J
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    array-length v3, v0

    if-ge v2, v3, :cond_13

    .line 503
    aget-object v3, v0, v2

    if-nez v3, :cond_12

    const-wide/16 v4, 0x0

    :goto_6
    aput-wide v4, v1, v2

    .line 502
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 503
    :cond_12
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_6

    .line 505
    :cond_13
    invoke-virtual {p0, v1}, Lnet/oneplus/gallery3d/exif/ExifTag;->setValue([J)Z

    move-result v4

    goto/16 :goto_0

    .line 506
    .end local v0    # "arr":[Ljava/lang/Long;
    .end local v1    # "fin":[J
    .end local v2    # "i":I
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_14
    instance-of v3, p1, [Ljava/lang/Byte;

    if-eqz v3, :cond_0

    .line 508
    check-cast p1, [Ljava/lang/Byte;

    .end local p1    # "obj":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [Ljava/lang/Byte;

    .line 509
    .local v0, "arr":[Ljava/lang/Byte;
    array-length v3, v0

    new-array v1, v3, [B

    .line 510
    .local v1, "fin":[B
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_7
    array-length v3, v0

    if-ge v2, v3, :cond_16

    .line 511
    aget-object v3, v0, v2

    if-nez v3, :cond_15

    move v3, v4

    :goto_8
    aput-byte v3, v1, v2

    .line 510
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 511
    :cond_15
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    goto :goto_8

    .line 513
    :cond_16
    invoke-virtual {p0, v1}, Lnet/oneplus/gallery3d/exif/ExifTag;->setValue([B)Z

    move-result v4

    goto/16 :goto_0
.end method

.method public setValue(Ljava/lang/String;)Z
    .locals 8
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 330
    iget-short v5, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mDataType:S

    if-eq v5, v6, :cond_1

    iget-short v5, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mDataType:S

    if-eq v5, v7, :cond_1

    .line 348
    :cond_0
    :goto_0
    return v3

    .line 334
    :cond_1
    sget-object v5, Lnet/oneplus/gallery3d/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 335
    .local v0, "buf":[B
    move-object v2, v0

    .line 336
    .local v2, "finalBuf":[B
    array-length v5, v0

    if-lez v5, :cond_5

    .line 337
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, v0, v5

    if-eqz v5, :cond_2

    iget-short v5, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mDataType:S

    if-ne v5, v7, :cond_4

    :cond_2
    move-object v2, v0

    .line 342
    :cond_3
    :goto_1
    array-length v1, v2

    .line 343
    .local v1, "count":I
    invoke-direct {p0, v1}, Lnet/oneplus/gallery3d/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 346
    iput v1, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mComponentCountActual:I

    .line 347
    iput-object v2, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    move v3, v4

    .line 348
    goto :goto_0

    .line 337
    .end local v1    # "count":I
    :cond_4
    array-length v5, v0

    add-int/lit8 v5, v5, 0x1

    .line 338
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    goto :goto_1

    .line 339
    :cond_5
    iget-short v5, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mDataType:S

    if-ne v5, v6, :cond_3

    iget v5, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mComponentCountActual:I

    if-ne v5, v4, :cond_3

    .line 340
    new-array v2, v4, [B

    .end local v2    # "finalBuf":[B
    aput-byte v3, v2, v3

    .restart local v2    # "finalBuf":[B
    goto :goto_1
.end method

.method public setValue(Lnet/oneplus/gallery3d/exif/Rational;)Z
    .locals 2
    .param p1, "value"    # Lnet/oneplus/gallery3d/exif/Rational;

    .prologue
    .line 397
    const/4 v0, 0x1

    new-array v0, v0, [Lnet/oneplus/gallery3d/exif/Rational;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lnet/oneplus/gallery3d/exif/ExifTag;->setValue([Lnet/oneplus/gallery3d/exif/Rational;)Z

    move-result v0

    return v0
.end method

.method public setValue([B)Z
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 430
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/oneplus/gallery3d/exif/ExifTag;->setValue([BII)Z

    move-result v0

    return v0
.end method

.method public setValue([BII)Z
    .locals 4
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 414
    invoke-direct {p0, p3}, Lnet/oneplus/gallery3d/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 423
    :cond_0
    :goto_0
    return v0

    .line 417
    :cond_1
    iget-short v2, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mDataType:S

    if-eq v2, v1, :cond_2

    iget-short v2, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 420
    :cond_2
    new-array v2, p3, [B

    iput-object v2, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 421
    iget-object v2, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    invoke-static {p1, p2, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 422
    iput p3, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mComponentCountActual:I

    move v0, v1

    .line 423
    goto :goto_0
.end method

.method public setValue([I)Z
    .locals 7
    .param p1, "value"    # [I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v2, 0x0

    .line 239
    array-length v3, p1

    invoke-direct {p0, v3}, Lnet/oneplus/gallery3d/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 258
    :cond_0
    :goto_0
    return v2

    .line 242
    :cond_1
    iget-short v3, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mDataType:S

    if-eq v3, v5, :cond_2

    iget-short v3, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mDataType:S

    const/16 v4, 0x9

    if-eq v3, v4, :cond_2

    iget-short v3, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mDataType:S

    if-ne v3, v6, :cond_0

    .line 246
    :cond_2
    iget-short v3, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mDataType:S

    if-ne v3, v5, :cond_3

    invoke-direct {p0, p1}, Lnet/oneplus/gallery3d/exif/ExifTag;->checkOverflowForUnsignedShort([I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 248
    :cond_3
    iget-short v3, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mDataType:S

    if-ne v3, v6, :cond_4

    invoke-direct {p0, p1}, Lnet/oneplus/gallery3d/exif/ExifTag;->checkOverflowForUnsignedLong([I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 252
    :cond_4
    array-length v2, p1

    new-array v0, v2, [J

    .line 253
    .local v0, "data":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_5

    .line 254
    aget v2, p1, v1

    int-to-long v2, v2

    aput-wide v2, v0, v1

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 256
    :cond_5
    iput-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 257
    array-length v2, p1

    iput v2, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mComponentCountActual:I

    .line 258
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setValue([J)Z
    .locals 3
    .param p1, "value"    # [J

    .prologue
    const/4 v0, 0x0

    .line 289
    array-length v1, p1

    invoke-direct {p0, v1}, Lnet/oneplus/gallery3d/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-short v1, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 297
    :cond_0
    :goto_0
    return v0

    .line 292
    :cond_1
    invoke-direct {p0, p1}, Lnet/oneplus/gallery3d/exif/ExifTag;->checkOverflowForUnsignedLong([J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 295
    iput-object p1, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 296
    array-length v0, p1

    iput v0, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mComponentCountActual:I

    .line 297
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setValue([Lnet/oneplus/gallery3d/exif/Rational;)Z
    .locals 4
    .param p1, "value"    # [Lnet/oneplus/gallery3d/exif/Rational;

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x5

    const/4 v0, 0x0

    .line 366
    array-length v1, p1

    invoke-direct {p0, v1}, Lnet/oneplus/gallery3d/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    :cond_0
    :goto_0
    return v0

    .line 369
    :cond_1
    iget-short v1, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mDataType:S

    if-eq v1, v2, :cond_2

    iget-short v1, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mDataType:S

    if-ne v1, v3, :cond_0

    .line 372
    :cond_2
    iget-short v1, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mDataType:S

    if-ne v1, v2, :cond_3

    invoke-direct {p0, p1}, Lnet/oneplus/gallery3d/exif/ExifTag;->checkOverflowForUnsignedRational([Lnet/oneplus/gallery3d/exif/Rational;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 374
    :cond_3
    iget-short v1, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mDataType:S

    if-ne v1, v3, :cond_4

    invoke-direct {p0, p1}, Lnet/oneplus/gallery3d/exif/ExifTag;->checkOverflowForRational([Lnet/oneplus/gallery3d/exif/Rational;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 378
    :cond_4
    iput-object p1, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 379
    array-length v0, p1

    iput v0, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mComponentCountActual:I

    .line 380
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tag id: %04X\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-short v4, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mTagId:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ifd id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mIfd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ntype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mDataType:S

    .line 1006
    invoke-static {v1}, Lnet/oneplus/gallery3d/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ncount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mComponentCountActual:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\noffset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/gallery3d/exif/ExifTag;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nvalue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1007
    invoke-virtual {p0}, Lnet/oneplus/gallery3d/exif/ExifTag;->forceGetValueAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
