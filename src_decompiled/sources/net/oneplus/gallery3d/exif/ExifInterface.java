package net.oneplus.gallery3d.exif;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.SparseIntArray;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;

/* loaded from: classes.dex */
public class ExifInterface {
    private static final String DATETIME_FORMAT_STR = "yyyy:MM:dd kk:mm:ss";
    public static final ByteOrder DEFAULT_BYTE_ORDER;
    public static final int DEFINITION_NULL = 0;
    private static final String GPS_DATE_FORMAT_STR = "yyyy:MM:dd";
    public static final int IFD_NULL = -1;
    private static final String NULL_ARGUMENT_STRING = "Argument is null";
    public static final int TAG_NULL = -1;
    protected static HashSet<Short> sBannedDefines;
    private ExifData mData = new ExifData(DEFAULT_BYTE_ORDER);
    private final DateFormat mDateTimeStampFormat = new SimpleDateFormat(DATETIME_FORMAT_STR, Locale.getDefault());
    private final DateFormat mGPSDateStampFormat = new SimpleDateFormat(GPS_DATE_FORMAT_STR, Locale.getDefault());
    private final Calendar mGPSTimeStampCalendar = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
    private SparseIntArray mTagInfo = null;
    public static final int TAG_IMAGE_WIDTH = defineTag(0, 256);
    public static final int TAG_IMAGE_LENGTH = defineTag(0, 257);
    public static final int TAG_BITS_PER_SAMPLE = defineTag(0, 258);
    public static final int TAG_COMPRESSION = defineTag(0, 259);
    public static final int TAG_PHOTOMETRIC_INTERPRETATION = defineTag(0, 262);
    public static final int TAG_IMAGE_DESCRIPTION = defineTag(0, 270);
    public static final int TAG_MAKE = defineTag(0, 271);
    public static final int TAG_MODEL = defineTag(0, 272);
    public static final int TAG_STRIP_OFFSETS = defineTag(0, 273);
    public static final int TAG_ORIENTATION = defineTag(0, 274);
    public static final int TAG_SAMPLES_PER_PIXEL = defineTag(0, 277);
    public static final int TAG_ROWS_PER_STRIP = defineTag(0, 278);
    public static final int TAG_STRIP_BYTE_COUNTS = defineTag(0, 279);
    public static final int TAG_X_RESOLUTION = defineTag(0, 282);
    public static final int TAG_Y_RESOLUTION = defineTag(0, 283);
    public static final int TAG_PLANAR_CONFIGURATION = defineTag(0, 284);
    public static final int TAG_RESOLUTION_UNIT = defineTag(0, 296);
    public static final int TAG_TRANSFER_FUNCTION = defineTag(0, 301);
    public static final int TAG_SOFTWARE = defineTag(0, 305);
    public static final int TAG_DATE_TIME = defineTag(0, 306);
    public static final int TAG_ARTIST = defineTag(0, 315);
    public static final int TAG_WHITE_POINT = defineTag(0, 318);
    public static final int TAG_PRIMARY_CHROMATICITIES = defineTag(0, 319);
    public static final int TAG_Y_CB_CR_COEFFICIENTS = defineTag(0, 529);
    public static final int TAG_Y_CB_CR_SUB_SAMPLING = defineTag(0, 530);
    public static final int TAG_Y_CB_CR_POSITIONING = defineTag(0, 531);
    public static final int TAG_REFERENCE_BLACK_WHITE = defineTag(0, 532);
    public static final int TAG_COPYRIGHT = defineTag(0, -32104);
    public static final int TAG_EXIF_IFD = defineTag(0, -30871);
    public static final int TAG_GPS_IFD = defineTag(0, -30683);
    public static final int TAG_JPEG_INTERCHANGE_FORMAT = defineTag(1, 513);
    public static final int TAG_JPEG_INTERCHANGE_FORMAT_LENGTH = defineTag(1, 514);
    public static final int TAG_EXPOSURE_TIME = defineTag(2, -32102);
    public static final int TAG_F_NUMBER = defineTag(2, -32099);
    public static final int TAG_EXPOSURE_PROGRAM = defineTag(2, -30686);
    public static final int TAG_SPECTRAL_SENSITIVITY = defineTag(2, -30684);
    public static final int TAG_ISO_SPEED_RATINGS = defineTag(2, -30681);
    public static final int TAG_OECF = defineTag(2, -30680);
    public static final int TAG_EXIF_VERSION = defineTag(2, -28672);
    public static final int TAG_DATE_TIME_ORIGINAL = defineTag(2, -28669);
    public static final int TAG_DATE_TIME_DIGITIZED = defineTag(2, -28668);
    public static final int TAG_COMPONENTS_CONFIGURATION = defineTag(2, -28415);
    public static final int TAG_COMPRESSED_BITS_PER_PIXEL = defineTag(2, -28414);
    public static final int TAG_SHUTTER_SPEED_VALUE = defineTag(2, -28159);
    public static final int TAG_APERTURE_VALUE = defineTag(2, -28158);
    public static final int TAG_BRIGHTNESS_VALUE = defineTag(2, -28157);
    public static final int TAG_EXPOSURE_BIAS_VALUE = defineTag(2, -28156);
    public static final int TAG_MAX_APERTURE_VALUE = defineTag(2, -28155);
    public static final int TAG_SUBJECT_DISTANCE = defineTag(2, -28154);
    public static final int TAG_METERING_MODE = defineTag(2, -28153);
    public static final int TAG_LIGHT_SOURCE = defineTag(2, -28152);
    public static final int TAG_FLASH = defineTag(2, -28151);
    public static final int TAG_FOCAL_LENGTH = defineTag(2, -28150);
    public static final int TAG_SUBJECT_AREA = defineTag(2, -28140);
    public static final int TAG_MAKER_NOTE = defineTag(2, -28036);
    public static final int TAG_USER_COMMENT = defineTag(2, -28026);
    public static final int TAG_SUB_SEC_TIME = defineTag(2, -28016);
    public static final int TAG_SUB_SEC_TIME_ORIGINAL = defineTag(2, -28015);
    public static final int TAG_SUB_SEC_TIME_DIGITIZED = defineTag(2, -28014);
    public static final int TAG_FLASHPIX_VERSION = defineTag(2, -24576);
    public static final int TAG_COLOR_SPACE = defineTag(2, -24575);
    public static final int TAG_PIXEL_X_DIMENSION = defineTag(2, -24574);
    public static final int TAG_PIXEL_Y_DIMENSION = defineTag(2, -24573);
    public static final int TAG_RELATED_SOUND_FILE = defineTag(2, -24572);
    public static final int TAG_INTEROPERABILITY_IFD = defineTag(2, -24571);
    public static final int TAG_FLASH_ENERGY = defineTag(2, -24053);
    public static final int TAG_SPATIAL_FREQUENCY_RESPONSE = defineTag(2, -24052);
    public static final int TAG_FOCAL_PLANE_X_RESOLUTION = defineTag(2, -24050);
    public static final int TAG_FOCAL_PLANE_Y_RESOLUTION = defineTag(2, -24049);
    public static final int TAG_FOCAL_PLANE_RESOLUTION_UNIT = defineTag(2, -24048);
    public static final int TAG_SUBJECT_LOCATION = defineTag(2, -24044);
    public static final int TAG_EXPOSURE_INDEX = defineTag(2, -24043);
    public static final int TAG_SENSING_METHOD = defineTag(2, -24041);
    public static final int TAG_FILE_SOURCE = defineTag(2, -23808);
    public static final int TAG_SCENE_TYPE = defineTag(2, -23807);
    public static final int TAG_CFA_PATTERN = defineTag(2, -23806);
    public static final int TAG_CUSTOM_RENDERED = defineTag(2, -23551);
    public static final int TAG_EXPOSURE_MODE = defineTag(2, -23550);
    public static final int TAG_WHITE_BALANCE = defineTag(2, -23549);
    public static final int TAG_DIGITAL_ZOOM_RATIO = defineTag(2, -23548);
    public static final int TAG_FOCAL_LENGTH_IN_35_MM_FILE = defineTag(2, -23547);
    public static final int TAG_SCENE_CAPTURE_TYPE = defineTag(2, -23546);
    public static final int TAG_GAIN_CONTROL = defineTag(2, -23545);
    public static final int TAG_CONTRAST = defineTag(2, -23544);
    public static final int TAG_SATURATION = defineTag(2, -23543);
    public static final int TAG_SHARPNESS = defineTag(2, -23542);
    public static final int TAG_DEVICE_SETTING_DESCRIPTION = defineTag(2, -23541);
    public static final int TAG_SUBJECT_DISTANCE_RANGE = defineTag(2, -23540);
    public static final int TAG_IMAGE_UNIQUE_ID = defineTag(2, -23520);
    public static final int TAG_GPS_VERSION_ID = defineTag(4, 0);
    public static final int TAG_GPS_LATITUDE_REF = defineTag(4, 1);
    public static final int TAG_GPS_LATITUDE = defineTag(4, 2);
    public static final int TAG_GPS_LONGITUDE_REF = defineTag(4, 3);
    public static final int TAG_GPS_LONGITUDE = defineTag(4, 4);
    public static final int TAG_GPS_ALTITUDE_REF = defineTag(4, 5);
    public static final int TAG_GPS_ALTITUDE = defineTag(4, 6);
    public static final int TAG_GPS_TIME_STAMP = defineTag(4, 7);
    public static final int TAG_GPS_SATTELLITES = defineTag(4, 8);
    public static final int TAG_GPS_STATUS = defineTag(4, 9);
    public static final int TAG_GPS_MEASURE_MODE = defineTag(4, 10);
    public static final int TAG_GPS_DOP = defineTag(4, 11);
    public static final int TAG_GPS_SPEED_REF = defineTag(4, 12);
    public static final int TAG_GPS_SPEED = defineTag(4, 13);
    public static final int TAG_GPS_TRACK_REF = defineTag(4, 14);
    public static final int TAG_GPS_TRACK = defineTag(4, 15);
    public static final int TAG_GPS_IMG_DIRECTION_REF = defineTag(4, 16);
    public static final int TAG_GPS_IMG_DIRECTION = defineTag(4, 17);
    public static final int TAG_GPS_MAP_DATUM = defineTag(4, 18);
    public static final int TAG_GPS_DEST_LATITUDE_REF = defineTag(4, 19);
    public static final int TAG_GPS_DEST_LATITUDE = defineTag(4, 20);
    public static final int TAG_GPS_DEST_LONGITUDE_REF = defineTag(4, 21);
    public static final int TAG_GPS_DEST_LONGITUDE = defineTag(4, 22);
    public static final int TAG_GPS_DEST_BEARING_REF = defineTag(4, 23);
    public static final int TAG_GPS_DEST_BEARING = defineTag(4, 24);
    public static final int TAG_GPS_DEST_DISTANCE_REF = defineTag(4, 25);
    public static final int TAG_GPS_DEST_DISTANCE = defineTag(4, 26);
    public static final int TAG_GPS_PROCESSING_METHOD = defineTag(4, 27);
    public static final int TAG_GPS_AREA_INFORMATION = defineTag(4, 28);
    public static final int TAG_GPS_DATE_STAMP = defineTag(4, 29);
    public static final int TAG_GPS_DIFFERENTIAL = defineTag(4, 30);
    public static final int TAG_INTEROPERABILITY_INDEX = defineTag(3, 1);
    private static HashSet<Short> sOffsetTags = new HashSet<>();

