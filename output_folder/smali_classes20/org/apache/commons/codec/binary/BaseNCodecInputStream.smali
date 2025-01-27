.class public Lorg/apache/commons/codec/binary/BaseNCodecInputStream;
.super Ljava/io/FilterInputStream;
.source "BaseNCodecInputStream.java"


# instance fields
.field private final baseNCodec:Lorg/apache/commons/codec/binary/BaseNCodec;

.field private final context:Lorg/apache/commons/codec/binary/BaseNCodec$Context;

.field private final doEncode:Z

.field private final singleByte:[B


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/codec/binary/BaseNCodec;Z)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "baseNCodec"    # Lorg/apache/commons/codec/binary/BaseNCodec;
    .param p3, "doEncode"    # Z

    .line 45
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/codec/binary/BaseNCodecInputStream;->singleByte:[B

    .line 42
    new-instance v0, Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-direct {v0}, Lorg/apache/commons/codec/binary/BaseNCodec$Context;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/codec/binary/BaseNCodecInputStream;->context:Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    .line 46
    iput-boolean p3, p0, Lorg/apache/commons/codec/binary/BaseNCodecInputStream;->doEncode:Z

    .line 47
    iput-object p2, p0, Lorg/apache/commons/codec/binary/BaseNCodecInputStream;->baseNCodec:Lorg/apache/commons/codec/binary/BaseNCodec;

    .line 48
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/apache/commons/codec/binary/BaseNCodecInputStream;->context:Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    iget-boolean v0, v0, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isStrictDecoding()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/apache/commons/codec/binary/BaseNCodecInputStream;->baseNCodec:Lorg/apache/commons/codec/binary/BaseNCodec;

    invoke-virtual {v0}, Lorg/apache/commons/codec/binary/BaseNCodec;->isStrictDecoding()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized mark(I)V
    .locals 0
    .param p1, "readLimit"    # I

    monitor-enter p0

    .line 92
    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lorg/apache/commons/codec/binary/BaseNCodecInputStream;->singleByte:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/codec/binary/BaseNCodecInputStream;->read([BII)I

    move-result v0

    .line 114
    .local v0, "r":I
    :goto_0
    if-nez v0, :cond_0

    .line 115
    iget-object v3, p0, Lorg/apache/commons/codec/binary/BaseNCodecInputStream;->singleByte:[B

    invoke-virtual {p0, v3, v1, v2}, Lorg/apache/commons/codec/binary/BaseNCodecInputStream;->read([BII)I

    move-result v0

    goto :goto_0

    .line 117
    :cond_0
    if-lez v0, :cond_2

    .line 118
    iget-object v2, p0, Lorg/apache/commons/codec/binary/BaseNCodecInputStream;->singleByte:[B

    aget-byte v1, v2, v1

    .line 119
    .local v1, "b":B
    if-gez v1, :cond_1

    add-int/lit16 v2, v1, 0x100

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    return v2

    .line 121
    .end local v1    # "b":B
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method public read([BII)I
    .locals 6
    .param p1, "array"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    const-string v0, "array"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 146
    if-ltz p2, :cond_6

    if-ltz p3, :cond_6

    .line 148
    array-length v0, p1

    if-gt p2, v0, :cond_5

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_5

    .line 150
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 151
    return v0

    .line 153
    :cond_0
    const/4 v1, 0x0

    .line 170
    .local v1, "readLen":I
    :goto_0
    if-nez v1, :cond_4

    .line 171
    iget-object v2, p0, Lorg/apache/commons/codec/binary/BaseNCodecInputStream;->baseNCodec:Lorg/apache/commons/codec/binary/BaseNCodec;

    iget-object v3, p0, Lorg/apache/commons/codec/binary/BaseNCodecInputStream;->context:Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-virtual {v2, v3}, Lorg/apache/commons/codec/binary/BaseNCodec;->hasData(Lorg/apache/commons/codec/binary/BaseNCodec$Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 172
    iget-boolean v2, p0, Lorg/apache/commons/codec/binary/BaseNCodecInputStream;->doEncode:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x1000

    goto :goto_1

    :cond_1
    const/16 v2, 0x2000

    :goto_1
    new-array v2, v2, [B

    .line 173
    .local v2, "buf":[B
    iget-object v3, p0, Lorg/apache/commons/codec/binary/BaseNCodecInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 174
    .local v3, "c":I
    iget-boolean v4, p0, Lorg/apache/commons/codec/binary/BaseNCodecInputStream;->doEncode:Z

    if-eqz v4, :cond_2

    .line 175
    iget-object v4, p0, Lorg/apache/commons/codec/binary/BaseNCodecInputStream;->baseNCodec:Lorg/apache/commons/codec/binary/BaseNCodec;

    iget-object v5, p0, Lorg/apache/commons/codec/binary/BaseNCodecInputStream;->context:Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-virtual {v4, v2, v0, v3, v5}, Lorg/apache/commons/codec/binary/BaseNCodec;->encode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V

    goto :goto_2

    .line 177
    :cond_2
    iget-object v4, p0, Lorg/apache/commons/codec/binary/BaseNCodecInputStream;->baseNCodec:Lorg/apache/commons/codec/binary/BaseNCodec;

    iget-object v5, p0, Lorg/apache/commons/codec/binary/BaseNCodecInputStream;->context:Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-virtual {v4, v2, v0, v3, v5}, Lorg/apache/commons/codec/binary/BaseNCodec;->decode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V

    .line 180
    .end local v2    # "buf":[B
    .end local v3    # "c":I
    :cond_3
    :goto_2
    iget-object v2, p0, Lorg/apache/commons/codec/binary/BaseNCodecInputStream;->baseNCodec:Lorg/apache/commons/codec/binary/BaseNCodec;

    iget-object v3, p0, Lorg/apache/commons/codec/binary/BaseNCodecInputStream;->context:Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-virtual {v2, p1, p2, p3, v3}, Lorg/apache/commons/codec/binary/BaseNCodec;->readResults([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)I

    move-result v1

    goto :goto_0

    .line 182
    :cond_4
    return v1

    .line 149
    .end local v1    # "readLen":I
    :cond_5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 147
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 196
    :try_start_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    .end local p0    # "this":Lorg/apache/commons/codec/binary/BaseNCodecInputStream;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 8
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    .line 212
    const/16 v2, 0x200

    new-array v2, v2, [B

    .line 213
    .local v2, "b":[B
    move-wide v3, p1

    .line 215
    .local v3, "todo":J
    :goto_0
    cmp-long v5, v3, v0

    if-lez v5, :cond_1

    .line 216
    array-length v5, v2

    int-to-long v5, v5

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    .line 217
    .local v5, "len":I
    const/4 v6, 0x0

    invoke-virtual {p0, v2, v6, v5}, Lorg/apache/commons/codec/binary/BaseNCodecInputStream;->read([BII)I

    move-result v5

    .line 218
    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 219
    goto :goto_1

    .line 221
    :cond_0
    int-to-long v6, v5

    sub-long/2addr v3, v6

    .line 222
    .end local v5    # "len":I
    goto :goto_0

    .line 224
    :cond_1
    :goto_1
    sub-long v0, p1, v3

    return-wide v0

    .line 208
    .end local v2    # "b":[B
    .end local v3    # "todo":J
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative skip length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
