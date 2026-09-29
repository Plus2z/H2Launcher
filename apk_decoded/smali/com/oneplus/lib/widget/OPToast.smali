.class public Lcom/oneplus/lib/widget/OPToast;
.super Landroid/widget/Toast;
.source "OPToast.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public static makeText(Landroid/content/Context;II)Lcom/oneplus/lib/widget/OPToast;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/oneplus/lib/widget/OPToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/oneplus/lib/widget/OPToast;

    move-result-object v0

    return-object v0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/oneplus/lib/widget/OPToast;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # I

    .prologue
    const/4 v9, 0x0

    .line 26
    new-instance v3, Lcom/oneplus/lib/widget/OPToast;

    invoke-direct {v3, p0}, Lcom/oneplus/lib/widget/OPToast;-><init>(Landroid/content/Context;)V

    .line 28
    .local v3, "result":Lcom/oneplus/lib/widget/OPToast;
    const-string v6, "layout_inflater"

    .line 29
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 31
    .local v1, "inflate":Landroid/view/LayoutInflater;
    sget-object v6, Lcom/oneplus/commonctrl/R$styleable;->OPToast:[I

    sget v7, Lcom/oneplus/commonctrl/R$attr;->OPToastStyle:I

    sget v8, Lcom/oneplus/commonctrl/R$style;->Oneplus_DeviceDefault_OPToast:I

    invoke-virtual {p0, v9, v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 32
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPToast_android_layout:I

    sget v7, Lcom/oneplus/commonctrl/R$layout;->op_transient_notification_light:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 33
    .local v2, "layoutResId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    invoke-virtual {v1, v2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 36
    .local v5, "v":Landroid/view/View;
    const v6, 0x102000b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 37
    .local v4, "tv":Landroid/widget/TextView;
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-static {v3, v5, p2}, Lcom/oneplus/lib/widget/OPToast;->setViewAndDuation(Lcom/oneplus/lib/widget/OPToast;Landroid/view/View;I)V

    .line 40
    return-object v3
.end method

.method private static setViewAndDuation(Lcom/oneplus/lib/widget/OPToast;Landroid/view/View;I)V
    .locals 6
    .param p0, "toast"    # Lcom/oneplus/lib/widget/OPToast;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "duration"    # I

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/oneplus/lib/widget/OPToast;

    .line 52
    const/4 v4, 0x0

    .line 53
    .local v4, "mNextView":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    .line 54
    .local v3, "mDuration":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 55
    const-string v5, "mNextView"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 56
    const-string v5, "mDuration"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 57
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 58
    invoke-virtual {v4, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 60
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, p0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v2

    .line 64
    .local v2, "e1":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 65
    .end local v2    # "e1":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method
