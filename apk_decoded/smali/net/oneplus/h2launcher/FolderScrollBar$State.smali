.class final enum Lnet/oneplus/h2launcher/FolderScrollBar$State;
.super Ljava/lang/Enum;
.source "FolderScrollBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/FolderScrollBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/oneplus/h2launcher/FolderScrollBar$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/oneplus/h2launcher/FolderScrollBar$State;

.field public static final enum HIDE:Lnet/oneplus/h2launcher/FolderScrollBar$State;

.field public static final enum PLAY_HIDE_ANIMATION:Lnet/oneplus/h2launcher/FolderScrollBar$State;

.field public static final enum PLAY_SHOW_ANIMATION:Lnet/oneplus/h2launcher/FolderScrollBar$State;

.field public static final enum SHOW:Lnet/oneplus/h2launcher/FolderScrollBar$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lnet/oneplus/h2launcher/FolderScrollBar$State;

    const-string v1, "SHOW"

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/FolderScrollBar$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/oneplus/h2launcher/FolderScrollBar$State;->SHOW:Lnet/oneplus/h2launcher/FolderScrollBar$State;

    new-instance v0, Lnet/oneplus/h2launcher/FolderScrollBar$State;

    const-string v1, "HIDE"

    invoke-direct {v0, v1, v3}, Lnet/oneplus/h2launcher/FolderScrollBar$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/oneplus/h2launcher/FolderScrollBar$State;->HIDE:Lnet/oneplus/h2launcher/FolderScrollBar$State;

    new-instance v0, Lnet/oneplus/h2launcher/FolderScrollBar$State;

    const-string v1, "PLAY_SHOW_ANIMATION"

    invoke-direct {v0, v1, v4}, Lnet/oneplus/h2launcher/FolderScrollBar$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/oneplus/h2launcher/FolderScrollBar$State;->PLAY_SHOW_ANIMATION:Lnet/oneplus/h2launcher/FolderScrollBar$State;

    new-instance v0, Lnet/oneplus/h2launcher/FolderScrollBar$State;

    const-string v1, "PLAY_HIDE_ANIMATION"

    invoke-direct {v0, v1, v5}, Lnet/oneplus/h2launcher/FolderScrollBar$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/oneplus/h2launcher/FolderScrollBar$State;->PLAY_HIDE_ANIMATION:Lnet/oneplus/h2launcher/FolderScrollBar$State;

    .line 45
    const/4 v0, 0x4

    new-array v0, v0, [Lnet/oneplus/h2launcher/FolderScrollBar$State;

    sget-object v1, Lnet/oneplus/h2launcher/FolderScrollBar$State;->SHOW:Lnet/oneplus/h2launcher/FolderScrollBar$State;

    aput-object v1, v0, v2

    sget-object v1, Lnet/oneplus/h2launcher/FolderScrollBar$State;->HIDE:Lnet/oneplus/h2launcher/FolderScrollBar$State;

    aput-object v1, v0, v3

    sget-object v1, Lnet/oneplus/h2launcher/FolderScrollBar$State;->PLAY_SHOW_ANIMATION:Lnet/oneplus/h2launcher/FolderScrollBar$State;

    aput-object v1, v0, v4

    sget-object v1, Lnet/oneplus/h2launcher/FolderScrollBar$State;->PLAY_HIDE_ANIMATION:Lnet/oneplus/h2launcher/FolderScrollBar$State;

    aput-object v1, v0, v5

    sput-object v0, Lnet/oneplus/h2launcher/FolderScrollBar$State;->$VALUES:[Lnet/oneplus/h2launcher/FolderScrollBar$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/oneplus/h2launcher/FolderScrollBar$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    const-class v0, Lnet/oneplus/h2launcher/FolderScrollBar$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/FolderScrollBar$State;

    return-object v0
.end method

.method public static values()[Lnet/oneplus/h2launcher/FolderScrollBar$State;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lnet/oneplus/h2launcher/FolderScrollBar$State;->$VALUES:[Lnet/oneplus/h2launcher/FolderScrollBar$State;

    invoke-virtual {v0}, [Lnet/oneplus/h2launcher/FolderScrollBar$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/oneplus/h2launcher/FolderScrollBar$State;

    return-object v0
.end method
