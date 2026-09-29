package net.oneplus.h2launcher.backup;

import android.support.v4.media.TransportMediator;
import com.google.protobuf.nano.CodedInputByteBufferNano;
import com.google.protobuf.nano.CodedOutputByteBufferNano;
import com.google.protobuf.nano.InternalNano;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import com.google.protobuf.nano.MessageNano;
import com.google.protobuf.nano.WireFormatNano;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes.dex */
public interface BackupProtos {

    /* loaded from: classes.dex */
    public static final class Key extends MessageNano {
        private static volatile Key[] _emptyArray;
        public long checksum;
        public long id;
        public String name;
        public int type;

        /* loaded from: classes.dex */
        public interface Type {
            public static final int FAVORITE = 1;
            public static final int ICON = 3;
            public static final int SCREEN = 2;
            public static final int WIDGET = 4;
        }

        public static Key[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new Key[0];
                    }
                }
            }
            return _emptyArray;
        }

        public Key() {
            clear();
        }

        public Key clear() {
            this.type = 1;
            this.name = "";
            this.id = 0L;
            this.checksum = 0L;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano output) throws IOException {
            output.writeInt32(1, this.type);
            if (!this.name.equals("")) {
                output.writeString(2, this.name);
            }
            if (this.id != 0) {
                output.writeInt64(3, this.id);
            }
            if (this.checksum != 0) {
                output.writeInt64(4, this.checksum);
            }
            super.writeTo(output);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int size = super.computeSerializedSize() + CodedOutputByteBufferNano.computeInt32Size(1, this.type);
            if (!this.name.equals("")) {
                size += CodedOutputByteBufferNano.computeStringSize(2, this.name);
            }
            if (this.id != 0) {
                size += CodedOutputByteBufferNano.computeInt64Size(3, this.id);
            }
            if (this.checksum != 0) {
                return size + CodedOutputByteBufferNano.computeInt64Size(4, this.checksum);
            }
            return size;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public Key mergeFrom(CodedInputByteBufferNano input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        break;
                    case 8:
                        int value = input.readInt32();
                        switch (value) {
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                                this.type = value;
                                break;
                        }
                    case 18:
                        this.name = input.readString();
                        break;
                    case 24:
                        this.id = input.readInt64();
                        break;
                    case 32:
                        this.checksum = input.readInt64();
                        break;
                    default:
                        if (!WireFormatNano.parseUnknownField(input, tag)) {
                            break;
                        } else {
                            break;
                        }
                }
            }
            return this;
        }

        public static Key parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
            return (Key) MessageNano.mergeFrom(new Key(), data);
        }

        public static Key parseFrom(CodedInputByteBufferNano input) throws IOException {
            return new Key().mergeFrom(input);
        }
    }

    /* loaded from: classes.dex */
    public static final class CheckedMessage extends MessageNano {
        private static volatile CheckedMessage[] _emptyArray;
        public long checksum;
        public byte[] payload;

        public static CheckedMessage[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new CheckedMessage[0];
                    }
                }
            }
            return _emptyArray;
        }

        public CheckedMessage() {
            clear();
        }

        public CheckedMessage clear() {
            this.payload = WireFormatNano.EMPTY_BYTES;
            this.checksum = 0L;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano output) throws IOException {
            output.writeBytes(1, this.payload);
            output.writeInt64(2, this.checksum);
            super.writeTo(output);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int size = super.computeSerializedSize();
            return size + CodedOutputByteBufferNano.computeBytesSize(1, this.payload) + CodedOutputByteBufferNano.computeInt64Size(2, this.checksum);
        }

        @Override // com.google.protobuf.nano.MessageNano
        public CheckedMessage mergeFrom(CodedInputByteBufferNano input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        break;
                    case 10:
                        this.payload = input.readBytes();
                        break;
                    case 16:
                        this.checksum = input.readInt64();
                        break;
                    default:
                        if (!WireFormatNano.parseUnknownField(input, tag)) {
                            break;
                        } else {
                            break;
                        }
                }
            }
            return this;
        }

        public static CheckedMessage parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
            return (CheckedMessage) MessageNano.mergeFrom(new CheckedMessage(), data);
        }

        public static CheckedMessage parseFrom(CodedInputByteBufferNano input) throws IOException {
            return new CheckedMessage().mergeFrom(input);
        }
    }

    /* loaded from: classes.dex */
    public static final class DeviceProfieData extends MessageNano {
        private static volatile DeviceProfieData[] _emptyArray;
        public int allappsRank;
        public float desktopCols;
        public float desktopRows;
        public float hotseatCount;

        public static DeviceProfieData[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new DeviceProfieData[0];
                    }
                }
            }
            return _emptyArray;
        }

        public DeviceProfieData() {
            clear();
        }

        public DeviceProfieData clear() {
            this.desktopRows = 0.0f;
            this.desktopCols = 0.0f;
            this.hotseatCount = 0.0f;
            this.allappsRank = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano output) throws IOException {
            output.writeFloat(1, this.desktopRows);
            output.writeFloat(2, this.desktopCols);
            output.writeFloat(3, this.hotseatCount);
            output.writeInt32(4, this.allappsRank);
            super.writeTo(output);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int size = super.computeSerializedSize();
            return size + CodedOutputByteBufferNano.computeFloatSize(1, this.desktopRows) + CodedOutputByteBufferNano.computeFloatSize(2, this.desktopCols) + CodedOutputByteBufferNano.computeFloatSize(3, this.hotseatCount) + CodedOutputByteBufferNano.computeInt32Size(4, this.allappsRank);
        }

        @Override // com.google.protobuf.nano.MessageNano
        public DeviceProfieData mergeFrom(CodedInputByteBufferNano input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        break;
                    case 13:
                        this.desktopRows = input.readFloat();
                        break;
                    case 21:
                        this.desktopCols = input.readFloat();
                        break;
                    case 29:
                        this.hotseatCount = input.readFloat();
                        break;
                    case 32:
                        this.allappsRank = input.readInt32();
                        break;
                    default:
                        if (!WireFormatNano.parseUnknownField(input, tag)) {
                            break;
                        } else {
                            break;
                        }
                }
            }
            return this;
        }

        public static DeviceProfieData parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
            return (DeviceProfieData) MessageNano.mergeFrom(new DeviceProfieData(), data);
        }

        public static DeviceProfieData parseFrom(CodedInputByteBufferNano input) throws IOException {
            return new DeviceProfieData().mergeFrom(input);
        }
    }

    /* loaded from: classes.dex */
    public static final class Journal extends MessageNano {
        private static volatile Journal[] _emptyArray;
        public int appVersion;
        public int backupVersion;
        public long bytes;
        public Key[] key;
        public DeviceProfieData profile;
        public int rows;
        public long t;

        public static Journal[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new Journal[0];
                    }
                }
            }
            return _emptyArray;
        }

        public Journal() {
            clear();
        }

        public Journal clear() {
            this.appVersion = 0;
            this.t = 0L;
            this.bytes = 0L;
            this.rows = 0;
            this.key = Key.emptyArray();
            this.backupVersion = 1;
            this.profile = null;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano output) throws IOException {
            output.writeInt32(1, this.appVersion);
            output.writeInt64(2, this.t);
            if (this.bytes != 0) {
                output.writeInt64(3, this.bytes);
            }
            if (this.rows != 0) {
                output.writeInt32(4, this.rows);
            }
            if (this.key != null && this.key.length > 0) {
                for (int i = 0; i < this.key.length; i++) {
                    Key element = this.key[i];
                    if (element != null) {
                        output.writeMessage(5, element);
                    }
                }
            }
            if (this.backupVersion != 1) {
                output.writeInt32(6, this.backupVersion);
            }
            if (this.profile != null) {
                output.writeMessage(7, this.profile);
            }
            super.writeTo(output);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int size = super.computeSerializedSize() + CodedOutputByteBufferNano.computeInt32Size(1, this.appVersion) + CodedOutputByteBufferNano.computeInt64Size(2, this.t);
            if (this.bytes != 0) {
                size += CodedOutputByteBufferNano.computeInt64Size(3, this.bytes);
            }
            if (this.rows != 0) {
                size += CodedOutputByteBufferNano.computeInt32Size(4, this.rows);
            }
            if (this.key != null && this.key.length > 0) {
                for (int i = 0; i < this.key.length; i++) {
                    Key element = this.key[i];
                    if (element != null) {
                        size += CodedOutputByteBufferNano.computeMessageSize(5, element);
                    }
                }
            }
            if (this.backupVersion != 1) {
                size += CodedOutputByteBufferNano.computeInt32Size(6, this.backupVersion);
            }
            if (this.profile != null) {
                return size + CodedOutputByteBufferNano.computeMessageSize(7, this.profile);
            }
            return size;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public Journal mergeFrom(CodedInputByteBufferNano input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        break;
                    case 8:
                        this.appVersion = input.readInt32();
                        break;
                    case 16:
                        this.t = input.readInt64();
                        break;
                    case 24:
                        this.bytes = input.readInt64();
                        break;
                    case 32:
                        this.rows = input.readInt32();
                        break;
                    case 42:
                        int arrayLength = WireFormatNano.getRepeatedFieldArrayLength(input, 42);
                        int i = this.key == null ? 0 : this.key.length;
                        Key[] newArray = new Key[i + arrayLength];
                        if (i != 0) {
                            System.arraycopy(this.key, 0, newArray, 0, i);
                        }
                        while (i < newArray.length - 1) {
                            newArray[i] = new Key();
                            input.readMessage(newArray[i]);
                            input.readTag();
                            i++;
                        }
                        newArray[i] = new Key();
                        input.readMessage(newArray[i]);
                        this.key = newArray;
                        break;
                    case 48:
                        this.backupVersion = input.readInt32();
                        break;
                    case 58:
                        if (this.profile == null) {
                            this.profile = new DeviceProfieData();
                        }
                        input.readMessage(this.profile);
                        break;
                    default:
                        if (!WireFormatNano.parseUnknownField(input, tag)) {
                            break;
                        } else {
                            break;
                        }
                }
            }
            return this;
        }

        public static Journal parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
            return (Journal) MessageNano.mergeFrom(new Journal(), data);
        }

        public static Journal parseFrom(CodedInputByteBufferNano input) throws IOException {
            return new Journal().mergeFrom(input);
        }
    }

    /* loaded from: classes.dex */
    public static final class Favorite extends MessageNano {
        private static volatile Favorite[] _emptyArray;
        public int appWidgetId;
        public String appWidgetProvider;
        public int cellX;
        public int cellY;
        public int container;
        public int displayMode;
        public byte[] icon;
        public String iconPackage;
        public String iconResource;
        public int iconType;
        public long id;
        public String intent;
        public int itemType;
        public int rank;
        public int screen;
        public int spanX;
        public int spanY;
        public int targetType;
        public String title;
        public String uri;

        /* loaded from: classes.dex */
        public interface TargetType {
            public static final int TARGET_BROWSER = 4;
            public static final int TARGET_CAMERA = 6;
            public static final int TARGET_EMAIL = 3;
            public static final int TARGET_GALLERY = 5;
            public static final int TARGET_MESSENGER = 2;
            public static final int TARGET_NONE = 0;
            public static final int TARGET_PHONE = 1;
        }

        public static Favorite[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new Favorite[0];
                    }
                }
            }
            return _emptyArray;
        }

        public Favorite() {
            clear();
        }

        public Favorite clear() {
            this.id = 0L;
            this.itemType = 0;
            this.title = "";
            this.container = 0;
            this.screen = 0;
            this.cellX = 0;
            this.cellY = 0;
            this.spanX = 0;
            this.spanY = 0;
            this.displayMode = 0;
            this.appWidgetId = 0;
            this.appWidgetProvider = "";
            this.intent = "";
            this.uri = "";
            this.iconType = 0;
            this.iconPackage = "";
            this.iconResource = "";
            this.icon = WireFormatNano.EMPTY_BYTES;
            this.targetType = 0;
            this.rank = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano output) throws IOException {
            output.writeInt64(1, this.id);
            output.writeInt32(2, this.itemType);
            if (!this.title.equals("")) {
                output.writeString(3, this.title);
            }
            if (this.container != 0) {
                output.writeInt32(4, this.container);
            }
            if (this.screen != 0) {
                output.writeInt32(5, this.screen);
            }
            if (this.cellX != 0) {
                output.writeInt32(6, this.cellX);
            }
            if (this.cellY != 0) {
                output.writeInt32(7, this.cellY);
            }
            if (this.spanX != 0) {
                output.writeInt32(8, this.spanX);
            }
            if (this.spanY != 0) {
                output.writeInt32(9, this.spanY);
            }
            if (this.displayMode != 0) {
                output.writeInt32(10, this.displayMode);
            }
            if (this.appWidgetId != 0) {
                output.writeInt32(11, this.appWidgetId);
            }
            if (!this.appWidgetProvider.equals("")) {
                output.writeString(12, this.appWidgetProvider);
            }
            if (!this.intent.equals("")) {
                output.writeString(13, this.intent);
            }
            if (!this.uri.equals("")) {
                output.writeString(14, this.uri);
            }
            if (this.iconType != 0) {
                output.writeInt32(15, this.iconType);
            }
            if (!this.iconPackage.equals("")) {
                output.writeString(16, this.iconPackage);
            }
            if (!this.iconResource.equals("")) {
                output.writeString(17, this.iconResource);
            }
            if (!Arrays.equals(this.icon, WireFormatNano.EMPTY_BYTES)) {
                output.writeBytes(18, this.icon);
            }
            if (this.targetType != 0) {
                output.writeInt32(19, this.targetType);
            }
            if (this.rank != 0) {
                output.writeInt32(20, this.rank);
            }
            super.writeTo(output);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int size = super.computeSerializedSize() + CodedOutputByteBufferNano.computeInt64Size(1, this.id) + CodedOutputByteBufferNano.computeInt32Size(2, this.itemType);
            if (!this.title.equals("")) {
                size += CodedOutputByteBufferNano.computeStringSize(3, this.title);
            }
            if (this.container != 0) {
                size += CodedOutputByteBufferNano.computeInt32Size(4, this.container);
            }
            if (this.screen != 0) {
                size += CodedOutputByteBufferNano.computeInt32Size(5, this.screen);
            }
            if (this.cellX != 0) {
                size += CodedOutputByteBufferNano.computeInt32Size(6, this.cellX);
            }
            if (this.cellY != 0) {
                size += CodedOutputByteBufferNano.computeInt32Size(7, this.cellY);
            }
            if (this.spanX != 0) {
                size += CodedOutputByteBufferNano.computeInt32Size(8, this.spanX);
            }
            if (this.spanY != 0) {
                size += CodedOutputByteBufferNano.computeInt32Size(9, this.spanY);
            }
            if (this.displayMode != 0) {
                size += CodedOutputByteBufferNano.computeInt32Size(10, this.displayMode);
            }
            if (this.appWidgetId != 0) {
                size += CodedOutputByteBufferNano.computeInt32Size(11, this.appWidgetId);
            }
            if (!this.appWidgetProvider.equals("")) {
                size += CodedOutputByteBufferNano.computeStringSize(12, this.appWidgetProvider);
            }
            if (!this.intent.equals("")) {
                size += CodedOutputByteBufferNano.computeStringSize(13, this.intent);
            }
            if (!this.uri.equals("")) {
                size += CodedOutputByteBufferNano.computeStringSize(14, this.uri);
            }
            if (this.iconType != 0) {
                size += CodedOutputByteBufferNano.computeInt32Size(15, this.iconType);
            }
            if (!this.iconPackage.equals("")) {
                size += CodedOutputByteBufferNano.computeStringSize(16, this.iconPackage);
            }
            if (!this.iconResource.equals("")) {
                size += CodedOutputByteBufferNano.computeStringSize(17, this.iconResource);
            }
            if (!Arrays.equals(this.icon, WireFormatNano.EMPTY_BYTES)) {
                size += CodedOutputByteBufferNano.computeBytesSize(18, this.icon);
            }
            if (this.targetType != 0) {
                size += CodedOutputByteBufferNano.computeInt32Size(19, this.targetType);
            }
            if (this.rank != 0) {
                return size + CodedOutputByteBufferNano.computeInt32Size(20, this.rank);
            }
            return size;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public Favorite mergeFrom(CodedInputByteBufferNano input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        break;
                    case 8:
                        this.id = input.readInt64();
                        break;
                    case 16:
                        this.itemType = input.readInt32();
                        break;
                    case 26:
                        this.title = input.readString();
                        break;
                    case 32:
                        this.container = input.readInt32();
                        break;
                    case 40:
                        this.screen = input.readInt32();
                        break;
                    case 48:
                        this.cellX = input.readInt32();
                        break;
                    case 56:
                        this.cellY = input.readInt32();
                        break;
                    case 64:
                        this.spanX = input.readInt32();
                        break;
                    case 72:
                        this.spanY = input.readInt32();
                        break;
                    case 80:
                        this.displayMode = input.readInt32();
                        break;
                    case 88:
                        this.appWidgetId = input.readInt32();
                        break;
                    case 98:
                        this.appWidgetProvider = input.readString();
                        break;
                    case 106:
                        this.intent = input.readString();
                        break;
                    case 114:
                        this.uri = input.readString();
                        break;
                    case 120:
                        this.iconType = input.readInt32();
                        break;
                    case TransportMediator.KEYCODE_MEDIA_RECORD /* 130 */:
                        this.iconPackage = input.readString();
                        break;
                    case 138:
                        this.iconResource = input.readString();
                        break;
                    case 146:
                        this.icon = input.readBytes();
                        break;
                    case 152:
                        int value = input.readInt32();
                        switch (value) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                                this.targetType = value;
                                break;
                        }
                    case 160:
                        this.rank = input.readInt32();
                        break;
                    default:
                        if (!WireFormatNano.parseUnknownField(input, tag)) {
                            break;
                        } else {
                            break;
                        }
                }
            }
            return this;
        }

        public static Favorite parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
            return (Favorite) MessageNano.mergeFrom(new Favorite(), data);
        }

        public static Favorite parseFrom(CodedInputByteBufferNano input) throws IOException {
            return new Favorite().mergeFrom(input);
        }
    }

    /* loaded from: classes.dex */
    public static final class Screen extends MessageNano {
        private static volatile Screen[] _emptyArray;
        public long id;
        public int rank;

        public static Screen[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new Screen[0];
                    }
                }
            }
            return _emptyArray;
        }

        public Screen() {
            clear();
        }

        public Screen clear() {
            this.id = 0L;
            this.rank = 0;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano output) throws IOException {
            output.writeInt64(1, this.id);
            if (this.rank != 0) {
                output.writeInt32(2, this.rank);
            }
            super.writeTo(output);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int size = super.computeSerializedSize() + CodedOutputByteBufferNano.computeInt64Size(1, this.id);
            if (this.rank != 0) {
                return size + CodedOutputByteBufferNano.computeInt32Size(2, this.rank);
            }
            return size;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public Screen mergeFrom(CodedInputByteBufferNano input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        break;
                    case 8:
                        this.id = input.readInt64();
                        break;
                    case 16:
                        this.rank = input.readInt32();
                        break;
                    default:
                        if (!WireFormatNano.parseUnknownField(input, tag)) {
                            break;
                        } else {
                            break;
                        }
                }
            }
            return this;
        }

        public static Screen parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
            return (Screen) MessageNano.mergeFrom(new Screen(), data);
        }

        public static Screen parseFrom(CodedInputByteBufferNano input) throws IOException {
            return new Screen().mergeFrom(input);
        }
    }

    /* loaded from: classes.dex */
    public static final class Resource extends MessageNano {
        private static volatile Resource[] _emptyArray;
        public byte[] data;
        public int dpi;

        public static Resource[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new Resource[0];
                    }
                }
            }
            return _emptyArray;
        }

        public Resource() {
            clear();
        }

        public Resource clear() {
            this.dpi = 0;
            this.data = WireFormatNano.EMPTY_BYTES;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano output) throws IOException {
            output.writeInt32(1, this.dpi);
            output.writeBytes(2, this.data);
            super.writeTo(output);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int size = super.computeSerializedSize();
            return size + CodedOutputByteBufferNano.computeInt32Size(1, this.dpi) + CodedOutputByteBufferNano.computeBytesSize(2, this.data);
        }

        @Override // com.google.protobuf.nano.MessageNano
        public Resource mergeFrom(CodedInputByteBufferNano input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        break;
                    case 8:
                        this.dpi = input.readInt32();
                        break;
                    case 18:
                        this.data = input.readBytes();
                        break;
                    default:
                        if (!WireFormatNano.parseUnknownField(input, tag)) {
                            break;
                        } else {
                            break;
                        }
                }
            }
            return this;
        }

        public static Resource parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
            return (Resource) MessageNano.mergeFrom(new Resource(), data);
        }

        public static Resource parseFrom(CodedInputByteBufferNano input) throws IOException {
            return new Resource().mergeFrom(input);
        }
    }

    /* loaded from: classes.dex */
    public static final class Widget extends MessageNano {
        private static volatile Widget[] _emptyArray;
        public boolean configure;
        public Resource icon;
        public String label;
        public int minSpanX;
        public int minSpanY;
        public Resource preview;
        public String provider;

        public static Widget[] emptyArray() {
            if (_emptyArray == null) {
                synchronized (InternalNano.LAZY_INIT_LOCK) {
                    if (_emptyArray == null) {
                        _emptyArray = new Widget[0];
                    }
                }
            }
            return _emptyArray;
        }

        public Widget() {
            clear();
        }

        public Widget clear() {
            this.provider = "";
            this.label = "";
            this.configure = false;
            this.icon = null;
            this.preview = null;
            this.minSpanX = 2;
            this.minSpanY = 2;
            this.cachedSize = -1;
            return this;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public void writeTo(CodedOutputByteBufferNano output) throws IOException {
            output.writeString(1, this.provider);
            if (!this.label.equals("")) {
                output.writeString(2, this.label);
            }
            if (this.configure) {
                output.writeBool(3, this.configure);
            }
            if (this.icon != null) {
                output.writeMessage(4, this.icon);
            }
            if (this.preview != null) {
                output.writeMessage(5, this.preview);
            }
            if (this.minSpanX != 2) {
                output.writeInt32(6, this.minSpanX);
            }
            if (this.minSpanY != 2) {
                output.writeInt32(7, this.minSpanY);
            }
            super.writeTo(output);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.protobuf.nano.MessageNano
        public int computeSerializedSize() {
            int size = super.computeSerializedSize() + CodedOutputByteBufferNano.computeStringSize(1, this.provider);
            if (!this.label.equals("")) {
                size += CodedOutputByteBufferNano.computeStringSize(2, this.label);
            }
            if (this.configure) {
                size += CodedOutputByteBufferNano.computeBoolSize(3, this.configure);
            }
            if (this.icon != null) {
                size += CodedOutputByteBufferNano.computeMessageSize(4, this.icon);
            }
            if (this.preview != null) {
                size += CodedOutputByteBufferNano.computeMessageSize(5, this.preview);
            }
            if (this.minSpanX != 2) {
                size += CodedOutputByteBufferNano.computeInt32Size(6, this.minSpanX);
            }
            if (this.minSpanY != 2) {
                return size + CodedOutputByteBufferNano.computeInt32Size(7, this.minSpanY);
            }
            return size;
        }

        @Override // com.google.protobuf.nano.MessageNano
        public Widget mergeFrom(CodedInputByteBufferNano input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        break;
                    case 10:
                        this.provider = input.readString();
                        break;
                    case 18:
                        this.label = input.readString();
                        break;
                    case 24:
                        this.configure = input.readBool();
                        break;
                    case 34:
                        if (this.icon == null) {
                            this.icon = new Resource();
                        }
                        input.readMessage(this.icon);
                        break;
                    case 42:
                        if (this.preview == null) {
                            this.preview = new Resource();
                        }
                        input.readMessage(this.preview);
                        break;
                    case 48:
                        this.minSpanX = input.readInt32();
                        break;
                    case 56:
                        this.minSpanY = input.readInt32();
                        break;
                    default:
                        if (!WireFormatNano.parseUnknownField(input, tag)) {
                            break;
                        } else {
                            break;
                        }
                }
            }
            return this;
        }

        public static Widget parseFrom(byte[] data) throws InvalidProtocolBufferNanoException {
            return (Widget) MessageNano.mergeFrom(new Widget(), data);
        }

        public static Widget parseFrom(CodedInputByteBufferNano input) throws IOException {
            return new Widget().mergeFrom(input);
        }
    }
}
