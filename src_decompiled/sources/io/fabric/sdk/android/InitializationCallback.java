package io.fabric.sdk.android;

/* loaded from: classes.dex */
public interface InitializationCallback<T> {
    public static final InitializationCallback EMPTY = new Empty();

    void failure(Exception exc);

    void success(T t);

    /* loaded from: classes.dex */
    public static class Empty implements InitializationCallback<Object> {
        private Empty() {
        }

        @Override // io.fabric.sdk.android.InitializationCallback
        public void success(Object object) {
        }

        @Override // io.fabric.sdk.android.InitializationCallback
        public void failure(Exception exception) {
        }
    }
}
