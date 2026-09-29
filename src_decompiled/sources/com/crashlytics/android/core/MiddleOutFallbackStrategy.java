package com.crashlytics.android.core;

/* loaded from: classes.dex */
class MiddleOutFallbackStrategy implements StackTraceTrimmingStrategy {
    private final int maximumStackSize;
    private final MiddleOutStrategy middleOutStrategy;
    private final StackTraceTrimmingStrategy[] trimmingStrategies;

    public MiddleOutFallbackStrategy(int maximumStackSize, StackTraceTrimmingStrategy... strategies) {
        this.maximumStackSize = maximumStackSize;
        this.trimmingStrategies = strategies;
        this.middleOutStrategy = new MiddleOutStrategy(maximumStackSize);
    }

    @Override // com.crashlytics.android.core.StackTraceTrimmingStrategy
    public StackTraceElement[] getTrimmedStackTrace(StackTraceElement[] stacktrace) {
        if (stacktrace.length > this.maximumStackSize) {
            StackTraceElement[] trimmed = stacktrace;
            for (StackTraceTrimmingStrategy strategy : this.trimmingStrategies) {
                if (trimmed.length <= this.maximumStackSize) {
                    break;
                }
                trimmed = strategy.getTrimmedStackTrace(stacktrace);
            }
            if (trimmed.length > this.maximumStackSize) {
                trimmed = this.middleOutStrategy.getTrimmedStackTrace(trimmed);
            }
            return trimmed;
        }
        return stacktrace;
    }
}
