package com.oneplus.lib.util;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.util.ArrayMap;
import android.util.Base64;
import android.util.Xml;
import com.oneplus.lib.preference.FastXmlSerializer;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ProtocolException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import net.oneplus.h2launcher.customizations.wallpaper.tileInfo.WallpaperTileInfo;
import net.oneplus.h2launcher.dynamicicon.DynamicIconItemBaseConfig;
import net.oneplus.h2launcher.dynamicicon.DynamicIconTextConfig;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes.dex */
public class XmlUtils {
    private static final String STRING_ARRAY_SEPARATOR = ":";

    /* loaded from: classes.dex */
    public interface ReadMapCallback {
        Object readThisUnknownObjectXml(XmlPullParser xmlPullParser, String str) throws XmlPullParserException, IOException;
    }

    /* loaded from: classes.dex */
    public interface WriteMapCallback {
        void writeUnknownObject(Object obj, String str, XmlSerializer xmlSerializer) throws XmlPullParserException, IOException;
    }

    public static void skipCurrentTag(XmlPullParser parser) throws XmlPullParserException, IOException {
        int outerDepth = parser.getDepth();
        while (true) {
            int type = parser.next();
            if (type != 1) {
                if (type == 3 && parser.getDepth() <= outerDepth) {
                    return;
                }
            } else {
                return;
            }
        }
    }

    public static final int convertValueToList(CharSequence value, String[] options, int defaultValue) {
        if (value != null) {
            for (int i = 0; i < options.length; i++) {
                if (value.equals(options[i])) {
                    return i;
                }
            }
        }
        return defaultValue;
    }

    public static final boolean convertValueToBoolean(CharSequence value, boolean defaultValue) {
        boolean result = false;
        if (value != null) {
            if (value.equals("1") || value.equals(DynamicIconTextConfig.KEY_TRUE) || value.equals("TRUE")) {
                result = true;
            }
            boolean defaultValue2 = result;
            return defaultValue2;
        }
        return defaultValue;
    }

    public static final int convertValueToInt(CharSequence charSeq, int defaultValue) {
        if (charSeq != null) {
            String nm = charSeq.toString();
            int sign = 1;
            int index = 0;
            int len = nm.length();
            int base = 10;
            if ('-' == nm.charAt(0)) {
                sign = -1;
                index = 0 + 1;
            }
            if ('0' == nm.charAt(index)) {
                if (index == len - 1) {
                    return 0;
                }
                char c = nm.charAt(index + 1);
                if ('x' == c || 'X' == c) {
                    index += 2;
                    base = 16;
                } else {
                    index++;
                    base = 8;
                }
            } else if ('#' == nm.charAt(index)) {
                index++;
                base = 16;
            }
            int defaultValue2 = Integer.parseInt(nm.substring(index), base) * sign;
            return defaultValue2;
        }
        return defaultValue;
    }

    public static int convertValueToUnsignedInt(String value, int defaultValue) {
        if (value == null) {
            return defaultValue;
        }
        int defaultValue2 = parseUnsignedIntAttribute(value);
        return defaultValue2;
    }

    public static int parseUnsignedIntAttribute(CharSequence charSeq) {
        String value = charSeq.toString();
        int index = 0;
        int len = value.length();
        int base = 10;
        if ('0' == value.charAt(0)) {
            if (0 == len - 1) {
                return 0;
            }
            char c = value.charAt(1);
            if ('x' == c || 'X' == c) {
                index = 0 + 2;
                base = 16;
            } else {
                index = 0 + 1;
                base = 8;
            }
        } else if ('#' == value.charAt(0)) {
            index = 0 + 1;
            base = 16;
        }
        return (int) Long.parseLong(value.substring(index), base);
    }

    public static final void writeMapXml(Map val, OutputStream out) throws XmlPullParserException, IOException {
        XmlSerializer serializer = new FastXmlSerializer();
        serializer.setOutput(out, StandardCharsets.UTF_8.name());
        serializer.startDocument(null, true);
        serializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
        writeMapXml(val, (String) null, serializer);
        serializer.endDocument();
    }

    public static final void writeListXml(List val, OutputStream out) throws XmlPullParserException, IOException {
        XmlSerializer serializer = Xml.newSerializer();
        serializer.setOutput(out, StandardCharsets.UTF_8.name());
        serializer.startDocument(null, true);
        serializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
        writeListXml(val, null, serializer);
        serializer.endDocument();
    }

    public static final void writeMapXml(Map val, String name, XmlSerializer out) throws XmlPullParserException, IOException {
        writeMapXml(val, name, out, null);
    }

