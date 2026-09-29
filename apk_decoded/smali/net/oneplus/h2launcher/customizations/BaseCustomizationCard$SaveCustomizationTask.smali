.class abstract Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;
.super Ljava/lang/Object;
.source "BaseCustomizationCard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "SaveCustomizationTask"
.end annotation


# instance fields
.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 500
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;->this$0:Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 501
    iput-object p2, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;->mTag:Ljava/lang/String;

    .line 502
    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;->mTag:Ljava/lang/String;

    return-object v0
.end method
