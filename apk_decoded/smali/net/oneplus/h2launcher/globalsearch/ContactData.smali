.class public Lnet/oneplus/h2launcher/globalsearch/ContactData;
.super Ljava/lang/Object;
.source "ContactData.java"


# instance fields
.field private mDisplayName:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/Intent;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "iconUri"    # Landroid/net/Uri;
    .param p4, "intent"    # Landroid/content/Intent;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lnet/oneplus/h2launcher/globalsearch/ContactData;->mId:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lnet/oneplus/h2launcher/globalsearch/ContactData;->mDisplayName:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lnet/oneplus/h2launcher/globalsearch/ContactData;->mUri:Landroid/net/Uri;

    .line 16
    iput-object p4, p0, Lnet/oneplus/h2launcher/globalsearch/ContactData;->mIntent:Landroid/content/Intent;

    .line 17
    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/ContactData;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/ContactData;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/ContactData;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/ContactData;->mIntent:Landroid/content/Intent;

    return-object v0
.end method
