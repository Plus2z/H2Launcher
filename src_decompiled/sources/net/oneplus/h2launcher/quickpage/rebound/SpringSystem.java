package net.oneplus.h2launcher.quickpage.rebound;

/* loaded from: classes.dex */
public class SpringSystem extends BaseSpringSystem {
    public static SpringSystem create() {
        return new SpringSystem(AndroidSpringLooperFactory.createSpringLooper());
    }

    private SpringSystem(SpringLooper springLooper) {
        super(springLooper);
    }
}
