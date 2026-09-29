package com.oneplus.lib.preference;

/* loaded from: classes.dex */
public class CharSequences {
    public static CharSequence forAsciiBytes(final byte[] bytes) {
        return new CharSequence() { // from class: com.oneplus.lib.preference.CharSequences.1
            @Override // java.lang.CharSequence
            public char charAt(int index) {
                return (char) bytes[index];
            }

            @Override // java.lang.CharSequence
            public int length() {
                return bytes.length;
            }

            @Override // java.lang.CharSequence
            public CharSequence subSequence(int start, int end) {
                return CharSequences.forAsciiBytes(bytes, start, end);
            }

            @Override // java.lang.CharSequence
            public String toString() {
                return new String(bytes);
            }
        };
    }

    public static CharSequence forAsciiBytes(final byte[] bytes, final int start, final int end) {
        validate(start, end, bytes.length);
        return new CharSequence() { // from class: com.oneplus.lib.preference.CharSequences.2
            @Override // java.lang.CharSequence
            public char charAt(int index) {
                return (char) bytes[start + index];
            }

            @Override // java.lang.CharSequence
            public int length() {
                return end - start;
            }

            @Override // java.lang.CharSequence
            public CharSequence subSequence(int newStart, int newEnd) {
                int newStart2 = newStart - start;
                int newEnd2 = newEnd - start;
                CharSequences.validate(newStart2, newEnd2, length());
                return CharSequences.forAsciiBytes(bytes, newStart2, newEnd2);
            }

            @Override // java.lang.CharSequence
            public String toString() {
                return new String(bytes, start, length());
            }
        };
    }

    static void validate(int start, int end, int length) {
        if (start < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (end < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (end > length) {
            throw new IndexOutOfBoundsException();
        }
        if (start > end) {
            throw new IndexOutOfBoundsException();
        }
    }

    public static boolean equals(CharSequence a, CharSequence b) {
        if (a.length() != b.length()) {
            return false;
        }
        int length = a.length();
        for (int i = 0; i < length; i++) {
            if (a.charAt(i) != b.charAt(i)) {
                return false;
            }
        }
        return true;
    }

    public static int compareToIgnoreCase(CharSequence me, CharSequence another) {
        int myLen = me.length();
        int anotherLen = another.length();
        int end = myLen < anotherLen ? myLen : anotherLen;
        int anotherPos = 0;
        int myPos = 0;
        while (myPos < end) {
            int myPos2 = myPos + 1;
            int anotherPos2 = anotherPos + 1;
            int result = Character.toLowerCase(me.charAt(myPos)) - Character.toLowerCase(another.charAt(anotherPos));
            if (result != 0) {
                return result;
            }
            anotherPos = anotherPos2;
            myPos = myPos2;
        }
        return myLen - anotherLen;
    }
}
