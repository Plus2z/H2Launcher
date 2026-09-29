package io.fabric.sdk.android.services.network;

import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;

/* loaded from: classes.dex */
public final class NetworkUtils {
    private NetworkUtils() {
    }

    public static final SSLSocketFactory getSSLSocketFactory(PinningInfoProvider provider) throws KeyManagementException, NoSuchAlgorithmException {
        SSLContext sslContext = SSLContext.getInstance("TLS");
        SystemKeyStore keystore = new SystemKeyStore(provider.getKeyStoreStream(), provider.getKeyStorePassword());
        TrustManager tm = new PinningTrustManager(keystore, provider);
        sslContext.init(null, new TrustManager[]{tm}, null);
        return sslContext.getSocketFactory();
    }
}
