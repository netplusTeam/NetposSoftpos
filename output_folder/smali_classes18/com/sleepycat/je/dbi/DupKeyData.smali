.class public Lcom/sleepycat/je/dbi/DupKeyData;
.super Ljava/lang/Object;
.source "DupKeyData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/dbi/DupKeyData$PutNoOverwriteComparator;,
        Lcom/sleepycat/je/dbi/DupKeyData$NextNoDupComparator;,
        Lcom/sleepycat/je/dbi/DupKeyData$TwoPartKeyComparator;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final PREFIX_ONLY:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static combine(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/DatabaseEntry;
    .locals 6
    .param p0, "paramKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p1, "paramData"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 55
    nop

    .line 56
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v1

    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v2

    .line 57
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v4

    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v5

    .line 56
    invoke-static/range {v0 .. v5}, Lcom/sleepycat/je/dbi/DupKeyData;->combine([BII[BII)[B

    move-result-object v0

    .line 58
    .local v0, "buf":[B
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1, v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V

    return-object v1
.end method

.method public static combine([BII[BII)[B
    .locals 4
    .param p0, "key"    # [B
    .param p1, "keyOff"    # I
    .param p2, "keySize"    # I
    .param p3, "data"    # [B
    .param p4, "dataOff"    # I
    .param p5, "dataSize"    # I

    .line 71
    invoke-static {p2}, Lcom/sleepycat/util/PackedInteger;->getWriteIntLength(I)I

    move-result v0

    .line 72
    .local v0, "keySizeLen":I
    add-int v1, v0, p2

    add-int/2addr v1, p5

    new-array v1, v1, [B

    .line 73
    .local v1, "buf":[B
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    invoke-static {p3, p4, v1, p2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    add-int v2, p2, p5

    .line 76
    invoke-static {v1, v2, p2}, Lcom/sleepycat/util/PackedInteger;->writeReverseInt([BII)I

    move-result v2

    .line 77
    .local v2, "nextOff":I
    array-length v3, v1

    if-ne v2, v3, :cond_0

    .line 78
    return-object v1

    .line 77
    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method public static combine([B[B)[B
    .locals 6
    .param p0, "key"    # [B
    .param p1, "data"    # [B

    .line 62
    array-length v2, p0

    array-length v5, p1

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/je/dbi/DupKeyData;->combine([BII[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static compareMainKey([B[BIILjava/util/Comparator;)I
    .locals 8
    .param p0, "keyBytes1"    # [B
    .param p1, "keyBytes2"    # [B
    .param p2, "keyOff2"    # I
    .param p3, "keySize2"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[BII",
            "Ljava/util/Comparator<",
            "[B>;)I"
        }
    .end annotation

    .line 390
    .local p4, "btreeComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 391
    invoke-static {p0, v0}, Lcom/sleepycat/util/PackedInteger;->readReverseInt([BI)I

    move-result v0

    .line 392
    .local v0, "origKeySize1":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 396
    .local v1, "keySize1":I
    :goto_0
    if-nez p4, :cond_1

    .line 397
    const/4 v3, 0x0

    .line 398
    move-object v2, p0

    move v4, v1

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v2 .. v7}, Lcom/sleepycat/je/tree/Key;->compareUnsignedBytes([BII[BII)I

    move-result v2

    .local v2, "keyCmp":I
    goto :goto_1

    .line 401
    .end local v2    # "keyCmp":I
    :cond_1
    new-array v2, v1, [B

    .line 402
    .local v2, "key1":[B
    new-array v3, p3, [B

    .line 403
    .local v3, "key2":[B
    const/4 v4, 0x0

    invoke-static {p0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    invoke-static {p1, p2, v3, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 405
    invoke-interface {p4, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    move v2, v4

    .line 407
    .end local v3    # "key2":[B
    .local v2, "keyCmp":I
    :goto_1
    return v2
.end method

.method public static compareMainKey([B[BLjava/util/Comparator;)I
    .locals 3
    .param p0, "keyBytes1"    # [B
    .param p1, "keyBytes2"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/util/Comparator<",
            "[B>;)I"
        }
    .end annotation

    .line 371
    .local p2, "btreeComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 372
    invoke-static {p1, v0}, Lcom/sleepycat/util/PackedInteger;->readReverseInt([BI)I

    move-result v0

    .line 373
    .local v0, "origKeySize2":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 376
    .local v1, "keySize2":I
    :goto_0
    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v1, p2}, Lcom/sleepycat/je/dbi/DupKeyData;->compareMainKey([B[BIILjava/util/Comparator;)I

    move-result v2

    return v2
.end method

.method public static getData([BII)[B
    .locals 6
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 212
    array-length v0, p0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_4

    .line 214
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v0}, Lcom/sleepycat/util/PackedInteger;->readReverseInt([BI)I

    move-result v0

    .line 215
    .local v0, "keyLen":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 216
    if-ltz v0, :cond_2

    if-gt v0, p2, :cond_2

    .line 218
    add-int v1, p1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v1}, Lcom/sleepycat/util/PackedInteger;->getReadIntLength([BI)I

    move-result v1

    .line 220
    .local v1, "keyLenSize":I
    sub-int v2, p2, v0

    sub-int/2addr v2, v1

    .line 221
    .local v2, "dataLen":I
    if-ltz v2, :cond_1

    .line 222
    add-int v3, v0, v2

    if-gt v3, p2, :cond_0

    .line 224
    new-array v3, v2, [B

    .line 225
    .local v3, "data":[B
    add-int v4, p1, v0

    const/4 v5, 0x0

    invoke-static {p0, v4, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    return-object v3

    .line 222
    .end local v3    # "data":[B
    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 221
    :cond_1
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 216
    .end local v1    # "keyLenSize":I
    .end local v2    # "dataLen":I
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 215
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 212
    .end local v0    # "keyLen":I
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static getKey([BII)[B
    .locals 3
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 198
    array-length v0, p0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_2

    .line 200
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v0}, Lcom/sleepycat/util/PackedInteger;->readReverseInt([BI)I

    move-result v0

    .line 201
    .local v0, "keyLen":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 202
    if-ltz v0, :cond_0

    if-gt v0, p2, :cond_0

    .line 204
    new-array v1, v0, [B

    .line 205
    .local v1, "key":[B
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    return-object v1

    .line 202
    .end local v1    # "key":[B
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 201
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 198
    .end local v0    # "keyLen":I
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static getKeyLength([BII)I
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 187
    array-length v0, p0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_2

    .line 189
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v0}, Lcom/sleepycat/util/PackedInteger;->readReverseInt([BI)I

    move-result v0

    .line 190
    .local v0, "keyLen":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 191
    if-ltz v0, :cond_0

    if-gt v0, p2, :cond_0

    .line 193
    return v0

    .line 191
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 190
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 187
    .end local v0    # "keyLen":I
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static makePrefixKey([BII)[B
    .locals 2
    .param p0, "key"    # [B
    .param p1, "keyOff"    # I
    .param p2, "keySize"    # I

    .line 179
    add-int/lit8 v0, p2, 0x1

    new-array v0, v0, [B

    .line 180
    .local v0, "buf":[B
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    const/4 v1, -0x1

    aput-byte v1, v0, p2

    .line 182
    return-object v0
.end method

.method public static removeData([B)Lcom/sleepycat/je/DatabaseEntry;
    .locals 3
    .param p0, "twoPartKey"    # [B

    .line 162
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 163
    invoke-static {p0, v0}, Lcom/sleepycat/util/PackedInteger;->readReverseInt([BI)I

    move-result v0

    .line 164
    .local v0, "keySize":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 165
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    const/4 v2, 0x0

    invoke-static {p0, v2, v0}, Lcom/sleepycat/je/dbi/DupKeyData;->makePrefixKey([BII)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V

    return-object v1

    .line 164
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public static replaceData([B[B)[B
    .locals 8
    .param p0, "twoPartKey"    # [B
    .param p1, "newData"    # [B

    .line 146
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 147
    invoke-static {p0, v0}, Lcom/sleepycat/util/PackedInteger;->readReverseInt([BI)I

    move-result v0

    .line 148
    .local v0, "origKeySize":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v0

    .line 151
    .local v4, "keySize":I
    :goto_0
    const/4 v3, 0x0

    const/4 v6, 0x0

    array-length v7, p1

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v2 .. v7}, Lcom/sleepycat/je/dbi/DupKeyData;->combine([BII[BII)[B

    move-result-object v1

    return-object v1
.end method

.method public static split(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 2
    .param p0, "twoPartKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p1, "paramKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "paramData"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 97
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v1

    invoke-static {v0, v1, p1, p2}, Lcom/sleepycat/je/dbi/DupKeyData;->split([BILcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 99
    return-void

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static split([BILcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 6
    .param p0, "twoPartKey"    # [B
    .param p1, "twoPartKeySize"    # I
    .param p2, "paramKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "paramData"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 109
    add-int/lit8 v0, p1, -0x1

    .line 110
    invoke-static {p0, v0}, Lcom/sleepycat/util/PackedInteger;->readReverseInt([BI)I

    move-result v0

    .line 111
    .local v0, "keySize":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 113
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 114
    new-array v2, v0, [B

    .line 115
    .local v2, "keyBuf":[B
    invoke-static {p0, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseEntry;->getPartial()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p2, v2, v1, v0}, Lcom/sleepycat/je/DatabaseEntry;->setData([BII)V

    goto :goto_1

    .line 118
    :cond_1
    :goto_0
    invoke-static {p2, v2}, Lcom/sleepycat/je/tree/LN;->setEntry(Lcom/sleepycat/je/DatabaseEntry;[B)V

    .line 124
    .end local v2    # "keyBuf":[B
    :cond_2
    :goto_1
    if-eqz p3, :cond_5

    .line 125
    add-int/lit8 v2, p1, -0x1

    .line 126
    invoke-static {p0, v2}, Lcom/sleepycat/util/PackedInteger;->getReadIntLength([BI)I

    move-result v2

    .line 128
    .local v2, "keySizeLen":I
    sub-int v3, p1, v0

    sub-int/2addr v3, v2

    .line 129
    .local v3, "dataSize":I
    new-array v4, v3, [B

    .line 130
    .local v4, "dataBuf":[B
    invoke-static {p0, v0, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    if-eqz v3, :cond_4

    invoke-virtual {p3}, Lcom/sleepycat/je/DatabaseEntry;->getPartial()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    .line 135
    :cond_3
    invoke-virtual {p3, v4, v1, v3}, Lcom/sleepycat/je/DatabaseEntry;->setData([BII)V

    goto :goto_3

    .line 133
    :cond_4
    :goto_2
    invoke-static {p3, v4}, Lcom/sleepycat/je/tree/LN;->setEntry(Lcom/sleepycat/je/DatabaseEntry;[B)V

    .line 138
    .end local v2    # "keySizeLen":I
    .end local v3    # "dataSize":I
    .end local v4    # "dataBuf":[B
    :cond_5
    :goto_3
    return-void

    .line 111
    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method