    public static final void writeMapXml(Map val, String name, XmlSerializer out, WriteMapCallback callback) throws XmlPullParserException, IOException {
        if (val == null) {
            out.startTag(null, "null");
            out.endTag(null, "null");
            return;
        }
        out.startTag(null, "map");
        if (name != null) {
            out.attribute(null, WallpaperTileInfo.KEY_NAME, name);
        }
        writeMapXml(val, out, callback);
        out.endTag(null, "map");
    }

    public static final void writeMapXml(Map val, XmlSerializer out, WriteMapCallback callback) throws XmlPullParserException, IOException {
        if (val != null) {
            Set<Map.Entry> s = val.entrySet();
            for (Map.Entry e : s) {
                writeValueXml(e.getValue(), (String) e.getKey(), out, callback);
            }
        }
    }

    public static final void writeListXml(List val, String name, XmlSerializer out) throws XmlPullParserException, IOException {
        if (val == null) {
            out.startTag(null, "null");
            out.endTag(null, "null");
            return;
        }
        out.startTag(null, "list");
        if (name != null) {
            out.attribute(null, WallpaperTileInfo.KEY_NAME, name);
        }
        int N = val.size();
        for (int i = 0; i < N; i++) {
            writeValueXml(val.get(i), null, out);
        }
        out.endTag(null, "list");
    }

    public static final void writeSetXml(Set val, String name, XmlSerializer out) throws XmlPullParserException, IOException {
        if (val == null) {
            out.startTag(null, "null");
            out.endTag(null, "null");
            return;
        }
        out.startTag(null, "set");
        if (name != null) {
            out.attribute(null, WallpaperTileInfo.KEY_NAME, name);
        }
        for (Object v : val) {
            writeValueXml(v, null, out);
        }
        out.endTag(null, "set");
    }

    public static final void writeByteArrayXml(byte[] val, String name, XmlSerializer out) throws XmlPullParserException, IOException {
        if (val == null) {
            out.startTag(null, "null");
            out.endTag(null, "null");
            return;
        }
        out.startTag(null, "byte-array");
        if (name != null) {
            out.attribute(null, WallpaperTileInfo.KEY_NAME, name);
        }
        int N = val.length;
        out.attribute(null, "num", Integer.toString(N));
        StringBuilder sb = new StringBuilder(val.length * 2);
        for (int b : val) {
            int h = b >> 4;
            sb.append(h >= 10 ? (h + 97) - 10 : h + 48);
            int h2 = b & 255;
            sb.append(h2 >= 10 ? (h2 + 97) - 10 : h2 + 48);
        }
        out.text(sb.toString());
        out.endTag(null, "byte-array");
    }

    public static final void writeIntArrayXml(int[] val, String name, XmlSerializer out) throws XmlPullParserException, IOException {
        if (val == null) {
            out.startTag(null, "null");
            out.endTag(null, "null");
            return;
        }
        out.startTag(null, "int-array");
        if (name != null) {
            out.attribute(null, WallpaperTileInfo.KEY_NAME, name);
        }
        int N = val.length;
        out.attribute(null, "num", Integer.toString(N));
        for (int i : val) {
            out.startTag(null, DynamicIconItemBaseConfig.KEY_ITEM);
            out.attribute(null, "value", Integer.toString(i));
            out.endTag(null, DynamicIconItemBaseConfig.KEY_ITEM);
        }
        out.endTag(null, "int-array");
    }

    public static final void writeLongArrayXml(long[] val, String name, XmlSerializer out) throws XmlPullParserException, IOException {
        if (val == null) {
            out.startTag(null, "null");
            out.endTag(null, "null");
            return;
        }
        out.startTag(null, "long-array");
        if (name != null) {
            out.attribute(null, WallpaperTileInfo.KEY_NAME, name);
        }
        int N = val.length;
        out.attribute(null, "num", Integer.toString(N));
        for (long j : val) {
            out.startTag(null, DynamicIconItemBaseConfig.KEY_ITEM);
            out.attribute(null, "value", Long.toString(j));
            out.endTag(null, DynamicIconItemBaseConfig.KEY_ITEM);
        }
        out.endTag(null, "long-array");
    }

    public static final void writeDoubleArrayXml(double[] val, String name, XmlSerializer out) throws XmlPullParserException, IOException {
        if (val == null) {
            out.startTag(null, "null");
            out.endTag(null, "null");
            return;
        }
        out.startTag(null, "double-array");
        if (name != null) {
            out.attribute(null, WallpaperTileInfo.KEY_NAME, name);
        }
        int N = val.length;
        out.attribute(null, "num", Integer.toString(N));
        for (double d : val) {
            out.startTag(null, DynamicIconItemBaseConfig.KEY_ITEM);
            out.attribute(null, "value", Double.toString(d));
            out.endTag(null, DynamicIconItemBaseConfig.KEY_ITEM);
        }
        out.endTag(null, "double-array");
    }

