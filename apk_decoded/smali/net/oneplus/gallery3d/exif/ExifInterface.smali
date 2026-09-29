.class public Lnet/oneplus/gallery3d/exif/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/gallery3d/exif/ExifInterface$GpsDifferential;,
        Lnet/oneplus/gallery3d/exif/ExifInterface$GpsTrackRef;,
        Lnet/oneplus/gallery3d/exif/ExifInterface$GpsSpeedRef;,
        Lnet/oneplus/gallery3d/exif/ExifInterface$GpsMeasureMode;,
        Lnet/oneplus/gallery3d/exif/ExifInterface$GpsStatus;,
        Lnet/oneplus/gallery3d/exif/ExifInterface$GpsAltitudeRef;,
        Lnet/oneplus/gallery3d/exif/ExifInterface$GpsLongitudeRef;,
        Lnet/oneplus/gallery3d/exif/ExifInterface$GpsLatitudeRef;,
        Lnet/oneplus/gallery3d/exif/ExifInterface$SubjectDistance;,
        Lnet/oneplus/gallery3d/exif/ExifInterface$Sharpness;,
        Lnet/oneplus/gallery3d/exif/ExifInterface$Saturation;,
        Lnet/oneplus/gallery3d/exif/ExifInterface$Contrast;,
        Lnet/oneplus/gallery3d/exif/ExifInterface$GainControl;,
        Lnet/oneplus/gallery3d/exif/ExifInterface$SceneType;,
        Lnet/oneplus/gallery3d/exif/ExifInterface$FileSource;,
        Lnet/oneplus/gallery3d/exif/ExifInterface$SensingMethod;,
        Lnet/oneplus/gallery3d/exif/ExifInterface$LightSource;,
        Lnet/oneplus/gallery3d/exif/ExifInterface$ComponentsConfiguration;,
        Lnet/oneplus/gallery3d/exif/ExifInterface$SceneCapture;,
        Lnet/oneplus/gallery3d/exif/ExifInterface$WhiteBalance;,
        Lnet/oneplus/gallery3d/exif/ExifInterface$ExposureMode;,
        Lnet/oneplus/gallery3d/exif/ExifInterface$ColorSpace;,
        Lnet/oneplus/gallery3d/exif/ExifInterface$Flash;,
        Lnet/oneplus/gallery3d/exif/ExifInterface$MeteringMode;,
        Lnet/oneplus/gallery3d/exif/ExifInterface$ExposureProgram;,
        Lnet/oneplus/gallery3d/exif/ExifInterface$PlanarConfiguration;,
        Lnet/oneplus/gallery3d/exif/ExifInterface$PhotometricInterpretation;,
        Lnet/oneplus/gallery3d/exif/ExifInterface$ResolutionUnit;,
        Lnet/oneplus/gallery3d/exif/ExifInterface$Compression;,
        Lnet/oneplus/gallery3d/exif/ExifInterface$YCbCrPositioning;,
        Lnet/oneplus/gallery3d/exif/ExifInterface$Orientation;
    }
.end annotation


# static fields
.field private static final DATETIME_FORMAT_STR:Ljava/lang/String; = "yyyy:MM:dd kk:mm:ss"

.field public static final DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

.field public static final DEFINITION_NULL:I = 0x0

.field private static final GPS_DATE_FORMAT_STR:Ljava/lang/String; = "yyyy:MM:dd"

.field public static final IFD_NULL:I = -0x1

.field private static final NULL_ARGUMENT_STRING:Ljava/lang/String; = "Argument is null"

.field public static final TAG_APERTURE_VALUE:I

.field public static final TAG_ARTIST:I

.field public static final TAG_BITS_PER_SAMPLE:I

.field public static final TAG_BRIGHTNESS_VALUE:I

.field public static final TAG_CFA_PATTERN:I

.field public static final TAG_COLOR_SPACE:I

.field public static final TAG_COMPONENTS_CONFIGURATION:I

.field public static final TAG_COMPRESSED_BITS_PER_PIXEL:I

.field public static final TAG_COMPRESSION:I

.field public static final TAG_CONTRAST:I

.field public static final TAG_COPYRIGHT:I

.field public static final TAG_CUSTOM_RENDERED:I

.field public static final TAG_DATE_TIME:I

.field public static final TAG_DATE_TIME_DIGITIZED:I

.field public static final TAG_DATE_TIME_ORIGINAL:I

.field public static final TAG_DEVICE_SETTING_DESCRIPTION:I

.field public static final TAG_DIGITAL_ZOOM_RATIO:I

.field public static final TAG_EXIF_IFD:I

.field public static final TAG_EXIF_VERSION:I

.field public static final TAG_EXPOSURE_BIAS_VALUE:I

.field public static final TAG_EXPOSURE_INDEX:I

.field public static final TAG_EXPOSURE_MODE:I

.field public static final TAG_EXPOSURE_PROGRAM:I

.field public static final TAG_EXPOSURE_TIME:I

.field public static final TAG_FILE_SOURCE:I

.field public static final TAG_FLASH:I

.field public static final TAG_FLASHPIX_VERSION:I

.field public static final TAG_FLASH_ENERGY:I

.field public static final TAG_FOCAL_LENGTH:I

.field public static final TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

.field public static final TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

.field public static final TAG_FOCAL_PLANE_X_RESOLUTION:I

.field public static final TAG_FOCAL_PLANE_Y_RESOLUTION:I

.field public static final TAG_F_NUMBER:I

.field public static final TAG_GAIN_CONTROL:I

.field public static final TAG_GPS_ALTITUDE:I

.field public static final TAG_GPS_ALTITUDE_REF:I

.field public static final TAG_GPS_AREA_INFORMATION:I

.field public static final TAG_GPS_DATE_STAMP:I

.field public static final TAG_GPS_DEST_BEARING:I

.field public static final TAG_GPS_DEST_BEARING_REF:I

.field public static final TAG_GPS_DEST_DISTANCE:I

.field public static final TAG_GPS_DEST_DISTANCE_REF:I

.field public static final TAG_GPS_DEST_LATITUDE:I

.field public static final TAG_GPS_DEST_LATITUDE_REF:I

.field public static final TAG_GPS_DEST_LONGITUDE:I

.field public static final TAG_GPS_DEST_LONGITUDE_REF:I

.field public static final TAG_GPS_DIFFERENTIAL:I

.field public static final TAG_GPS_DOP:I

.field public static final TAG_GPS_IFD:I

.field public static final TAG_GPS_IMG_DIRECTION:I

.field public static final TAG_GPS_IMG_DIRECTION_REF:I

.field public static final TAG_GPS_LATITUDE:I

.field public static final TAG_GPS_LATITUDE_REF:I

.field public static final TAG_GPS_LONGITUDE:I

.field public static final TAG_GPS_LONGITUDE_REF:I

.field public static final TAG_GPS_MAP_DATUM:I

.field public static final TAG_GPS_MEASURE_MODE:I

.field public static final TAG_GPS_PROCESSING_METHOD:I

.field public static final TAG_GPS_SATTELLITES:I

.field public static final TAG_GPS_SPEED:I

.field public static final TAG_GPS_SPEED_REF:I

.field public static final TAG_GPS_STATUS:I

.field public static final TAG_GPS_TIME_STAMP:I

.field public static final TAG_GPS_TRACK:I

.field public static final TAG_GPS_TRACK_REF:I

.field public static final TAG_GPS_VERSION_ID:I

.field public static final TAG_IMAGE_DESCRIPTION:I

.field public static final TAG_IMAGE_LENGTH:I

.field public static final TAG_IMAGE_UNIQUE_ID:I

.field public static final TAG_IMAGE_WIDTH:I

.field public static final TAG_INTEROPERABILITY_IFD:I

.field public static final TAG_INTEROPERABILITY_INDEX:I

.field public static final TAG_ISO_SPEED_RATINGS:I

.field public static final TAG_JPEG_INTERCHANGE_FORMAT:I

.field public static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

.field public static final TAG_LIGHT_SOURCE:I

.field public static final TAG_MAKE:I

.field public static final TAG_MAKER_NOTE:I

.field public static final TAG_MAX_APERTURE_VALUE:I

.field public static final TAG_METERING_MODE:I

.field public static final TAG_MODEL:I

.field public static final TAG_NULL:I = -0x1

.field public static final TAG_OECF:I

.field public static final TAG_ORIENTATION:I

.field public static final TAG_PHOTOMETRIC_INTERPRETATION:I

.field public static final TAG_PIXEL_X_DIMENSION:I

.field public static final TAG_PIXEL_Y_DIMENSION:I

.field public static final TAG_PLANAR_CONFIGURATION:I

.field public static final TAG_PRIMARY_CHROMATICITIES:I

.field public static final TAG_REFERENCE_BLACK_WHITE:I

.field public static final TAG_RELATED_SOUND_FILE:I

.field public static final TAG_RESOLUTION_UNIT:I

.field public static final TAG_ROWS_PER_STRIP:I

.field public static final TAG_SAMPLES_PER_PIXEL:I

.field public static final TAG_SATURATION:I

.field public static final TAG_SCENE_CAPTURE_TYPE:I

.field public static final TAG_SCENE_TYPE:I

.field public static final TAG_SENSING_METHOD:I

.field public static final TAG_SHARPNESS:I

.field public static final TAG_SHUTTER_SPEED_VALUE:I

.field public static final TAG_SOFTWARE:I

.field public static final TAG_SPATIAL_FREQUENCY_RESPONSE:I

.field public static final TAG_SPECTRAL_SENSITIVITY:I

.field public static final TAG_STRIP_BYTE_COUNTS:I

.field public static final TAG_STRIP_OFFSETS:I

.field public static final TAG_SUBJECT_AREA:I

.field public static final TAG_SUBJECT_DISTANCE:I

.field public static final TAG_SUBJECT_DISTANCE_RANGE:I

.field public static final TAG_SUBJECT_LOCATION:I

.field public static final TAG_SUB_SEC_TIME:I

.field public static final TAG_SUB_SEC_TIME_DIGITIZED:I

.field public static final TAG_SUB_SEC_TIME_ORIGINAL:I

.field public static final TAG_TRANSFER_FUNCTION:I

.field public static final TAG_USER_COMMENT:I

.field public static final TAG_WHITE_BALANCE:I

.field public static final TAG_WHITE_POINT:I

.field public static final TAG_X_RESOLUTION:I

.field public static final TAG_Y_CB_CR_COEFFICIENTS:I

.field public static final TAG_Y_CB_CR_POSITIONING:I

.field public static final TAG_Y_CB_CR_SUB_SAMPLING:I

.field public static final TAG_Y_RESOLUTION:I

.field protected static sBannedDefines:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private static sOffsetTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mData:Lnet/oneplus/gallery3d/exif/ExifData;

.field private final mDateTimeStampFormat:Ljava/text/DateFormat;

.field private final mGPSDateStampFormat:Ljava/text/DateFormat;

.field private final mGPSTimeStampCalendar:Ljava/util/Calendar;

