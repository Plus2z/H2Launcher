.class public Lnet/oneplus/h2launcher/inputmethod/T9/T9Util;
.super Ljava/lang/Object;
.source "T9Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getT9Number(C)C
    .locals 1
    .param p0, "alphabet"    # C

    .prologue
    .line 13
    move v0, p0

    .line 15
    .local v0, "ch":C
    packed-switch p0, :pswitch_data_0

    .line 102
    :goto_0
    :pswitch_0
    return v0

    .line 22
    :pswitch_1
    const/16 v0, 0x32

    .line 23
    goto :goto_0

    .line 31
    :pswitch_2
    const/16 v0, 0x33

    .line 32
    goto :goto_0

    .line 40
    :pswitch_3
    const/16 v0, 0x34

    .line 41
    goto :goto_0

    .line 49
    :pswitch_4
    const/16 v0, 0x35

    .line 50
    goto :goto_0

    .line 58
    :pswitch_5
    const/16 v0, 0x36

    .line 59
    goto :goto_0

    .line 69
    :pswitch_6
    const/16 v0, 0x37

    .line 70
    goto :goto_0

    .line 78
    :pswitch_7
    const/16 v0, 0x38

    .line 79
    goto :goto_0

    .line 89
    :pswitch_8
    const/16 v0, 0x39

    .line 90
    goto :goto_0

    .line 92
    :pswitch_9
    const/16 v0, 0x31

    .line 93
    goto :goto_0

    .line 95
    :pswitch_a
    const/16 v0, 0x30

    .line 96
    goto :goto_0

    .line 15
    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method