    public static final void writeStringArrayXml(String[] val, String name, XmlSerializer out) throws XmlPullParserException, IOException {
        if (val == null) {
            out.startTag(null, "null");
            out.endTag(null, "null");
            return;
        }
        out.startTag(null, "string-array");
        if (name != null) {
            out.attribute(null, WallpaperTileInfo.KEY_NAME, name);
        }
        int N = val.length;
        out.attribute(null, "num", Integer.toString(N));
        for (String str : val) {
            out.startTag(null, DynamicIconItemBaseConfig.KEY_ITEM);
            out.attribute(null, "value", str);
            out.endTag(null, DynamicIconItemBaseConfig.KEY_ITEM);
        }
        out.endTag(null, "string-array");
    }

    public static final void writeBooleanArrayXml(boolean[] val, String name, XmlSerializer out) throws XmlPullParserException, IOException {
        if (val == null) {
            out.startTag(null, "null");
            out.endTag(null, "null");
            return;
        }
        out.startTag(null, "boolean-array");
        if (name != null) {
            out.attribute(null, WallpaperTileInfo.KEY_NAME, name);
        }
        int N = val.length;
        out.attribute(null, "num", Integer.toString(N));
        for (boolean z : val) {
            out.startTag(null, DynamicIconItemBaseConfig.KEY_ITEM);
            out.attribute(null, "value", Boolean.toString(z));
            out.endTag(null, DynamicIconItemBaseConfig.KEY_ITEM);
        }
        out.endTag(null, "boolean-array");
    }

    public static final void writeValueXml(Object v, String name, XmlSerializer out) throws XmlPullParserException, IOException {
        writeValueXml(v, name, out, null);
    }

    private static final void writeValueXml(Object v, String name, XmlSerializer out, WriteMapCallback callback) throws XmlPullParserException, IOException {
        String typeStr;
        if (v == null) {
            out.startTag(null, "null");
            if (name != null) {
                out.attribute(null, WallpaperTileInfo.KEY_NAME, name);
            }
            out.endTag(null, "null");
            return;
        }
        if (v instanceof String) {
            out.startTag(null, "string");
            if (name != null) {
                out.attribute(null, WallpaperTileInfo.KEY_NAME, name);
            }
            out.text(v.toString());
            out.endTag(null, "string");
            return;
        }
        if (v instanceof Integer) {
            typeStr = "int";
        } else if (v instanceof Long) {
            typeStr = "long";
        } else if (v instanceof Float) {
            typeStr = "float";
        } else if (v instanceof Double) {
            typeStr = "double";
        } else if (v instanceof Boolean) {
            typeStr = "boolean";
        } else {
            if (v instanceof byte[]) {
                writeByteArrayXml((byte[]) v, name, out);
                return;
            }
            if (v instanceof int[]) {
                writeIntArrayXml((int[]) v, name, out);
                return;
            }
            if (v instanceof long[]) {
                writeLongArrayXml((long[]) v, name, out);
                return;
            }
            if (v instanceof double[]) {
                writeDoubleArrayXml((double[]) v, name, out);
                return;
            }
            if (v instanceof String[]) {
                writeStringArrayXml((String[]) v, name, out);
                return;
            }
            if (v instanceof boolean[]) {
                writeBooleanArrayXml((boolean[]) v, name, out);
                return;
            }
            if (v instanceof Map) {
                writeMapXml((Map) v, name, out);
                return;
            }
            if (v instanceof List) {
                writeListXml((List) v, name, out);
                return;
            }
            if (v instanceof Set) {
                writeSetXml((Set) v, name, out);
                return;
            }
            if (v instanceof CharSequence) {
                out.startTag(null, "string");
                if (name != null) {
                    out.attribute(null, WallpaperTileInfo.KEY_NAME, name);
                }
                out.text(v.toString());
                out.endTag(null, "string");
                return;
            }
            if (callback != null) {
                callback.writeUnknownObject(v, name, out);
                return;
            }
            throw new RuntimeException("writeValueXml: unable to write value " + v);
        }
        out.startTag(null, typeStr);
        if (name != null) {
            out.attribute(null, WallpaperTileInfo.KEY_NAME, name);
        }
        out.attribute(null, "value", v.toString());
        out.endTag(null, typeStr);
    }

    public static final HashMap<String, ?> readMapXml(InputStream in) throws XmlPullParserException, IOException {
        XmlPullParser parser = Xml.newPullParser();
        parser.setInput(in, StandardCharsets.UTF_8.name());
        return (HashMap) readValueXml(parser, new String[1]);
    }

