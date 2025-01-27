.class public Lorg/jline/utils/InputStreamReader;
.super Ljava/io/Reader;
.source "InputStreamReader.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x4


# instance fields
.field bytes:Ljava/nio/ByteBuffer;

.field decoder:Ljava/nio/charset/CharsetDecoder;

.field private endOfInput:Z

.field private in:Ljava/io/InputStream;

.field pending:C


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;

    .line 67
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/utils/InputStreamReader;->endOfInput:Z

    .line 53
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/jline/utils/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    .line 55
    const v1, 0xffff

    iput-char v1, p0, Lorg/jline/utils/InputStreamReader;->pending:C

    .line 68
    iput-object p1, p0, Lorg/jline/utils/InputStreamReader;->in:Ljava/io/InputStream;

    .line 69
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 70
    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    iput-object v1, p0, Lorg/jline/utils/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 72
    iget-object v1, p0, Lorg/jline/utils/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/utils/InputStreamReader;->endOfInput:Z

    .line 53
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/jline/utils/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    .line 55
    const v1, 0xffff

    iput-char v1, p0, Lorg/jline/utils/InputStreamReader;->pending:C

    .line 93
    if-eqz p2, :cond_0

    .line 96
    iput-object p1, p0, Lorg/jline/utils/InputStreamReader;->in:Ljava/io/InputStream;

    .line 98
    :try_start_0
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 99
    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    iput-object v1, p0, Lorg/jline/utils/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    nop

    .line 105
    iget-object v1, p0, Lorg/jline/utils/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 106
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/UnsupportedEncodingException;

    throw v1

    .line 94
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 135
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/utils/InputStreamReader;->endOfInput:Z

    .line 53
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/jline/utils/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    .line 55
    const v1, 0xffff

    iput-char v1, p0, Lorg/jline/utils/InputStreamReader;->pending:C

    .line 136
    iput-object p1, p0, Lorg/jline/utils/InputStreamReader;->in:Ljava/io/InputStream;

    .line 137
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 138
    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    iput-object v1, p0, Lorg/jline/utils/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 140
    iget-object v1, p0, Lorg/jline/utils/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/CharsetDecoder;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "dec"    # Ljava/nio/charset/CharsetDecoder;

    .line 118
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/utils/InputStreamReader;->endOfInput:Z

    .line 53
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/jline/utils/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    .line 55
    const v1, 0xffff

    iput-char v1, p0, Lorg/jline/utils/InputStreamReader;->pending:C

    .line 119
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte()F

    .line 120
    iput-object p1, p0, Lorg/jline/utils/InputStreamReader;->in:Ljava/io/InputStream;

    .line 121
    iput-object p2, p0, Lorg/jline/utils/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 122
    iget-object v1, p0, Lorg/jline/utils/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 123
    return-void
.end method