.field private mTagInfo:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 75
    const/16 v0, 0x100

    .line 76
    invoke-static {v3, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    .line 77
    const/16 v0, 0x101

    .line 78
    invoke-static {v3, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    .line 79
    const/16 v0, 0x102

    .line 80
    invoke-static {v3, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_BITS_PER_SAMPLE:I

    .line 81
    const/16 v0, 0x103

    .line 82
    invoke-static {v3, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_COMPRESSION:I

    .line 83
    const/16 v0, 0x106

    .line 84
    invoke-static {v3, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    .line 85
    const/16 v0, 0x10e

    .line 86
    invoke-static {v3, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_IMAGE_DESCRIPTION:I

    .line 87
    const/16 v0, 0x10f

    .line 88
    invoke-static {v3, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_MAKE:I

    .line 89
    const/16 v0, 0x110

    .line 90
    invoke-static {v3, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_MODEL:I

    .line 91
    const/16 v0, 0x111

    .line 92
    invoke-static {v3, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    .line 93
    const/16 v0, 0x112

    .line 94
    invoke-static {v3, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    .line 95
    const/16 v0, 0x115

    .line 96
    invoke-static {v3, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    .line 97
    const/16 v0, 0x116

    .line 98
    invoke-static {v3, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_ROWS_PER_STRIP:I

    .line 99
    const/16 v0, 0x117

    .line 100
    invoke-static {v3, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 101
    const/16 v0, 0x11a

    .line 102
    invoke-static {v3, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_X_RESOLUTION:I

    .line 103
    const/16 v0, 0x11b

    .line 104
    invoke-static {v3, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_Y_RESOLUTION:I

    .line 105
    const/16 v0, 0x11c

    .line 106
    invoke-static {v3, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_PLANAR_CONFIGURATION:I

    .line 107
    const/16 v0, 0x128

    .line 108
    invoke-static {v3, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_RESOLUTION_UNIT:I

    .line 109
    const/16 v0, 0x12d

    .line 110
    invoke-static {v3, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_TRANSFER_FUNCTION:I

    .line 111
    const/16 v0, 0x131

    .line 112
    invoke-static {v3, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_SOFTWARE:I

    .line 113
    const/16 v0, 0x132

    .line 114
    invoke-static {v3, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_DATE_TIME:I

    .line 115
    const/16 v0, 0x13b

    .line 116
    invoke-static {v3, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_ARTIST:I

    .line 117
    const/16 v0, 0x13e

    .line 118
    invoke-static {v3, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_WHITE_POINT:I

    .line 119
    const/16 v0, 0x13f

    .line 120
    invoke-static {v3, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    .line 121
    const/16 v0, 0x211

    .line 122
    invoke-static {v3, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    .line 123
    const/16 v0, 0x212

    .line 124
    invoke-static {v3, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    .line 125
    const/16 v0, 0x213

    .line 126
    invoke-static {v3, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    .line 127
    const/16 v0, 0x214

    .line 128
    invoke-static {v3, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    .line 129
    const/16 v0, -0x7d68

    .line 130
    invoke-static {v3, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_COPYRIGHT:I

    .line 131
    const/16 v0, -0x7897

    .line 132
    invoke-static {v3, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    .line 133
    const/16 v0, -0x77db

    .line 134
    invoke-static {v3, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    .line 136
    const/16 v0, 0x201

    .line 137
    invoke-static {v4, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 138
    const/16 v0, 0x202

    .line 139
    invoke-static {v4, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 141
    const/16 v0, -0x7d66

    .line 142
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    .line 143
    const/16 v0, -0x7d63

    .line 144
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_F_NUMBER:I

    .line 145
    const/16 v0, -0x77de

    .line 146
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_PROGRAM:I

    .line 147
    const/16 v0, -0x77dc

    .line 148
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    .line 149
    const/16 v0, -0x77d9

    .line 150
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    .line 151
    const/16 v0, -0x77d8

    .line 152
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_OECF:I

    .line 153
    const/16 v0, -0x7000

    .line 154
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_EXIF_VERSION:I

    .line 155
    const/16 v0, -0x6ffd

    .line 156
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    .line 157
    const/16 v0, -0x6ffc

    .line 158
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    .line 159
    const/16 v0, -0x6eff

    .line 160
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    .line 161
    const/16 v0, -0x6efe

    .line 162
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    .line 163
    const/16 v0, -0x6dff

    .line 164
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    .line 165
    const/16 v0, -0x6dfe

    .line 166
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    .line 167
    const/16 v0, -0x6dfd

    .line 168
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_BRIGHTNESS_VALUE:I

    .line 169
    const/16 v0, -0x6dfc

    .line 170
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    .line 171
    const/16 v0, -0x6dfb

    .line 172
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_MAX_APERTURE_VALUE:I

    .line 173
    const/16 v0, -0x6dfa

    .line 174
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_SUBJECT_DISTANCE:I

    .line 175
    const/16 v0, -0x6df9

    .line 176
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_METERING_MODE:I

    .line 177
    const/16 v0, -0x6df8

    .line 178
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_LIGHT_SOURCE:I

    .line 179
    const/16 v0, -0x6df7

    .line 180
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_FLASH:I

    .line 181
    const/16 v0, -0x6df6

    .line 182
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    .line 183
    const/16 v0, -0x6dec

    .line 184
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_SUBJECT_AREA:I

    .line 185
    const/16 v0, -0x6d84

    .line 186
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_MAKER_NOTE:I

    .line 187
    const/16 v0, -0x6d7a

    .line 188
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_USER_COMMENT:I

    .line 189
    const/16 v0, -0x6d70

    .line 190
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    .line 191
    const/16 v0, -0x6d6f

    .line 192
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    .line 193
    const/16 v0, -0x6d6e

    .line 194
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    .line 195
    const/16 v0, -0x6000

    .line 196
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_FLASHPIX_VERSION:I

    .line 197
    const/16 v0, -0x5fff

    .line 198
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_COLOR_SPACE:I

    .line 199
    const/16 v0, -0x5ffe

    .line 200
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    .line 201
    const/16 v0, -0x5ffd

    .line 202
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    .line 203
    const/16 v0, -0x5ffc

    .line 204
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_RELATED_SOUND_FILE:I

    .line 205
    const/16 v0, -0x5ffb

    .line 206
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 207
    const/16 v0, -0x5df5

    .line 208
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_FLASH_ENERGY:I

    .line 209
    const/16 v0, -0x5df4

    .line 210
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    .line 211
    const/16 v0, -0x5df2

    .line 212
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    .line 213
    const/16 v0, -0x5df1

    .line 214
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    .line 215
    const/16 v0, -0x5df0

    .line 216
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    .line 217
    const/16 v0, -0x5dec

    .line 218
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_SUBJECT_LOCATION:I

    .line 219
    const/16 v0, -0x5deb

    .line 220
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_INDEX:I

    .line 221
    const/16 v0, -0x5de9

    .line 222
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_SENSING_METHOD:I

    .line 223
    const/16 v0, -0x5d00

    .line 224
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_FILE_SOURCE:I

    .line 225
    const/16 v0, -0x5cff

    .line 226
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_SCENE_TYPE:I

    .line 227
    const/16 v0, -0x5cfe

    .line 228
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_CFA_PATTERN:I

    .line 229
    const/16 v0, -0x5bff

    .line 230
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_CUSTOM_RENDERED:I

    .line 231
    const/16 v0, -0x5bfe

    .line 232
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_MODE:I

    .line 233
    const/16 v0, -0x5bfd

    .line 234
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    .line 235
    const/16 v0, -0x5bfc

    .line 236
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    .line 237
    const/16 v0, -0x5bfb

    .line 238
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    .line 239
    const/16 v0, -0x5bfa

    .line 240
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    .line 241
    const/16 v0, -0x5bf9

    .line 242
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GAIN_CONTROL:I

    .line 243
    const/16 v0, -0x5bf8

    .line 244
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_CONTRAST:I

    .line 245
    const/16 v0, -0x5bf7

    .line 246
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_SATURATION:I

    .line 247
    const/16 v0, -0x5bf6

    .line 248
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_SHARPNESS:I

    .line 249
    const/16 v0, -0x5bf5

    .line 250
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    .line 251
    const/16 v0, -0x5bf4

    .line 252
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    .line 253
    const/16 v0, -0x5be0

    .line 254
    invoke-static {v1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    .line 257
    invoke-static {v2, v3}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_VERSION_ID:I

    .line 259
    invoke-static {v2, v4}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    .line 261
    invoke-static {v2, v1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    .line 263
    invoke-static {v2, v5}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    .line 265
    invoke-static {v2, v2}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    .line 266
    const/4 v0, 0x5

    .line 267
    invoke-static {v2, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    .line 268
    const/4 v0, 0x6

    .line 269
    invoke-static {v2, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_ALTITUDE:I

    .line 270
    const/4 v0, 0x7

    .line 271
    invoke-static {v2, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    .line 272
    const/16 v0, 0x8

    .line 273
    invoke-static {v2, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_SATTELLITES:I

    .line 274
    const/16 v0, 0x9

    .line 275
    invoke-static {v2, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_STATUS:I

    .line 276
    const/16 v0, 0xa

    .line 277
    invoke-static {v2, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_MEASURE_MODE:I

    .line 278
    const/16 v0, 0xb

    .line 279
    invoke-static {v2, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_DOP:I

    .line 280
    const/16 v0, 0xc

    .line 281
    invoke-static {v2, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_SPEED_REF:I

    .line 282
    const/16 v0, 0xd

    .line 283
    invoke-static {v2, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_SPEED:I

    .line 284
    const/16 v0, 0xe

    .line 285
    invoke-static {v2, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_TRACK_REF:I

    .line 286
    const/16 v0, 0xf

    .line 287
    invoke-static {v2, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_TRACK:I

    .line 288
    const/16 v0, 0x10

    .line 289
    invoke-static {v2, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    .line 290
    const/16 v0, 0x11

    .line 291
    invoke-static {v2, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    .line 292
    const/16 v0, 0x12

    .line 293
    invoke-static {v2, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_MAP_DATUM:I

    .line 294
    const/16 v0, 0x13

    .line 295
    invoke-static {v2, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    .line 296
    const/16 v0, 0x14

    .line 297
    invoke-static {v2, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE:I

    .line 298
    const/16 v0, 0x15

    .line 299
    invoke-static {v2, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LONGITUDE_REF:I

    .line 300
    const/16 v0, 0x16

    .line 301
    invoke-static {v2, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LONGITUDE:I

    .line 302
    const/16 v0, 0x17

    .line 303
    invoke-static {v2, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    .line 304
    const/16 v0, 0x18

    .line 305
    invoke-static {v2, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_BEARING:I

    .line 306
    const/16 v0, 0x19

    .line 307
    invoke-static {v2, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    .line 308
    const/16 v0, 0x1a

    .line 309
    invoke-static {v2, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE:I

    .line 310
    const/16 v0, 0x1b

    .line 311
    invoke-static {v2, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    .line 312
    const/16 v0, 0x1c

    .line 313
    invoke-static {v2, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_AREA_INFORMATION:I

    .line 314
    const/16 v0, 0x1d

    .line 315
    invoke-static {v2, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    .line 316
    const/16 v0, 0x1e

    .line 317
    invoke-static {v2, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_DIFFERENTIAL:I

    .line 320
    invoke-static {v5, v4}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    .line 326
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    .line 328
    sget-object v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 329
    sget-object v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 330
    sget-object v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 331
    sget-object v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-static {v1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 332
    sget-object v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 338
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lnet/oneplus/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    .line 340
    sget-object v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    const/4 v1, -0x1

    invoke-static {v1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 341
    sget-object v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    sget v1, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-static {v1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 342
    sget-object v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    sget v1, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 712
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 711
    new-instance v0, Lnet/oneplus/gallery3d/exif/ExifData;

    sget-object v1, Lnet/oneplus/gallery3d/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lnet/oneplus/gallery3d/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mData:Lnet/oneplus/gallery3d/exif/ExifData;

    .line 1950
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd kk:mm:ss"

    .line 1951
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    .line 1952
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd"

    .line 1953
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    .line 1954
    const-string v0, "UTC"

    .line 1955
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    .line 2065
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    .line 715
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 716
    return-void
.end method

.method protected static closeSilently(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 2056
    if-eqz p0, :cond_0

    .line 2058
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2063
    :cond_0
    :goto_0
    return-void

    .line 2059
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static convertLatOrLongToDouble([Lnet/oneplus/gallery3d/exif/Rational;Ljava/lang/String;)D
    .locals 14
    .param p0, "coordinate"    # [Lnet/oneplus/gallery3d/exif/Rational;
    .param p1, "reference"    # Ljava/lang/String;

    .prologue
    .line 1912
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, p0, v3

    invoke-virtual {v3}, Lnet/oneplus/gallery3d/exif/Rational;->toDouble()D

    move-result-wide v0

    .line 1913
    .local v0, "degrees":D
    const/4 v3, 0x1

    aget-object v3, p0, v3

    invoke-virtual {v3}, Lnet/oneplus/gallery3d/exif/Rational;->toDouble()D

    move-result-wide v4

    .line 1914
    .local v4, "minutes":D
    const/4 v3, 0x2

    aget-object v3, p0, v3

    invoke-virtual {v3}, Lnet/oneplus/gallery3d/exif/Rational;->toDouble()D

    move-result-wide v8

    .line 1915
    .local v8, "seconds":D
    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    div-double v10, v4, v10

    add-double/2addr v10, v0

    const-wide v12, 0x40ac200000000000L    # 3600.0

    div-double v12, v8, v12

    add-double v6, v10, v12

    .line 1916
    .local v6, "result":D
    const-string v3, "S"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "W"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 1917
    :cond_0
    neg-double v6, v6

    .line 1919
    .end local v6    # "result":D
    :cond_1
    return-wide v6

    .line 1920
    .end local v0    # "degrees":D
    .end local v4    # "minutes":D
    .end local v8    # "seconds":D
    :catch_0
    move-exception v2

    .line 1921
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
.end method

.method public static defineTag(IS)I
    .locals 2
    .param p0, "ifdId"    # I
    .param p1, "tagId"    # S

    .prologue
    .line 349
    const v0, 0xffff

    and-int/2addr v0, p1

    shl-int/lit8 v1, p0, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method private doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x400

    const/4 v3, 0x0

    .line 2047
    new-array v0, v4, [B

    .line 2048
    .local v0, "buf":[B
    invoke-virtual {p1, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 2049
    .local v1, "ret":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2050
    invoke-virtual {p2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 2051
    invoke-virtual {p1, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    goto :goto_0

    .line 2053
    :cond_0
    return-void
.end method

.method protected static getAllowedIfdFlagsFromInfo(I)I
    .locals 1
    .param p0, "info"    # I

    .prologue
    .line 2350
    ushr-int/lit8 v0, p0, 0x18

    return v0
.end method

.method protected static getAllowedIfdsFromInfo(I)[I
    .locals 10
    .param p0, "info"    # I

    .prologue
    .line 2354
    invoke-static {p0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result v2

    .line 2355
    .local v2, "ifdFlags":I
    invoke-static {}, Lnet/oneplus/gallery3d/exif/IfdData;->getIfds()[I

    move-result-object v3

    .line 2356
    .local v3, "ifds":[I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2357
    .local v6, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v8, 0x5

    if-ge v1, v8, :cond_1

    .line 2358
    shr-int v8, v2, v1

    and-int/lit8 v0, v8, 0x1

    .line 2359
    .local v0, "flag":I
    const/4 v8, 0x1

    if-ne v0, v8, :cond_0

    .line 2360
    aget v8, v3, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2357
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2363
    .end local v0    # "flag":I
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_3

    .line 2364
    const/4 v7, 0x0

    .line 2371
    :cond_2
    return-object v7

    .line 2366
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v7, v8, [I

    .line 2367
    .local v7, "ret":[I
    const/4 v4, 0x0

    .line 2368
    .local v4, "j":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2369
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "j":I
    .local v5, "j":I
    aput v1, v7, v4

    move v4, v5

    .line 2370
    .end local v5    # "j":I
    .restart local v4    # "j":I
    goto :goto_1
.end method

.method protected static getComponentCountFromInfo(I)I
    .locals 1
    .param p0, "info"    # I

    .prologue
    .line 2407
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method protected static getFlagsFromAllowedIfds([I)I
    .locals 8
    .param p0, "allowedIfds"    # [I

    .prologue
    const/4 v4, 0x0

    .line 2386
    if-eqz p0, :cond_0

    array-length v5, p0

    if-nez v5, :cond_2

    :cond_0
    move v0, v4

    .line 2399
    :cond_1
    return v0

    .line 2389
    :cond_2
    const/4 v0, 0x0

    .line 2390
    .local v0, "flags":I
    invoke-static {}, Lnet/oneplus/gallery3d/exif/IfdData;->getIfds()[I

    move-result-object v2

    .line 2391
    .local v2, "ifds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v5, 0x5

    if-ge v1, v5, :cond_1

    .line 2392
    array-length v6, p0

    move v5, v4

    :goto_1
    if-ge v5, v6, :cond_3

    aget v3, p0, v5

    .line 2393
    .local v3, "j":I
    aget v7, v2, v1

    if-ne v7, v3, :cond_4

    .line 2394
    const/4 v5, 0x1

    shl-int/2addr v5, v1

    or-int/2addr v0, v5

    .line 2391
    .end local v3    # "j":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2392
    .restart local v3    # "j":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public static getOrientationValueForRotation(I)S
    .locals 1
    .param p0, "degrees"    # I

    .prologue
    .line 1862
    rem-int/lit16 p0, p0, 0x168

    .line 1863
    if-gez p0, :cond_0

    .line 1864
    add-int/lit16 p0, p0, 0x168

    .line 1866
    :cond_0
    const/16 v0, 0x5a

    if-ge p0, v0, :cond_1

    .line 1867
    const/4 v0, 0x1

    .line 1873
    :goto_0
    return v0

    .line 1868
    :cond_1
    const/16 v0, 0xb4

    if-ge p0, v0, :cond_2

    .line 1869
    const/4 v0, 0x6

    goto :goto_0

    .line 1870
    :cond_2
    const/16 v0, 0x10e

    if-ge p0, v0, :cond_3

    .line 1871
    const/4 v0, 0x3

    goto :goto_0

    .line 1873
    :cond_3
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static getRotationForOrientationValue(S)I
    .locals 1
    .param p0, "orientation"    # S

    .prologue
    const/4 v0, 0x0

    .line 1884
    packed-switch p0, :pswitch_data_0

    .line 1894
    :goto_0
    :pswitch_0
    return v0

    .line 1888
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    .line 1890
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    .line 1892
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 1884
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getTrueIfd(I)I
    .locals 1
    .param p0, "tag"    # I

    .prologue
    .line 364
    ushr-int/lit8 v0, p0, 0x10

    return v0
.end method

.method public static getTrueTagKey(I)S
    .locals 1
    .param p0, "tag"    # I

    .prologue
    .line 357
    int-to-short v0, p0

    return v0
.end method

.method protected static getTypeFromInfo(I)S
    .locals 1
    .param p0, "info"    # I

    .prologue
    .line 2403
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method private initTagInfo()V
    .locals 13

    .prologue
    .line 2083
    const/4 v10, 0x2

    new-array v5, v10, [I

    fill-array-data v5, :array_0

    .line 2086
    .local v5, "ifdAllowedIfds":[I
    invoke-static {v5}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v10

    shl-int/lit8 v6, v10, 0x18

    .line 2087
    .local v6, "ifdFlags":I
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_MAKE:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2089
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2091
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2093
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_BITS_PER_SAMPLE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x3

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2095
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_COMPRESSION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2097
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2099
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2101
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2103
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_PLANAR_CONFIGURATION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2105
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2107
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2109
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_X_RESOLUTION:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2111
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_Y_RESOLUTION:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2113
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_RESOLUTION_UNIT:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2115
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2117
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_ROWS_PER_STRIP:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2119
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2121
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_TRANSFER_FUNCTION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit16 v12, v12, 0x300

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2123
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_WHITE_POINT:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2125
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x6

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2127
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x3

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2129
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x6

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2131
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_DATE_TIME:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x14

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2133
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_IMAGE_DESCRIPTION:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2135
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_MAKE:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2137
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_MODEL:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2139
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_SOFTWARE:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2141
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_ARTIST:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2143
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_COPYRIGHT:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2145
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2147
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2150
    const/4 v10, 0x1

    new-array v4, v10, [I

    const/4 v10, 0x0

    const/4 v11, 0x1

    aput v11, v4, v10

    .line 2153
    .local v4, "ifd1AllowedIfds":[I
    invoke-static {v4}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v10

    shl-int/lit8 v7, v10, 0x18

    .line 2154
    .local v7, "ifdFlags1":I
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v7

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2156
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v7

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2159
    const/4 v10, 0x1

    new-array v0, v10, [I

    const/4 v10, 0x0

    const/4 v11, 0x2

    aput v11, v0, v10

    .line 2162
    .local v0, "exifAllowedIfds":[I
    invoke-static {v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v10

    shl-int/lit8 v1, v10, 0x18

    .line 2163
    .local v1, "exifFlags":I
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_EXIF_VERSION:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x4

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2165
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_FLASHPIX_VERSION:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x4

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2167
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_COLOR_SPACE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2169
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x4

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2171
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2173
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2175
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2177
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_MAKER_NOTE:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2179
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_USER_COMMENT:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2181
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_RELATED_SOUND_FILE:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0xd

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2183
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x14

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2185
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x14

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2187
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2189
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2191
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2193
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x21

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2195
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2197
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_F_NUMBER:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2199
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_PROGRAM:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2201
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2203
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2205
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_OECF:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2207
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    const/high16 v12, 0xa0000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2209
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2211
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_BRIGHTNESS_VALUE:I

    const/high16 v12, 0xa0000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2213
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    const/high16 v12, 0xa0000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2215
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_MAX_APERTURE_VALUE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2217
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_SUBJECT_DISTANCE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2219
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_METERING_MODE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2221
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_LIGHT_SOURCE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2223
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_FLASH:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2225
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2227
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_SUBJECT_AREA:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2229
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_FLASH_ENERGY:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2231
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2233
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2235
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2237
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2239
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_SUBJECT_LOCATION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2241
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_INDEX:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2243
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_SENSING_METHOD:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2245
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_FILE_SOURCE:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2247
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_SCENE_TYPE:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2249
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_CFA_PATTERN:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2251
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_CUSTOM_RENDERED:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2253
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_MODE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2255
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2257
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2259
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2261
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2263
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GAIN_CONTROL:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2265
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_CONTRAST:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2267
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_SATURATION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2269
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_SHARPNESS:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2271
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2273
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2275
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2278
    const/4 v10, 0x1

    new-array v2, v10, [I

    const/4 v10, 0x0

    const/4 v11, 0x4

    aput v11, v2, v10

    .line 2281
    .local v2, "gpsAllowedIfds":[I
    invoke-static {v2}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v10

    shl-int/lit8 v3, v10, 0x18

    .line 2282
    .local v3, "gpsFlags":I
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_VERSION_ID:I

    const/high16 v12, 0x10000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x4

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2284
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2286
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2288
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    const/high16 v12, 0xa0000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x3

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2290
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    const/high16 v12, 0xa0000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x3

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2292
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    const/high16 v12, 0x10000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2294
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_ALTITUDE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2296
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x3

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2298
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_SATTELLITES:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2300
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_STATUS:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2302
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_MEASURE_MODE:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2304
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_DOP:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2306
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_SPEED_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2308
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_SPEED:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2310
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_TRACK_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2312
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_TRACK:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2314
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2316
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2318
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_MAP_DATUM:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2320
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2322
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2324
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2326
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_BEARING:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2328
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2330
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2332
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2334
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_AREA_INFORMATION:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2336
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0xb

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2338
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_DIFFERENTIAL:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0xb

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2341
    const/4 v10, 0x1

    new-array v8, v10, [I

    const/4 v10, 0x0

    const/4 v11, 0x3

    aput v11, v8, v10

    .line 2344
    .local v8, "interopAllowedIfds":[I
    invoke-static {v8}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v10

    shl-int/lit8 v9, v10, 0x18

    .line 2345
    .local v9, "interopFlags":I
    iget-object v10, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v9

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2347
    return-void

    .line 2083
    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method protected static isIfdAllowed(II)Z
    .locals 5
    .param p0, "info"    # I
    .param p1, "ifd"    # I

    .prologue
    const/4 v3, 0x1

    .line 2375
    invoke-static {}, Lnet/oneplus/gallery3d/exif/IfdData;->getIfds()[I

    move-result-object v2

    .line 2376
    .local v2, "ifds":[I
    invoke-static {p0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result v1

    .line 2377
    .local v1, "ifdFlags":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 2378
    aget v4, v2, v0

    if-ne p1, v4, :cond_0

    shr-int v4, v1, v0

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v3, :cond_0

    .line 2382
    :goto_1
    return v3

    .line 2377
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2382
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected static isOffsetTag(S)Z
    .locals 2
    .param p0, "tag"    # S

    .prologue
    .line 1484
    sget-object v0, Lnet/oneplus/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static toExifLatLong(D)[Lnet/oneplus/gallery3d/exif/Rational;
    .locals 10
    .param p0, "value"    # D

    .prologue
    const-wide/16 v8, 0x1

    .line 2035
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .line 2036
    double-to-int v0, p0

    .line 2037
    .local v0, "degrees":I
    int-to-double v4, v0

    sub-double v4, p0, v4

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    mul-double p0, v4, v6

    .line 2038
    double-to-int v1, p0

    .line 2039
    .local v1, "minutes":I
    int-to-double v4, v1

    sub-double v4, p0, v4

    const-wide v6, 0x40b7700000000000L    # 6000.0

    mul-double p0, v4, v6

    .line 2040
    double-to-int v2, p0

    .line 2041
    .local v2, "seconds":I
    const/4 v3, 0x3

    new-array v3, v3, [Lnet/oneplus/gallery3d/exif/Rational;

    const/4 v4, 0x0

    new-instance v5, Lnet/oneplus/gallery3d/exif/Rational;

    int-to-long v6, v0

    invoke-direct {v5, v6, v7, v8, v9}, Lnet/oneplus/gallery3d/exif/Rational;-><init>(JJ)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Lnet/oneplus/gallery3d/exif/Rational;

    int-to-long v6, v1

    invoke-direct {v5, v6, v7, v8, v9}, Lnet/oneplus/gallery3d/exif/Rational;-><init>(JJ)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Lnet/oneplus/gallery3d/exif/Rational;

    int-to-long v6, v2

    const-wide/16 v8, 0x64

    invoke-direct {v5, v6, v7, v8, v9}, Lnet/oneplus/gallery3d/exif/Rational;-><init>(JJ)V

    aput-object v5, v3, v4

    return-object v3
.end method


# virtual methods
.method public addDateTimeStampTag(IJLjava/util/TimeZone;)Z
    .locals 4
    .param p1, "tagId"    # I
    .param p2, "timestamp"    # J
    .param p4, "timezone"    # Ljava/util/TimeZone;

    .prologue
    const/4 v1, 0x0

    .line 1968
    sget v2, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_DATE_TIME:I

    if-eq p1, v2, :cond_0

    sget v2, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    if-eq p1, v2, :cond_0

    sget v2, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    if-ne p1, v2, :cond_1

    .line 1970
    :cond_0
    iget-object v2, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    invoke-virtual {v2, p4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1971
    iget-object v2, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lnet/oneplus/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lnet/oneplus/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 1972
    .local v0, "t":Lnet/oneplus/gallery3d/exif/ExifTag;
    if-nez v0, :cond_2

    .line 1979
    .end local v0    # "t":Lnet/oneplus/gallery3d/exif/ExifTag;
    :cond_1
    :goto_0
    return v1

    .line 1975
    .restart local v0    # "t":Lnet/oneplus/gallery3d/exif/ExifTag;
    :cond_2
    invoke-virtual {p0, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->setTag(Lnet/oneplus/gallery3d/exif/ExifTag;)Lnet/oneplus/gallery3d/exif/ExifTag;

    .line 1979
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public addGpsDateTimeStampTag(J)Z
    .locals 13
    .param p1, "timestamp"    # J

    .prologue
    const/4 v2, 0x1

    const-wide/16 v10, 0x1

    const/4 v1, 0x0

    .line 2015
    sget v3, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    iget-object v4, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lnet/oneplus/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lnet/oneplus/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 2016
    .local v0, "t":Lnet/oneplus/gallery3d/exif/ExifTag;
    if-nez v0, :cond_1

    .line 2030
    :cond_0
    :goto_0
    return v1

    .line 2019
    :cond_1
    invoke-virtual {p0, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->setTag(Lnet/oneplus/gallery3d/exif/ExifTag;)Lnet/oneplus/gallery3d/exif/ExifTag;

    .line 2020
    iget-object v3, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    invoke-virtual {v3, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2021
    sget v3, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    const/4 v4, 0x3

    new-array v4, v4, [Lnet/oneplus/gallery3d/exif/Rational;

    new-instance v5, Lnet/oneplus/gallery3d/exif/Rational;

    iget-object v6, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v7, 0xb

    .line 2022
    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-long v6, v6

    invoke-direct {v5, v6, v7, v10, v11}, Lnet/oneplus/gallery3d/exif/Rational;-><init>(JJ)V

    aput-object v5, v4, v1

    new-instance v5, Lnet/oneplus/gallery3d/exif/Rational;

    iget-object v6, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v7, 0xc

    .line 2023
    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-long v6, v6

    invoke-direct {v5, v6, v7, v10, v11}, Lnet/oneplus/gallery3d/exif/Rational;-><init>(JJ)V

    aput-object v5, v4, v2

    const/4 v5, 0x2

    new-instance v6, Lnet/oneplus/gallery3d/exif/Rational;

    iget-object v7, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v8, 0xd

    .line 2024
    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    int-to-long v8, v7

    invoke-direct {v6, v8, v9, v10, v11}, Lnet/oneplus/gallery3d/exif/Rational;-><init>(JJ)V

    aput-object v6, v4, v5

    .line 2021
    invoke-virtual {p0, v3, v4}, Lnet/oneplus/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lnet/oneplus/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 2026
    if-eqz v0, :cond_0

    .line 2029
    invoke-virtual {p0, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->setTag(Lnet/oneplus/gallery3d/exif/ExifTag;)Lnet/oneplus/gallery3d/exif/ExifTag;

    move v1, v2

    .line 2030
    goto :goto_0
.end method

.method public addGpsTags(DD)Z
    .locals 9
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    const-wide/16 v6, 0x0

    .line 1990
    sget v4, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    invoke-static {p1, p2}, Lnet/oneplus/gallery3d/exif/ExifInterface;->toExifLatLong(D)[Lnet/oneplus/gallery3d/exif/Rational;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lnet/oneplus/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lnet/oneplus/gallery3d/exif/ExifTag;

    move-result-object v1

    .line 1991
    .local v1, "latTag":Lnet/oneplus/gallery3d/exif/ExifTag;
    sget v4, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    invoke-static {p3, p4}, Lnet/oneplus/gallery3d/exif/ExifInterface;->toExifLatLong(D)[Lnet/oneplus/gallery3d/exif/Rational;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lnet/oneplus/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lnet/oneplus/gallery3d/exif/ExifTag;

    move-result-object v3

    .line 1992
    .local v3, "longTag":Lnet/oneplus/gallery3d/exif/ExifTag;
    sget v5, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    cmpl-double v4, p1, v6

    if-ltz v4, :cond_1

    const-string v4, "N"

    :goto_0
    invoke-virtual {p0, v5, v4}, Lnet/oneplus/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lnet/oneplus/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 1995
    .local v0, "latRefTag":Lnet/oneplus/gallery3d/exif/ExifTag;
    sget v5, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    cmpl-double v4, p3, v6

    if-ltz v4, :cond_2

    const-string v4, "E"

    :goto_1
    invoke-virtual {p0, v5, v4}, Lnet/oneplus/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lnet/oneplus/gallery3d/exif/ExifTag;

    move-result-object v2

    .line 1998
    .local v2, "longRefTag":Lnet/oneplus/gallery3d/exif/ExifTag;
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    if-nez v2, :cond_3

    .line 1999
    :cond_0
    const/4 v4, 0x0

    .line 2005
    :goto_2
    return v4

    .line 1992
    .end local v0    # "latRefTag":Lnet/oneplus/gallery3d/exif/ExifTag;
    .end local v2    # "longRefTag":Lnet/oneplus/gallery3d/exif/ExifTag;
    :cond_1
    const-string v4, "S"

    goto :goto_0

    .line 1995
    .restart local v0    # "latRefTag":Lnet/oneplus/gallery3d/exif/ExifTag;
    :cond_2
    const-string v4, "W"

    goto :goto_1

    .line 2001
    .restart local v2    # "longRefTag":Lnet/oneplus/gallery3d/exif/ExifTag;
    :cond_3
    invoke-virtual {p0, v1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->setTag(Lnet/oneplus/gallery3d/exif/ExifTag;)Lnet/oneplus/gallery3d/exif/ExifTag;

    .line 2002
    invoke-virtual {p0, v3}, Lnet/oneplus/gallery3d/exif/ExifInterface;->setTag(Lnet/oneplus/gallery3d/exif/ExifTag;)Lnet/oneplus/gallery3d/exif/ExifTag;

    .line 2003
    invoke-virtual {p0, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->setTag(Lnet/oneplus/gallery3d/exif/ExifTag;)Lnet/oneplus/gallery3d/exif/ExifTag;

    .line 2004
    invoke-virtual {p0, v2}, Lnet/oneplus/gallery3d/exif/ExifInterface;->setTag(Lnet/oneplus/gallery3d/exif/ExifTag;)Lnet/oneplus/gallery3d/exif/ExifTag;

    .line 2005
    const/4 v4, 0x1

    goto :goto_2
.end method

.method public buildTag(IILjava/lang/Object;)Lnet/oneplus/gallery3d/exif/ExifTag;
    .locals 8
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I
    .param p3, "val"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 1499
    invoke-virtual {p0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    .line 1500
    .local v6, "info":I
    if-eqz v6, :cond_0

    if-nez p3, :cond_2

    :cond_0
    move-object v0, v7

    .line 1513
    :cond_1
    :goto_0
    return-object v0

    .line 1503
    :cond_2
    invoke-static {v6}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v2

    .line 1504
    .local v2, "type":S
    invoke-static {v6}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v3

    .line 1505
    .local v3, "definedCount":I
    if-eqz v3, :cond_3

    const/4 v5, 0x1

    .line 1506
    .local v5, "hasDefinedCount":Z
    :goto_1
    invoke-static {v6, p2}, Lnet/oneplus/gallery3d/exif/ExifInterface;->isIfdAllowed(II)Z

    move-result v1

    if-nez v1, :cond_4

    move-object v0, v7

    .line 1507
    goto :goto_0

    .line 1505
    .end local v5    # "hasDefinedCount":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 1509
    .restart local v5    # "hasDefinedCount":Z
    :cond_4
    new-instance v0, Lnet/oneplus/gallery3d/exif/ExifTag;

    invoke-static {p1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/gallery3d/exif/ExifTag;-><init>(SSIIZ)V

    .line 1510
    .local v0, "t":Lnet/oneplus/gallery3d/exif/ExifTag;
    invoke-virtual {v0, p3}, Lnet/oneplus/gallery3d/exif/ExifTag;->setValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v0, v7

    .line 1511
    goto :goto_0
.end method

.method public buildTag(ILjava/lang/Object;)Lnet/oneplus/gallery3d/exif/ExifTag;
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 1524
    invoke-static {p1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTrueIfd(I)I

    move-result v0

    .line 1525
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0, p2}, Lnet/oneplus/gallery3d/exif/ExifInterface;->buildTag(IILjava/lang/Object;)Lnet/oneplus/gallery3d/exif/ExifTag;

    move-result-object v1

    return-object v1
.end method

.method protected buildUninitializedTag(I)Lnet/oneplus/gallery3d/exif/ExifTag;
    .locals 7
    .param p1, "tagId"    # I

    .prologue
    .line 1529
    invoke-virtual {p0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    .line 1530
    .local v6, "info":I
    if-nez v6, :cond_0

    .line 1531
    const/4 v0, 0x0

    .line 1538
    :goto_0
    return-object v0

    .line 1533
    :cond_0
    invoke-static {v6}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v2

    .line 1534
    .local v2, "type":S
    invoke-static {v6}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v3

    .line 1535
    .local v3, "definedCount":I
    if-eqz v3, :cond_1

    const/4 v5, 0x1

    .line 1536
    .local v5, "hasDefinedCount":Z
    :goto_1
    invoke-static {p1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTrueIfd(I)I

    move-result v4

    .line 1537
    .local v4, "ifdId":I
    new-instance v0, Lnet/oneplus/gallery3d/exif/ExifTag;

    invoke-static {p1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/gallery3d/exif/ExifTag;-><init>(SSIIZ)V

    .line 1538
    .local v0, "t":Lnet/oneplus/gallery3d/exif/ExifTag;
    goto :goto_0

    .line 1535
    .end local v0    # "t":Lnet/oneplus/gallery3d/exif/ExifTag;
    .end local v4    # "ifdId":I
    .end local v5    # "hasDefinedCount":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public clearExif()V
    .locals 2

    .prologue
    .line 787
    new-instance v0, Lnet/oneplus/gallery3d/exif/ExifData;

    sget-object v1, Lnet/oneplus/gallery3d/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lnet/oneplus/gallery3d/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mData:Lnet/oneplus/gallery3d/exif/ExifData;

    .line 788
    return-void
.end method

.method public deleteTag(I)V
    .locals 1
    .param p1, "tagId"    # I

    .prologue
    .line 1616
    invoke-virtual {p0, p1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1617
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->deleteTag(II)V

    .line 1618
    return-void
.end method

.method public deleteTag(II)V
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1607
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mData:Lnet/oneplus/gallery3d/exif/ExifData;

    invoke-static {p1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1, p2}, Lnet/oneplus/gallery3d/exif/ExifData;->removeTag(SI)V

    .line 1608
    return-void
.end method

.method public forceRewriteExif(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1134
    invoke-virtual {p0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getAllTags()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->forceRewriteExif(Ljava/lang/String;Ljava/util/Collection;)V

    .line 1135
    return-void
.end method

.method public forceRewriteExif(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 9
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lnet/oneplus/gallery3d/exif/ExifTag;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1098
    .local p2, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/oneplus/gallery3d/exif/ExifTag;>;"
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/gallery3d/exif/ExifInterface;->rewriteExif(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1100
    iget-object v6, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mData:Lnet/oneplus/gallery3d/exif/ExifData;

    .line 1101
    .local v6, "tempData":Lnet/oneplus/gallery3d/exif/ExifData;
    new-instance v7, Lnet/oneplus/gallery3d/exif/ExifData;

    sget-object v8, Lnet/oneplus/gallery3d/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v7, v8}, Lnet/oneplus/gallery3d/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v7, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mData:Lnet/oneplus/gallery3d/exif/ExifData;

    .line 1102
    const/4 v4, 0x0

    .line 1103
    .local v4, "is":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 1105
    .local v0, "bytes":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1106
    .end local v4    # "is":Ljava/io/FileInputStream;
    .local v5, "is":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1107
    .end local v0    # "bytes":Ljava/io/ByteArrayOutputStream;
    .local v1, "bytes":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    invoke-direct {p0, v5, v1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1108
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 1109
    .local v3, "imageBytes":[B
    invoke-virtual {p0, v3}, Lnet/oneplus/gallery3d/exif/ExifInterface;->readExif([B)V

    .line 1110
    invoke-virtual {p0, p2}, Lnet/oneplus/gallery3d/exif/ExifInterface;->setTags(Ljava/util/Collection;)V

    .line 1111
    invoke-virtual {p0, v3, p1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->writeExif([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1116
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 1118
    iput-object v6, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mData:Lnet/oneplus/gallery3d/exif/ExifData;

    .line 1121
    .end local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "imageBytes":[B
    .end local v5    # "is":Ljava/io/FileInputStream;
    .end local v6    # "tempData":Lnet/oneplus/gallery3d/exif/ExifData;
    :cond_0
    return-void

    .line 1112
    .restart local v0    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "tempData":Lnet/oneplus/gallery3d/exif/ExifData;
    :catch_0
    move-exception v2

    .line 1113
    .local v2, "e":Ljava/io/IOException;
    :goto_0
    :try_start_3
    invoke-static {v4}, Lnet/oneplus/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 1114
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1116
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 1118
    iput-object v6, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mData:Lnet/oneplus/gallery3d/exif/ExifData;

    throw v7

    .line 1116
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v0    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bytes":Ljava/io/ByteArrayOutputStream;
    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    goto :goto_1

    .line 1112
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    goto :goto_0

    .end local v0    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :catch_2
    move-exception v2

    move-object v0, v1

    .end local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bytes":Ljava/io/ByteArrayOutputStream;
    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method public getActualTagCount(II)I
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1435
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTag(II)Lnet/oneplus/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 1436
    .local v0, "t":Lnet/oneplus/gallery3d/exif/ExifTag;
    if-nez v0, :cond_0

    .line 1437
    const/4 v1, 0x0

    .line 1439
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lnet/oneplus/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v1

    goto :goto_0
.end method

.method public getAllTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/gallery3d/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1143
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mData:Lnet/oneplus/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lnet/oneplus/gallery3d/exif/ExifData;->getAllTags()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefinedTagCount(I)I
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1418
    invoke-virtual {p0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1419
    .local v0, "info":I
    if-nez v0, :cond_0

    .line 1420
    const/4 v1, 0x0

    .line 1422
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v1

    goto :goto_0
.end method

.method public getDefinedTagDefaultIfd(I)I
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1450
    invoke-virtual {p0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1451
    .local v0, "info":I
    if-nez v0, :cond_0

    .line 1452
    const/4 v1, -0x1

    .line 1454
    :goto_0
    return v1

    :cond_0
    invoke-static {p1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTrueIfd(I)I

    move-result v1

    goto :goto_0
.end method

.method public getDefinedTagType(I)S
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1465
    invoke-virtual {p0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1466
    .local v0, "info":I
    if-nez v0, :cond_0

    .line 1467
    const/4 v1, -0x1

    .line 1469
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v1

    goto :goto_0
.end method

.method public getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 3
    .param p1, "outStream"    # Ljava/io/OutputStream;

    .prologue
    .line 963
    if-nez p1, :cond_0

    .line 964
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 966
    :cond_0
    new-instance v0, Lnet/oneplus/gallery3d/exif/ExifOutputStream;

    invoke-direct {v0, p1, p0}, Lnet/oneplus/gallery3d/exif/ExifOutputStream;-><init>(Ljava/io/OutputStream;Lnet/oneplus/gallery3d/exif/ExifInterface;)V

    .line 967
    .local v0, "eos":Lnet/oneplus/gallery3d/exif/ExifOutputStream;
    iget-object v1, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mData:Lnet/oneplus/gallery3d/exif/ExifData;

    invoke-virtual {v0, v1}, Lnet/oneplus/gallery3d/exif/ExifOutputStream;->setExifData(Lnet/oneplus/gallery3d/exif/ExifData;)V

    .line 968
    return-object v0
.end method

.method public getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 5
    .param p1, "exifOutFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 984
    if-nez p1, :cond_0

    .line 985
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Argument is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 987
    :cond_0
    const/4 v1, 0x0

    .line 989
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 994
    .end local v1    # "out":Ljava/io/OutputStream;
    .local v2, "out":Ljava/io/OutputStream;
    invoke-virtual {p0, v2}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v3

    return-object v3

    .line 990
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 991
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-static {v1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 992
    throw v0
.end method

.method public getLatLongAsDoubles()[D
    .locals 8

    .prologue
    const/4 v6, 0x3

    .line 1934
    sget v5, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    invoke-virtual {p0, v5}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTagRationalValues(I)[Lnet/oneplus/gallery3d/exif/Rational;

    move-result-object v1

    .line 1935
    .local v1, "latitude":[Lnet/oneplus/gallery3d/exif/Rational;
    sget v5, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    invoke-virtual {p0, v5}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v2

    .line 1936
    .local v2, "latitudeRef":Ljava/lang/String;
    sget v5, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    invoke-virtual {p0, v5}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTagRationalValues(I)[Lnet/oneplus/gallery3d/exif/Rational;

    move-result-object v3

    .line 1937
    .local v3, "longitude":[Lnet/oneplus/gallery3d/exif/Rational;
    sget v5, Lnet/oneplus/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    invoke-virtual {p0, v5}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v4

    .line 1938
    .local v4, "longitudeRef":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    array-length v5, v1

    if-lt v5, v6, :cond_0

    array-length v5, v3

    if-ge v5, v6, :cond_1

    .line 1940
    :cond_0
    const/4 v0, 0x0

    .line 1945
    :goto_0
    return-object v0

    .line 1942
    :cond_1
    const/4 v5, 0x2

    new-array v0, v5, [D

    .line 1943
    .local v0, "latLon":[D
    const/4 v5, 0x0

    invoke-static {v1, v2}, Lnet/oneplus/gallery3d/exif/ExifInterface;->convertLatOrLongToDouble([Lnet/oneplus/gallery3d/exif/Rational;Ljava/lang/String;)D

    move-result-wide v6

    aput-wide v6, v0, v5

    .line 1944
    const/4 v5, 0x1

    invoke-static {v3, v4}, Lnet/oneplus/gallery3d/exif/ExifInterface;->convertLatOrLongToDouble([Lnet/oneplus/gallery3d/exif/Rational;Ljava/lang/String;)D

    move-result-wide v6

    aput-wide v6, v0, v5

    goto :goto_0
.end method

.method public getTag(I)Lnet/oneplus/gallery3d/exif/ExifTag;
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1192
    invoke-virtual {p0, p1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1193
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTag(II)Lnet/oneplus/gallery3d/exif/ExifTag;

    move-result-object v1

    return-object v1
.end method

.method public getTag(II)Lnet/oneplus/gallery3d/exif/ExifTag;
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1178
    invoke-static {p2}, Lnet/oneplus/gallery3d/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1179
    const/4 v0, 0x0

    .line 1181
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mData:Lnet/oneplus/gallery3d/exif/ExifData;

    invoke-static {p1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1, p2}, Lnet/oneplus/gallery3d/exif/ExifData;->getTag(SI)Lnet/oneplus/gallery3d/exif/ExifTag;

    move-result-object v0

    goto :goto_0
.end method

.method public getTagByteValue(I)Ljava/lang/Byte;
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1296
    invoke-virtual {p0, p1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1297
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTagByteValue(II)Ljava/lang/Byte;

    move-result-object v1

    return-object v1
.end method

.method public getTagByteValue(II)Ljava/lang/Byte;
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1285
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTagByteValues(II)[B

    move-result-object v0

    .line 1286
    .local v0, "l":[B
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 1287
    :cond_0
    const/4 v1, 0x0

    .line 1289
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    goto :goto_0
.end method

.method public getTagByteValues(I)[B
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1372
    invoke-virtual {p0, p1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1373
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTagByteValues(II)[B

    move-result-object v1

    return-object v1
.end method

.method public getTagByteValues(II)[B
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1361
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTag(II)Lnet/oneplus/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 1362
    .local v0, "t":Lnet/oneplus/gallery3d/exif/ExifTag;
    if-nez v0, :cond_0

    .line 1363
    const/4 v1, 0x0

    .line 1365
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lnet/oneplus/gallery3d/exif/ExifTag;->getValueAsBytes()[B

    move-result-object v1

    goto :goto_0
.end method

.method protected getTagDefinition(SI)I
    .locals 2
    .param p1, "tagId"    # S
    .param p2, "defaultIfd"    # I

    .prologue
    .line 1678
    invoke-virtual {p0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-static {p2, p1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method protected getTagDefinitionForTag(Lnet/oneplus/gallery3d/exif/ExifTag;)I
    .locals 4
    .param p1, "tag"    # Lnet/oneplus/gallery3d/exif/ExifTag;

    .prologue
    .line 1700
    invoke-virtual {p1}, Lnet/oneplus/gallery3d/exif/ExifTag;->getDataType()S

    move-result v2

    .line 1701
    .local v2, "type":S
    invoke-virtual {p1}, Lnet/oneplus/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v0

    .line 1702
    .local v0, "count":I
    invoke-virtual {p1}, Lnet/oneplus/gallery3d/exif/ExifTag;->getIfd()I

    move-result v1

    .line 1703
    .local v1, "ifd":I
    invoke-virtual {p1}, Lnet/oneplus/gallery3d/exif/ExifTag;->getTagId()S

    move-result v3

    invoke-virtual {p0, v3, v2, v0, v1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTagDefinitionForTag(SSII)I

    move-result v3

    return v3
.end method

.method protected getTagDefinitionForTag(SSII)I
    .locals 15
    .param p1, "tagId"    # S
    .param p2, "type"    # S
    .param p3, "count"    # I
    .param p4, "ifd"    # I

    .prologue
    .line 1707
    invoke-virtual/range {p0 .. p1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTagDefinitionsForTagId(S)[I

    move-result-object v4

    .line 1708
    .local v4, "defs":[I
    if-nez v4, :cond_1

    .line 1709
    const/4 v9, -0x1

    .line 1731
    :cond_0
    :goto_0
    return v9

    .line 1711
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v7

    .line 1712
    .local v7, "infos":Landroid/util/SparseIntArray;
    const/4 v9, -0x1

    .line 1713
    .local v9, "ret":I
    array-length v13, v4

    const/4 v11, 0x0

    move v12, v11

    :goto_1
    if-ge v12, v13, :cond_0

    aget v5, v4, v12

    .line 1714
    .local v5, "i":I
    invoke-virtual {v7, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    .line 1715
    .local v6, "info":I
    invoke-static {v6}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v3

    .line 1716
    .local v3, "def_type":S
    invoke-static {v6}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v1

    .line 1717
    .local v1, "def_count":I
    invoke-static {v6}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getAllowedIfdsFromInfo(I)[I

    move-result-object v2

    .line 1718
    .local v2, "def_ifds":[I
    const/4 v10, 0x0

    .line 1719
    .local v10, "valid_ifd":Z
    array-length v14, v2

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v14, :cond_2

    aget v8, v2, v11

    .line 1720
    .local v8, "j":I
    move/from16 v0, p4

    if-ne v8, v0, :cond_4

    .line 1721
    const/4 v10, 0x1

    .line 1725
    .end local v8    # "j":I
    :cond_2
    if-eqz v10, :cond_5

    move/from16 v0, p2

    if-ne v0, v3, :cond_5

    move/from16 v0, p3

    if-eq v0, v1, :cond_3

    if-nez v1, :cond_5

    .line 1727
    :cond_3
    move v9, v5

    .line 1728
    goto :goto_0

    .line 1719
    .restart local v8    # "j":I
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1713
    .end local v8    # "j":I
    :cond_5
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    goto :goto_1
.end method

.method protected getTagDefinitionsForTagId(S)[I
    .locals 11
    .param p1, "tagId"    # S

    .prologue
    const/4 v8, 0x0

    .line 1682
    invoke-static {}, Lnet/oneplus/gallery3d/exif/IfdData;->getIfds()[I

    move-result-object v5

    .line 1683
    .local v5, "ifds":[I
    array-length v7, v5

    new-array v3, v7, [I

    .line 1684
    .local v3, "defs":[I
    const/4 v0, 0x0

    .line 1685
    .local v0, "counter":I
    invoke-virtual {p0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v6

    .line 1686
    .local v6, "infos":Landroid/util/SparseIntArray;
    array-length v9, v5

    move v7, v8

    move v1, v0

    .end local v0    # "counter":I
    .local v1, "counter":I
    :goto_0
    if-ge v7, v9, :cond_0

    aget v4, v5, v7

    .line 1687
    .local v4, "i":I
    invoke-static {v4, p1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    .line 1688
    .local v2, "def":I
    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    if-eqz v10, :cond_2

    .line 1689
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "counter":I
    .restart local v0    # "counter":I
    aput v2, v3, v1

    .line 1686
    :goto_1
    add-int/lit8 v7, v7, 0x1

    move v1, v0

    .end local v0    # "counter":I
    .restart local v1    # "counter":I
    goto :goto_0

    .line 1692
    .end local v2    # "def":I
    .end local v4    # "i":I
    :cond_0
    if-nez v1, :cond_1

    .line 1693
    const/4 v7, 0x0

    .line 1696
    :goto_2
    return-object v7

    :cond_1
    invoke-static {v3, v8, v1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v7

    goto :goto_2

    .restart local v2    # "def":I
    .restart local v4    # "i":I
    :cond_2
    move v0, v1

    .end local v1    # "counter":I
    .restart local v0    # "counter":I
    goto :goto_1
.end method

.method protected getTagInfo()Landroid/util/SparseIntArray;
    .locals 1

    .prologue
    .line 2068
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 2069
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    .line 2070
    invoke-direct {p0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->initTagInfo()V

    .line 2072
    :cond_0
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public getTagIntValue(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1277
    invoke-virtual {p0, p1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1278
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTagIntValue(II)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public getTagIntValue(II)Ljava/lang/Integer;
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1266
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTagIntValues(II)[I

    move-result-object v0

    .line 1267
    .local v0, "l":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 1268
    :cond_0
    const/4 v1, 0x0

    .line 1270
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public getTagIntValues(I)[I
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1353
    invoke-virtual {p0, p1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1354
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTagIntValues(II)[I

    move-result-object v1

    return-object v1
.end method

.method public getTagIntValues(II)[I
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1342
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTag(II)Lnet/oneplus/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 1343
    .local v0, "t":Lnet/oneplus/gallery3d/exif/ExifTag;
    if-nez v0, :cond_0

    .line 1344
    const/4 v1, 0x0

    .line 1346
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lnet/oneplus/gallery3d/exif/ExifTag;->getValueAsInts()[I

    move-result-object v1

    goto :goto_0
.end method

.method public getTagLongValue(I)Ljava/lang/Long;
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1258
    invoke-virtual {p0, p1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1259
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTagLongValue(II)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public getTagLongValue(II)Ljava/lang/Long;
    .locals 4
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1247
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTagLongValues(II)[J

    move-result-object v0

    .line 1248
    .local v0, "l":[J
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 1249
    :cond_0
    const/4 v1, 0x0

    .line 1251
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method public getTagLongValues(I)[J
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1334
    invoke-virtual {p0, p1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1335
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTagLongValues(II)[J

    move-result-object v1

    return-object v1
.end method

.method public getTagLongValues(II)[J
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1323
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTag(II)Lnet/oneplus/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 1324
    .local v0, "t":Lnet/oneplus/gallery3d/exif/ExifTag;
    if-nez v0, :cond_0

    .line 1325
    const/4 v1, 0x0

    .line 1327
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lnet/oneplus/gallery3d/exif/ExifTag;->getValueAsLongs()[J

    move-result-object v1

    goto :goto_0
.end method

.method public getTagRationalValue(I)Lnet/oneplus/gallery3d/exif/Rational;
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1315
    invoke-virtual {p0, p1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1316
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTagRationalValue(II)Lnet/oneplus/gallery3d/exif/Rational;

    move-result-object v1

    return-object v1
.end method

.method public getTagRationalValue(II)Lnet/oneplus/gallery3d/exif/Rational;
    .locals 3
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1304
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTagRationalValues(II)[Lnet/oneplus/gallery3d/exif/Rational;

    move-result-object v0

    .line 1305
    .local v0, "l":[Lnet/oneplus/gallery3d/exif/Rational;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 1306
    :cond_0
    const/4 v1, 0x0

    .line 1308
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Lnet/oneplus/gallery3d/exif/Rational;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Lnet/oneplus/gallery3d/exif/Rational;-><init>(Lnet/oneplus/gallery3d/exif/Rational;)V

    goto :goto_0
.end method

.method public getTagRationalValues(I)[Lnet/oneplus/gallery3d/exif/Rational;
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1391
    invoke-virtual {p0, p1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1392
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTagRationalValues(II)[Lnet/oneplus/gallery3d/exif/Rational;

    move-result-object v1

    return-object v1
.end method

.method public getTagRationalValues(II)[Lnet/oneplus/gallery3d/exif/Rational;
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1380
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTag(II)Lnet/oneplus/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 1381
    .local v0, "t":Lnet/oneplus/gallery3d/exif/ExifTag;
    if-nez v0, :cond_0

    .line 1382
    const/4 v1, 0x0

    .line 1384
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lnet/oneplus/gallery3d/exif/ExifTag;->getValueAsRationals()[Lnet/oneplus/gallery3d/exif/Rational;

    move-result-object v1

    goto :goto_0
.end method

.method public getTagStringValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1239
    invoke-virtual {p0, p1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1240
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTagStringValue(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTagStringValue(II)Ljava/lang/String;
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1228
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTag(II)Lnet/oneplus/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 1229
    .local v0, "t":Lnet/oneplus/gallery3d/exif/ExifTag;
    if-nez v0, :cond_0

    .line 1230
    const/4 v1, 0x0

    .line 1232
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lnet/oneplus/gallery3d/exif/ExifTag;->getValueAsString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getTagValue(I)Ljava/lang/Object;
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 1215
    invoke-virtual {p0, p1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1216
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTagValue(II)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getTagValue(II)Ljava/lang/Object;
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 1202
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTag(II)Lnet/oneplus/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 1203
    .local v0, "t":Lnet/oneplus/gallery3d/exif/ExifTag;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lnet/oneplus/gallery3d/exif/ExifTag;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getTagsForIfdId(I)Ljava/util/List;
    .locals 1
    .param p1, "ifdId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/gallery3d/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1169
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mData:Lnet/oneplus/gallery3d/exif/ExifData;

    invoke-virtual {v0, p1}, Lnet/oneplus/gallery3d/exif/ExifData;->getAllTagsForIfd(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTagsForTagId(S)Ljava/util/List;
    .locals 1
    .param p1, "tagId"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/gallery3d/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1156
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mData:Lnet/oneplus/gallery3d/exif/ExifData;

    invoke-virtual {v0, p1}, Lnet/oneplus/gallery3d/exif/ExifData;->getAllTagsForTagId(S)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnail()[B
    .locals 1

    .prologue
    .line 1787
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mData:Lnet/oneplus/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lnet/oneplus/gallery3d/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 1756
    iget-object v1, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mData:Lnet/oneplus/gallery3d/exif/ExifData;

    invoke-virtual {v1}, Lnet/oneplus/gallery3d/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1757
    iget-object v1, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mData:Lnet/oneplus/gallery3d/exif/ExifData;

    invoke-virtual {v1}, Lnet/oneplus/gallery3d/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    .line 1758
    .local v0, "thumb":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1762
    .end local v0    # "thumb":[B
    :goto_0
    return-object v1

    .line 1759
    :cond_0
    iget-object v1, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mData:Lnet/oneplus/gallery3d/exif/ExifData;

    invoke-virtual {v1}, Lnet/oneplus/gallery3d/exif/ExifData;->hasUncompressedStrip()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1762
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getThumbnailBytes()[B
    .locals 1

    .prologue
    .line 1773
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mData:Lnet/oneplus/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lnet/oneplus/gallery3d/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1774
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mData:Lnet/oneplus/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lnet/oneplus/gallery3d/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    .line 1778
    :goto_0
    return-object v0

    .line 1775
    :cond_0
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mData:Lnet/oneplus/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lnet/oneplus/gallery3d/exif/ExifData;->hasUncompressedStrip()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1778
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1853
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mData:Lnet/oneplus/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lnet/oneplus/gallery3d/exif/ExifData;->getUserComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasThumbnail()Z
    .locals 1

    .prologue
    .line 1806
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mData:Lnet/oneplus/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lnet/oneplus/gallery3d/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    return v0
.end method

.method public isTagCountDefined(I)Z
    .locals 3
    .param p1, "tagId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1402
    invoke-virtual {p0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1404
    .local v0, "info":I
    if-nez v0, :cond_1

    .line 1407
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isThumbnailCompressed()Z
    .locals 1

    .prologue
    .line 1796
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mData:Lnet/oneplus/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lnet/oneplus/gallery3d/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    return v0
.end method

.method public readExif(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 737
    if-nez p1, :cond_0

    .line 738
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Argument is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 740
    :cond_0
    const/4 v0, 0x0

    .line 742
    .local v0, "d":Lnet/oneplus/gallery3d/exif/ExifData;
    :try_start_0
    new-instance v2, Lnet/oneplus/gallery3d/exif/ExifReader;

    invoke-direct {v2, p0}, Lnet/oneplus/gallery3d/exif/ExifReader;-><init>(Lnet/oneplus/gallery3d/exif/ExifInterface;)V

    invoke-virtual {v2, p1}, Lnet/oneplus/gallery3d/exif/ExifReader;->read(Ljava/io/InputStream;)Lnet/oneplus/gallery3d/exif/ExifData;
    :try_end_0
    .catch Lnet/oneplus/gallery3d/exif/ExifInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 746
    iput-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mData:Lnet/oneplus/gallery3d/exif/ExifData;

    .line 747
    return-void

    .line 743
    :catch_0
    move-exception v1

    .line 744
    .local v1, "e":Lnet/oneplus/gallery3d/exif/ExifInvalidFormatException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid exif format : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public readExif(Ljava/lang/String;)V
    .locals 5
    .param p1, "inFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 758
    if-nez p1, :cond_0

    .line 759
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Argument is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 761
    :cond_0
    const/4 v1, 0x0

    .line 763
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    .end local v1    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p0, v2}, Lnet/oneplus/gallery3d/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 769
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 770
    return-void

    .line 765
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 766
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    invoke-static {v1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 767
    throw v0

    .line 765
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_0
.end method

.method public readExif([B)V
    .locals 1
    .param p1, "jpeg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 726
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V

    .line 727
    return-void
.end method

.method public removeCompressedThumbnail()V
    .locals 2

    .prologue
    .line 1843
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mData:Lnet/oneplus/gallery3d/exif/ExifData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/gallery3d/exif/ExifData;->setCompressedThumbnail([B)V

    .line 1844
    return-void
.end method

.method public removeTagDefinition(I)V
    .locals 1
    .param p1, "tagId"    # I

    .prologue
    .line 1740
    invoke-virtual {p0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1741
    return-void
.end method

.method public resetTagDefinitions()V
    .locals 1

    .prologue
    .line 1747
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    .line 1748
    return-void
.end method

.method public rewriteExif(Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 19
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lnet/oneplus/gallery3d/exif/ExifTag;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1013
    .local p2, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/oneplus/gallery3d/exif/ExifTag;>;"
    const/4 v10, 0x0

    .line 1014
    .local v10, "file":Ljava/io/RandomAccessFile;
    const/4 v14, 0x0

    .line 1017
    .local v14, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1018
    .local v18, "temp":Ljava/io/File;
    new-instance v15, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v15, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1021
    .end local v14    # "is":Ljava/io/InputStream;
    .local v15, "is":Ljava/io/InputStream;
    const/16 v16, 0x0

    .line 1023
    .local v16, "parser":Lnet/oneplus/gallery3d/exif/ExifParser;
    :try_start_1
    move-object/from16 v0, p0

    invoke-static {v15, v0}, Lnet/oneplus/gallery3d/exif/ExifParser;->parse(Ljava/io/InputStream;Lnet/oneplus/gallery3d/exif/ExifInterface;)Lnet/oneplus/gallery3d/exif/ExifParser;
    :try_end_1
    .catch Lnet/oneplus/gallery3d/exif/ExifInvalidFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v16

    .line 1027
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Lnet/oneplus/gallery3d/exif/ExifParser;->getOffsetToExifEndFromSOF()I

    move-result v2

    int-to-long v6, v2

    .line 1030
    .local v6, "exifSize":J
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1031
    const/4 v14, 0x0

    .line 1034
    .end local v15    # "is":Ljava/io/InputStream;
    .restart local v14    # "is":Ljava/io/InputStream;
    :try_start_3
    new-instance v11, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    move-object/from16 v0, v18

    invoke-direct {v11, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1035
    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .local v11, "file":Ljava/io/RandomAccessFile;
    :try_start_4
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    .line 1036
    .local v12, "fileLength":J
    cmp-long v2, v12, v6

    if-gez v2, :cond_0

    .line 1037
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Filesize changed during operation"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1046
    .end local v12    # "fileLength":J
    :catch_0
    move-exception v9

    move-object v10, v11

    .line 1047
    .end local v6    # "exifSize":J
    .end local v11    # "file":Ljava/io/RandomAccessFile;
    .end local v16    # "parser":Lnet/oneplus/gallery3d/exif/ExifParser;
    .end local v18    # "temp":Ljava/io/File;
    .local v9, "e":Ljava/io/IOException;
    .restart local v10    # "file":Ljava/io/RandomAccessFile;
    :goto_0
    :try_start_5
    invoke-static {v10}, Lnet/oneplus/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 1048
    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1050
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    :goto_1
    invoke-static {v14}, Lnet/oneplus/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v2

    .line 1024
    .end local v14    # "is":Ljava/io/InputStream;
    .restart local v15    # "is":Ljava/io/InputStream;
    .restart local v16    # "parser":Lnet/oneplus/gallery3d/exif/ExifParser;
    .restart local v18    # "temp":Ljava/io/File;
    :catch_1
    move-exception v9

    .line 1025
    .local v9, "e":Lnet/oneplus/gallery3d/exif/ExifInvalidFormatException;
    :try_start_6
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid exif format : "

    invoke-direct {v2, v3, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1046
    .end local v9    # "e":Lnet/oneplus/gallery3d/exif/ExifInvalidFormatException;
    :catch_2
    move-exception v9

    move-object v14, v15

    .end local v15    # "is":Ljava/io/InputStream;
    .restart local v14    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 1041
    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .restart local v6    # "exifSize":J
    .restart local v11    # "file":Ljava/io/RandomAccessFile;
    .restart local v12    # "fileLength":J
    :cond_0
    :try_start_7
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v8

    .line 1045
    .local v8, "buf":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v8, v1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->rewriteExif(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result v17

    .line 1050
    .local v17, "ret":Z
    invoke-static {v14}, Lnet/oneplus/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 1052
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V

    .line 1053
    return v17

    .line 1050
    .end local v6    # "exifSize":J
    .end local v8    # "buf":Ljava/nio/ByteBuffer;
    .end local v11    # "file":Ljava/io/RandomAccessFile;
    .end local v12    # "fileLength":J
    .end local v14    # "is":Ljava/io/InputStream;
    .end local v17    # "ret":Z
    .restart local v10    # "file":Ljava/io/RandomAccessFile;
    .restart local v15    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v2

    move-object v14, v15

    .end local v15    # "is":Ljava/io/InputStream;
    .restart local v14    # "is":Ljava/io/InputStream;
    goto :goto_1

    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .restart local v6    # "exifSize":J
    .restart local v11    # "file":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v2

    move-object v10, v11

    .end local v11    # "file":Ljava/io/RandomAccessFile;
    .restart local v10    # "file":Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 1046
    .end local v6    # "exifSize":J
    .end local v16    # "parser":Lnet/oneplus/gallery3d/exif/ExifParser;
    .end local v18    # "temp":Ljava/io/File;
    :catch_3
    move-exception v9

    goto :goto_0
.end method

.method public rewriteExif(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Z
    .locals 7
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Collection",
            "<",
            "Lnet/oneplus/gallery3d/exif/ExifTag;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1070
    .local p2, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/oneplus/gallery3d/exif/ExifTag;>;"
    const/4 v1, 0x0

    .line 1072
    .local v1, "mod":Lnet/oneplus/gallery3d/exif/ExifModifier;
    :try_start_0
    new-instance v2, Lnet/oneplus/gallery3d/exif/ExifModifier;

    invoke-direct {v2, p1, p0}, Lnet/oneplus/gallery3d/exif/ExifModifier;-><init>(Ljava/nio/ByteBuffer;Lnet/oneplus/gallery3d/exif/ExifInterface;)V
    :try_end_0
    .catch Lnet/oneplus/gallery3d/exif/ExifInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1073
    .end local v1    # "mod":Lnet/oneplus/gallery3d/exif/ExifModifier;
    .local v2, "mod":Lnet/oneplus/gallery3d/exif/ExifModifier;
    :try_start_1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/oneplus/gallery3d/exif/ExifTag;

    .line 1074
    .local v3, "t":Lnet/oneplus/gallery3d/exif/ExifTag;
    invoke-virtual {v2, v3}, Lnet/oneplus/gallery3d/exif/ExifModifier;->modifyTag(Lnet/oneplus/gallery3d/exif/ExifTag;)V
    :try_end_1
    .catch Lnet/oneplus/gallery3d/exif/ExifInvalidFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1077
    .end local v3    # "t":Lnet/oneplus/gallery3d/exif/ExifTag;
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1078
    .end local v2    # "mod":Lnet/oneplus/gallery3d/exif/ExifModifier;
    .local v0, "e":Lnet/oneplus/gallery3d/exif/ExifInvalidFormatException;
    .restart local v1    # "mod":Lnet/oneplus/gallery3d/exif/ExifModifier;
    :goto_1
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid exif format : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1076
    .end local v0    # "e":Lnet/oneplus/gallery3d/exif/ExifInvalidFormatException;
    .end local v1    # "mod":Lnet/oneplus/gallery3d/exif/ExifModifier;
    .restart local v2    # "mod":Lnet/oneplus/gallery3d/exif/ExifModifier;
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Lnet/oneplus/gallery3d/exif/ExifModifier;->commit()Z
    :try_end_2
    .catch Lnet/oneplus/gallery3d/exif/ExifInvalidFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    return v4

    .line 1077
    .end local v2    # "mod":Lnet/oneplus/gallery3d/exif/ExifModifier;
    .restart local v1    # "mod":Lnet/oneplus/gallery3d/exif/ExifModifier;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public setCompressedThumbnail(Landroid/graphics/Bitmap;)Z
    .locals 3
    .param p1, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1832
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1833
    .local v0, "thumbnail":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1834
    const/4 v1, 0x0

    .line 1836
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->setCompressedThumbnail([B)Z

    move-result v1

    goto :goto_0
.end method

.method public setCompressedThumbnail([B)Z
    .locals 1
    .param p1, "thumb"    # [B

    .prologue
    .line 1819
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mData:Lnet/oneplus/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lnet/oneplus/gallery3d/exif/ExifData;->clearThumbnailAndStrips()V

    .line 1820
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mData:Lnet/oneplus/gallery3d/exif/ExifData;

    invoke-virtual {v0, p1}, Lnet/oneplus/gallery3d/exif/ExifData;->setCompressedThumbnail([B)V

    .line 1821
    const/4 v0, 0x1

    return v0
.end method

.method public setExif(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lnet/oneplus/gallery3d/exif/ExifTag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 779
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/oneplus/gallery3d/exif/ExifTag;>;"
    invoke-virtual {p0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->clearExif()V

    .line 780
    invoke-virtual {p0, p1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->setTags(Ljava/util/Collection;)V

    .line 781
    return-void
.end method

.method public setTag(Lnet/oneplus/gallery3d/exif/ExifTag;)Lnet/oneplus/gallery3d/exif/ExifTag;
    .locals 1
    .param p1, "tag"    # Lnet/oneplus/gallery3d/exif/ExifTag;

    .prologue
    .line 1584
    iget-object v0, p0, Lnet/oneplus/gallery3d/exif/ExifInterface;->mData:Lnet/oneplus/gallery3d/exif/ExifData;

    invoke-virtual {v0, p1}, Lnet/oneplus/gallery3d/exif/ExifData;->addTag(Lnet/oneplus/gallery3d/exif/ExifTag;)Lnet/oneplus/gallery3d/exif/ExifTag;

    move-result-object v0

    return-object v0
.end method

.method public setTagDefinition(SISS[I)I
    .locals 13
    .param p1, "tagId"    # S
    .param p2, "defaultIfd"    # I
    .param p3, "tagType"    # S
    .param p4, "defaultComponentCount"    # S
    .param p5, "allowedIfds"    # [I

    .prologue
    .line 1636
    sget-object v10, Lnet/oneplus/gallery3d/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1637
    const/4 v8, -0x1

    .line 1674
    :goto_0
    return v8

    .line 1639
    :cond_0
    invoke-static/range {p3 .. p3}, Lnet/oneplus/gallery3d/exif/ExifTag;->isValidType(S)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-static {p2}, Lnet/oneplus/gallery3d/exif/ExifTag;->isValidIfd(I)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1640
    invoke-static {p2, p1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    .line 1641
    .local v8, "tagDef":I
    const/4 v10, -0x1

    if-ne v8, v10, :cond_1

    .line 1642
    const/4 v8, -0x1

    goto :goto_0

    .line 1644
    :cond_1
    invoke-virtual {p0, p1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTagDefinitionsForTagId(S)[I

    move-result-object v7

    .line 1645
    .local v7, "otherDefs":[I
    invoke-virtual {p0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v6

    .line 1647
    .local v6, "infos":Landroid/util/SparseIntArray;
    const/4 v3, 0x0

    .line 1648
    .local v3, "defaultCheck":Z
    move-object/from16 v0, p5

    array-length v11, v0

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v11, :cond_4

    aget v4, p5, v10

    .line 1649
    .local v4, "i":I
    if-ne p2, v4, :cond_2

    .line 1650
    const/4 v3, 0x1

    .line 1652
    :cond_2
    invoke-static {v4}, Lnet/oneplus/gallery3d/exif/ExifTag;->isValidIfd(I)Z

    move-result v12

    if-nez v12, :cond_3

    .line 1653
    const/4 v8, -0x1

    goto :goto_0

    .line 1648
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1656
    .end local v4    # "i":I
    :cond_4
    if-nez v3, :cond_5

    .line 1657
    const/4 v8, -0x1

    goto :goto_0

    .line 1660
    :cond_5
    invoke-static/range {p5 .. p5}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v5

    .line 1662
    .local v5, "ifdFlags":I
    if-eqz v7, :cond_7

    .line 1663
    array-length v11, v7

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v11, :cond_7

    aget v2, v7, v10

    .line 1664
    .local v2, "def":I
    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    .line 1665
    .local v9, "tagInfo":I
    invoke-static {v9}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result v1

    .line 1666
    .local v1, "allowedFlags":I
    and-int v12, v5, v1

    if-eqz v12, :cond_6

    .line 1667
    const/4 v8, -0x1

    goto :goto_0

    .line 1663
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1671
    .end local v1    # "allowedFlags":I
    .end local v2    # "def":I
    .end local v9    # "tagInfo":I
    :cond_7
    invoke-virtual {p0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v10

    shl-int/lit8 v11, v5, 0x18

    shl-int/lit8 v12, p3, 0x10

    or-int/2addr v11, v12

    or-int v11, v11, p4

    invoke-virtual {v10, v8, v11}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 1674
    .end local v3    # "defaultCheck":Z
    .end local v5    # "ifdFlags":I
    .end local v6    # "infos":Landroid/util/SparseIntArray;
    .end local v7    # "otherDefs":[I
    .end local v8    # "tagDef":I
    :cond_8
    const/4 v8, -0x1

    goto :goto_0
.end method

.method public setTagValue(IILjava/lang/Object;)Z
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I
    .param p3, "val"    # Ljava/lang/Object;

    .prologue
    .line 1553
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getTag(II)Lnet/oneplus/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 1554
    .local v0, "t":Lnet/oneplus/gallery3d/exif/ExifTag;
    if-nez v0, :cond_0

    .line 1555
    const/4 v1, 0x0

    .line 1557
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p3}, Lnet/oneplus/gallery3d/exif/ExifTag;->setValue(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public setTagValue(ILjava/lang/Object;)Z
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 1570
    invoke-virtual {p0, p1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1571
    .local v0, "ifdId":I
    invoke-virtual {p0, p1, v0, p2}, Lnet/oneplus/gallery3d/exif/ExifInterface;->setTagValue(IILjava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public setTags(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lnet/oneplus/gallery3d/exif/ExifTag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1595
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/oneplus/gallery3d/exif/ExifTag;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/gallery3d/exif/ExifTag;

    .line 1596
    .local v0, "t":Lnet/oneplus/gallery3d/exif/ExifTag;
    invoke-virtual {p0, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->setTag(Lnet/oneplus/gallery3d/exif/ExifTag;)Lnet/oneplus/gallery3d/exif/ExifTag;

    goto :goto_0

    .line 1598
    .end local v0    # "t":Lnet/oneplus/gallery3d/exif/ExifTag;
    :cond_0
    return-void
.end method

.method public writeExif(Landroid/graphics/Bitmap;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "bmap"    # Landroid/graphics/Bitmap;
    .param p2, "exifOutStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 818
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 819
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 821
    :cond_1
    invoke-virtual {p0, p2}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 822
    .local v0, "s":Ljava/io/OutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 823
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 824
    return-void
.end method

.method public writeExif(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 4
    .param p1, "bmap"    # Landroid/graphics/Bitmap;
    .param p2, "exifOutFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 883
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 884
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Argument is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 886
    :cond_1
    const/4 v1, 0x0

    .line 888
    .local v1, "s":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0, p2}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    .line 889
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 890
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 896
    return-void

    .line 891
    :catch_0
    move-exception v0

    .line 892
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 893
    throw v0
.end method

.method public writeExif(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "jpegStream"    # Ljava/io/InputStream;
    .param p2, "exifOutStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 836
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 837
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 839
    :cond_1
    invoke-virtual {p0, p2}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 840
    .local v0, "s":Ljava/io/OutputStream;
    invoke-direct {p0, p1, v0}, Lnet/oneplus/gallery3d/exif/ExifInterface;->doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 841
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 842
    return-void
.end method

.method public writeExif(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 4
    .param p1, "jpegStream"    # Ljava/io/InputStream;
    .param p2, "exifOutFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 910
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 911
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Argument is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 913
    :cond_1
    const/4 v1, 0x0

    .line 915
    .local v1, "s":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0, p2}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    .line 916
    invoke-direct {p0, p1, v1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 917
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 923
    return-void

    .line 918
    :catch_0
    move-exception v0

    .line 919
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 920
    throw v0
.end method

.method public writeExif(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "jpegFileName"    # Ljava/lang/String;
    .param p2, "exifOutFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 937
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 938
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Argument is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 940
    :cond_1
    const/4 v1, 0x0

    .line 942
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 943
    .end local v1    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p0, v2, p2}, Lnet/oneplus/gallery3d/exif/ExifInterface;->writeExif(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 948
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 949
    return-void

    .line 944
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 945
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    invoke-static {v1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 946
    throw v0

    .line 944
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_0
.end method

.method public writeExif([BLjava/io/OutputStream;)V
    .locals 3
    .param p1, "jpeg"    # [B
    .param p2, "exifOutStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 800
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 801
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 803
    :cond_1
    invoke-virtual {p0, p2}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 804
    .local v0, "s":Ljava/io/OutputStream;
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 805
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 806
    return-void
.end method

.method public writeExif([BLjava/lang/String;)V
    .locals 4
    .param p1, "jpeg"    # [B
    .param p2, "exifOutFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 856
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 857
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Argument is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 859
    :cond_1
    const/4 v1, 0x0

    .line 861
    .local v1, "s":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0, p2}, Lnet/oneplus/gallery3d/exif/ExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    .line 862
    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 863
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 869
    return-void

    .line 864
    :catch_0
    move-exception v0

    .line 865
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v1}, Lnet/oneplus/gallery3d/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 866
    throw v0
.end method
