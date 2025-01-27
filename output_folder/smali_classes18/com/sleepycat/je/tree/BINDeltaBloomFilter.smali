.class public Lcom/sleepycat/je/tree/BINDeltaBloomFilter;
.super Ljava/lang/Object;
.source "BINDeltaBloomFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/tree/BINDeltaBloomFilter$HashContext;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final FNVOffsetBasis:J = 0x811c9dc5L

.field private static final FNVPrime:J = 0x1000193L

.field private static final K:I = 0x3

.field private static final M_N_RATIO:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([BJ)J
    .locals 2
    .param p0, "x0"    # [B
    .param p1, "x1"    # J

    .line 30
    invoke-static {p0, p1, p2}, Lcom/sleepycat/je/tree/BINDeltaBloomFilter;->hashFNV([BJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static add([B[BLcom/sleepycat/je/tree/BINDeltaBloomFilter$HashContext;)V
    .locals 4
    .param p0, "bf"    # [B
    .param p1, "key"    # [B
    .param p2, "hc"    # Lcom/sleepycat/je/tree/BINDeltaBloomFilter$HashContext;

    .line 79
    invoke-static {p0, p1, p2}, Lcom/sleepycat/je/tree/BINDeltaBloomFilter;->hash([B[BLcom/sleepycat/je/tree/BINDeltaBloomFilter$HashContext;)V

    .line 81
    iget-object v0, p2, Lcom/sleepycat/je/tree/BINDeltaBloomFilter$HashContext;->hashes:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 82
    .local v3, "idx":I
    invoke-static {p0, v3}, Lcom/sleepycat/je/tree/BINDeltaBloomFilter;->setBit([BI)V

    .line 81
    .end local v3    # "idx":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method

.method static contains([B[B)Z
    .locals 7
    .param p0, "bf"    # [B
    .param p1, "key"    # [B

    .line 91
    new-instance v0, Lcom/sleepycat/je/tree/BINDeltaBloomFilter$HashContext;

    invoke-direct {v0}, Lcom/sleepycat/je/tree/BINDeltaBloomFilter$HashContext;-><init>()V

    .line 93
    .local v0, "hc":Lcom/sleepycat/je/tree/BINDeltaBloomFilter$HashContext;
    invoke-static {p0, p1, v0}, Lcom/sleepycat/je/tree/BINDeltaBloomFilter;->hash([B[BLcom/sleepycat/je/tree/BINDeltaBloomFilter$HashContext;)V

    .line 95
    iget-object v1, v0, Lcom/sleepycat/je/tree/BINDeltaBloomFilter$HashContext;->hashes:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget v5, v1, v4

    .line 96
    .local v5, "idx":I
    invoke-static {p0, v5}, Lcom/sleepycat/je/tree/BINDeltaBloomFilter;->getBit([BI)Z

    move-result v6

    if-nez v6, :cond_0

    .line 97
    return v3

    .line 95
    .end local v5    # "idx":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 101
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static dumpLog([BLjava/lang/StringBuilder;Z)V
    .locals 3
    .param p0, "bf"    # [B
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 198
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    .line 200
    .local v0, "nbits":I
    const-string v1, "<BloomFilter>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 202
    invoke-static {p0, v1}, Lcom/sleepycat/je/tree/BINDeltaBloomFilter;->getBit([BI)Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    .end local v1    # "i":I
    :cond_0
    const-string v1, "</BloomFilter>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    return-void
.end method

.method private static getBit([BI)Z
    .locals 3
    .param p0, "bf"    # [B
    .param p1, "idx"    # I

    .line 233
    div-int/lit8 v0, p1, 0x8

    aget-byte v0, p0, v0

    rem-int/lit8 v1, p1, 0x8

    const/4 v2, 0x1

    shl-int v1, v2, v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static getByteSize(I)I
    .locals 2
    .param p0, "numKeys"    # I

    .line 158
    if-lez p0, :cond_0

    .line 159
    mul-int/lit8 v0, p0, 0x8

    .line 160
    .local v0, "nbits":I
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    return v1

    .line 158
    .end local v0    # "nbits":I
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static getLogSize(I)I
    .locals 2
    .param p0, "numKeys"    # I

    .line 167
    invoke-static {p0}, Lcom/sleepycat/je/tree/BINDeltaBloomFilter;->getByteSize(I)I

    move-result v0

    .line 168
    .local v0, "nbytes":I
    invoke-static {v0}, Lcom/sleepycat/je/log/LogUtils;->getPackedIntLogSize(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public static getLogSize([B)I
    .locals 1
    .param p0, "bf"    # [B

    .line 175
    invoke-static {p0}, Lcom/sleepycat/je/log/LogUtils;->getByteArrayLogSize([B)I

    move-result v0

    return v0
.end method

.method static getMemorySize([B)I
    .locals 1
    .param p0, "bf"    # [B

    .line 150
    array-length v0, p0

    invoke-static {v0}, Lcom/sleepycat/je/dbi/MemoryBudget;->byteArraySize(I)I

    move-result v0

    return v0
.end method

.method private static hash([B[BLcom/sleepycat/je/tree/BINDeltaBloomFilter$HashContext;)V
    .locals 11
    .param p0, "bf"    # [B
    .param p1, "key"    # [B
    .param p2, "hc"    # Lcom/sleepycat/je/tree/BINDeltaBloomFilter$HashContext;

    .line 110
    iget-object v0, p2, Lcom/sleepycat/je/tree/BINDeltaBloomFilter$HashContext;->hashes:[I

    array-length v0, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 112
    iget-object v0, p2, Lcom/sleepycat/je/tree/BINDeltaBloomFilter$HashContext;->rng:Ljava/util/Random;

    iget-wide v1, p2, Lcom/sleepycat/je/tree/BINDeltaBloomFilter$HashContext;->initFNVvalue:J

    invoke-static {p1, v1, v2}, Lcom/sleepycat/je/tree/BINDeltaBloomFilter;->hashFNV([BJ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Random;->setSeed(J)V

    .line 114
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    .line 116
    .local v0, "numBits":I
    const/16 v1, 0x400

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gt v0, v1, :cond_0

    .line 117
    iget-object v1, p2, Lcom/sleepycat/je/tree/BINDeltaBloomFilter$HashContext;->rng:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    .line 118
    .local v1, "hash":I
    iget-object v5, p2, Lcom/sleepycat/je/tree/BINDeltaBloomFilter$HashContext;->hashes:[I

    and-int/lit16 v6, v1, 0x3ff

    rem-int/2addr v6, v0

    aput v6, v5, v4

    .line 119
    shr-int/lit8 v1, v1, 0xa

    .line 120
    iget-object v4, p2, Lcom/sleepycat/je/tree/BINDeltaBloomFilter$HashContext;->hashes:[I

    and-int/lit16 v5, v1, 0x3ff

    rem-int/2addr v5, v0

    aput v5, v4, v3

    .line 121
    shr-int/lit8 v1, v1, 0xa

    .line 122
    iget-object v3, p2, Lcom/sleepycat/je/tree/BINDeltaBloomFilter$HashContext;->hashes:[I

    and-int/lit16 v4, v1, 0x3ff

    rem-int/2addr v4, v0

    aput v4, v3, v2

    .line 123
    .end local v1    # "hash":I
    goto :goto_0

    .line 124
    :cond_0
    iget-object v1, p2, Lcom/sleepycat/je/tree/BINDeltaBloomFilter$HashContext;->hashes:[I

    iget-object v5, p2, Lcom/sleepycat/je/tree/BINDeltaBloomFilter$HashContext;->rng:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v5

    int-to-long v5, v5

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    int-to-long v9, v0

    rem-long/2addr v5, v9

    long-to-int v5, v5

    aput v5, v1, v4

    .line 125
    iget-object v1, p2, Lcom/sleepycat/je/tree/BINDeltaBloomFilter$HashContext;->hashes:[I

    iget-object v4, p2, Lcom/sleepycat/je/tree/BINDeltaBloomFilter$HashContext;->rng:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    int-to-long v9, v0

    rem-long/2addr v4, v9

    long-to-int v4, v4

    aput v4, v1, v3

    .line 126
    iget-object v1, p2, Lcom/sleepycat/je/tree/BINDeltaBloomFilter$HashContext;->hashes:[I

    iget-object v3, p2, Lcom/sleepycat/je/tree/BINDeltaBloomFilter$HashContext;->rng:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v7

    int-to-long v5, v0

    rem-long/2addr v3, v5

    long-to-int v3, v3

    aput v3, v1, v2

    .line 128
    :goto_0
    return-void

    .line 110
    .end local v0    # "numBits":I
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static hashFNV([BJ)J
    .locals 9
    .param p0, "key"    # [B
    .param p1, "initValue"    # J

    .line 135
    move-wide v0, p1

    .line 137
    .local v0, "hash":J
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, p0, v3

    .line 138
    .local v4, "b":B
    const-wide/32 v5, 0x1000193

    mul-long/2addr v5, v0

    const-wide/16 v7, -0x1

    and-long v0, v5, v7

    .line 139
    int-to-long v5, v4

    xor-long/2addr v0, v5

    .line 137
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 142
    :cond_0
    return-wide v0
.end method

.method public static readFromLog(Ljava/nio/ByteBuffer;I)[B
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "entryVersion"    # I

    .line 190
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sleepycat/je/log/LogUtils;->readByteArray(Ljava/nio/ByteBuffer;Z)[B

    move-result-object v0

    return-object v0
.end method

.method private static setBit([BI)V
    .locals 4
    .param p0, "bf"    # [B
    .param p1, "idx"    # I

    .line 226
    div-int/lit8 v0, p1, 0x8

    aget-byte v1, p0, v0

    rem-int/lit8 v2, p1, 0x8

    const/4 v3, 0x1

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 227
    return-void
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 4
    .param p0, "bf"    # [B

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x8

    .line 216
    .local v1, "nbits":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 217
    invoke-static {p0, v2}, Lcom/sleepycat/je/tree/BINDeltaBloomFilter;->getBit([BI)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static writeToLog([BLjava/nio/ByteBuffer;)V
    .locals 0
    .param p0, "bf"    # [B
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 182
    invoke-static {p1, p0}, Lcom/sleepycat/je/log/LogUtils;->writeByteArray(Ljava/nio/ByteBuffer;[B)V

    .line 183
    return-void
.end method