    public static final ArrayList readListXml(InputStream in) throws XmlPullParserException, IOException {
        XmlPullParser parser = Xml.newPullParser();
        parser.setInput(in, StandardCharsets.UTF_8.name());
        return (ArrayList) readValueXml(parser, new String[1]);
    }

    public static final HashSet readSetXml(InputStream in) throws XmlPullParserException, IOException {
        XmlPullParser parser = Xml.newPullParser();
        parser.setInput(in, null);
        return (HashSet) readValueXml(parser, new String[1]);
    }

    public static final HashMap<String, ?> readThisMapXml(XmlPullParser parser, String endTag, String[] name) throws XmlPullParserException, IOException {
        return readThisMapXml(parser, endTag, name, null);
    }

    public static final HashMap<String, ?> readThisMapXml(XmlPullParser parser, String endTag, String[] name, ReadMapCallback callback) throws XmlPullParserException, IOException {
        HashMap<String, Object> map = new HashMap<>();
        int eventType = parser.getEventType();
        do {
            if (eventType == 2) {
                Object val = readThisValueXml(parser, name, callback, false);
                map.put(name[0], val);
            } else if (eventType == 3) {
                if (parser.getName().equals(endTag)) {
                    return map;
                }
                throw new XmlPullParserException("Expected " + endTag + " end tag at: " + parser.getName());
            }
            eventType = parser.next();
        } while (eventType != 1);
        throw new XmlPullParserException("Document ended before " + endTag + " end tag");
    }

    public static final ArrayMap<String, ?> readThisArrayMapXml(XmlPullParser parser, String endTag, String[] name, ReadMapCallback callback) throws XmlPullParserException, IOException {
        ArrayMap<String, Object> map = new ArrayMap<>();
        int eventType = parser.getEventType();
        do {
            if (eventType == 2) {
                Object val = readThisValueXml(parser, name, callback, true);
                map.put(name[0], val);
            } else if (eventType == 3) {
                if (parser.getName().equals(endTag)) {
                    return map;
                }
                throw new XmlPullParserException("Expected " + endTag + " end tag at: " + parser.getName());
            }
            eventType = parser.next();
        } while (eventType != 1);
        throw new XmlPullParserException("Document ended before " + endTag + " end tag");
    }

    public static final ArrayList readThisListXml(XmlPullParser parser, String endTag, String[] name) throws XmlPullParserException, IOException {
        return readThisListXml(parser, endTag, name, null, false);
    }

    private static final ArrayList readThisListXml(XmlPullParser parser, String endTag, String[] name, ReadMapCallback callback, boolean arrayMap) throws XmlPullParserException, IOException {
        ArrayList list = new ArrayList();
        int eventType = parser.getEventType();
        do {
            if (eventType == 2) {
                Object val = readThisValueXml(parser, name, callback, arrayMap);
                list.add(val);
            } else if (eventType == 3) {
                if (parser.getName().equals(endTag)) {
                    return list;
                }
                throw new XmlPullParserException("Expected " + endTag + " end tag at: " + parser.getName());
            }
            eventType = parser.next();
        } while (eventType != 1);
        throw new XmlPullParserException("Document ended before " + endTag + " end tag");
    }

    public static final HashSet readThisSetXml(XmlPullParser parser, String endTag, String[] name) throws XmlPullParserException, IOException {
        return readThisSetXml(parser, endTag, name, null, false);
    }

    private static final HashSet readThisSetXml(XmlPullParser parser, String endTag, String[] name, ReadMapCallback callback, boolean arrayMap) throws XmlPullParserException, IOException {
        HashSet set = new HashSet();
        int eventType = parser.getEventType();
        do {
            if (eventType == 2) {
                Object val = readThisValueXml(parser, name, callback, arrayMap);
                set.add(val);
            } else if (eventType == 3) {
                if (parser.getName().equals(endTag)) {
                    return set;
                }
                throw new XmlPullParserException("Expected " + endTag + " end tag at: " + parser.getName());
            }
            eventType = parser.next();
        } while (eventType != 1);
        throw new XmlPullParserException("Document ended before " + endTag + " end tag");
    }

