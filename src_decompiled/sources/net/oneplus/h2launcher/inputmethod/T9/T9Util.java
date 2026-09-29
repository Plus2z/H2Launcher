package net.oneplus.h2launcher.inputmethod.T9;

/* loaded from: classes.dex */
public class T9Util {
    public static char getT9Number(char alphabet) {
        switch (alphabet) {
            case '0':
                return '0';
            case '1':
                return '1';
            case '2':
            case '3':
            case '4':
            case '5':
            case '6':
            case '7':
            case '8':
            case '9':
            case ':':
            case ';':
            case '<':
            case '=':
            case '>':
            case '?':
            case '@':
            case '[':
            case '\\':
            case ']':
            case '^':
            case '_':
            case '`':
            default:
                return alphabet;
            case 'A':
            case 'B':
            case 'C':
            case 'a':
            case 'b':
            case 'c':
                return '2';
            case 'D':
            case 'E':
            case 'F':
            case 'd':
            case 'e':
            case 'f':
                return '3';
            case 'G':
            case 'H':
            case 'I':
            case 'g':
            case 'h':
            case 'i':
                return '4';
            case 'J':
            case 'K':
            case 'L':
            case 'j':
            case 'k':
            case 'l':
                return '5';
            case 'M':
            case 'N':
            case 'O':
            case 'm':
            case 'n':
            case 'o':
                return '6';
            case 'P':
            case 'Q':
            case 'R':
            case 'S':
            case 'p':
            case 'q':
            case 'r':
            case 's':
                return '7';
            case 'T':
            case 'U':
            case 'V':
            case 't':
            case 'u':
            case 'v':
                return '8';
            case 'W':
            case 'X':
            case 'Y':
            case 'Z':
            case 'w':
            case 'x':
            case 'y':
            case 'z':
                return '9';
        }
    }
}
