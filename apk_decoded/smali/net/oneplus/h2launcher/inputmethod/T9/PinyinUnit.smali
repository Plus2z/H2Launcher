.class public Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;
.super Ljava/lang/Object;
.source "PinyinUnit.java"


# instance fields
.field private mPinyin:Z

.field private mPinyinBaseUnitIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;",
            ">;"
        }
    .end annotation
.end field

.field private mStartPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;->mPinyin:Z

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;->mStartPosition:I

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;->mPinyinBaseUnitIndex:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public getPinyinBaseUnitIndex()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;->mPinyinBaseUnitIndex:Ljava/util/List;

    return-object v0
.end method

.method public getStartPosition()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;->mStartPosition:I

    return v0
.end method

.method public isPinyin()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;->mPinyin:Z

    return v0
.end method

.method public setPinyin(Z)V
    .locals 0
    .param p1, "pinyin"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;->mPinyin:Z

    .line 29
    return-void
.end method

.method public setStartPosition(I)V
    .locals 0
    .param p1, "startPosition"    # I

    .prologue
    .line 36
    iput p1, p0, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;->mStartPosition:I

    .line 37
    return-void
.end method

.method public setStringIndex(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "stringIndex":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;>;"
    iput-object p1, p0, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;->mPinyinBaseUnitIndex:Ljava/util/List;

    .line 45
    return-void
.end method
