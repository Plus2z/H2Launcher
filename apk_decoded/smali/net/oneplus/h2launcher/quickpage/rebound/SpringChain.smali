.class public Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;
.super Ljava/lang/Object;
.source "SpringChain.java"

# interfaces
.implements Lnet/oneplus/h2launcher/quickpage/rebound/SpringListener;


# static fields
.field private static final DEFAULT_ATTACHMENT_FRICTION:I = 0xa

.field private static final DEFAULT_ATTACHMENT_TENSION:I = 0x46

.field private static final DEFAULT_MAIN_FRICTION:I = 0x6

.field private static final DEFAULT_MAIN_TENSION:I = 0x28

.field static final TAG:Ljava/lang/String; = "SpringChain"

.field private static id:I


# instance fields
.field private final mAttachmentSpringConfig:Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;

.field private mControlSpringIndex:I

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lnet/oneplus/h2launcher/quickpage/rebound/SpringListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainSpringConfig:Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;

.field private final mSpringSystem:Lnet/oneplus/h2launcher/quickpage/rebound/SpringSystem;

.field private final mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lnet/oneplus/h2launcher/quickpage/rebound/Spring;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput v0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->id:I

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 79
    const/16 v0, 0x28

    const/4 v1, 0x6

    const/16 v2, 0x46

    const/16 v3, 0xa

    invoke-direct {p0, v0, v1, v2, v3}, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;-><init>(IIII)V

    .line 84
    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 4
    .param p1, "mainTension"    # I
    .param p2, "mainFriction"    # I
    .param p3, "attachmentTension"    # I
    .param p4, "attachmentFriction"    # I

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Lnet/oneplus/h2launcher/quickpage/rebound/SpringSystem;->create()Lnet/oneplus/h2launcher/quickpage/rebound/SpringSystem;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mSpringSystem:Lnet/oneplus/h2launcher/quickpage/rebound/SpringSystem;

    .line 64
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 66
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mControlSpringIndex:I

    .line 91
    int-to-double v0, p1

    int-to-double v2, p2

    invoke-static {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mMainSpringConfig:Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;

    .line 92
    int-to-double v0, p3

    int-to-double v2, p4

    .line 93
    invoke-static {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mAttachmentSpringConfig:Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;

    .line 96
    return-void
.end method

.method public static create()Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;-><init>()V

    return-object v0
.end method

.method public static create(IIII)Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;
    .locals 1
    .param p0, "mainTension"    # I
    .param p1, "mainFriction"    # I
    .param p2, "attachmentTension"    # I
    .param p3, "attachmentFriction"    # I

    .prologue
    .line 60
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;

    invoke-direct {v0, p0, p1, p2, p3}, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;-><init>(IIII)V

    return-object v0
.end method


# virtual methods
.method public addSpring(ILnet/oneplus/h2launcher/quickpage/rebound/SpringListener;)Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;
    .locals 4
    .param p1, "position"    # I
    .param p2, "listener"    # Lnet/oneplus/h2launcher/quickpage/rebound/SpringListener;

    .prologue
    .line 126
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 127
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mSpringSystem:Lnet/oneplus/h2launcher/quickpage/rebound/SpringSystem;

    .line 128
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/rebound/SpringSystem;->createSpring()Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    move-result-object v1

    .line 129
    invoke-virtual {v1, p0}, Lnet/oneplus/h2launcher/quickpage/rebound/Spring;->addListener(Lnet/oneplus/h2launcher/quickpage/rebound/SpringListener;)Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mAttachmentSpringConfig:Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;

    .line 130
    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/quickpage/rebound/Spring;->setSpringConfig(Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;)Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    move-result-object v0

    .line 131
    .local v0, "spring":Lnet/oneplus/h2launcher/quickpage/rebound/Spring;
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 132
    const-string v1, "SpringChain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adding spring at position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .end local v0    # "spring":Lnet/oneplus/h2launcher/quickpage/rebound/Spring;
    :cond_0
    :goto_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-le v1, p1, :cond_2

    .line 138
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v1, "SpringChain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adding spring listener at position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :goto_1
    return-object p0

    .line 133
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v1, p1, :cond_0

    .line 134
    const-string v1, "SpringChain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error adding spring chain with wrong position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_2
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ne v1, p1, :cond_3

    .line 141
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 142
    const-string v1, "SpringChain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adding spring listener at position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 144
    :cond_3
    const-string v1, "SpringChain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error adding spring listener with wrong position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public addSpring(Lnet/oneplus/h2launcher/quickpage/rebound/SpringListener;)Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;
    .locals 3
    .param p1, "listener"    # Lnet/oneplus/h2launcher/quickpage/rebound/SpringListener;

    .prologue
    .line 114
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mSpringSystem:Lnet/oneplus/h2launcher/quickpage/rebound/SpringSystem;

    .line 115
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/rebound/SpringSystem;->createSpring()Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    move-result-object v1

    .line 116
    invoke-virtual {v1, p0}, Lnet/oneplus/h2launcher/quickpage/rebound/Spring;->addListener(Lnet/oneplus/h2launcher/quickpage/rebound/SpringListener;)Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mAttachmentSpringConfig:Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;

    .line 117
    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/quickpage/rebound/Spring;->setSpringConfig(Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;)Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    move-result-object v0

    .line 118
    .local v0, "spring":Lnet/oneplus/h2launcher/quickpage/rebound/Spring;
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    return-object p0
.end method

.method public getAllSprings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/quickpage/rebound/Spring;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public getAttachmentSpringConfig()Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mAttachmentSpringConfig:Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;

    return-object v0
.end method

.method public getControlSpring()Lnet/oneplus/h2launcher/quickpage/rebound/Spring;
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v1, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mControlSpringIndex:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    return-object v0
.end method

.method public getControlSpringIndex()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mControlSpringIndex:I

    return v0
.end method

.method public getMainSpringConfig()Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mMainSpringConfig:Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;

    return-object v0
.end method

.method public onSpringActivate(Lnet/oneplus/h2launcher/quickpage/rebound/Spring;)V
    .locals 0
    .param p1, "spring"    # Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    .prologue
    .line 278
    return-void
.end method

.method public onSpringAtRest(Lnet/oneplus/h2launcher/quickpage/rebound/Spring;)V
    .locals 0
    .param p1, "spring"    # Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    .prologue
    .line 273
    return-void
.end method

.method public onSpringChainUpdate(Lnet/oneplus/h2launcher/quickpage/rebound/Spring;Lnet/oneplus/h2launcher/quickpage/rebound/Spring;)V
    .locals 9
    .param p1, "spring"    # Lnet/oneplus/h2launcher/quickpage/rebound/Spring;
    .param p2, "springControl"    # Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    .prologue
    const/4 v8, -0x1

    .line 242
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 243
    .local v3, "idx":I
    if-gez v3, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/oneplus/h2launcher/quickpage/rebound/SpringListener;

    .line 247
    .local v4, "listener":Lnet/oneplus/h2launcher/quickpage/rebound/SpringListener;
    const/4 v0, -0x1

    .line 248
    .local v0, "above":I
    const/4 v1, -0x1

    .line 249
    .local v1, "below":I
    iget v5, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mControlSpringIndex:I

    if-ne v3, v5, :cond_5

    .line 250
    add-int/lit8 v1, v3, -0x1

    .line 251
    add-int/lit8 v0, v3, 0x1

    .line 257
    :cond_2
    :goto_1
    if-le v0, v8, :cond_3

    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 258
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/quickpage/rebound/Spring;->getCurrentValue()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lnet/oneplus/h2launcher/quickpage/rebound/Spring;->setEndValue(D)Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    .line 260
    :cond_3
    if-le v1, v8, :cond_4

    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 261
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/quickpage/rebound/Spring;->getCurrentValue()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lnet/oneplus/h2launcher/quickpage/rebound/Spring;->setEndValue(D)Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    .line 264
    :cond_4
    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v6, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mControlSpringIndex:I

    invoke-virtual {v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    .line 265
    .local v2, "controlSpring":Lnet/oneplus/h2launcher/quickpage/rebound/Spring;
    if-eqz v4, :cond_0

    .line 266
    invoke-interface {v4, p1, v2}, Lnet/oneplus/h2launcher/quickpage/rebound/SpringListener;->onSpringChainUpdate(Lnet/oneplus/h2launcher/quickpage/rebound/Spring;Lnet/oneplus/h2launcher/quickpage/rebound/Spring;)V

    goto :goto_0

    .line 252
    .end local v2    # "controlSpring":Lnet/oneplus/h2launcher/quickpage/rebound/Spring;
    :cond_5
    iget v5, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mControlSpringIndex:I

    if-ge v3, v5, :cond_6

    .line 253
    add-int/lit8 v1, v3, -0x1

    goto :goto_1

    .line 254
    :cond_6
    iget v5, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mControlSpringIndex:I

    if-le v3, v5, :cond_2

    .line 255
    add-int/lit8 v0, v3, 0x1

    goto :goto_1
.end method

.method public onSpringEndStateChange(Lnet/oneplus/h2launcher/quickpage/rebound/Spring;)V
    .locals 0
    .param p1, "spring"    # Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    .prologue
    .line 283
    return-void
.end method

.method public onSpringUpdate(Lnet/oneplus/h2launcher/quickpage/rebound/Spring;)V
    .locals 8
    .param p1, "spring"    # Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    .prologue
    const/4 v5, -0x1

    .line 210
    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 211
    .local v2, "idx":I
    if-gez v2, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/quickpage/rebound/SpringListener;

    .line 215
    .local v3, "listener":Lnet/oneplus/h2launcher/quickpage/rebound/SpringListener;
    const/4 v0, -0x1

    .line 216
    .local v0, "above":I
    const/4 v1, -0x1

    .line 217
    .local v1, "below":I
    iget v4, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mControlSpringIndex:I

    if-ne v2, v4, :cond_5

    .line 218
    add-int/lit8 v1, v2, -0x1

    .line 219
    add-int/lit8 v0, v2, 0x1

    .line 225
    :cond_2
    :goto_1
    if-le v0, v5, :cond_3

    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 226
    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/quickpage/rebound/Spring;->getCurrentValue()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lnet/oneplus/h2launcher/quickpage/rebound/Spring;->setEndValue(D)Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    .line 228
    :cond_3
    if-le v1, v5, :cond_4

    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 229
    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/quickpage/rebound/Spring;->getCurrentValue()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lnet/oneplus/h2launcher/quickpage/rebound/Spring;->setEndValue(D)Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    .line 232
    :cond_4
    if-eqz v3, :cond_0

    .line 233
    invoke-interface {v3, p1}, Lnet/oneplus/h2launcher/quickpage/rebound/SpringListener;->onSpringUpdate(Lnet/oneplus/h2launcher/quickpage/rebound/Spring;)V

    goto :goto_0

    .line 220
    :cond_5
    iget v4, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mControlSpringIndex:I

    if-ge v2, v4, :cond_6

    .line 221
    add-int/lit8 v1, v2, -0x1

    goto :goto_1

    .line 222
    :cond_6
    iget v4, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mControlSpringIndex:I

    if-le v2, v4, :cond_2

    .line 223
    add-int/lit8 v0, v2, 0x1

    goto :goto_1
.end method

.method public removeSpring(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 155
    const-string v0, "SpringChain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing spring at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 157
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 159
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_1

    .line 160
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 162
    :cond_1
    return-void
.end method

.method public setControlSpringIndex(I)Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;
    .locals 5
    .param p1, "i"    # I

    .prologue
    .line 170
    const-string v2, "SpringChain"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setControlSpringIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mControlSpringIndex:I

    .line 172
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mSprings:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v3, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mControlSpringIndex:I

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    .line 173
    .local v0, "controlSpring":Lnet/oneplus/h2launcher/quickpage/rebound/Spring;
    if-nez v0, :cond_0

    .line 174
    const/4 p0, 0x0

    .line 182
    .end local p0    # "this":Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;
    :goto_0
    return-object p0

    .line 176
    .restart local p0    # "this":Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;
    :cond_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mSpringSystem:Lnet/oneplus/h2launcher/quickpage/rebound/SpringSystem;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/quickpage/rebound/SpringSystem;->getAllSprings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    .line 177
    .local v1, "spring":Lnet/oneplus/h2launcher/quickpage/rebound/Spring;
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mAttachmentSpringConfig:Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;

    invoke-virtual {v1, v3}, Lnet/oneplus/h2launcher/quickpage/rebound/Spring;->setSpringConfig(Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;)Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    .line 178
    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/quickpage/rebound/Spring;->setControlSpring(Lnet/oneplus/h2launcher/quickpage/rebound/Spring;)V

    goto :goto_1

    .line 181
    .end local v1    # "spring":Lnet/oneplus/h2launcher/quickpage/rebound/Spring;
    :cond_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->getControlSpring()Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    move-result-object v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/rebound/SpringChain;->mMainSpringConfig:Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/quickpage/rebound/Spring;->setSpringConfig(Lnet/oneplus/h2launcher/quickpage/rebound/SpringConfig;)Lnet/oneplus/h2launcher/quickpage/rebound/Spring;

    goto :goto_0
.end method
