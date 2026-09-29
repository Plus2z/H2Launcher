.class public interface abstract Lnet/oneplus/h2launcher/Stats$StatsChangedCallback;
.super Ljava/lang/Object;
.source "Stats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/Stats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StatsChangedCallback"
.end annotation


# virtual methods
.method public abstract onStatsAdded(Landroid/content/ComponentName;Ljava/lang/String;IJLnet/oneplus/h2launcher/compat/UserHandleCompat;)V
.end method

.method public abstract onStatsRemoved(JLnet/oneplus/h2launcher/compat/UserHandleCompat;)V
.end method

.method public abstract onStatsRemoved(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
.end method