    /* loaded from: classes.dex */
    public interface ColorSpace {
        public static final short SRGB = 1;
        public static final short UNCALIBRATED = -1;
    }

    /* loaded from: classes.dex */
    public interface ComponentsConfiguration {
        public static final short B = 6;
        public static final short CB = 2;
        public static final short CR = 3;
        public static final short G = 5;
        public static final short NOT_EXIST = 0;
        public static final short R = 4;
        public static final short Y = 1;
    }

    /* loaded from: classes.dex */
    public interface Compression {
        public static final short JPEG = 6;
        public static final short UNCOMPRESSION = 1;
    }

    /* loaded from: classes.dex */
    public interface Contrast {
        public static final short HARD = 2;
        public static final short NORMAL = 0;
        public static final short SOFT = 1;
    }

    /* loaded from: classes.dex */
    public interface ExposureMode {
        public static final short AUTO_BRACKET = 2;
        public static final short AUTO_EXPOSURE = 0;
        public static final short MANUAL_EXPOSURE = 1;
    }

    /* loaded from: classes.dex */
    public interface ExposureProgram {
        public static final short ACTION_PROGRAM = 6;
        public static final short APERTURE_PRIORITY = 3;
        public static final short CREATIVE_PROGRAM = 5;
        public static final short LANDSCAPE_MODE = 8;
        public static final short MANUAL = 1;
        public static final short NORMAL_PROGRAM = 2;
        public static final short NOT_DEFINED = 0;
        public static final short PROTRAIT_MODE = 7;
        public static final short SHUTTER_PRIORITY = 4;
    }

    /* loaded from: classes.dex */
    public interface FileSource {
        public static final short DSC = 3;
    }

    /* loaded from: classes.dex */
    public interface Flash {
        public static final short DID_NOT_FIRED = 0;
        public static final short FIRED = 1;
        public static final short FUNCTION_NO_FUNCTION = 32;
        public static final short FUNCTION_PRESENT = 0;
        public static final short MODE_AUTO_MODE = 24;
        public static final short MODE_COMPULSORY_FLASH_FIRING = 8;
        public static final short MODE_COMPULSORY_FLASH_SUPPRESSION = 16;
        public static final short MODE_UNKNOWN = 0;
        public static final short RED_EYE_REDUCTION_NO_OR_UNKNOWN = 0;
        public static final short RED_EYE_REDUCTION_SUPPORT = 64;
        public static final short RETURN_NO_STROBE_RETURN_DETECTION_FUNCTION = 0;
        public static final short RETURN_STROBE_RETURN_LIGHT_DETECTED = 6;
        public static final short RETURN_STROBE_RETURN_LIGHT_NOT_DETECTED = 4;
    }

    /* loaded from: classes.dex */
    public interface GainControl {
        public static final short HIGH_DOWN = 4;
        public static final short HIGH_UP = 2;
        public static final short LOW_DOWN = 3;
        public static final short LOW_UP = 1;
        public static final short NONE = 0;
    }

    /* loaded from: classes.dex */
    public interface GpsAltitudeRef {
        public static final short SEA_LEVEL = 0;
        public static final short SEA_LEVEL_NEGATIVE = 1;
    }

    /* loaded from: classes.dex */
    public interface GpsDifferential {
        public static final short DIFFERENTIAL_CORRECTION_APPLIED = 1;
        public static final short WITHOUT_DIFFERENTIAL_CORRECTION = 0;
    }

    /* loaded from: classes.dex */
    public interface GpsLatitudeRef {
        public static final String NORTH = "N";
        public static final String SOUTH = "S";
    }

    /* loaded from: classes.dex */
    public interface GpsLongitudeRef {
        public static final String EAST = "E";
        public static final String WEST = "W";
    }

    /* loaded from: classes.dex */
    public interface GpsMeasureMode {
        public static final String MODE_2_DIMENSIONAL = "2";
        public static final String MODE_3_DIMENSIONAL = "3";
    }

    /* loaded from: classes.dex */
    public interface GpsSpeedRef {
        public static final String KILOMETERS = "K";
        public static final String KNOTS = "N";
        public static final String MILES = "M";
    }

    /* loaded from: classes.dex */
    public interface GpsStatus {
        public static final String INTEROPERABILITY = "V";
        public static final String IN_PROGRESS = "A";
    }

    /* loaded from: classes.dex */
    public interface GpsTrackRef {
        public static final String MAGNETIC_DIRECTION = "M";
        public static final String TRUE_DIRECTION = "T";
    }