    public static final int[] readThisIntArrayXml(XmlPullParser parser, String endTag, String[] name) throws XmlPullParserException, IOException {
        try {
            int num = Integer.parseInt(parser.getAttributeValue(null, "num"));
            parser.next();
            int[] array = new int[num];
            int i = 0;
            int eventType = parser.getEventType();
            do {
                if (eventType == 2) {
                    if (parser.getName().equals(DynamicIconItemBaseConfig.KEY_ITEM)) {
                        try {
                            array[i] = Integer.parseInt(parser.getAttributeValue(null, "value"));
                        } catch (NullPointerException e) {
                            throw new XmlPullParserException("Need value attribute in item");
                        } catch (NumberFormatException e2) {
                            throw new XmlPullParserException("Not a number in value attribute in item");
                        }
                    } else {
                        throw new XmlPullParserException("Expected item tag at: " + parser.getName());
                    }
                } else if (eventType == 3) {
                    if (parser.getName().equals(endTag)) {
                        return array;
                    }
                    if (parser.getName().equals(DynamicIconItemBaseConfig.KEY_ITEM)) {
                        i++;
                    } else {
                        throw new XmlPullParserException("Expected " + endTag + " end tag at: " + parser.getName());
                    }
                }
                eventType = parser.next();
            } while (eventType != 1);
            throw new XmlPullParserException("Document ended before " + endTag + " end tag");
        } catch (NullPointerException e3) {
            throw new XmlPullParserException("Need num attribute in byte-array");
        } catch (NumberFormatException e4) {
            throw new XmlPullParserException("Not a number in num attribute in byte-array");
        }
    }

    public static final long[] readThisLongArrayXml(XmlPullParser parser, String endTag, String[] name) throws XmlPullParserException, IOException {
        try {
            int num = Integer.parseInt(parser.getAttributeValue(null, "num"));
            parser.next();
            long[] array = new long[num];
            int i = 0;
            int eventType = parser.getEventType();
            do {
                if (eventType == 2) {
                    if (parser.getName().equals(DynamicIconItemBaseConfig.KEY_ITEM)) {
                        try {
                            array[i] = Long.parseLong(parser.getAttributeValue(null, "value"));
                        } catch (NullPointerException e) {
                            throw new XmlPullParserException("Need value attribute in item");
                        } catch (NumberFormatException e2) {
                            throw new XmlPullParserException("Not a number in value attribute in item");
                        }
                    } else {
                        throw new XmlPullParserException("Expected item tag at: " + parser.getName());
                    }
                } else if (eventType == 3) {
                    if (parser.getName().equals(endTag)) {
                        return array;
                    }
                    if (parser.getName().equals(DynamicIconItemBaseConfig.KEY_ITEM)) {
                        i++;
                    } else {
                        throw new XmlPullParserException("Expected " + endTag + " end tag at: " + parser.getName());
                    }
                }
                eventType = parser.next();
            } while (eventType != 1);
            throw new XmlPullParserException("Document ended before " + endTag + " end tag");
        } catch (NullPointerException e3) {
            throw new XmlPullParserException("Need num attribute in long-array");
        } catch (NumberFormatException e4) {
            throw new XmlPullParserException("Not a number in num attribute in long-array");
        }
    }

    public static final double[] readThisDoubleArrayXml(XmlPullParser parser, String endTag, String[] name) throws XmlPullParserException, IOException {
        try {
            int num = Integer.parseInt(parser.getAttributeValue(null, "num"));
            parser.next();
            double[] array = new double[num];
            int i = 0;
            int eventType = parser.getEventType();
            do {
                if (eventType == 2) {
                    if (parser.getName().equals(DynamicIconItemBaseConfig.KEY_ITEM)) {
                        try {
                            array[i] = Double.parseDouble(parser.getAttributeValue(null, "value"));
                        } catch (NullPointerException e) {
                            throw new XmlPullParserException("Need value attribute in item");
                        } catch (NumberFormatException e2) {
                            throw new XmlPullParserException("Not a number in value attribute in item");
                        }
                    } else {
                        throw new XmlPullParserException("Expected item tag at: " + parser.getName());
                    }
                } else if (eventType == 3) {
                    if (parser.getName().equals(endTag)) {
                        return array;
                    }
                    if (parser.getName().equals(DynamicIconItemBaseConfig.KEY_ITEM)) {
                        i++;
                    } else {
                        throw new XmlPullParserException("Expected " + endTag + " end tag at: " + parser.getName());
                    }
                }
                eventType = parser.next();
            } while (eventType != 1);
            throw new XmlPullParserException("Document ended before " + endTag + " end tag");
        } catch (NullPointerException e3) {
            throw new XmlPullParserException("Need num attribute in double-array");
        } catch (NumberFormatException e4) {
            throw new XmlPullParserException("Not a number in num attribute in double-array");
        }
    }

