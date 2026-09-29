package net.oneplus.h2launcher.compat;

import java.util.HashMap;

/* loaded from: classes.dex */
public class PackageInstallerCompatV16 extends PackageInstallerCompat {
    @Override // net.oneplus.h2launcher.compat.PackageInstallerCompat
    public void onStop() {
    }

    @Override // net.oneplus.h2launcher.compat.PackageInstallerCompat
    public HashMap<String, Integer> updateAndGetActiveSessionCache() {
        return new HashMap<>();
    }
}