    /* loaded from: classes.dex */
    public interface LightSource {
        public static final short CLOUDY_WEATHER = 10;
        public static final short COOL_WHITE_FLUORESCENT = 14;
        public static final short D50 = 23;
        public static final short D55 = 20;
        public static final short D65 = 21;
        public static final short D75 = 22;
        public static final short DAYLIGHT = 1;
        public static final short DAYLIGHT_FLUORESCENT = 12;
        public static final short DAY_WHITE_FLUORESCENT = 13;
        public static final short FINE_WEATHER = 9;
        public static final short FLASH = 4;
        public static final short FLUORESCENT = 2;
        public static final short ISO_STUDIO_TUNGSTEN = 24;
        public static final short OTHER = 255;
        public static final short SHADE = 11;
        public static final short STANDARD_LIGHT_A = 17;
        public static final short STANDARD_LIGHT_B = 18;
        public static final short STANDARD_LIGHT_C = 19;
        public static final short TUNGSTEN = 3;
        public static final short UNKNOWN = 0;
        public static final short WHITE_FLUORESCENT = 15;
    }

    /* loaded from: classes.dex */
    public interface MeteringMode {
        public static final short AVERAGE = 1;
        public static final short CENTER_WEIGHTED_AVERAGE = 2;
        public static final short MULTISPOT = 4;
        public static final short OTHER = 255;
        public static final short PARTAIL = 6;
        public static final short PATTERN = 5;
        public static final short SPOT = 3;
        public static final short UNKNOWN = 0;
    }

    /* loaded from: classes.dex */
    public interface Orientation {
        public static final short BOTTOM_LEFT = 3;
        public static final short BOTTOM_RIGHT = 4;
        public static final short LEFT_BOTTOM = 7;
        public static final short LEFT_TOP = 5;
        public static final short RIGHT_BOTTOM = 8;
        public static final short RIGHT_TOP = 6;
        public static final short TOP_LEFT = 1;
        public static final short TOP_RIGHT = 2;
    }

    /* loaded from: classes.dex */
    public interface PhotometricInterpretation {
        public static final short RGB = 2;
        public static final short YCBCR = 6;
    }

    /* loaded from: classes.dex */
    public interface PlanarConfiguration {
        public static final short CHUNKY = 1;
        public static final short PLANAR = 2;
    }

    /* loaded from: classes.dex */
    public interface ResolutionUnit {
        public static final short CENTIMETERS = 3;
        public static final short INCHES = 2;
    }

    /* loaded from: classes.dex */
    public interface Saturation {
        public static final short HIGH = 2;
        public static final short LOW = 1;
        public static final short NORMAL = 0;
    }

    /* loaded from: classes.dex */
    public interface SceneCapture {
        public static final short LANDSCAPE = 1;
        public static final short NIGHT_SCENE = 3;
        public static final short PROTRAIT = 2;
        public static final short STANDARD = 0;
    }

    /* loaded from: classes.dex */
    public interface SceneType {
        public static final short DIRECT_PHOTOGRAPHED = 1;
    }

    /* loaded from: classes.dex */
    public interface SensingMethod {
        public static final short COLOR_SEQUENTIAL_AREA = 5;
        public static final short COLOR_SEQUENTIAL_LINEAR = 8;
        public static final short NOT_DEFINED = 1;
        public static final short ONE_CHIP_COLOR = 2;
        public static final short THREE_CHIP_COLOR = 4;
        public static final short TRILINEAR = 7;
        public static final short TWO_CHIP_COLOR = 3;
    }

    /* loaded from: classes.dex */
    public interface Sharpness {
        public static final short HARD = 2;
        public static final short NORMAL = 0;
        public static final short SOFT = 1;
    }

    /* loaded from: classes.dex */
    public interface SubjectDistance {
        public static final short CLOSE_VIEW = 2;
        public static final short DISTANT_VIEW = 3;
        public static final short MACRO = 1;
        public static final short UNKNOWN = 0;
    }

    /* loaded from: classes.dex */
    public interface WhiteBalance {
        public static final short AUTO = 0;
        public static final short MANUAL = 1;
    }

    /* loaded from: classes.dex */
    public interface YCbCrPositioning {
        public static final short CENTERED = 1;
        public static final short CO_SITED = 2;
    }

    static {
        sOffsetTags.add(Short.valueOf(getTrueTagKey(TAG_GPS_IFD)));
        sOffsetTags.add(Short.valueOf(getTrueTagKey(TAG_EXIF_IFD)));
        sOffsetTags.add(Short.valueOf(getTrueTagKey(TAG_JPEG_INTERCHANGE_FORMAT)));
        sOffsetTags.add(Short.valueOf(getTrueTagKey(TAG_INTEROPERABILITY_IFD)));
        sOffsetTags.add(Short.valueOf(getTrueTagKey(TAG_STRIP_OFFSETS)));
        sBannedDefines = new HashSet<>(sOffsetTags);
        sBannedDefines.add(Short.valueOf(getTrueTagKey(-1)));
        sBannedDefines.add(Short.valueOf(getTrueTagKey(TAG_JPEG_INTERCHANGE_FORMAT_LENGTH)));
        sBannedDefines.add(Short.valueOf(getTrueTagKey(TAG_STRIP_BYTE_COUNTS)));
        DEFAULT_BYTE_ORDER = ByteOrder.BIG_ENDIAN;
    }

    public static int defineTag(int ifdId, short tagId) {
        return (65535 & tagId) | (ifdId << 16);
    }

    public static short getTrueTagKey(int tag) {
        return (short) tag;
    }

    public static int getTrueIfd(int tag) {
        return tag >>> 16;
    }