.method private isOpen()Z
    .locals 1

    .line 317
    iget-object v0, p0, Lorg/jline/utils/InputStreamReader;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lorg/jline/utils/InputStreamReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lorg/jline/utils/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 154
    iget-object v2, p0, Lorg/jline/utils/InputStreamReader;->in:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    .line 155
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 156
    iput-object v1, p0, Lorg/jline/utils/InputStreamReader;->in:Ljava/io/InputStream;

    .line 158
    :cond_0
    monitor-exit v0

    .line 159
    return-void

    .line 158
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 169
    invoke-direct {p0}, Lorg/jline/utils/InputStreamReader;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    const/4 v0, 0x0

    return-object v0

    .line 172
    :cond_0
    iget-object v0, p0, Lorg/jline/utils/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lorg/jline/utils/InputStreamReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_0
    invoke-direct {p0}, Lorg/jline/utils/InputStreamReader;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 194
    iget-char v1, p0, Lorg/jline/utils/InputStreamReader;->pending:C

    const v2, 0xffff

    if-eq v1, v2, :cond_0

    .line 195
    nop

    .line 196
    .local v1, "c":C
    iput-char v2, p0, Lorg/jline/utils/InputStreamReader;->pending:C

    .line 197
    monitor-exit v0

    return v1

    .line 199
    .end local v1    # "c":C
    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [C

    .line 200
    .local v2, "buf":[C
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Lorg/jline/utils/InputStreamReader;->read([CII)I

    move-result v4

    .line 201
    .local v4, "nb":I
    if-ne v4, v1, :cond_1

    .line 202
    const/4 v1, 0x1

    aget-char v1, v2, v1

    iput-char v1, p0, Lorg/jline/utils/InputStreamReader;->pending:C

    .line 204
    :cond_1
    if-lez v4, :cond_2

    .line 205
    aget-char v1, v2, v3

    monitor-exit v0

    return v1

    .line 207
    :cond_2
    const/4 v1, -0x1

    monitor-exit v0

    return v1

    .line 191
    .end local v2    # "buf":[C
    .end local v4    # "nb":I
    :cond_3
    new-instance v1, Lorg/jline/utils/ClosedException;

    const-string v2, "InputStreamReader is closed."

    invoke-direct {v1, v2}, Lorg/jline/utils/ClosedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 209
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public read([CII)I
    .locals 11
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lorg/jline/utils/InputStreamReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_0
    invoke-direct {p0}, Lorg/jline/utils/InputStreamReader;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 242
    if-ltz p2, :cond_c

    array-length v1, p1

    sub-int/2addr v1, p3

    if-gt p2, v1, :cond_c

    if-ltz p3, :cond_c

    .line 245
    const/4 v1, 0x0

    if-nez p3, :cond_0

    .line 246
    monitor-exit v0

    return v1

    .line 249
    :cond_0
    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 250
    .local v2, "out":Ljava/nio/CharBuffer;
    sget-object v3, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .line 254
    .local v3, "result":Ljava/nio/charset/CoderResult;
    iget-object v4, p0, Lorg/jline/utils/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v1

    .line 256
    .local v4, "needInput":Z
    :goto_0
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->position()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, -0x1

    if-ne v6, p2, :cond_7

    .line 258
    if-eqz v4, :cond_5

    .line 260
    :try_start_1
    iget-object v6, p0, Lorg/jline/utils/InputStreamReader;->in:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v6

    if-nez v6, :cond_2

    .line 261
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->position()I

    move-result v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-le v6, p2, :cond_2

    .line 263
    goto :goto_2

    .line 267
    :cond_2
    goto :goto_1

    .line 265
    :catch_0
    move-exception v6

    .line 269
    :goto_1
    :try_start_2
    iget-object v6, p0, Lorg/jline/utils/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    iget-object v8, p0, Lorg/jline/utils/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    add-int/2addr v6, v8

    .line 270
    .local v6, "off":I
    iget-object v8, p0, Lorg/jline/utils/InputStreamReader;->in:Ljava/io/InputStream;

    iget-object v9, p0, Lorg/jline/utils/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-virtual {v8, v9, v6, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    .line 272
    .local v8, "was_red":I
    if-ne v8, v7, :cond_3

    .line 273
    iput-boolean v5, p0, Lorg/jline/utils/InputStreamReader;->endOfInput:Z

    .line 274
    goto :goto_2

    .line 275
    :cond_3
    if-nez v8, :cond_4

    .line 276
    goto :goto_2

    .line 278
    :cond_4
    iget-object v9, p0, Lorg/jline/utils/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->limit()I

    move-result v10

    add-int/2addr v10, v8

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 282
    .end local v6    # "off":I
    .end local v8    # "was_red":I
    :cond_5
    iget-object v6, p0, Lorg/jline/utils/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v8, p0, Lorg/jline/utils/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v8, v2, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v6

    move-object v3, v6

    .line 284
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 286
    iget-object v6, p0, Lorg/jline/utils/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    iget-object v7, p0, Lorg/jline/utils/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    if-ne v6, v7, :cond_6

    .line 287
    iget-object v6, p0, Lorg/jline/utils/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 288
    iget-object v6, p0, Lorg/jline/utils/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 289
    iget-object v6, p0, Lorg/jline/utils/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 291
    :cond_6
    const/4 v4, 0x1

    goto :goto_0

    .line 297
    :cond_7
    :goto_2
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v3, v1, :cond_8

    iget-boolean v1, p0, Lorg/jline/utils/InputStreamReader;->endOfInput:Z

    if-eqz v1, :cond_8

    .line 298
    iget-object v1, p0, Lorg/jline/utils/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v6, p0, Lorg/jline/utils/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v6, v2, v5}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    move-object v3, v1

    .line 299
    iget-object v1, p0, Lorg/jline/utils/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    .line 300
    iget-object v1, p0, Lorg/jline/utils/InputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 302
    :cond_8
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v1

    if-nez v1, :cond_b

    .line 304
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v1

    if-nez v1, :cond_a

    .line 308
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    sub-int/2addr v1, p2

    if-nez v1, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    sub-int v7, v1, p2

    :goto_3
    monitor-exit v0

    return v7

    .line 305
    :cond_a
    new-instance v1, Ljava/nio/charset/UnmappableCharacterException;

    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->length()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/nio/charset/UnmappableCharacterException;-><init>(I)V

    .end local p1    # "buf":[C
    .end local p2    # "offset":I
    .end local p3    # "length":I
    throw v1

    .line 303
    .restart local p1    # "buf":[C
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :cond_b
    new-instance v1, Ljava/nio/charset/MalformedInputException;

    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->length()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    .end local p1    # "buf":[C
    .end local p2    # "offset":I
    .end local p3    # "length":I
    throw v1

    .line 243
    .end local v2    # "out":Ljava/nio/CharBuffer;
    .end local v3    # "result":Ljava/nio/charset/CoderResult;
    .end local v4    # "needInput":Z
    .restart local p1    # "buf":[C
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :cond_c
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .end local p1    # "buf":[C
    .end local p2    # "offset":I
    .end local p3    # "length":I
    throw v1

    .line 240
    .restart local p1    # "buf":[C
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :cond_d
    new-instance v1, Ljava/io/IOException;

    const-string v2, "InputStreamReader is closed."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "buf":[C
    .end local p2    # "offset":I
    .end local p3    # "length":I
    throw v1

    .line 309
    .restart local p1    # "buf":[C
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public ready()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lorg/jline/utils/InputStreamReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 336
    :try_start_0
    iget-object v1, p0, Lorg/jline/utils/InputStreamReader;->in:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 340
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lorg/jline/utils/InputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/jline/utils/InputStreamReader;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :try_start_2
    monitor-exit v0

    return v1

    .line 341
    :catch_0
    move-exception v2

    .line 342
    .local v2, "e":Ljava/io/IOException;
    monitor-exit v0

    return v1

    .line 337
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "InputStreamReader is closed."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 344
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
