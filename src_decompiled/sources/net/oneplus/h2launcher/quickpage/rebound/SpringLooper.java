package net.oneplus.h2launcher.quickpage.rebound;

/* loaded from: classes.dex */
public abstract class SpringLooper {
    protected BaseSpringSystem mSpringSystem;

    public abstract void start();

    public abstract void stop();

    public void setSpringSystem(BaseSpringSystem springSystem) {
        this.mSpringSystem = springSystem;
    }
}
