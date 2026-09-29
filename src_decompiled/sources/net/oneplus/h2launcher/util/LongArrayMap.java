package net.oneplus.h2launcher.util;

import android.util.LongSparseArray;
import java.util.Iterator;

/* loaded from: classes.dex */
public class LongArrayMap<E> extends LongSparseArray<E> implements Iterable<E> {
    public boolean containsKey(long key) {
        return indexOfKey(key) >= 0;
    }

    public boolean isEmpty() {
        return size() <= 0;
    }

    @Override // android.util.LongSparseArray
    public LongArrayMap<E> clone() {
        return (LongArrayMap) super.clone();
    }

    @Override // java.lang.Iterable
    public Iterator<E> iterator() {
        return new ValueIterator();
    }

    /* loaded from: classes.dex */
    class ValueIterator implements Iterator<E> {
        private int mNextIndex = 0;

        ValueIterator() {
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.mNextIndex < LongArrayMap.this.size();
        }

        @Override // java.util.Iterator
        public E next() {
            LongArrayMap longArrayMap = LongArrayMap.this;
            int i = this.mNextIndex;
            this.mNextIndex = i + 1;
            return longArrayMap.valueAt(i);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }
}