    public static final String[] readThisStringArrayXml(XmlPullParser parser, String endTag, String[] name) throws XmlPullParserException, IOException {
        try {
            int num = Integer.parseInt(parser.getAttributeValue(null, "num"));
            parser.next();
            String[] array = new String[num];
            int i = 0;
            int eventType = parser.getEventType();
            do {
                if (eventType == 2) {
                    if (parser.getName().equals(DynamicIconItemBaseConfig.KEY_ITEM)) {
                        try {
                            array[i] = parser.getAttributeValue(null, "value");
                        } catch (NullPointerException e) {
                            throw new XmlPullParserException("Need value attribute in item");
                        } catch (NumberFormatException e2) {
                            throw new XmlPullParserException("Not a number in value attribute in item");
                        }
                    } else {
                        throw new XmlPullParserException("Expected item tag at: " + parser.getName());
                    }
                } else if (eventType == 3) {
                    if (parser.getName().equals(endTag)) {
                        return array;
                    }
                    if (parser.getName().equals(DynamicIconItemBaseConfig.KEY_ITEM)) {
                        i++;
                    } else {
                        throw new XmlPullParserException("Expected " + endTag + " end tag at: " + parser.getName());
                    }
                }
                eventType = parser.next();
            } while (eventType != 1);
            throw new XmlPullParserException("Document ended before " + endTag + " end tag");
        } catch (NullPointerException e3) {
            throw new XmlPullParserException("Need num attribute in string-array");
        } catch (NumberFormatException e4) {
            throw new XmlPullParserException("Not a number in num attribute in string-array");
        }
    }

    public static final boolean[] readThisBooleanArrayXml(XmlPullParser parser, String endTag, String[] name) throws XmlPullParserException, IOException {
        try {
            int num = Integer.parseInt(parser.getAttributeValue(null, "num"));
            parser.next();
            boolean[] array = new boolean[num];
            int i = 0;
            int eventType = parser.getEventType();
            do {
                if (eventType == 2) {
                    if (parser.getName().equals(DynamicIconItemBaseConfig.KEY_ITEM)) {
                        try {
                            array[i] = Boolean.valueOf(parser.getAttributeValue(null, "value")).booleanValue();
                        } catch (NullPointerException e) {
                            throw new XmlPullParserException("Need value attribute in item");
                        } catch (NumberFormatException e2) {
                            throw new XmlPullParserException("Not a number in value attribute in item");
                        }
                    } else {
                        throw new XmlPullParserException("Expected item tag at: " + parser.getName());
                    }
                } else if (eventType == 3) {
                    if (parser.getName().equals(endTag)) {
                        return array;
                    }
                    if (parser.getName().equals(DynamicIconItemBaseConfig.KEY_ITEM)) {
                        i++;
                    } else {
                        throw new XmlPullParserException("Expected " + endTag + " end tag at: " + parser.getName());
                    }
                }
                eventType = parser.next();
            } while (eventType != 1);
            throw new XmlPullParserException("Document ended before " + endTag + " end tag");
        } catch (NullPointerException e3) {
            throw new XmlPullParserException("Need num attribute in string-array");
        } catch (NumberFormatException e4) {
            throw new XmlPullParserException("Not a number in num attribute in string-array");
        }
    }

    public static final Object readValueXml(XmlPullParser parser, String[] name) throws XmlPullParserException, IOException {
        int eventType = parser.getEventType();
        while (eventType != 2) {
            if (eventType == 3) {
                throw new XmlPullParserException("Unexpected end tag at: " + parser.getName());
            }
            if (eventType == 4) {
                throw new XmlPullParserException("Unexpected text: " + parser.getText());
            }
            eventType = parser.next();
            if (eventType == 1) {
                throw new XmlPullParserException("Unexpected end of document");
            }
        }
        return readThisValueXml(parser, name, null, false);
    }

