.class Lnet/oneplus/h2launcher/IconPackHelper$IntentCategory;
.super Ljava/lang/Object;
.source "IconPackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/IconPackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntentCategory"
.end annotation


# instance fields
.field actionId:I

.field categoryString:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 662
    iput p1, p0, Lnet/oneplus/h2launcher/IconPackHelper$IntentCategory;->actionId:I

    .line 663
    iput-object p2, p0, Lnet/oneplus/h2launcher/IconPackHelper$IntentCategory;->categoryString:Ljava/lang/String;

    .line 664
    return-void
.end method
