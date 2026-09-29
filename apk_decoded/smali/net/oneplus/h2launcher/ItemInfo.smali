.class public Lnet/oneplus/h2launcher/ItemInfo;
.super Ljava/lang/Object;
.source "ItemInfo.java"


# static fields
.field public static final EXTRA_PROFILE:Ljava/lang/String; = "profile"

.field public static final NO_ID:I = -0x1


# instance fields
.field public cellX:I

.field public cellY:I

.field public container:J

.field public contentDescription:Ljava/lang/CharSequence;

.field public dropPos:[I

.field public id:J

.field public itemType:I

.field public minSpanX:I

.field public minSpanY:I

.field public rank:I

.field public requiresDbUpdate:Z

.field public screenId:J

.field public spanX:I

.field public spanY:I

.field public title:Ljava/lang/CharSequence;

.field public user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    const/4 v0, 0x1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide v2, p0, Lnet/oneplus/h2launcher/ItemInfo;->id:J

    .line 60
    iput-wide v2, p0, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    .line 65
    iput-wide v2, p0, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    .line 70
    iput v1, p0, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    .line 75
    iput v1, p0, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    .line 80
    iput v0, p0, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    .line 85
    iput v0, p0, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    .line 90
    iput v0, p0, Lnet/oneplus/h2launcher/ItemInfo;->minSpanX:I

    .line 95
    iput v0, p0, Lnet/oneplus/h2launcher/ItemInfo;->minSpanY:I

    .line 100
    iput v4, p0, Lnet/oneplus/h2launcher/ItemInfo;->rank:I

    .line 105
    iput-boolean v4, p0, Lnet/oneplus/h2launcher/ItemInfo;->requiresDbUpdate:Z

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/ItemInfo;->dropPos:[I

    .line 125
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/ItemInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 126
    return-void
.end method

.method constructor <init>(Lnet/oneplus/h2launcher/ItemInfo;)V
    .locals 5
    .param p1, "info"    # Lnet/oneplus/h2launcher/ItemInfo;

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    const/4 v0, 0x1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide v2, p0, Lnet/oneplus/h2launcher/ItemInfo;->id:J

    .line 60
    iput-wide v2, p0, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    .line 65
    iput-wide v2, p0, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    .line 70
    iput v1, p0, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    .line 75
    iput v1, p0, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    .line 80
    iput v0, p0, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    .line 85
    iput v0, p0, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    .line 90
    iput v0, p0, Lnet/oneplus/h2launcher/ItemInfo;->minSpanX:I

    .line 95
    iput v0, p0, Lnet/oneplus/h2launcher/ItemInfo;->minSpanY:I

    .line 100
    iput v4, p0, Lnet/oneplus/h2launcher/ItemInfo;->rank:I

    .line 105
    iput-boolean v4, p0, Lnet/oneplus/h2launcher/ItemInfo;->requiresDbUpdate:Z

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/ItemInfo;->dropPos:[I

    .line 129
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/ItemInfo;->copyFrom(Lnet/oneplus/h2launcher/ItemInfo;)V

    .line 131
    invoke-static {p0}, Lnet/oneplus/h2launcher/LauncherModel;->checkItemInfo(Lnet/oneplus/h2launcher/ItemInfo;)V

    .line 132
    return-void
.end method

.method static writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 200
    if-eqz p1, :cond_0

    .line 201
    invoke-static {p1}, Lnet/oneplus/h2launcher/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 202
    .local v0, "data":[B
    const-string v1, "icon"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 204
    .end local v0    # "data":[B
    :cond_0
    return-void
.end method


# virtual methods
.method public copyFrom(Lnet/oneplus/h2launcher/ItemInfo;)V
    .locals 2
    .param p1, "info"    # Lnet/oneplus/h2launcher/ItemInfo;

    .prologue
    .line 135
    iget-wide v0, p1, Lnet/oneplus/h2launcher/ItemInfo;->id:J

    iput-wide v0, p0, Lnet/oneplus/h2launcher/ItemInfo;->id:J

    .line 136
    iget v0, p1, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    iput v0, p0, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    .line 137
    iget v0, p1, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    iput v0, p0, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    .line 138
    iget v0, p1, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    iput v0, p0, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    .line 139
    iget v0, p1, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    iput v0, p0, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    .line 140
    iget v0, p1, Lnet/oneplus/h2launcher/ItemInfo;->rank:I

    iput v0, p0, Lnet/oneplus/h2launcher/ItemInfo;->rank:I

    .line 141
    iget-wide v0, p1, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    iput-wide v0, p0, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    .line 142
    iget v0, p1, Lnet/oneplus/h2launcher/ItemInfo;->itemType:I

    iput v0, p0, Lnet/oneplus/h2launcher/ItemInfo;->itemType:I

    .line 143
    iget-wide v0, p1, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    iput-wide v0, p0, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    .line 144
    iget-object v0, p1, Lnet/oneplus/h2launcher/ItemInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    iput-object v0, p0, Lnet/oneplus/h2launcher/ItemInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 145
    iget-object v0, p1, Lnet/oneplus/h2launcher/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Lnet/oneplus/h2launcher/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 146
    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 149
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected Intent"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isDisabled()Z
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 182
    const-string v2, "itemType"

    iget v3, p0, Lnet/oneplus/h2launcher/ItemInfo;->itemType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 183
    const-string v2, "container"

    iget-wide v4, p0, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 184
    const-string v2, "screen"

    iget-wide v4, p0, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 185
    const-string v2, "cellX"

    iget v3, p0, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 186
    const-string v2, "cellY"

    iget v3, p0, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 187
    const-string v2, "spanX"

    iget v3, p0, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 188
    const-string v2, "spanY"

    iget v3, p0, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 189
    const-string v2, "rank"

    iget v3, p0, Lnet/oneplus/h2launcher/ItemInfo;->rank:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 190
    invoke-static {p1}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/ItemInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getSerialNumberForUser(Lnet/oneplus/h2launcher/compat/UserHandleCompat;)J

    move-result-wide v0

    .line 191
    .local v0, "serialNumber":J
    const-string v2, "profileId"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 193
    iget-wide v2, p0, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    const-wide/16 v4, -0xc9

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 195
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Screen id should not be EXTRA_EMPTY_SCREEN_ID"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 197
    :cond_0
    return-void
.end method

.method public readFromValues(Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 164
    const-string v0, "itemType"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/ItemInfo;->itemType:I

    .line 165
    const-string v0, "container"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    .line 166
    const-string v0, "screen"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    .line 167
    const-string v0, "cellX"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    .line 168
    const-string v0, "cellY"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    .line 169
    const-string v0, "spanX"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    .line 170
    const-string v0, "spanY"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    .line 171
    const-string v0, "rank"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/ItemInfo;->rank:I

    .line 172
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lnet/oneplus/h2launcher/ItemInfo;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/ItemInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dropPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/ItemInfo;->dropPos:[I

    .line 219
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/ItemInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unbind()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public writeToValues(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 153
    const-string v0, "itemType"

    iget v1, p0, Lnet/oneplus/h2launcher/ItemInfo;->itemType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    const-string v0, "container"

    iget-wide v2, p0, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 155
    const-string v0, "screen"

    iget-wide v2, p0, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 156
    const-string v0, "cellX"

    iget v1, p0, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 157
    const-string v0, "cellY"

    iget v1, p0, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    const-string v0, "spanX"

    iget v1, p0, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    const-string v0, "spanY"

    iget v1, p0, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    const-string v0, "rank"

    iget v1, p0, Lnet/oneplus/h2launcher/ItemInfo;->rank:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    return-void
.end method
