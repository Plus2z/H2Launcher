package com.google.protobuf.nano;

import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import net.oneplus.h2launcher.dynamicicon.DynamicIconItemBaseConfig;

/* loaded from: classes.dex */
public final class MessageNanoPrinter {
    private static final String INDENT = "  ";
    private static final int MAX_STRING_LEN = 200;

    private MessageNanoPrinter() {
    }

    public static <T extends MessageNano> String print(T message) {
        if (message == null) {
            return "";
        }
        StringBuffer buf = new StringBuffer();
        try {
            print(null, message, new StringBuffer(), buf);
            return buf.toString();
        } catch (IllegalAccessException e) {
            String valueOf = String.valueOf(e.getMessage());
            return valueOf.length() != 0 ? "Error printing proto: ".concat(valueOf) : new String("Error printing proto: ");
        } catch (InvocationTargetException e2) {
            String valueOf2 = String.valueOf(e2.getMessage());
            return valueOf2.length() != 0 ? "Error printing proto: ".concat(valueOf2) : new String("Error printing proto: ");
        }
    }

    private static void print(String identifier, Object object, StringBuffer indentBuf, StringBuffer buf) throws IllegalAccessException, InvocationTargetException {
        if (object != null) {
            if (object instanceof MessageNano) {
                int origIndentBufLength = indentBuf.length();
                if (identifier != null) {
                    buf.append(indentBuf).append(deCamelCaseify(identifier)).append(" <\n");
                    indentBuf.append(INDENT);
                }
                Class<?> clazz = object.getClass();
                Field[] arr$ = clazz.getFields();
                for (Field field : arr$) {
                    int modifiers = field.getModifiers();
                    String fieldName = field.getName();
                    if ((modifiers & 1) == 1 && (modifiers & 8) != 8 && !fieldName.startsWith(EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR) && !fieldName.endsWith(EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR)) {
                        Class<?> fieldType = field.getType();
                        Object value = field.get(object);
                        if (fieldType.isArray()) {
                            Class<?> arrayType = fieldType.getComponentType();
                            if (arrayType == Byte.TYPE) {
                                print(fieldName, value, indentBuf, buf);
                            } else {
                                int len = value == null ? 0 : Array.getLength(value);
                                for (int i = 0; i < len; i++) {
                                    Object elem = Array.get(value, i);
                                    print(fieldName, elem, indentBuf, buf);
                                }
                            }
                        } else {
                            print(fieldName, value, indentBuf, buf);
                        }
                    }
                }
                Method[] arr$2 = clazz.getMethods();
                for (Method method : arr$2) {
                    String name = method.getName();
                    if (name.startsWith("set")) {
                        String subfieldName = name.substring(3);
                        try {
                            String valueOf = String.valueOf(subfieldName);
                            Method hazzer = clazz.getMethod(valueOf.length() != 0 ? "has".concat(valueOf) : new String("has"), new Class[0]);
                            if (((Boolean) hazzer.invoke(object, new Object[0])).booleanValue()) {
                                try {
                                    String valueOf2 = String.valueOf(subfieldName);
                                    Method getter = clazz.getMethod(valueOf2.length() != 0 ? "get".concat(valueOf2) : new String("get"), new Class[0]);
                                    print(subfieldName, getter.invoke(object, new Object[0]), indentBuf, buf);
                                } catch (NoSuchMethodException e) {
                                }
                            }
                        } catch (NoSuchMethodException e2) {
                        }
                    }
                }
                if (identifier != null) {
                    indentBuf.setLength(origIndentBufLength);
                    buf.append(indentBuf).append(">\n");
                    return;
                }
                return;
            }
            if (object instanceof Map) {
                Map<?, ?> map = (Map) object;
                String identifier2 = deCamelCaseify(identifier);
                for (Map.Entry<?, ?> entry : map.entrySet()) {
                    buf.append(indentBuf).append(identifier2).append(" <\n");
                    int origIndentBufLength2 = indentBuf.length();
                    indentBuf.append(INDENT);
                    print(DynamicIconItemBaseConfig.KEY_KEY, entry.getKey(), indentBuf, buf);
                    print("value", entry.getValue(), indentBuf, buf);
                    indentBuf.setLength(origIndentBufLength2);
                    buf.append(indentBuf).append(">\n");
                }
                return;
            }
            buf.append(indentBuf).append(deCamelCaseify(identifier)).append(": ");
            if (object instanceof String) {
                String stringMessage = sanitizeString((String) object);
                buf.append("\"").append(stringMessage).append("\"");
            } else if (object instanceof byte[]) {
                appendQuotedBytes((byte[]) object, buf);
            } else {
                buf.append(object);
            }
            buf.append("\n");
        }
    }

    private static String deCamelCaseify(String identifier) {
        StringBuffer out = new StringBuffer();
        for (int i = 0; i < identifier.length(); i++) {
            char currentChar = identifier.charAt(i);
            if (i == 0) {
                out.append(Character.toLowerCase(currentChar));
            } else if (Character.isUpperCase(currentChar)) {
                out.append('_').append(Character.toLowerCase(currentChar));
            } else {
                out.append(currentChar);
            }
        }
        return out.toString();
    }

    private static String sanitizeString(String str) {
        if (!str.startsWith("http") && str.length() > 200) {
            str = String.valueOf(str.substring(0, 200)).concat("[...]");
        }
        return escapeString(str);
    }

    private static String escapeString(String str) {
        int strLen = str.length();
        StringBuilder b = new StringBuilder(strLen);
        for (int i = 0; i < strLen; i++) {
            char original = str.charAt(i);
            if (original >= ' ' && original <= '~' && original != '\"' && original != '\'') {
                b.append(original);
            } else {
                b.append(String.format("\\u%04x", Integer.valueOf(original)));
            }
        }
        return b.toString();
    }

    private static void appendQuotedBytes(byte[] bytes, StringBuffer builder) {
        if (bytes == null) {
            builder.append("\"\"");
            return;
        }
        builder.append('\"');
        for (byte b : bytes) {
            int ch = b & 255;
            if (ch == 92 || ch == 34) {
                builder.append('\\').append((char) ch);
            } else if (ch >= 32 && ch < 127) {
                builder.append((char) ch);
            } else {
                builder.append(String.format("\\%03o", Integer.valueOf(ch)));
            }
        }
        builder.append('\"');
    }
}