    public ExifInterface() {
        this.mGPSDateStampFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    public void readExif(byte[] jpeg) throws IOException {
        readExif(new ByteArrayInputStream(jpeg));
    }

    public void readExif(InputStream inStream) throws IOException {
        if (inStream == null) {
            throw new IllegalArgumentException(NULL_ARGUMENT_STRING);
        }
        try {
            ExifData d = new ExifReader(this).read(inStream);
            this.mData = d;
        } catch (ExifInvalidFormatException e) {
            throw new IOException("Invalid exif format : " + e);
        }
    }

    public void readExif(String inFileName) throws FileNotFoundException, IOException {
        if (inFileName == null) {
            throw new IllegalArgumentException(NULL_ARGUMENT_STRING);
        }
        InputStream is = null;
        try {
            InputStream is2 = new BufferedInputStream(new FileInputStream(inFileName));
            try {
                readExif(is2);
                is2.close();
            } catch (IOException e) {
                e = e;
                is = is2;
                closeSilently(is);
                throw e;
            }
        } catch (IOException e2) {
            e = e2;
        }
    }

    public void setExif(Collection<ExifTag> tags) {
        clearExif();
        setTags(tags);
    }

    public void clearExif() {
        this.mData = new ExifData(DEFAULT_BYTE_ORDER);
    }

    public void writeExif(byte[] jpeg, OutputStream exifOutStream) throws IOException {
        if (jpeg == null || exifOutStream == null) {
            throw new IllegalArgumentException(NULL_ARGUMENT_STRING);
        }
        OutputStream s = getExifWriterStream(exifOutStream);
        s.write(jpeg, 0, jpeg.length);
        s.flush();
    }

    public void writeExif(Bitmap bmap, OutputStream exifOutStream) throws IOException {
        if (bmap == null || exifOutStream == null) {
            throw new IllegalArgumentException(NULL_ARGUMENT_STRING);
        }
        OutputStream s = getExifWriterStream(exifOutStream);
        bmap.compress(Bitmap.CompressFormat.JPEG, 90, s);
        s.flush();
    }

    public void writeExif(InputStream jpegStream, OutputStream exifOutStream) throws IOException {
        if (jpegStream == null || exifOutStream == null) {
            throw new IllegalArgumentException(NULL_ARGUMENT_STRING);
        }
        OutputStream s = getExifWriterStream(exifOutStream);
        doExifStreamIO(jpegStream, s);
        s.flush();
    }

    public void writeExif(byte[] jpeg, String exifOutFileName) throws FileNotFoundException, IOException {
        if (jpeg == null || exifOutFileName == null) {
            throw new IllegalArgumentException(NULL_ARGUMENT_STRING);
        }
        OutputStream s = null;
        try {
            s = getExifWriterStream(exifOutFileName);
            s.write(jpeg, 0, jpeg.length);
            s.flush();
            s.close();
        } catch (IOException e) {
            closeSilently(s);
            throw e;
        }
    }

    public void writeExif(Bitmap bmap, String exifOutFileName) throws FileNotFoundException, IOException {
        if (bmap == null || exifOutFileName == null) {
            throw new IllegalArgumentException(NULL_ARGUMENT_STRING);
        }
        OutputStream s = null;
        try {
            s = getExifWriterStream(exifOutFileName);
            bmap.compress(Bitmap.CompressFormat.JPEG, 90, s);
            s.flush();
            s.close();
        } catch (IOException e) {
            closeSilently(s);
            throw e;
        }
    }

    public void writeExif(InputStream jpegStream, String exifOutFileName) throws FileNotFoundException, IOException {
        if (jpegStream == null || exifOutFileName == null) {
            throw new IllegalArgumentException(NULL_ARGUMENT_STRING);
        }
        OutputStream s = null;
        try {
            s = getExifWriterStream(exifOutFileName);
            doExifStreamIO(jpegStream, s);
            s.flush();
            s.close();
        } catch (IOException e) {
            closeSilently(s);
            throw e;
        }
    }

    public void writeExif(String jpegFileName, String exifOutFileName) throws FileNotFoundException, IOException {
        InputStream is;
        if (jpegFileName == null || exifOutFileName == null) {
            throw new IllegalArgumentException(NULL_ARGUMENT_STRING);
        }
        InputStream is2 = null;
        try {
            is = new FileInputStream(jpegFileName);
        } catch (IOException e) {
            e = e;
        }
        try {
            writeExif(is, exifOutFileName);
            is.close();
        } catch (IOException e2) {
            e = e2;
            is2 = is;
            closeSilently(is2);
            throw e;
        }
    }

    public OutputStream getExifWriterStream(OutputStream outStream) {
        if (outStream == null) {
            throw new IllegalArgumentException(NULL_ARGUMENT_STRING);
        }
        ExifOutputStream eos = new ExifOutputStream(outStream, this);
        eos.setExifData(this.mData);
        return eos;
    }

    public OutputStream getExifWriterStream(String exifOutFileName) throws FileNotFoundException {
        if (exifOutFileName == null) {
            throw new IllegalArgumentException(NULL_ARGUMENT_STRING);
        }
        try {
            OutputStream out = new FileOutputStream(exifOutFileName);
            return getExifWriterStream(out);
        } catch (FileNotFoundException e) {
            closeSilently(null);
            throw e;
        }
    }

    public boolean rewriteExif(String filename, Collection<ExifTag> tags) throws FileNotFoundException, IOException {
        long exifSize;
        RandomAccessFile file;
        RandomAccessFile file2 = null;
        InputStream is = null;
        try {
            try {
                File temp = new File(filename);
                InputStream is2 = new BufferedInputStream(new FileInputStream(temp));
                try {
                    try {
                        ExifParser parser = ExifParser.parse(is2, this);
                        exifSize = parser.getOffsetToExifEndFromSOF();
                        is2.close();
                        is = null;
                        file = new RandomAccessFile(temp, "rw");
                    } catch (ExifInvalidFormatException e) {
                        throw new IOException("Invalid exif format : ", e);
                    }
                } catch (IOException e2) {
                    e = e2;
                    is = is2;
                } catch (Throwable th) {
                    th = th;
                    is = is2;
                }
            } catch (IOException e3) {
                e = e3;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            long fileLength = file.length();
            if (fileLength < exifSize) {
                throw new IOException("Filesize changed during operation");
            }
            ByteBuffer buf = file.getChannel().map(FileChannel.MapMode.READ_WRITE, 0L, exifSize);
            boolean ret = rewriteExif(buf, tags);
            closeSilently(null);
            file.close();
            return ret;
        } catch (IOException e4) {
            e = e4;
            file2 = file;
            closeSilently(file2);
            throw e;
        } catch (Throwable th3) {
            th = th3;
            closeSilently(is);
            throw th;
        }
    }

    public boolean rewriteExif(ByteBuffer buf, Collection<ExifTag> tags) throws IOException {
        try {
            ExifModifier mod = new ExifModifier(buf, this);
            try {
                for (ExifTag t : tags) {
                    mod.modifyTag(t);
                }
                return mod.commit();
            } catch (ExifInvalidFormatException e) {
                e = e;
                throw new IOException("Invalid exif format : " + e);
            }
        } catch (ExifInvalidFormatException e2) {
            e = e2;
        }
    }

    public void forceRewriteExif(String filename, Collection<ExifTag> tags) throws FileNotFoundException, IOException {
        if (!rewriteExif(filename, tags)) {
            ExifData tempData = this.mData;
            this.mData = new ExifData(DEFAULT_BYTE_ORDER);
            FileInputStream is = null;
            try {
                try {
                    FileInputStream is2 = new FileInputStream(filename);
                    try {
                        ByteArrayOutputStream bytes = new ByteArrayOutputStream();
                        try {
                            doExifStreamIO(is2, bytes);
                            byte[] imageBytes = bytes.toByteArray();
                            readExif(imageBytes);
                            setTags(tags);
                            writeExif(imageBytes, filename);
                            is2.close();
                            this.mData = tempData;
                        } catch (IOException e) {
                            e = e;
                            is = is2;
                            closeSilently(is);
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                            is = is2;
                            is.close();
                            this.mData = tempData;
                            throw th;
                        }
                    } catch (IOException e2) {
                        e = e2;
                        is = is2;
                    } catch (Throwable th2) {
                        th = th2;
                        is = is2;
                    }
                } catch (IOException e3) {
                    e = e3;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    public void forceRewriteExif(String filename) throws FileNotFoundException, IOException {
        forceRewriteExif(filename, getAllTags());
    }

    public List<ExifTag> getAllTags() {
        return this.mData.getAllTags();
    }

    public List<ExifTag> getTagsForTagId(short tagId) {
        return this.mData.getAllTagsForTagId(tagId);
    }

    public List<ExifTag> getTagsForIfdId(int ifdId) {
        return this.mData.getAllTagsForIfd(ifdId);
    }

    public ExifTag getTag(int tagId, int ifdId) {
        if (ExifTag.isValidIfd(ifdId)) {
            return this.mData.getTag(getTrueTagKey(tagId), ifdId);
        }
        return null;
    }

    public ExifTag getTag(int tagId) {
        int ifdId = getDefinedTagDefaultIfd(tagId);
        return getTag(tagId, ifdId);
    }

    public Object getTagValue(int tagId, int ifdId) {
        ExifTag t = getTag(tagId, ifdId);
        if (t == null) {
            return null;
        }
        return t.getValue();
    }

    public Object getTagValue(int tagId) {
        int ifdId = getDefinedTagDefaultIfd(tagId);
        return getTagValue(tagId, ifdId);
    }

    public String getTagStringValue(int tagId, int ifdId) {
        ExifTag t = getTag(tagId, ifdId);
        if (t == null) {
            return null;
        }
        return t.getValueAsString();
    }

    public String getTagStringValue(int tagId) {
        int ifdId = getDefinedTagDefaultIfd(tagId);
        return getTagStringValue(tagId, ifdId);
    }

    public Long getTagLongValue(int tagId, int ifdId) {
        long[] l = getTagLongValues(tagId, ifdId);
        if (l == null || l.length <= 0) {
            return null;
        }
        return Long.valueOf(l[0]);
    }

    public Long getTagLongValue(int tagId) {
        int ifdId = getDefinedTagDefaultIfd(tagId);
        return getTagLongValue(tagId, ifdId);
    }

    public Integer getTagIntValue(int tagId, int ifdId) {
        int[] l = getTagIntValues(tagId, ifdId);
        if (l == null || l.length <= 0) {
            return null;
        }
        return Integer.valueOf(l[0]);
    }

    public Integer getTagIntValue(int tagId) {
        int ifdId = getDefinedTagDefaultIfd(tagId);
        return getTagIntValue(tagId, ifdId);
    }

    public Byte getTagByteValue(int tagId, int ifdId) {
        byte[] l = getTagByteValues(tagId, ifdId);
        if (l == null || l.length <= 0) {
            return null;
        }
        return Byte.valueOf(l[0]);
    }

    public Byte getTagByteValue(int tagId) {
        int ifdId = getDefinedTagDefaultIfd(tagId);
        return getTagByteValue(tagId, ifdId);
    }

    public Rational getTagRationalValue(int tagId, int ifdId) {
        Rational[] l = getTagRationalValues(tagId, ifdId);
        if (l == null || l.length == 0) {
            return null;
        }
        return new Rational(l[0]);
    }

    public Rational getTagRationalValue(int tagId) {
        int ifdId = getDefinedTagDefaultIfd(tagId);
        return getTagRationalValue(tagId, ifdId);
    }

    public long[] getTagLongValues(int tagId, int ifdId) {
        ExifTag t = getTag(tagId, ifdId);
        if (t == null) {
            return null;
        }
        return t.getValueAsLongs();
    }

    public long[] getTagLongValues(int tagId) {
        int ifdId = getDefinedTagDefaultIfd(tagId);
        return getTagLongValues(tagId, ifdId);
    }

    public int[] getTagIntValues(int tagId, int ifdId) {
        ExifTag t = getTag(tagId, ifdId);
        if (t == null) {
            return null;
        }
        return t.getValueAsInts();
    }

    public int[] getTagIntValues(int tagId) {
        int ifdId = getDefinedTagDefaultIfd(tagId);
        return getTagIntValues(tagId, ifdId);
    }

    public byte[] getTagByteValues(int tagId, int ifdId) {
        ExifTag t = getTag(tagId, ifdId);
        if (t == null) {
            return null;
        }
        return t.getValueAsBytes();
    }

    public byte[] getTagByteValues(int tagId) {
        int ifdId = getDefinedTagDefaultIfd(tagId);
        return getTagByteValues(tagId, ifdId);
    }

    public Rational[] getTagRationalValues(int tagId, int ifdId) {
        ExifTag t = getTag(tagId, ifdId);
        if (t == null) {
            return null;
        }
        return t.getValueAsRationals();
    }

    public Rational[] getTagRationalValues(int tagId) {
        int ifdId = getDefinedTagDefaultIfd(tagId);
        return getTagRationalValues(tagId, ifdId);
    }

    public boolean isTagCountDefined(int tagId) {
        int info = getTagInfo().get(tagId);
        return (info == 0 || getComponentCountFromInfo(info) == 0) ? false : true;
    }

    public int getDefinedTagCount(int tagId) {
        int info = getTagInfo().get(tagId);
        if (info == 0) {
            return 0;
        }
        return getComponentCountFromInfo(info);
    }

    public int getActualTagCount(int tagId, int ifdId) {
        ExifTag t = getTag(tagId, ifdId);
        if (t == null) {
            return 0;
        }
        return t.getComponentCount();
    }

    public int getDefinedTagDefaultIfd(int tagId) {
        int info = getTagInfo().get(tagId);
        if (info == 0) {
            return -1;
        }
        return getTrueIfd(tagId);
    }

    public short getDefinedTagType(int tagId) {
        int info = getTagInfo().get(tagId);
        if (info == 0) {
            return (short) -1;
        }
        return getTypeFromInfo(info);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean isOffsetTag(short tag) {
        return sOffsetTags.contains(Short.valueOf(tag));
    }

    public ExifTag buildTag(int tagId, int ifdId, Object val) {
        int info = getTagInfo().get(tagId);
        if (info == 0 || val == null) {
            return null;
        }
        short type = getTypeFromInfo(info);
        int definedCount = getComponentCountFromInfo(info);
        boolean hasDefinedCount = definedCount != 0;
        if (!isIfdAllowed(info, ifdId)) {
            return null;
        }
        ExifTag t = new ExifTag(getTrueTagKey(tagId), type, definedCount, ifdId, hasDefinedCount);
        if (t.setValue(val)) {
            return t;
        }
        return null;
    }

    public ExifTag buildTag(int tagId, Object val) {
        int ifdId = getTrueIfd(tagId);
        return buildTag(tagId, ifdId, val);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ExifTag buildUninitializedTag(int tagId) {
        int info = getTagInfo().get(tagId);
        if (info == 0) {
            return null;
        }
        short type = getTypeFromInfo(info);
        int definedCount = getComponentCountFromInfo(info);
        boolean hasDefinedCount = definedCount != 0;
        int ifdId = getTrueIfd(tagId);
        return new ExifTag(getTrueTagKey(tagId), type, definedCount, ifdId, hasDefinedCount);
    }

    public boolean setTagValue(int tagId, int ifdId, Object val) {
        ExifTag t = getTag(tagId, ifdId);
        if (t == null) {
            return false;
        }
        return t.setValue(val);
    }

    public boolean setTagValue(int tagId, Object val) {
        int ifdId = getDefinedTagDefaultIfd(tagId);
        return setTagValue(tagId, ifdId, val);
    }

    public ExifTag setTag(ExifTag tag) {
        return this.mData.addTag(tag);
    }

    public void setTags(Collection<ExifTag> tags) {
        for (ExifTag t : tags) {
            setTag(t);
        }
    }

    public void deleteTag(int tagId, int ifdId) {
        this.mData.removeTag(getTrueTagKey(tagId), ifdId);
    }

    public void deleteTag(int tagId) {
        int ifdId = getDefinedTagDefaultIfd(tagId);
        deleteTag(tagId, ifdId);
    }

    public int setTagDefinition(short tagId, int defaultIfd, short tagType, short defaultComponentCount, int[] allowedIfds) {
        int tagDef;
        if (sBannedDefines.contains(Short.valueOf(tagId)) || !ExifTag.isValidType(tagType) || !ExifTag.isValidIfd(defaultIfd) || (tagDef = defineTag(defaultIfd, tagId)) == -1) {
            return -1;
        }
        int[] otherDefs = getTagDefinitionsForTagId(tagId);
        SparseIntArray infos = getTagInfo();
        boolean defaultCheck = false;
        for (int i : allowedIfds) {
            if (defaultIfd == i) {
                defaultCheck = true;
            }
            if (!ExifTag.isValidIfd(i)) {
                return -1;
            }
        }
        if (!defaultCheck) {
            return -1;
        }
        int ifdFlags = getFlagsFromAllowedIfds(allowedIfds);
        if (otherDefs != null) {
            for (int def : otherDefs) {
                int tagInfo = infos.get(def);
                int allowedFlags = getAllowedIfdFlagsFromInfo(tagInfo);
                if ((ifdFlags & allowedFlags) != 0) {
                    return -1;
                }
            }
        }
        getTagInfo().put(tagDef, (ifdFlags << 24) | (tagType << 16) | defaultComponentCount);
        return tagDef;
    }

    protected int getTagDefinition(short tagId, int defaultIfd) {
        return getTagInfo().get(defineTag(defaultIfd, tagId));
    }

    protected int[] getTagDefinitionsForTagId(short tagId) {
        int counter;
        int[] ifds = IfdData.getIfds();
        int[] defs = new int[ifds.length];
        SparseIntArray infos = getTagInfo();
        int length = ifds.length;
        int i = 0;
        int counter2 = 0;
        while (i < length) {
            int i2 = ifds[i];
            int def = defineTag(i2, tagId);
            if (infos.get(def) != 0) {
                counter = counter2 + 1;
                defs[counter2] = def;
            } else {
                counter = counter2;
            }
            i++;
            counter2 = counter;
        }
        if (counter2 == 0) {
            return null;
        }
        return Arrays.copyOfRange(defs, 0, counter2);
    }

    protected int getTagDefinitionForTag(ExifTag tag) {
        short type = tag.getDataType();
        int count = tag.getComponentCount();
        int ifd = tag.getIfd();
        return getTagDefinitionForTag(tag.getTagId(), type, count, ifd);
    }

    protected int getTagDefinitionForTag(short tagId, short type, int count, int ifd) {
        int[] defs = getTagDefinitionsForTagId(tagId);
        if (defs == null) {
            return -1;
        }
        SparseIntArray infos = getTagInfo();
        for (int i : defs) {
            int info = infos.get(i);
            short def_type = getTypeFromInfo(info);
            int def_count = getComponentCountFromInfo(info);
            int[] def_ifds = getAllowedIfdsFromInfo(info);
            boolean valid_ifd = false;
            int length = def_ifds.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                int j = def_ifds[i2];
                if (j != ifd) {
                    i2++;
                } else {
                    valid_ifd = true;
                    break;
                }
            }
            if (valid_ifd && type == def_type && (count == def_count || def_count == 0)) {
                return i;
            }
        }
        return -1;
    }

    public void removeTagDefinition(int tagId) {
        getTagInfo().delete(tagId);
    }

    public void resetTagDefinitions() {
        this.mTagInfo = null;
    }

    public Bitmap getThumbnailBitmap() {
        if (this.mData.hasCompressedThumbnail()) {
            byte[] thumb = this.mData.getCompressedThumbnail();
            return BitmapFactory.decodeByteArray(thumb, 0, thumb.length);
        }
        if (this.mData.hasUncompressedStrip()) {
        }
        return null;
    }

    public byte[] getThumbnailBytes() {
        if (this.mData.hasCompressedThumbnail()) {
            return this.mData.getCompressedThumbnail();
        }
        if (this.mData.hasUncompressedStrip()) {
        }
        return null;
    }

    public byte[] getThumbnail() {
        return this.mData.getCompressedThumbnail();
    }

    public boolean isThumbnailCompressed() {
        return this.mData.hasCompressedThumbnail();
    }

    public boolean hasThumbnail() {
        return this.mData.hasCompressedThumbnail();
    }

    public boolean setCompressedThumbnail(byte[] thumb) {
        this.mData.clearThumbnailAndStrips();
        this.mData.setCompressedThumbnail(thumb);
        return true;
    }

    public boolean setCompressedThumbnail(Bitmap thumb) {
        ByteArrayOutputStream thumbnail = new ByteArrayOutputStream();
        if (thumb.compress(Bitmap.CompressFormat.JPEG, 90, thumbnail)) {
            return setCompressedThumbnail(thumbnail.toByteArray());
        }
        return false;
    }

    public void removeCompressedThumbnail() {
        this.mData.setCompressedThumbnail(null);
    }

    public String getUserComment() {
        return this.mData.getUserComment();
    }

    public static short getOrientationValueForRotation(int degrees) {
        int degrees2 = degrees % 360;
        if (degrees2 < 0) {
            degrees2 += 360;
        }
        if (degrees2 < 90) {
            return (short) 1;
        }
        if (degrees2 < 180) {
            return (short) 6;
        }
        if (degrees2 < 270) {
            return (short) 3;
        }
        return (short) 8;
    }

    public static int getRotationForOrientationValue(short orientation) {
        switch (orientation) {
            case 1:
            case 2:
            case 4:
            case 5:
            case 7:
            default:
                return 0;
            case 3:
                return 180;
            case 6:
                return 90;
            case 8:
                return 270;
        }
    }

    public static double convertLatOrLongToDouble(Rational[] coordinate, String reference) {
        try {
            double degrees = coordinate[0].toDouble();
            double minutes = coordinate[1].toDouble();
            double seconds = coordinate[2].toDouble();
            double result = (minutes / 60.0d) + degrees + (seconds / 3600.0d);
            if (!reference.equals(GpsLatitudeRef.SOUTH)) {
                if (!reference.equals(GpsLongitudeRef.WEST)) {
                    return result;
                }
            }
            return -result;
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new IllegalArgumentException();
        }
    }

    public double[] getLatLongAsDoubles() {
        Rational[] latitude = getTagRationalValues(TAG_GPS_LATITUDE);
        String latitudeRef = getTagStringValue(TAG_GPS_LATITUDE_REF);
        Rational[] longitude = getTagRationalValues(TAG_GPS_LONGITUDE);
        String longitudeRef = getTagStringValue(TAG_GPS_LONGITUDE_REF);
        if (latitude == null || longitude == null || latitudeRef == null || longitudeRef == null || latitude.length < 3 || longitude.length < 3) {
            return null;
        }
        double[] latLon = {convertLatOrLongToDouble(latitude, latitudeRef), convertLatOrLongToDouble(longitude, longitudeRef)};
        return latLon;
    }

    public boolean addDateTimeStampTag(int tagId, long timestamp, TimeZone timezone) {
        if (tagId != TAG_DATE_TIME && tagId != TAG_DATE_TIME_DIGITIZED && tagId != TAG_DATE_TIME_ORIGINAL) {
            return false;
        }
        this.mDateTimeStampFormat.setTimeZone(timezone);
        ExifTag t = buildTag(tagId, this.mDateTimeStampFormat.format(Long.valueOf(timestamp)));
        if (t == null) {
            return false;
        }
        setTag(t);
        return true;
    }

    public boolean addGpsTags(double latitude, double longitude) {
        ExifTag latTag = buildTag(TAG_GPS_LATITUDE, toExifLatLong(latitude));
        ExifTag longTag = buildTag(TAG_GPS_LONGITUDE, toExifLatLong(longitude));
        ExifTag latRefTag = buildTag(TAG_GPS_LATITUDE_REF, latitude >= 0.0d ? "N" : GpsLatitudeRef.SOUTH);
        ExifTag longRefTag = buildTag(TAG_GPS_LONGITUDE_REF, longitude >= 0.0d ? GpsLongitudeRef.EAST : GpsLongitudeRef.WEST);
        if (latTag == null || longTag == null || latRefTag == null || longRefTag == null) {
            return false;
        }
        setTag(latTag);
        setTag(longTag);
        setTag(latRefTag);
        setTag(longRefTag);
        return true;
    }

    public boolean addGpsDateTimeStampTag(long timestamp) {
        ExifTag t = buildTag(TAG_GPS_DATE_STAMP, this.mGPSDateStampFormat.format(Long.valueOf(timestamp)));
        if (t == null) {
            return false;
        }
        setTag(t);
        this.mGPSTimeStampCalendar.setTimeInMillis(timestamp);
        ExifTag t2 = buildTag(TAG_GPS_TIME_STAMP, new Rational[]{new Rational(this.mGPSTimeStampCalendar.get(11), 1L), new Rational(this.mGPSTimeStampCalendar.get(12), 1L), new Rational(this.mGPSTimeStampCalendar.get(13), 1L)});
        if (t2 == null) {
            return false;
        }
        setTag(t2);
        return true;
    }

    private static Rational[] toExifLatLong(double value) {
        double value2 = Math.abs(value);
        int degrees = (int) value2;
        double value3 = (value2 - degrees) * 60.0d;
        int minutes = (int) value3;
        int seconds = (int) ((value3 - minutes) * 6000.0d);
        return new Rational[]{new Rational(degrees, 1L), new Rational(minutes, 1L), new Rational(seconds, 100L)};
    }

    private void doExifStreamIO(InputStream is, OutputStream os) throws IOException {
        byte[] buf = new byte[1024];
        int ret = is.read(buf, 0, 1024);
        while (ret != -1) {
            os.write(buf, 0, ret);
            ret = is.read(buf, 0, 1024);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void closeSilently(Closeable c) {
        if (c != null) {
            try {
                c.close();
            } catch (Throwable th) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SparseIntArray getTagInfo() {
        if (this.mTagInfo == null) {
            this.mTagInfo = new SparseIntArray();
            initTagInfo();
        }
        return this.mTagInfo;
    }

    private void initTagInfo() {
        int[] ifdAllowedIfds = {0, 1};
        int ifdFlags = getFlagsFromAllowedIfds(ifdAllowedIfds) << 24;
        this.mTagInfo.put(TAG_MAKE, 131072 | ifdFlags | 0);
        this.mTagInfo.put(TAG_IMAGE_WIDTH, 262144 | ifdFlags | 1);
        this.mTagInfo.put(TAG_IMAGE_LENGTH, 262144 | ifdFlags | 1);
        this.mTagInfo.put(TAG_BITS_PER_SAMPLE, 196608 | ifdFlags | 3);
        this.mTagInfo.put(TAG_COMPRESSION, 196608 | ifdFlags | 1);
        this.mTagInfo.put(TAG_PHOTOMETRIC_INTERPRETATION, 196608 | ifdFlags | 1);
        this.mTagInfo.put(TAG_ORIENTATION, 196608 | ifdFlags | 1);
        this.mTagInfo.put(TAG_SAMPLES_PER_PIXEL, 196608 | ifdFlags | 1);
        this.mTagInfo.put(TAG_PLANAR_CONFIGURATION, 196608 | ifdFlags | 1);
        this.mTagInfo.put(TAG_Y_CB_CR_SUB_SAMPLING, 196608 | ifdFlags | 2);
        this.mTagInfo.put(TAG_Y_CB_CR_POSITIONING, 196608 | ifdFlags | 1);
        this.mTagInfo.put(TAG_X_RESOLUTION, 327680 | ifdFlags | 1);
        this.mTagInfo.put(TAG_Y_RESOLUTION, 327680 | ifdFlags | 1);
        this.mTagInfo.put(TAG_RESOLUTION_UNIT, 196608 | ifdFlags | 1);
        this.mTagInfo.put(TAG_STRIP_OFFSETS, 262144 | ifdFlags | 0);
        this.mTagInfo.put(TAG_ROWS_PER_STRIP, 262144 | ifdFlags | 1);
        this.mTagInfo.put(TAG_STRIP_BYTE_COUNTS, 262144 | ifdFlags | 0);
        this.mTagInfo.put(TAG_TRANSFER_FUNCTION, 196608 | ifdFlags | 768);
        this.mTagInfo.put(TAG_WHITE_POINT, 327680 | ifdFlags | 2);
        this.mTagInfo.put(TAG_PRIMARY_CHROMATICITIES, 327680 | ifdFlags | 6);
        this.mTagInfo.put(TAG_Y_CB_CR_COEFFICIENTS, 327680 | ifdFlags | 3);
        this.mTagInfo.put(TAG_REFERENCE_BLACK_WHITE, 327680 | ifdFlags | 6);
        this.mTagInfo.put(TAG_DATE_TIME, 131072 | ifdFlags | 20);
        this.mTagInfo.put(TAG_IMAGE_DESCRIPTION, 131072 | ifdFlags | 0);
        this.mTagInfo.put(TAG_MAKE, 131072 | ifdFlags | 0);
        this.mTagInfo.put(TAG_MODEL, 131072 | ifdFlags | 0);
        this.mTagInfo.put(TAG_SOFTWARE, 131072 | ifdFlags | 0);
        this.mTagInfo.put(TAG_ARTIST, 131072 | ifdFlags | 0);
        this.mTagInfo.put(TAG_COPYRIGHT, 131072 | ifdFlags | 0);
        this.mTagInfo.put(TAG_EXIF_IFD, 262144 | ifdFlags | 1);
        this.mTagInfo.put(TAG_GPS_IFD, 262144 | ifdFlags | 1);
        int[] ifd1AllowedIfds = {1};
        int ifdFlags1 = getFlagsFromAllowedIfds(ifd1AllowedIfds) << 24;
        this.mTagInfo.put(TAG_JPEG_INTERCHANGE_FORMAT, 262144 | ifdFlags1 | 1);
        this.mTagInfo.put(TAG_JPEG_INTERCHANGE_FORMAT_LENGTH, 262144 | ifdFlags1 | 1);
        int[] exifAllowedIfds = {2};
        int exifFlags = getFlagsFromAllowedIfds(exifAllowedIfds) << 24;
        this.mTagInfo.put(TAG_EXIF_VERSION, 458752 | exifFlags | 4);
        this.mTagInfo.put(TAG_FLASHPIX_VERSION, 458752 | exifFlags | 4);
        this.mTagInfo.put(TAG_COLOR_SPACE, 196608 | exifFlags | 1);
        this.mTagInfo.put(TAG_COMPONENTS_CONFIGURATION, 458752 | exifFlags | 4);
        this.mTagInfo.put(TAG_COMPRESSED_BITS_PER_PIXEL, 327680 | exifFlags | 1);
        this.mTagInfo.put(TAG_PIXEL_X_DIMENSION, 262144 | exifFlags | 1);
        this.mTagInfo.put(TAG_PIXEL_Y_DIMENSION, 262144 | exifFlags | 1);
        this.mTagInfo.put(TAG_MAKER_NOTE, 458752 | exifFlags | 0);
        this.mTagInfo.put(TAG_USER_COMMENT, 458752 | exifFlags | 0);
        this.mTagInfo.put(TAG_RELATED_SOUND_FILE, 131072 | exifFlags | 13);
        this.mTagInfo.put(TAG_DATE_TIME_ORIGINAL, 131072 | exifFlags | 20);
        this.mTagInfo.put(TAG_DATE_TIME_DIGITIZED, 131072 | exifFlags | 20);
        this.mTagInfo.put(TAG_SUB_SEC_TIME, 131072 | exifFlags | 0);
        this.mTagInfo.put(TAG_SUB_SEC_TIME_ORIGINAL, 131072 | exifFlags | 0);
        this.mTagInfo.put(TAG_SUB_SEC_TIME_DIGITIZED, 131072 | exifFlags | 0);
        this.mTagInfo.put(TAG_IMAGE_UNIQUE_ID, 131072 | exifFlags | 33);
        this.mTagInfo.put(TAG_EXPOSURE_TIME, 327680 | exifFlags | 1);
        this.mTagInfo.put(TAG_F_NUMBER, 327680 | exifFlags | 1);
        this.mTagInfo.put(TAG_EXPOSURE_PROGRAM, 196608 | exifFlags | 1);
        this.mTagInfo.put(TAG_SPECTRAL_SENSITIVITY, 131072 | exifFlags | 0);
        this.mTagInfo.put(TAG_ISO_SPEED_RATINGS, 196608 | exifFlags | 0);
        this.mTagInfo.put(TAG_OECF, 458752 | exifFlags | 0);
        this.mTagInfo.put(TAG_SHUTTER_SPEED_VALUE, 655360 | exifFlags | 1);
        this.mTagInfo.put(TAG_APERTURE_VALUE, 327680 | exifFlags | 1);
        this.mTagInfo.put(TAG_BRIGHTNESS_VALUE, 655360 | exifFlags | 1);
        this.mTagInfo.put(TAG_EXPOSURE_BIAS_VALUE, 655360 | exifFlags | 1);
        this.mTagInfo.put(TAG_MAX_APERTURE_VALUE, 327680 | exifFlags | 1);
        this.mTagInfo.put(TAG_SUBJECT_DISTANCE, 327680 | exifFlags | 1);
        this.mTagInfo.put(TAG_METERING_MODE, 196608 | exifFlags | 1);
        this.mTagInfo.put(TAG_LIGHT_SOURCE, 196608 | exifFlags | 1);
        this.mTagInfo.put(TAG_FLASH, 196608 | exifFlags | 1);
        this.mTagInfo.put(TAG_FOCAL_LENGTH, 327680 | exifFlags | 1);
        this.mTagInfo.put(TAG_SUBJECT_AREA, 196608 | exifFlags | 0);
        this.mTagInfo.put(TAG_FLASH_ENERGY, 327680 | exifFlags | 1);
        this.mTagInfo.put(TAG_SPATIAL_FREQUENCY_RESPONSE, 458752 | exifFlags | 0);
        this.mTagInfo.put(TAG_FOCAL_PLANE_X_RESOLUTION, 327680 | exifFlags | 1);
        this.mTagInfo.put(TAG_FOCAL_PLANE_Y_RESOLUTION, 327680 | exifFlags | 1);
        this.mTagInfo.put(TAG_FOCAL_PLANE_RESOLUTION_UNIT, 196608 | exifFlags | 1);
        this.mTagInfo.put(TAG_SUBJECT_LOCATION, 196608 | exifFlags | 2);
        this.mTagInfo.put(TAG_EXPOSURE_INDEX, 327680 | exifFlags | 1);
        this.mTagInfo.put(TAG_SENSING_METHOD, 196608 | exifFlags | 1);
        this.mTagInfo.put(TAG_FILE_SOURCE, 458752 | exifFlags | 1);
        this.mTagInfo.put(TAG_SCENE_TYPE, 458752 | exifFlags | 1);
        this.mTagInfo.put(TAG_CFA_PATTERN, 458752 | exifFlags | 0);
        this.mTagInfo.put(TAG_CUSTOM_RENDERED, 196608 | exifFlags | 1);
        this.mTagInfo.put(TAG_EXPOSURE_MODE, 196608 | exifFlags | 1);
        this.mTagInfo.put(TAG_WHITE_BALANCE, 196608 | exifFlags | 1);
        this.mTagInfo.put(TAG_DIGITAL_ZOOM_RATIO, 327680 | exifFlags | 1);
        this.mTagInfo.put(TAG_FOCAL_LENGTH_IN_35_MM_FILE, 196608 | exifFlags | 1);
        this.mTagInfo.put(TAG_SCENE_CAPTURE_TYPE, 196608 | exifFlags | 1);
        this.mTagInfo.put(TAG_GAIN_CONTROL, 327680 | exifFlags | 1);
        this.mTagInfo.put(TAG_CONTRAST, 196608 | exifFlags | 1);
        this.mTagInfo.put(TAG_SATURATION, 196608 | exifFlags | 1);
        this.mTagInfo.put(TAG_SHARPNESS, 196608 | exifFlags | 1);
        this.mTagInfo.put(TAG_DEVICE_SETTING_DESCRIPTION, 458752 | exifFlags | 0);
        this.mTagInfo.put(TAG_SUBJECT_DISTANCE_RANGE, 196608 | exifFlags | 1);
        this.mTagInfo.put(TAG_INTEROPERABILITY_IFD, 262144 | exifFlags | 1);
        int[] gpsAllowedIfds = {4};
        int gpsFlags = getFlagsFromAllowedIfds(gpsAllowedIfds) << 24;
        this.mTagInfo.put(TAG_GPS_VERSION_ID, 65536 | gpsFlags | 4);
        this.mTagInfo.put(TAG_GPS_LATITUDE_REF, 131072 | gpsFlags | 2);
        this.mTagInfo.put(TAG_GPS_LONGITUDE_REF, 131072 | gpsFlags | 2);
        this.mTagInfo.put(TAG_GPS_LATITUDE, 655360 | gpsFlags | 3);
        this.mTagInfo.put(TAG_GPS_LONGITUDE, 655360 | gpsFlags | 3);
        this.mTagInfo.put(TAG_GPS_ALTITUDE_REF, 65536 | gpsFlags | 1);
        this.mTagInfo.put(TAG_GPS_ALTITUDE, 327680 | gpsFlags | 1);
        this.mTagInfo.put(TAG_GPS_TIME_STAMP, 327680 | gpsFlags | 3);
        this.mTagInfo.put(TAG_GPS_SATTELLITES, 131072 | gpsFlags | 0);
        this.mTagInfo.put(TAG_GPS_STATUS, 131072 | gpsFlags | 2);
        this.mTagInfo.put(TAG_GPS_MEASURE_MODE, 131072 | gpsFlags | 2);
        this.mTagInfo.put(TAG_GPS_DOP, 327680 | gpsFlags | 1);
        this.mTagInfo.put(TAG_GPS_SPEED_REF, 131072 | gpsFlags | 2);
        this.mTagInfo.put(TAG_GPS_SPEED, 327680 | gpsFlags | 1);
        this.mTagInfo.put(TAG_GPS_TRACK_REF, 131072 | gpsFlags | 2);
        this.mTagInfo.put(TAG_GPS_TRACK, 327680 | gpsFlags | 1);
        this.mTagInfo.put(TAG_GPS_IMG_DIRECTION_REF, 131072 | gpsFlags | 2);
        this.mTagInfo.put(TAG_GPS_IMG_DIRECTION, 327680 | gpsFlags | 1);
        this.mTagInfo.put(TAG_GPS_MAP_DATUM, 131072 | gpsFlags | 0);
        this.mTagInfo.put(TAG_GPS_DEST_LATITUDE_REF, 131072 | gpsFlags | 2);
        this.mTagInfo.put(TAG_GPS_DEST_LATITUDE, 327680 | gpsFlags | 1);
        this.mTagInfo.put(TAG_GPS_DEST_BEARING_REF, 131072 | gpsFlags | 2);
        this.mTagInfo.put(TAG_GPS_DEST_BEARING, 327680 | gpsFlags | 1);
        this.mTagInfo.put(TAG_GPS_DEST_DISTANCE_REF, 131072 | gpsFlags | 2);
        this.mTagInfo.put(TAG_GPS_DEST_DISTANCE, 327680 | gpsFlags | 1);
        this.mTagInfo.put(TAG_GPS_PROCESSING_METHOD, 458752 | gpsFlags | 0);
        this.mTagInfo.put(TAG_GPS_AREA_INFORMATION, 458752 | gpsFlags | 0);
        this.mTagInfo.put(TAG_GPS_DATE_STAMP, 131072 | gpsFlags | 11);
        this.mTagInfo.put(TAG_GPS_DIFFERENTIAL, 196608 | gpsFlags | 11);
        int[] interopAllowedIfds = {3};
        int interopFlags = getFlagsFromAllowedIfds(interopAllowedIfds) << 24;
        this.mTagInfo.put(TAG_INTEROPERABILITY_INDEX, 131072 | interopFlags | 0);
    }

    protected static int getAllowedIfdFlagsFromInfo(int info) {
        return info >>> 24;
    }

    protected static int[] getAllowedIfdsFromInfo(int info) {
        int ifdFlags = getAllowedIfdFlagsFromInfo(info);
        int[] ifds = IfdData.getIfds();
        ArrayList<Integer> l = new ArrayList<>();
        for (int i = 0; i < 5; i++) {
            int flag = (ifdFlags >> i) & 1;
            if (flag == 1) {
                l.add(Integer.valueOf(ifds[i]));
            }
        }
        if (l.size() <= 0) {
            return null;
        }
        int[] ret = new int[l.size()];
        int j = 0;
        Iterator<Integer> it = l.iterator();
        while (it.hasNext()) {
            int i2 = it.next().intValue();
            ret[j] = i2;
            j++;
        }
        return ret;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean isIfdAllowed(int info, int ifd) {
        int[] ifds = IfdData.getIfds();
        int ifdFlags = getAllowedIfdFlagsFromInfo(info);
        for (int i = 0; i < ifds.length; i++) {
            if (ifd == ifds[i] && ((ifdFlags >> i) & 1) == 1) {
                return true;
            }
        }
        return false;
    }

    protected static int getFlagsFromAllowedIfds(int[] allowedIfds) {
        if (allowedIfds == null || allowedIfds.length == 0) {
            return 0;
        }
        int flags = 0;
        int[] ifds = IfdData.getIfds();
        for (int i = 0; i < 5; i++) {
            int length = allowedIfds.length;
            int i2 = 0;
            while (true) {
                if (i2 < length) {
                    int j = allowedIfds[i2];
                    if (ifds[i] != j) {
                        i2++;
                    } else {
                        flags |= 1 << i;
                        break;
                    }
                }
            }
        }
        return flags;
    }

    protected static short getTypeFromInfo(int info) {
        return (short) ((info >> 16) & 255);
    }

    protected static int getComponentCountFromInfo(int info) {
        return 65535 & info;
    }
}
