.class Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;
.super Ljava/lang/Object;
.source "FavoriteContactsGrid.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private icon:Landroid/net/Uri;

.field private id:Ljava/lang/String;

.field private intent:Landroid/content/Intent;

.field private lastTimeContacted:J

.field private name:Ljava/lang/String;

.field private timesContacted:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IJLandroid/content/Intent;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/net/Uri;
    .param p4, "timesContacted"    # I
    .param p5, "lastTimeContacted"    # J
    .param p7, "intent"    # Landroid/content/Intent;

    .prologue
    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;->id:Ljava/lang/String;

    .line 509
    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;->name:Ljava/lang/String;

    .line 510
    iput-object p3, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;->icon:Landroid/net/Uri;

    .line 511
    iput p4, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;->timesContacted:I

    .line 512
    iput-wide p5, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;->lastTimeContacted:J

    .line 513
    iput-object p7, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;->intent:Landroid/content/Intent;

    .line 514
    return-void
.end method

.method static synthetic access$1000(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;

    .prologue
    .line 499
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;->icon:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1100(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;

    .prologue
    .line 499
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;

    .prologue
    .line 499
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$800(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;

    .prologue
    .line 499
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;->name:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 499
    check-cast p1, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;->compareTo(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;)I
    .locals 4
    .param p1, "o"    # Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;

    .prologue
    .line 518
    iget-wide v0, p1, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;->lastTimeContacted:J

    iget-wide v2, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;->lastTimeContacted:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method
