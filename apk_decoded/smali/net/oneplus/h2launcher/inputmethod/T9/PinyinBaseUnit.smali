.class public Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;
.super Ljava/lang/Object;
.source "PinyinBaseUnit.java"


# instance fields
.field private mNumber:Ljava/lang/String;

.field private mOriginalString:Ljava/lang/String;

.field private mPinyin:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "originalString"    # Ljava/lang/String;
    .param p2, "pinyin"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;->mOriginalString:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;->mPinyin:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;->mNumber:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;->mOriginalString:Ljava/lang/String;

    return-object v0
.end method

.method public getPinyin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;->mPinyin:Ljava/lang/String;

    return-object v0
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;->mNumber:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setOriginalString(Ljava/lang/String;)V
    .locals 0
    .param p1, "originalString"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;->mOriginalString:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setPinyin(Ljava/lang/String;)V
    .locals 0
    .param p1, "pinyin"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinBaseUnit;->mPinyin:Ljava/lang/String;

    .line 33
    return-void
.end method