    private static final Object readThisValueXml(XmlPullParser parser, String[] name, ReadMapCallback callback, boolean arrayMap) throws XmlPullParserException, IOException {
        Object res;
        Object res2;
        int eventType;
        String valueName = parser.getAttributeValue(null, WallpaperTileInfo.KEY_NAME);
        String tagName = parser.getName();
        if (tagName.equals("null")) {
            res = null;
        } else if (tagName.equals("string")) {
            String value = "";
            while (true) {
                int eventType2 = parser.next();
                if (eventType2 != 1) {
                    if (eventType2 == 3) {
                        if (parser.getName().equals("string")) {
                            name[0] = valueName;
                            return value;
                        }
                        throw new XmlPullParserException("Unexpected end tag in <string>: " + parser.getName());
                    }
                    if (eventType2 == 4) {
                        value = value + parser.getText();
                    } else if (eventType2 == 2) {
                        throw new XmlPullParserException("Unexpected start tag in <string>: " + parser.getName());
                    }
                } else {
                    throw new XmlPullParserException("Unexpected end of document in <string>");
                }
            }
        } else {
            res = readThisPrimitiveValueXml(parser, tagName);
            if (res == null) {
                if (tagName.equals("int-array")) {
                    Object res3 = readThisIntArrayXml(parser, "int-array", name);
                    name[0] = valueName;
                    return res3;
                }
                if (tagName.equals("long-array")) {
                    Object res4 = readThisLongArrayXml(parser, "long-array", name);
                    name[0] = valueName;
                    return res4;
                }
                if (tagName.equals("double-array")) {
                    Object res5 = readThisDoubleArrayXml(parser, "double-array", name);
                    name[0] = valueName;
                    return res5;
                }
                if (tagName.equals("string-array")) {
                    Object res6 = readThisStringArrayXml(parser, "string-array", name);
                    name[0] = valueName;
                    return res6;
                }
                if (tagName.equals("boolean-array")) {
                    Object res7 = readThisBooleanArrayXml(parser, "boolean-array", name);
                    name[0] = valueName;
                    return res7;
                }
                if (tagName.equals("map")) {
                    parser.next();
                    if (arrayMap) {
                        res2 = readThisArrayMapXml(parser, "map", name, callback);
                    } else {
                        res2 = readThisMapXml(parser, "map", name, callback);
                    }
                    name[0] = valueName;
                    return res2;
                }
                if (tagName.equals("list")) {
                    parser.next();
                    Object res8 = readThisListXml(parser, "list", name, callback, arrayMap);
                    name[0] = valueName;
                    return res8;
                }
                if (tagName.equals("set")) {
                    parser.next();
                    Object res9 = readThisSetXml(parser, "set", name, callback, arrayMap);
                    name[0] = valueName;
                    return res9;
                }
                if (callback != null) {
                    Object res10 = callback.readThisUnknownObjectXml(parser, tagName);
                    name[0] = valueName;
                    return res10;
                }
                throw new XmlPullParserException("Unknown tag: " + tagName);
            }
        }
        do {
            eventType = parser.next();
            if (eventType != 1) {
                if (eventType == 3) {
                    if (parser.getName().equals(tagName)) {
                        name[0] = valueName;
                        return res;
                    }
                    throw new XmlPullParserException("Unexpected end tag in <" + tagName + ">: " + parser.getName());
                }
                if (eventType == 4) {
                    throw new XmlPullParserException("Unexpected text in <" + tagName + ">: " + parser.getName());
                }
            } else {
                throw new XmlPullParserException("Unexpected end of document in <" + tagName + ">");
            }
        } while (eventType != 2);
        throw new XmlPullParserException("Unexpected start tag in <" + tagName + ">: " + parser.getName());
    }

    private static final Object readThisPrimitiveValueXml(XmlPullParser parser, String tagName) throws XmlPullParserException, IOException {
        try {
            if (tagName.equals("int")) {
                return Integer.valueOf(Integer.parseInt(parser.getAttributeValue(null, "value")));
            }
            if (tagName.equals("long")) {
                return Long.valueOf(parser.getAttributeValue(null, "value"));
            }
            if (tagName.equals("float")) {
                return new Float(parser.getAttributeValue(null, "value"));
            }
            if (tagName.equals("double")) {
                return new Double(parser.getAttributeValue(null, "value"));
            }
            if (tagName.equals("boolean")) {
                return Boolean.valueOf(parser.getAttributeValue(null, "value"));
            }
            return null;
        } catch (NullPointerException e) {
            throw new XmlPullParserException("Need value attribute in <" + tagName + ">");
        } catch (NumberFormatException e2) {
            throw new XmlPullParserException("Not a number in value attribute in <" + tagName + ">");
        }
    }

