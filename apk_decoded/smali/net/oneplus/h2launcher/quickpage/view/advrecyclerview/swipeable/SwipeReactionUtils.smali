.class Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeReactionUtils;
.super Ljava/lang/Object;
.source "SwipeReactionUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canSwipeDown(I)Z
    .locals 2
    .param p0, "reactionType"    # I

    .prologue
    .line 53
    invoke-static {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeReactionUtils;->extractDownReaction(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canSwipeLeft(I)Z
    .locals 2
    .param p0, "reactionType"    # I

    .prologue
    .line 41
    invoke-static {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeReactionUtils;->extractLeftReaction(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canSwipeRight(I)Z
    .locals 2
    .param p0, "reactionType"    # I

    .prologue
    .line 49
    invoke-static {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeReactionUtils;->extractRightReaction(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canSwipeUp(I)Z
    .locals 2
    .param p0, "reactionType"    # I

    .prologue
    .line 45
    invoke-static {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/swipeable/SwipeReactionUtils;->extractUpReaction(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static extractDownReaction(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 36
    ushr-int/lit8 v0, p0, 0x12

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public static extractLeftReaction(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 21
    ushr-int/lit8 v0, p0, 0x0

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public static extractRightReaction(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 31
    ushr-int/lit8 v0, p0, 0xc

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public static extractUpReaction(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 26
    ushr-int/lit8 v0, p0, 0x6

    and-int/lit8 v0, v0, 0x3

    return v0
.end method
