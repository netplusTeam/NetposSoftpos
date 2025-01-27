.class public Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;
.super Lorg/apache/sshd/common/util/buffer/Buffer;
.source "ByteArrayBuffer.java"


# static fields
.field public static final DEFAULT_SIZE:I = 0x100


# instance fields
.field private data:[B

.field private rpos:I

.field private wpos:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    const/16 v0, 0x100

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>(IZ)V

    .line 53
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>(IZ)V

    .line 64
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2
    .param p1, "size"    # I
    .param p2, "roundOff"    # Z

    .line 74
    if-eqz p2, :cond_0

    invoke-static {p1}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->getNextPowerOf2(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>([BZ)V

    .line 75
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "data"    # [B

    .line 84
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>([BIIZ)V

    .line 85
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 104
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>([BIIZ)V

    .line 105
    return-void
.end method

.method public constructor <init>([BIIZ)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "read"    # Z

    .line 113
    invoke-direct {p0}, Lorg/apache/sshd/common/util/buffer/Buffer;-><init>()V

    .line 114
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    .line 117
    iput-object p1, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->data:[B

    .line 118
    iput p2, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->rpos:I

    .line 119
    if-eqz p4, :cond_0

    move v0, p3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, p2

    iput v0, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->wpos:I

    .line 120
    return-void

    .line 115
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid offset("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")/length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([BZ)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "read"    # Z

    .line 92
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>([BIIZ)V

    .line 93
    return-void
.end method

.method public static getCompactClone([B)Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;
    .locals 2
    .param p0, "data"    # [B

    .line 284
    invoke-static {p0}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->getCompactClone([BII)Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static getCompactClone([BII)Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;
    .locals 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .line 298
    if-lez p2, :cond_0

    new-array v0, p2, [B

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/sshd/common/util/GenericUtils;->EMPTY_BYTE_ARRAY:[B

    .line 299
    .local v0, "clone":[B
    :goto_0
    if-lez p2, :cond_1

    .line 300
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 303
    :cond_1
    new-instance v1, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>([BZ)V

    return-object v1
.end method


# virtual methods
.method public array()[B
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->data:[B

    return-object v0
.end method

.method public available()I
    .locals 2

    .line 147
    iget v0, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->wpos:I

    iget v1, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->rpos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public capacity()I
    .locals 2

    .line 152
    iget-object v0, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->data:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->wpos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public clear(Z)V
    .locals 2
    .param p1, "wipeData"    # Z

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->rpos:I

    .line 178
    iput v0, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->wpos:I

    .line 180
    if-eqz p1, :cond_0

    .line 181
    iget-object v1, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->data:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 183
    :cond_0
    return-void
.end method

.method public compact()V
    .locals 4

    .line 167
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->available()I

    move-result v0

    .line 168
    .local v0, "avail":I
    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 169
    iget-object v2, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->data:[B

    iget v3, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->rpos:I

    invoke-static {v2, v3, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    :cond_0
    iget v2, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->wpos:I

    iget v3, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->rpos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->wpos:I

    .line 172
    iput v1, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->rpos:I

    .line 173
    return-void
.end method

.method protected copyRawBytes(I[BII)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "buf"    # [B
    .param p3, "pos"    # I
    .param p4, "len"    # I

    .line 243
    if-ltz p1, :cond_0

    if-ltz p3, :cond_0

    if-ltz p4, :cond_0

    .line 247
    iget-object v0, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->data:[B

    iget v1, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->rpos:I

    add-int/2addr v1, p1

    invoke-static {v0, v1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    return-void

    .line 244
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid offset("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")/position("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")/length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") required"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ensureCapacity(ILjava/util/function/IntUnaryOperator;)V
    .locals 9
    .param p1, "capacity"    # I
    .param p2, "growthFactor"    # Ljava/util/function/IntUnaryOperator;

    .line 252
    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    int-to-long v2, p1

    const-string v4, "Negative capacity requested: %d"

    invoke-static {v1, v4, v2, v3}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 254
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->size()I

    move-result v1

    .line 255
    .local v1, "maxSize":I
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->wpos()I

    move-result v2

    .line 256
    .local v2, "curPos":I
    sub-int v3, v1, v2

    .line 257
    .local v3, "remaining":I
    if-ge v3, p1, :cond_2

    .line 258
    add-int v4, v2, p1

    .line 259
    .local v4, "minimum":I
    invoke-interface {p2, v4}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v5

    .line 260
    .local v5, "actual":I
    if-lt v5, v4, :cond_1

    .line 263
    new-array v6, v5, [B

    .line 264
    .local v6, "tmp":[B
    iget-object v7, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->data:[B

    array-length v8, v7

    invoke-static {v7, v0, v6, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    iput-object v6, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->data:[B

    goto :goto_1

    .line 261
    .end local v6    # "tmp":[B
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ensureCapacity("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") actual ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") below min. ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    .end local v4    # "minimum":I
    .end local v5    # "actual":I
    :cond_2
    :goto_1
    return-void
.end method

.method public getByte()B
    .locals 3

    .line 187
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->ensureAvailable(I)I

    .line 188
    iget-object v0, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->data:[B

    iget v1, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->rpos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->rpos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public getRawBytes([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 236
    invoke-virtual {p0, p3}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->ensureAvailable(I)I

    .line 237
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->copyRawBytes(I[BII)V

    .line 238
    iget v0, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->rpos:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->rpos:I

    .line 239
    return-void
.end method

.method public getString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 5
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 225
    const-string v0, "No charset specified"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 227
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->getInt()I

    move-result v0

    .line 228
    .local v0, "reqLen":I
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->ensureAvailable(I)I

    move-result v1

    .line 229
    .local v1, "len":I
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->data:[B

    iget v4, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->rpos:I

    invoke-direct {v2, v3, v4, v1, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 230
    .local v2, "s":Ljava/lang/String;
    iget v3, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->rpos:I

    add-int/2addr v3, v1

    iput v3, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->rpos:I

    .line 231
    return-object v2
.end method

.method public putBuffer(Lorg/apache/sshd/common/util/Readable;Z)I
    .locals 3
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/Readable;
    .param p2, "expand"    # Z

    .line 199
    invoke-interface {p1}, Lorg/apache/sshd/common/util/Readable;->available()I

    move-result v0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->capacity()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 200
    .local v0, "r":I
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->ensureCapacity(I)V

    .line 201
    iget-object v1, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->data:[B

    iget v2, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->wpos:I

    invoke-interface {p1, v1, v2, v0}, Lorg/apache/sshd/common/util/Readable;->getRawBytes([BII)V

    .line 202
    iget v1, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->wpos:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->wpos:I

    .line 203
    return v0
.end method

.method public putBuffer(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 208
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 209
    .local v0, "required":I
    add-int/lit8 v1, v0, 0x20

    invoke-virtual {p0, v1}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->ensureCapacity(I)V

    .line 210
    int-to-long v1, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->putInt(J)V

    .line 211
    iget-object v1, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->data:[B

    iget v2, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->wpos:I

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 212
    iget v1, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->wpos:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->wpos:I

    .line 213
    return-void
.end method

.method public putByte(B)V
    .locals 3
    .param p1, "b"    # B

    .line 193
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->ensureCapacity(I)V

    .line 194
    iget-object v0, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->data:[B

    iget v1, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->wpos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->wpos:I

    aput-byte p1, v0, v1

    .line 195
    return-void
.end method

.method public putRawBytes([BII)V
    .locals 4
    .param p1, "d"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 217
    if-ltz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    int-to-long v1, p3

    const-string v3, "Negative raw bytes length: %d"

    invoke-static {v0, v3, v1, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 218
    invoke-virtual {p0, p3}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->ensureCapacity(I)V

    .line 219
    iget-object v0, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->data:[B

    iget v1, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->wpos:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    iget v0, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->wpos:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->wpos:I

    .line 221
    return-void
.end method

.method public rawByte(I)B
    .locals 1
    .param p1, "pos"    # I

    .line 162
    iget-object v0, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->data:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public rpos()I
    .locals 1

    .line 124
    iget v0, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->rpos:I

    return v0
.end method

.method public rpos(I)V
    .locals 0
    .param p1, "rpos"    # I

    .line 129
    iput p1, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->rpos:I

    .line 130
    return-void
.end method

.method protected size()I
    .locals 1

    .line 271
    iget-object v0, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->data:[B

    array-length v0, v0

    return v0
.end method

.method public wpos()I
    .locals 1

    .line 134
    iget v0, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->wpos:I

    return v0
.end method

.method public wpos(I)V
    .locals 1
    .param p1, "wpos"    # I

    .line 139
    iget v0, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->wpos:I

    if-le p1, v0, :cond_0

    .line 140
    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->ensureCapacity(I)V

    .line 142
    :cond_0
    iput p1, p0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;->wpos:I

    .line 143
    return-void
.end method
