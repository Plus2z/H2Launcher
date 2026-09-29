package com.crashlytics.android.answers;

import io.fabric.sdk.android.services.concurrency.internal.Backoff;
import java.util.Random;

/* loaded from: classes.dex */
class RandomBackoff implements Backoff {
    final Backoff backoff;
    final double jitterPercent;
    final Random random;

    public RandomBackoff(Backoff backoff, double jitterPercent) {
        this(backoff, jitterPercent, new Random());
    }

    public RandomBackoff(Backoff backoff, double jitterPercent, Random random) {
        if (jitterPercent < 0.0d || jitterPercent > 1.0d) {
            throw new IllegalArgumentException("jitterPercent must be between 0.0 and 1.0");
        }
        if (backoff == null) {
            throw new NullPointerException("backoff must not be null");
        }
        if (random == null) {
            throw new NullPointerException("random must not be null");
        }
        this.backoff = backoff;
        this.jitterPercent = jitterPercent;
        this.random = random;
    }

    @Override // io.fabric.sdk.android.services.concurrency.internal.Backoff
    public long getDelayMillis(int retries) {
        return (long) (randomJitter() * this.backoff.getDelayMillis(retries));
    }

    double randomJitter() {
        double minJitter = 1.0d - this.jitterPercent;
        double maxJitter = 1.0d + this.jitterPercent;
        double randomDouble = this.random.nextDouble();
        return ((maxJitter - minJitter) * randomDouble) + minJitter;
    }
}
