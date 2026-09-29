package net.oneplus.h2launcher.util;

import android.util.SparseIntArray;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

/* loaded from: classes.dex */
public class SerializableSparseIntArray extends SparseIntArray implements Serializable {
    private static final long serialVersionUID = 824056059663678000L;

    public SerializableSparseIntArray(int capacity) {
        super(capacity);
    }

    public SerializableSparseIntArray() {
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        Object[] data = new Object[size()];
        for (int i = data.length - 1; i >= 0; i--) {
            Object[] pair = new Object[2];
            pair[0] = Integer.valueOf(keyAt(i));
            pair[1] = Integer.valueOf(valueAt(i));
            data[i] = pair;
        }
        objectOutputStream.writeObject(data);
    }

    private void readObject(ObjectInputStream ois) throws IOException, ClassNotFoundException {
        Object[] data = (Object[]) ois.readObject();
        for (int i = data.length - 1; i >= 0; i--) {
            Object[] pair = (Object[]) data[i];
            append(((Integer) pair[0]).intValue(), ((Integer) pair[1]).intValue());
        }
    }
}
