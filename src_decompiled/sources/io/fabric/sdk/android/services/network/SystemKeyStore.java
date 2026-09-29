package io.fabric.sdk.android.services.network;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.Principal;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Enumeration;
import java.util.HashMap;

/* loaded from: classes.dex */
class SystemKeyStore {
    private final HashMap<Principal, X509Certificate> trustRoots;
    final KeyStore trustStore;

    public SystemKeyStore(InputStream keystoreStream, String passwd) {
        KeyStore trustStore = getTrustStore(keystoreStream, passwd);
        this.trustRoots = initializeTrustedRoots(trustStore);
        this.trustStore = trustStore;
    }

    public boolean isTrustRoot(X509Certificate certificate) {
        X509Certificate trustRoot = this.trustRoots.get(certificate.getSubjectX500Principal());
        return trustRoot != null && trustRoot.getPublicKey().equals(certificate.getPublicKey());
    }

    public X509Certificate getTrustRootFor(X509Certificate certificate) {
        X509Certificate trustRoot = this.trustRoots.get(certificate.getIssuerX500Principal());
        if (trustRoot != null && !trustRoot.getSubjectX500Principal().equals(certificate.getSubjectX500Principal())) {
            try {
                certificate.verify(trustRoot.getPublicKey());
                return trustRoot;
            } catch (GeneralSecurityException e) {
                return null;
            }
        }
        return null;
    }

    private HashMap<Principal, X509Certificate> initializeTrustedRoots(KeyStore trustStore) {
        try {
            HashMap<Principal, X509Certificate> trusted = new HashMap<>();
            Enumeration<String> aliases = trustStore.aliases();
            while (aliases.hasMoreElements()) {
                String alias = aliases.nextElement();
                X509Certificate cert = (X509Certificate) trustStore.getCertificate(alias);
                if (cert != null) {
                    trusted.put(cert.getSubjectX500Principal(), cert);
                }
            }
            return trusted;
        } catch (KeyStoreException e) {
            throw new AssertionError(e);
        }
    }

    private KeyStore getTrustStore(InputStream keystoreStream, String passwd) {
        try {
            KeyStore trustStore = KeyStore.getInstance("BKS");
            BufferedInputStream bin = new BufferedInputStream(keystoreStream);
            try {
                trustStore.load(bin, passwd.toCharArray());
                return trustStore;
            } finally {
                bin.close();
            }
        } catch (IOException e) {
            throw new AssertionError(e);
        } catch (KeyStoreException kse) {
            throw new AssertionError(kse);
        } catch (NoSuchAlgorithmException e2) {
            throw new AssertionError(e2);
        } catch (CertificateException e3) {
            throw new AssertionError(e3);
        }
    }
}
