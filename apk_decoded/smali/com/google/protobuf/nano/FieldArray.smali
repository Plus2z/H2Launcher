.class Lcom/google/protobuf/nano/FieldArray;
.super Ljava/lang/Object;
.source "FieldArray.java"


# static fields
.field private static final DELETED:Lcom/google/protobuf/nano/FieldData;


# instance fields
.field private mData:[Lcom/google/protobuf/nano/FieldData;

.field private mFieldNumbers:[I

.field private mGarbage:Z

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/google/protobuf/nano/FieldData;

    invoke-direct {v0}, Lcom/google/protobuf/nano/FieldData;-><init>()V

    sput-object v0, Lcom/google/protobuf/nano/FieldArray;->DELETED:Lcom/google/protobuf/nano/FieldData;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/FieldArray;-><init>(I)V

    .line 53
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v1, p0, Lcom/google/protobuf/nano/FieldArray;->mGarbage:Z

    .line 61
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/FieldArray;->idealIntArraySize(I)I

    move-result p1

    .line 62
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    .line 63
    new-array v0, p1, [Lcom/google/protobuf/nano/FieldData;

    iput-object v0, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    .line 64
    iput v1, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    .line 65
    return-void
.end method

.method private arrayEquals([I[II)Z
    .locals 3
    .param p1, "a"    # [I
    .param p2, "b"    # [I
    .param p3, "size"    # I

    .prologue
    .line 257
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 258
    aget v1, p1, v0

    aget v2, p2, v0

    if-eq v1, v2, :cond_0

    .line 259
    const/4 v1, 0x0

    .line 262
    :goto_1
    return v1

    .line 257
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private arrayEquals([Lcom/google/protobuf/nano/FieldData;[Lcom/google/protobuf/nano/FieldData;I)Z
    .locals 3
    .param p1, "a"    # [Lcom/google/protobuf/nano/FieldData;
    .param p2, "b"    # [Lcom/google/protobuf/nano/FieldData;
    .param p3, "size"    # I

    .prologue
    .line 266
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 267
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldData;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 268
    const/4 v1, 0x0

    .line 271
    :goto_1
    return v1

    .line 266
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private binarySearch(I)I
    .locals 5
    .param p1, "value"    # I

    .prologue
    .line 238
    const/4 v1, 0x0

    .line 239
    .local v1, "lo":I
    iget v4, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    add-int/lit8 v0, v4, -0x1

    .line 241
    .local v0, "hi":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 242
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 243
    .local v2, "mid":I
    iget-object v4, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    aget v3, v4, v2

    .line 245
    .local v3, "midVal":I
    if-ge v3, p1, :cond_0

    .line 246
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 247
    :cond_0
    if-le v3, p1, :cond_2

    .line 248
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 253
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :cond_1
    xor-int/lit8 v2, v1, -0x1

    :cond_2
    return v2
.end method

.method private gc()V
    .locals 7

    .prologue
    .line 94
    iget v2, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    .line 95
    .local v2, "n":I
    const/4 v3, 0x0

    .line 96
    .local v3, "o":I
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    .line 97
    .local v1, "keys":[I
    iget-object v5, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    .line 99
    .local v5, "values":[Lcom/google/protobuf/nano/FieldData;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 100
    aget-object v4, v5, v0

    .line 102
    .local v4, "val":Lcom/google/protobuf/nano/FieldData;
    sget-object v6, Lcom/google/protobuf/nano/FieldArray;->DELETED:Lcom/google/protobuf/nano/FieldData;

    if-eq v4, v6, :cond_1

    .line 103
    if-eq v0, v3, :cond_0

    .line 104
    aget v6, v1, v0

    aput v6, v1, v3

    .line 105
    aput-object v4, v5, v3

    .line 106
    const/4 v6, 0x0

    aput-object v6, v5, v0

    .line 109
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 99
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    .end local v4    # "val":Lcom/google/protobuf/nano/FieldData;
    :cond_2
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/google/protobuf/nano/FieldArray;->mGarbage:Z

    .line 114
    iput v3, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    .line 115
    return-void
.end method

.method private idealByteArraySize(I)I
    .locals 3
    .param p1, "need"    # I

    .prologue
    const/4 v2, 0x1

    .line 230
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 231
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p1, v1, :cond_1

    .line 232
    shl-int v1, v2, v0

    add-int/lit8 p1, v1, -0xc

    .line 234
    .end local p1    # "need":I
    :cond_0
    return p1

    .line 230
    .restart local p1    # "need":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private idealIntArraySize(I)I
    .locals 1
    .param p1, "need"    # I

    .prologue
    .line 226
    mul-int/lit8 v0, p1, 0x4

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/FieldArray;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method public dataAt(I)Lcom/google/protobuf/nano/FieldData;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/google/protobuf/nano/FieldArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/google/protobuf/nano/FieldArray;->gc()V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 197
    if-ne p1, p0, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v1

    .line 200
    :cond_1
    instance-of v3, p1, Lcom/google/protobuf/nano/FieldArray;

    if-nez v3, :cond_2

    move v1, v2

    .line 201
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 204
    check-cast v0, Lcom/google/protobuf/nano/FieldArray;

    .line 205
    .local v0, "other":Lcom/google/protobuf/nano/FieldArray;
    invoke-virtual {p0}, Lcom/google/protobuf/nano/FieldArray;->size()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/protobuf/nano/FieldArray;->size()I

    move-result v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 206
    goto :goto_0

    .line 208
    :cond_3
    iget-object v3, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget-object v4, v0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget v5, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    invoke-direct {p0, v3, v4, v5}, Lcom/google/protobuf/nano/FieldArray;->arrayEquals([I[II)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    iget-object v4, v0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    iget v5, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    invoke-direct {p0, v3, v4, v5}, Lcom/google/protobuf/nano/FieldArray;->arrayEquals([Lcom/google/protobuf/nano/FieldData;[Lcom/google/protobuf/nano/FieldData;I)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public get(I)Lcom/google/protobuf/nano/FieldData;
    .locals 3
    .param p1, "fieldNumber"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/FieldArray;->binarySearch(I)I

    move-result v0

    .line 74
    .local v0, "i":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object v1, v1, v0

    sget-object v2, Lcom/google/protobuf/nano/FieldArray;->DELETED:Lcom/google/protobuf/nano/FieldData;

    if-ne v1, v2, :cond_1

    .line 75
    :cond_0
    const/4 v1, 0x0

    .line 77
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 214
    iget-boolean v2, p0, Lcom/google/protobuf/nano/FieldArray;->mGarbage:Z

    if-eqz v2, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/google/protobuf/nano/FieldArray;->gc()V

    .line 217
    :cond_0
    const/16 v1, 0x11

    .line 218
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    if-ge v0, v2, :cond_1

    .line 219
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    aget v3, v3, v0

    add-int v1, v2, v3

    .line 220
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldData;->hashCode()I

    move-result v3

    add-int v1, v2, v3

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    :cond_1
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/google/protobuf/nano/FieldArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(ILcom/google/protobuf/nano/FieldData;)V
    .locals 8
    .param p1, "fieldNumber"    # I
    .param p2, "data"    # Lcom/google/protobuf/nano/FieldData;

    .prologue
    const/4 v6, 0x0

    .line 122
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/FieldArray;->binarySearch(I)I

    move-result v0

    .line 124
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 125
    iget-object v4, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aput-object p2, v4, v0

    .line 164
    :goto_0
    return-void

    .line 127
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 129
    iget v4, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object v4, v4, v0

    sget-object v5, Lcom/google/protobuf/nano/FieldArray;->DELETED:Lcom/google/protobuf/nano/FieldData;

    if-ne v4, v5, :cond_1

    .line 130
    iget-object v4, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    aput p1, v4, v0

    .line 131
    iget-object v4, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aput-object p2, v4, v0

    goto :goto_0

    .line 135
    :cond_1
    iget-boolean v4, p0, Lcom/google/protobuf/nano/FieldArray;->mGarbage:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    iget-object v5, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    array-length v5, v5

    if-lt v4, v5, :cond_2

    .line 136
    invoke-direct {p0}, Lcom/google/protobuf/nano/FieldArray;->gc()V

    .line 139
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/FieldArray;->binarySearch(I)I

    move-result v4

    xor-int/lit8 v0, v4, -0x1

    .line 142
    :cond_2
    iget v4, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    iget-object v5, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    array-length v5, v5

    if-lt v4, v5, :cond_3

    .line 143
    iget v4, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Lcom/google/protobuf/nano/FieldArray;->idealIntArraySize(I)I

    move-result v1

    .line 145
    .local v1, "n":I
    new-array v2, v1, [I

    .line 146
    .local v2, "nkeys":[I
    new-array v3, v1, [Lcom/google/protobuf/nano/FieldData;

    .line 148
    .local v3, "nvalues":[Lcom/google/protobuf/nano/FieldData;
    iget-object v4, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget-object v5, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    iget-object v4, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    iget-object v5, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    iput-object v2, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    .line 152
    iput-object v3, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    .line 155
    .end local v1    # "n":I
    .end local v2    # "nkeys":[I
    .end local v3    # "nvalues":[Lcom/google/protobuf/nano/FieldData;
    :cond_3
    iget v4, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    sub-int/2addr v4, v0

    if-eqz v4, :cond_4

    .line 156
    iget-object v4, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    iget-object v5, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    iget-object v4, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    iget-object v5, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    :cond_4
    iget-object v4, p0, Lcom/google/protobuf/nano/FieldArray;->mFieldNumbers:[I

    aput p1, v4, v0

    .line 161
    iget-object v4, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aput-object p2, v4, v0

    .line 162
    iget v4, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    goto :goto_0
.end method

.method public remove(I)V
    .locals 3
    .param p1, "fieldNumber"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/FieldArray;->binarySearch(I)I

    move-result v0

    .line 87
    .local v0, "i":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    aget-object v1, v1, v0

    sget-object v2, Lcom/google/protobuf/nano/FieldArray;->DELETED:Lcom/google/protobuf/nano/FieldData;

    if-eq v1, v2, :cond_0

    .line 88
    iget-object v1, p0, Lcom/google/protobuf/nano/FieldArray;->mData:[Lcom/google/protobuf/nano/FieldData;

    sget-object v2, Lcom/google/protobuf/nano/FieldArray;->DELETED:Lcom/google/protobuf/nano/FieldData;

    aput-object v2, v1, v0

    .line 89
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/protobuf/nano/FieldArray;->mGarbage:Z

    .line 91
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/google/protobuf/nano/FieldArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/google/protobuf/nano/FieldArray;->gc()V

    .line 175
    :cond_0
    iget v0, p0, Lcom/google/protobuf/nano/FieldArray;->mSize:I

    return v0
.end method
