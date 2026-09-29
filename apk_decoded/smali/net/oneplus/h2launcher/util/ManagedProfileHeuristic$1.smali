.class Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic$1;
.super Ljava/lang/Object;
.source "ManagedProfileHeuristic.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;->finalizeWorkFolder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lnet/oneplus/h2launcher/ShortcutInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;

    .prologue
    .line 163
    iput-object p1, p0, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic$1;->this$0:Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 163
    check-cast p1, Lnet/oneplus/h2launcher/ShortcutInfo;

    check-cast p2, Lnet/oneplus/h2launcher/ShortcutInfo;

    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/util/ManagedProfileHeuristic$1;->compare(Lnet/oneplus/h2launcher/ShortcutInfo;Lnet/oneplus/h2launcher/ShortcutInfo;)I

    move-result v0

    return v0
.end method

.method public compare(Lnet/oneplus/h2launcher/ShortcutInfo;Lnet/oneplus/h2launcher/ShortcutInfo;)I
    .locals 4
    .param p1, "lhs"    # Lnet/oneplus/h2launcher/ShortcutInfo;
    .param p2, "rhs"    # Lnet/oneplus/h2launcher/ShortcutInfo;

    .prologue
    .line 167
    iget-wide v0, p1, Lnet/oneplus/h2launcher/ShortcutInfo;->firstInstallTime:J

    iget-wide v2, p2, Lnet/oneplus/h2launcher/ShortcutInfo;->firstInstallTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method