    public static final void beginDocument(XmlPullParser parser, String firstElementName) throws XmlPullParserException, IOException {
        int type;
        do {
            type = parser.next();
            if (type == 2) {
                break;
            }
        } while (type != 1);
        if (type != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        if (!parser.getName().equals(firstElementName)) {
            throw new XmlPullParserException("Unexpected start tag: found " + parser.getName() + ", expected " + firstElementName);
        }
    }

    public static final void nextElement(XmlPullParser parser) throws XmlPullParserException, IOException {
        int type;
        do {
            type = parser.next();
            if (type == 2) {
                return;
            }
        } while (type != 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0010, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean nextElementWithin(org.xmlpull.v1.XmlPullParser r4, int r5) throws java.io.IOException, org.xmlpull.v1.XmlPullParserException {
        /*
            r1 = 1
        L1:
            int r0 = r4.next()
            if (r0 == r1) goto L10
            r2 = 3
            if (r0 != r2) goto L12
            int r2 = r4.getDepth()
            if (r2 != r5) goto L12
        L10:
            r1 = 0
        L11:
            return r1
        L12:
            r2 = 2
            if (r0 != r2) goto L1
            int r2 = r4.getDepth()
            int r3 = r5 + 1
            if (r2 != r3) goto L1
            goto L11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oneplus.lib.util.XmlUtils.nextElementWithin(org.xmlpull.v1.XmlPullParser, int):boolean");
    }

    public static int readIntAttribute(XmlPullParser in, String name, int defaultValue) {
        String value = in.getAttributeValue(null, name);
        try {
            int defaultValue2 = Integer.parseInt(value);
            return defaultValue2;
        } catch (NumberFormatException e) {
            return defaultValue;
        }
    }

    public static int readIntAttribute(XmlPullParser in, String name) throws IOException {
        String value = in.getAttributeValue(null, name);
        try {
            return Integer.parseInt(value);
        } catch (NumberFormatException e) {
            throw new ProtocolException("problem parsing " + name + "=" + value + " as int");
        }
    }

    public static void writeIntAttribute(XmlSerializer out, String name, int value) throws IOException {
        out.attribute(null, name, Integer.toString(value));
    }

    public static long readLongAttribute(XmlPullParser in, String name, long defaultValue) {
        String value = in.getAttributeValue(null, name);
        try {
            long defaultValue2 = Long.parseLong(value);
            return defaultValue2;
        } catch (NumberFormatException e) {
            return defaultValue;
        }
    }

    public static long readLongAttribute(XmlPullParser in, String name) throws IOException {
        String value = in.getAttributeValue(null, name);
        try {
            return Long.parseLong(value);
        } catch (NumberFormatException e) {
            throw new ProtocolException("problem parsing " + name + "=" + value + " as long");
        }
    }

    public static void writeLongAttribute(XmlSerializer out, String name, long value) throws IOException {
        out.attribute(null, name, Long.toString(value));
    }

    public static float readFloatAttribute(XmlPullParser in, String name) throws IOException {
        String value = in.getAttributeValue(null, name);
        try {
            return Float.parseFloat(value);
        } catch (NumberFormatException e) {
            throw new ProtocolException("problem parsing " + name + "=" + value + " as long");
        }
    }

    public static void writeFloatAttribute(XmlSerializer out, String name, float value) throws IOException {
        out.attribute(null, name, Float.toString(value));
    }

    public static boolean readBooleanAttribute(XmlPullParser in, String name) {
        String value = in.getAttributeValue(null, name);
        return Boolean.parseBoolean(value);
    }

    public static boolean readBooleanAttribute(XmlPullParser in, String name, boolean defaultValue) {
        String value = in.getAttributeValue(null, name);
        if (value == null) {
            return defaultValue;
        }
        boolean defaultValue2 = Boolean.parseBoolean(value);
        return defaultValue2;
    }

    public static void writeBooleanAttribute(XmlSerializer out, String name, boolean value) throws IOException {
        out.attribute(null, name, Boolean.toString(value));
    }

    public static Uri readUriAttribute(XmlPullParser in, String name) {
        String value = in.getAttributeValue(null, name);
        if (value != null) {
            return Uri.parse(value);
        }
        return null;
    }

    public static void writeUriAttribute(XmlSerializer out, String name, Uri value) throws IOException {
        if (value != null) {
            out.attribute(null, name, value.toString());
        }
    }

    public static String readStringAttribute(XmlPullParser in, String name) {
        return in.getAttributeValue(null, name);
    }

    public static void writeStringAttribute(XmlSerializer out, String name, String value) throws IOException {
        if (value != null) {
            out.attribute(null, name, value);
        }
    }

    public static byte[] readByteArrayAttribute(XmlPullParser in, String name) {
        String value = in.getAttributeValue(null, name);
        if (value != null) {
            return Base64.decode(value, 0);
        }
        return null;
    }

    public static void writeByteArrayAttribute(XmlSerializer out, String name, byte[] value) throws IOException {
        if (value != null) {
            out.attribute(null, name, Base64.encodeToString(value, 0));
        }
    }

    public static Bitmap readBitmapAttribute(XmlPullParser in, String name) {
        byte[] value = readByteArrayAttribute(in, name);
        if (value != null) {
            return BitmapFactory.decodeByteArray(value, 0, value.length);
        }
        return null;
    }

    @Deprecated
    public static void writeBitmapAttribute(XmlSerializer out, String name, Bitmap value) throws IOException {
        if (value != null) {
            ByteArrayOutputStream os = new ByteArrayOutputStream();
            value.compress(Bitmap.CompressFormat.PNG, 90, os);
            writeByteArrayAttribute(out, name, os.toByteArray());
        }
    }
}
