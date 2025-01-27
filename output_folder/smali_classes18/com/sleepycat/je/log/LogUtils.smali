.class public Lcom/sleepycat/je/log/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/log/LogUtils$XidImpl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final INT_BYTES:I = 0x4

.field public static final LONG_BYTES:I = 0x8

.field public static final SHORT_BYTES:I = 0x2

.field public static final UNSIGNED_INT_BYTES:I = 0x4

.field public static final ZERO_LENGTH_BYTE_ARRAY:[B

.field private static logCharset:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/sleepycat/je/log/LogUtils;->ZERO_LENGTH_BYTE_ARRAY:[B

    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/sleepycat/je/log/LogUtils;->logCharset:Ljava/nio/charset/Charset;

    .line 59
    const-string v0, "je.logCharset"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "charsetName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 62
    :try_start_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lcom/sleepycat/je/log/LogUtils;->logCharset:Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 67
    .end local v0    # "charsetName":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpBoolean(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;Ljava/lang/String;)Z
    .locals 2
    .param p0, "itemBuffer"    # Ljava/nio/ByteBuffer;
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "tag"    # Ljava/lang/String;

    .line 465
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    const-string v0, " exists = \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-static {p0}, Lcom/sleepycat/je/log/LogUtils;->readBoolean(Ljava/nio/ByteBuffer;)Z

    move-result v0

    .line 469
    .local v0, "exists":Z
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 470
    if-eqz v0, :cond_0

    .line 471
    const-string v1, "\">"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 474
    :cond_0
    const-string v1, "\"/>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    :goto_0
    return v0
.end method

.method public static getBooleanLogSize()I
    .locals 1

    .line 456
    const/4 v0, 0x1

    return v0
.end method

.method public static getByteArrayLogSize([B)I
    .locals 2
    .param p0, "b"    # [B

    .line 342
    if-nez p0, :cond_0

    .line 343
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/sleepycat/je/log/LogUtils;->getPackedIntLogSize(I)I

    move-result v0

    return v0

    .line 345
    :cond_0
    array-length v0, p0

    .line 346
    .local v0, "len":I
    invoke-static {v0}, Lcom/sleepycat/je/log/LogUtils;->getPackedIntLogSize(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public static getIntLogSize()I
    .locals 1

    .line 153
    const/4 v0, 0x4

    return v0
.end method

.method public static getLongLogSize()I
    .locals 1

    .line 264
    const/16 v0, 0x8

    return v0
.end method

.method public static getPackedIntLogSize(I)I
    .locals 1
    .param p0, "i"    # I

    .line 184
    invoke-static {p0}, Lcom/sleepycat/util/PackedInteger;->getWriteIntLength(I)I

    move-result v0

    return v0
.end method

.method public static getPackedLongLogSize(J)I
    .locals 1
    .param p0, "l"    # J

    .line 295
    invoke-static {p0, p1}, Lcom/sleepycat/util/PackedInteger;->getWriteLongLength(J)I

    move-result v0

    return v0
.end method

.method public static getStringLogSize(Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 410
    invoke-static {p0}, Lcom/sleepycat/utilint/StringUtils;->toUTF8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/log/LogUtils;->getByteArrayLogSize([B)I

    move-result v0

    return v0
.end method

.method public static getTimestampLogSize(Lcom/sleepycat/je/utilint/Timestamp;)I
    .locals 2
    .param p0, "time"    # Lcom/sleepycat/je/utilint/Timestamp;

    .line 433
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/Timestamp;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sleepycat/util/PackedInteger;->getWriteLongLength(J)I

    move-result v0

    return v0
.end method

.method public static getXidSize(Ljavax/transaction/xa/Xid;)I
    .locals 4
    .param p0, "xid"    # Ljavax/transaction/xa/Xid;

    .line 485
    invoke-interface {p0}, Ljavax/transaction/xa/Xid;->getGlobalTransactionId()[B

    move-result-object v0

    .line 486
    .local v0, "gid":[B
    invoke-interface {p0}, Ljavax/transaction/xa/Xid;->getBranchQualifier()[B

    move-result-object v1

    .line 487
    .local v1, "bqual":[B
    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    array-length v3, v0

    :goto_0
    add-int/lit8 v3, v3, 0x6

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    array-length v2, v1

    :goto_1
    add-int/2addr v3, v2

    return v3
.end method

.method public static readBoolean(Ljava/nio/ByteBuffer;)Z
    .locals 2
    .param p0, "logBuf"    # Ljava/nio/ByteBuffer;

    .line 448
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 449
    .local v0, "val":B
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static readByteArray(Ljava/nio/ByteBuffer;Z)[B
    .locals 2
    .param p0, "logBuf"    # Ljava/nio/ByteBuffer;
    .param p1, "unpacked"    # Z

    .line 319
    invoke-static {p0, p1}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;Z)I

    move-result v0

    .line 325
    .local v0, "size":I
    if-gez v0, :cond_0

    .line 326
    const/4 v1, 0x0

    return-object v1

    .line 329
    :cond_0
    if-nez v0, :cond_1

    .line 330
    sget-object v1, Lcom/sleepycat/je/log/LogUtils;->ZERO_LENGTH_BYTE_ARRAY:[B

    return-object v1

    .line 333
    :cond_1
    new-array v1, v0, [B

    .line 334
    .local v1, "b":[B
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 335
    return-object v1
.end method

.method public static readBytesNoLength(Ljava/nio/ByteBuffer;I)[B
    .locals 1
    .param p0, "logBuf"    # Ljava/nio/ByteBuffer;
    .param p1, "size"    # I

    .line 368
    if-nez p1, :cond_0

    .line 369
    sget-object v0, Lcom/sleepycat/je/log/LogUtils;->ZERO_LENGTH_BYTE_ARRAY:[B

    return-object v0

    .line 372
    :cond_0
    new-array v0, p1, [B

    .line 373
    .local v0, "b":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 374
    return-object v0
.end method

.method public static readInt(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p0, "logBuf"    # Ljava/nio/ByteBuffer;

    .line 142
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x0

    .line 143
    .local v0, "ret":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 144
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    .line 145
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    .line 146
    return v0
.end method

.method public static readInt(Ljava/nio/ByteBuffer;Z)I
    .locals 1
    .param p0, "logBuf"    # Ljava/nio/ByteBuffer;
    .param p1, "unpacked"    # Z

    .line 117
    if-eqz p1, :cond_0

    .line 118
    invoke-static {p0}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    .line 120
    :cond_0
    invoke-static {p0}, Lcom/sleepycat/je/log/LogUtils;->readPackedInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public static readIntMSB(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p0, "logBuf"    # Ljava/nio/ByteBuffer;

    .line 205
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 206
    .local v0, "ret":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    .line 207
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 208
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x0

    add-int/2addr v0, v1

    .line 209
    return v0
.end method

.method public static readLong(Ljava/nio/ByteBuffer;)J
    .locals 7
    .param p0, "logBuf"    # Ljava/nio/ByteBuffer;

    .line 249
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/4 v4, 0x0

    shl-long/2addr v0, v4

    .line 250
    .local v0, "ret":J
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 251
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 252
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 253
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 254
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 255
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 256
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 257
    return-wide v0
.end method

.method public static readLong(Ljava/nio/ByteBuffer;Z)J
    .locals 2
    .param p0, "logBuf"    # Ljava/nio/ByteBuffer;
    .param p1, "unpacked"    # Z

    .line 238
    if-eqz p1, :cond_0

    .line 239
    invoke-static {p0}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    return-wide v0

    .line 241
    :cond_0
    invoke-static {p0}, Lcom/sleepycat/je/log/LogUtils;->readPackedLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static readPackedInt(Ljava/nio/ByteBuffer;)I
    .locals 6
    .param p0, "logBuf"    # Ljava/nio/ByteBuffer;

    .line 171
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 172
    .local v0, "a":[B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 173
    .local v1, "oldPos":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    add-int/2addr v2, v1

    .line 174
    .local v2, "off":I
    invoke-static {v0, v2}, Lcom/sleepycat/util/PackedInteger;->getReadIntLength([BI)I

    move-result v3

    .line 175
    .local v3, "len":I
    invoke-static {v0, v2}, Lcom/sleepycat/util/PackedInteger;->readInt([BI)I

    move-result v4

    .line 176
    .local v4, "val":I
    add-int v5, v1, v3

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 177
    return v4
.end method

.method public static readPackedLong(Ljava/nio/ByteBuffer;)J
    .locals 7
    .param p0, "logBuf"    # Ljava/nio/ByteBuffer;

    .line 282
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 283
    .local v0, "a":[B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 284
    .local v1, "oldPos":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    add-int/2addr v2, v1

    .line 285
    .local v2, "off":I
    invoke-static {v0, v2}, Lcom/sleepycat/util/PackedInteger;->getReadLongLength([BI)I

    move-result v3

    .line 286
    .local v3, "len":I
    invoke-static {v0, v2}, Lcom/sleepycat/util/PackedInteger;->readLong([BI)J

    move-result-wide v4

    .line 287
    .local v4, "val":J
    add-int v6, v1, v3

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 288
    return-wide v4
.end method

.method public static readShort(Ljava/nio/ByteBuffer;)S
    .locals 2
    .param p0, "logBuf"    # Ljava/nio/ByteBuffer;

    .line 109
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x0

    .line 110
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    int-to-short v0, v0

    .line 109
    return v0
.end method

.method public static readString(Ljava/nio/ByteBuffer;ZI)Ljava/lang/String;
    .locals 3
    .param p0, "logBuf"    # Ljava/nio/ByteBuffer;
    .param p1, "unpacked"    # Z
    .param p2, "entryVersion"    # I

    .line 391
    invoke-static {p0, p1}, Lcom/sleepycat/je/log/LogUtils;->readByteArray(Ljava/nio/ByteBuffer;Z)[B

    move-result-object v0

    .line 397
    .local v0, "bytes":[B
    const/16 v1, 0x9

    if-lt p2, v1, :cond_0

    .line 398
    invoke-static {v0}, Lcom/sleepycat/utilint/StringUtils;->fromUTF8([B)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 400
    :cond_0
    sget-object v1, Lcom/sleepycat/je/log/LogUtils;->logCharset:Ljava/nio/charset/Charset;

    if-eqz v1, :cond_1

    .line 401
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v2

    .line 403
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public static readTimestamp(Ljava/nio/ByteBuffer;Z)Lcom/sleepycat/je/utilint/Timestamp;
    .locals 3
    .param p0, "logBuf"    # Ljava/nio/ByteBuffer;
    .param p1, "unpacked"    # Z

    .line 425
    invoke-static {p0, p1}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v0

    .line 426
    .local v0, "millis":J
    new-instance v2, Lcom/sleepycat/je/utilint/Timestamp;

    invoke-direct {v2, v0, v1}, Lcom/sleepycat/je/utilint/Timestamp;-><init>(J)V

    return-object v2
.end method

.method public static readUnsignedInt(Ljava/nio/ByteBuffer;)J
    .locals 7
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .line 84
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/4 v4, 0x0

    shl-long/2addr v0, v4

    .line 85
    .local v0, "ret":J
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 86
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 87
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 88
    return-wide v0
.end method

.method public static readXid(Ljava/nio/ByteBuffer;)Ljavax/transaction/xa/Xid;
    .locals 6
    .param p0, "logBuf"    # Ljava/nio/ByteBuffer;

    .line 525
    invoke-static {p0}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 527
    .local v0, "formatId":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 528
    .local v1, "gidLen":I
    const/4 v2, 0x0

    .line 529
    .local v2, "gid":[B
    if-ltz v1, :cond_0

    .line 530
    new-array v2, v1, [B

    .line 531
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 534
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 535
    .local v3, "bqualLen":I
    const/4 v4, 0x0

    .line 536
    .local v4, "bqual":[B
    if-ltz v3, :cond_1

    .line 537
    new-array v4, v3, [B

    .line 538
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 541
    :cond_1
    new-instance v5, Lcom/sleepycat/je/log/LogUtils$XidImpl;

    invoke-direct {v5, v0, v2, v4}, Lcom/sleepycat/je/log/LogUtils$XidImpl;-><init>(I[B[B)V

    return-object v5
.end method

.method public static writeBoolean(Ljava/nio/ByteBuffer;Z)V
    .locals 1
    .param p0, "logBuf"    # Ljava/nio/ByteBuffer;
    .param p1, "bool"    # Z

    .line 440
    move v0, p1

    .line 441
    .local v0, "val":B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 442
    return-void
.end method

.method public static writeByteArray(Ljava/nio/ByteBuffer;[B)V
    .locals 1
    .param p0, "logBuf"    # Ljava/nio/ByteBuffer;
    .param p1, "b"    # [B

    .line 303
    if-nez p1, :cond_0

    .line 304
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/sleepycat/je/log/LogUtils;->writePackedInt(Ljava/nio/ByteBuffer;I)V

    .line 305
    return-void

    .line 309
    :cond_0
    array-length v0, p1

    invoke-static {p0, v0}, Lcom/sleepycat/je/log/LogUtils;->writePackedInt(Ljava/nio/ByteBuffer;I)V

    .line 312
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 313
    return-void
.end method

.method public static writeBytesNoLength(Ljava/nio/ByteBuffer;[B)V
    .locals 0
    .param p0, "logBuf"    # Ljava/nio/ByteBuffer;
    .param p1, "b"    # [B

    .line 356
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 357
    return-void
.end method

.method public static writeInt(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .param p0, "logBuf"    # Ljava/nio/ByteBuffer;
    .param p1, "i"    # I

    .line 128
    shr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 129
    .local v0, "b":B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 130
    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v0, v1

    .line 131
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 132
    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v0, v1

    .line 133
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 134
    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v0, v1

    .line 135
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 136
    return-void
.end method

.method public static writeIntMSB(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .param p0, "logBuf"    # Ljava/nio/ByteBuffer;
    .param p1, "i"    # I

    .line 191
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 192
    .local v0, "b":B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 193
    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v0, v1

    .line 194
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 195
    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v0, v1

    .line 196
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 197
    shr-int/lit8 v1, p1, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v0, v1

    .line 198
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 199
    return-void
.end method

.method public static writeLong(Ljava/nio/ByteBuffer;J)V
    .locals 3
    .param p0, "logBuf"    # Ljava/nio/ByteBuffer;
    .param p1, "l"    # J

    .line 216
    const/4 v0, 0x0

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 217
    .local v0, "b":B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 218
    const/16 v1, 0x8

    ushr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v0, v1

    .line 219
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 220
    const/16 v1, 0x10

    ushr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v0, v1

    .line 221
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 222
    const/16 v1, 0x18

    ushr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v0, v1

    .line 223
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 224
    const/16 v1, 0x20

    ushr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v0, v1

    .line 225
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 226
    const/16 v1, 0x28

    ushr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v0, v1

    .line 227
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 228
    const/16 v1, 0x30

    ushr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v0, v1

    .line 229
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 230
    const/16 v1, 0x38

    ushr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v0, v1

    .line 231
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 232
    return-void
.end method

.method public static writePackedInt(Ljava/nio/ByteBuffer;I)V
    .locals 3
    .param p0, "logBuf"    # Ljava/nio/ByteBuffer;
    .param p1, "i"    # I

    .line 160
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 161
    .local v0, "off":I
    nop

    .line 162
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 163
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    .line 162
    invoke-static {v1, v2, p1}, Lcom/sleepycat/util/PackedInteger;->writeInt([BII)I

    move-result v1

    .line 164
    .local v1, "newPos":I
    sub-int v2, v1, v0

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 165
    return-void
.end method

.method public static writePackedLong(Ljava/nio/ByteBuffer;J)V
    .locals 3
    .param p0, "logBuf"    # Ljava/nio/ByteBuffer;
    .param p1, "l"    # J

    .line 271
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 272
    .local v0, "off":I
    nop

    .line 273
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 274
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    .line 273
    invoke-static {v1, v2, p1, p2}, Lcom/sleepycat/util/PackedInteger;->writeLong([BIJ)I

    move-result v1

    .line 275
    .local v1, "newPos":I
    sub-int v2, v1, v0

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 276
    return-void
.end method

.method public static writeShort(Ljava/nio/ByteBuffer;S)V
    .locals 2
    .param p0, "logBuf"    # Ljava/nio/ByteBuffer;
    .param p1, "i"    # S

    .line 99
    shr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 100
    .local v0, "b":B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 101
    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v0, v1

    .line 102
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 103
    return-void
.end method

.method public static writeString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 1
    .param p0, "logBuf"    # Ljava/nio/ByteBuffer;
    .param p1, "stringVal"    # Ljava/lang/String;

    .line 382
    invoke-static {p1}, Lcom/sleepycat/utilint/StringUtils;->toUTF8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sleepycat/je/log/LogUtils;->writeByteArray(Ljava/nio/ByteBuffer;[B)V

    .line 383
    return-void
.end method

.method public static writeTimestamp(Ljava/nio/ByteBuffer;Lcom/sleepycat/je/utilint/Timestamp;)V
    .locals 2
    .param p0, "logBuf"    # Ljava/nio/ByteBuffer;
    .param p1, "time"    # Lcom/sleepycat/je/utilint/Timestamp;

    .line 417
    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/Timestamp;->getTime()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/sleepycat/je/log/LogUtils;->writePackedLong(Ljava/nio/ByteBuffer;J)V

    .line 418
    return-void
.end method

.method public static writeUnsignedInt(Ljava/nio/ByteBuffer;J)V
    .locals 2
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "value"    # J

    .line 74
    const/4 v0, 0x0

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 75
    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 76
    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 77
    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 78
    return-void
.end method

.method public static writeXid(Ljava/nio/ByteBuffer;Ljavax/transaction/xa/Xid;)V
    .locals 4
    .param p0, "logBuf"    # Ljava/nio/ByteBuffer;
    .param p1, "xid"    # Ljavax/transaction/xa/Xid;

    .line 500
    invoke-interface {p1}, Ljavax/transaction/xa/Xid;->getGlobalTransactionId()[B

    move-result-object v0

    .line 501
    .local v0, "gid":[B
    invoke-interface {p1}, Ljavax/transaction/xa/Xid;->getBranchQualifier()[B

    move-result-object v1

    .line 503
    .local v1, "bqual":[B
    invoke-interface {p1}, Ljavax/transaction/xa/Xid;->getFormatId()I

    move-result v2

    invoke-static {p0, v2}, Lcom/sleepycat/je/log/LogUtils;->writeInt(Ljava/nio/ByteBuffer;I)V

    .line 505
    const/4 v2, -0x1

    if-nez v0, :cond_0

    .line 506
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 508
    :cond_0
    array-length v3, v0

    int-to-byte v3, v3

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 509
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 512
    :goto_0
    if-nez v1, :cond_1

    .line 513
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 515
    :cond_1
    array-length v2, v1

    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 516
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 518
    :goto_1
    return-void
.end method
