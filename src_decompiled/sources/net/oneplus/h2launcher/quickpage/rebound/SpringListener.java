package net.oneplus.h2launcher.quickpage.rebound;

/* loaded from: classes.dex */
public interface SpringListener {
    void onSpringActivate(Spring spring);

    void onSpringAtRest(Spring spring);

    void onSpringChainUpdate(Spring spring, Spring spring2);

    void onSpringEndStateChange(Spring spring);

    void onSpringUpdate(Spring spring);
}
