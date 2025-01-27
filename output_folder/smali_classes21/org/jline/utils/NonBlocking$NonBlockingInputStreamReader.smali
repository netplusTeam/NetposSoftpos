.class Lorg/jline/utils/NonBlocking$NonBlockingInputStreamReader;
.super Lorg/jline/utils/NonBlockingReader;
.source "NonBlocking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/utils/NonBlocking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NonBlockingInputStreamReader"
.end annotation


# instance fields
.field private final bytes:Ljava/nio/ByteBuffer;

.field private final chars:Ljava/nio/CharBuffer;

.field private final decoder:Ljava/nio/charset/CharsetDecoder;

.field private final input:Lorg/jline/utils/NonBlockingInputStream;


# direct methods
.method public constructor <init>(Lorg/jline/utils/NonBlockingInputStream;Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "inputStream"    # Lorg/jline/utils/NonBlockingInputStream;
    .param p2, "encoding"    # Ljava/nio/charset/Charset;

    .line 145
    nop

    .line 146
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 147
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 148
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 145
    invoke-direct {p0, p1, v0}, Lorg/jline/utils/NonBlocking$NonBlockingInputStreamReader;-><init>(Lorg/jline/utils/NonBlockingInputStream;Ljava/nio/charset/CharsetDecoder;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Lorg/jline/utils/NonBlockingInputStream;Ljava/nio/charset/CharsetDecoder;)V
    .locals 3
    .param p1, "input"    # Lorg/jline/utils/NonBlockingInputStream;
    .param p2, "decoder"    # Ljava/nio/charset/CharsetDecoder;

    .line 151
    invoke-direct {p0}, Lorg/jline/utils/NonBlockingReader;-><init>()V

    .line 152
    iput-object p1, p0, Lorg/jline/utils/NonBlocking$NonBlockingInputStreamReader;->input:Lorg/jline/utils/NonBlockingInputStream;

    .line 153
    iput-object p2, p0, Lorg/jline/utils/NonBlocking$NonBlockingInputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 154
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/utils/NonBlocking$NonBlockingInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    .line 155
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/jline/utils/NonBlocking$NonBlockingInputStreamReader;->chars:Ljava/nio/CharBuffer;

    .line 156
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 157
    invoke-virtual {v1, v2}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 158
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lorg/jline/utils/NonBlocking$NonBlockingInputStreamReader;->input:Lorg/jline/utils/NonBlockingInputStream;

    invoke-virtual {v0}, Lorg/jline/utils/NonBlockingInputStream;->close()V

    .line 235
    return-void
.end method

.method protected read(JZ)I
    .locals 11
    .param p1, "timeout"    # J
    .param p3, "isPeek"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 163
    .local v2, "isInfinite":Z
    :goto_0
    iget-object v4, p0, Lorg/jline/utils/NonBlocking$NonBlockingInputStreamReader;->chars:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_7

    if-nez v2, :cond_1

    cmp-long v4, p1, v0

    if-lez v4, :cond_7

    .line 164
    :cond_1
    const-wide/16 v4, 0x0

    .line 165
    .local v4, "start":J
    if-nez v2, :cond_2

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 168
    :cond_2
    iget-object v6, p0, Lorg/jline/utils/NonBlocking$NonBlockingInputStreamReader;->input:Lorg/jline/utils/NonBlockingInputStream;

    invoke-virtual {v6, p1, p2}, Lorg/jline/utils/NonBlockingInputStream;->read(J)I

    move-result v6

    .line 169
    .local v6, "b":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    .line 170
    return v7

    .line 172
    :cond_3
    if-ltz v6, :cond_5

    .line 173
    iget-object v7, p0, Lorg/jline/utils/NonBlocking$NonBlockingInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-nez v7, :cond_4

    .line 174
    iget-object v7, p0, Lorg/jline/utils/NonBlocking$NonBlockingInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 175
    iget-object v7, p0, Lorg/jline/utils/NonBlocking$NonBlockingInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 177
    :cond_4
    iget-object v7, p0, Lorg/jline/utils/NonBlocking$NonBlockingInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    .line 178
    .local v7, "l":I
    iget-object v8, p0, Lorg/jline/utils/NonBlocking$NonBlockingInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    iget-object v9, p0, Lorg/jline/utils/NonBlocking$NonBlockingInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    add-int/2addr v9, v7

    int-to-byte v10, v6

    aput-byte v10, v8, v9

    .line 179
    iget-object v8, p0, Lorg/jline/utils/NonBlocking$NonBlockingInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 180
    iget-object v8, p0, Lorg/jline/utils/NonBlocking$NonBlockingInputStreamReader;->chars:Ljava/nio/CharBuffer;

    invoke-virtual {v8}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 181
    iget-object v8, p0, Lorg/jline/utils/NonBlocking$NonBlockingInputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v9, p0, Lorg/jline/utils/NonBlocking$NonBlockingInputStreamReader;->bytes:Ljava/nio/ByteBuffer;

    iget-object v10, p0, Lorg/jline/utils/NonBlocking$NonBlockingInputStreamReader;->chars:Ljava/nio/CharBuffer;

    invoke-virtual {v8, v9, v10, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 182
    iget-object v8, p0, Lorg/jline/utils/NonBlocking$NonBlockingInputStreamReader;->chars:Ljava/nio/CharBuffer;

    invoke-virtual {v8}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 185
    .end local v7    # "l":I
    :cond_5
    if-nez v2, :cond_6

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    sub-long/2addr p1, v7

    .line 188
    .end local v4    # "start":J
    .end local v6    # "b":I
    :cond_6
    goto :goto_0

    .line 189
    :cond_7
    iget-object v0, p0, Lorg/jline/utils/NonBlocking$NonBlockingInputStreamReader;->chars:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 190
    if-eqz p3, :cond_8

    .line 191
    iget-object v0, p0, Lorg/jline/utils/NonBlocking$NonBlockingInputStreamReader;->chars:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->get(I)C

    move-result v0

    return v0

    .line 193
    :cond_8
    iget-object v0, p0, Lorg/jline/utils/NonBlocking$NonBlockingInputStreamReader;->chars:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->get()C

    move-result v0

    return v0

    .line 196
    :cond_9
    const/4 v0, -0x2

    return v0
.end method

.method public readBuffered([C)I
    .locals 6
    .param p1, "b"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    if-eqz p1, :cond_3

    .line 204
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 205
    return v1

    .line 207
    :cond_0
    iget-object v0, p0, Lorg/jline/utils/NonBlocking$NonBlockingInputStreamReader;->chars:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    array-length v0, p1

    iget-object v1, p0, Lorg/jline/utils/NonBlocking$NonBlockingInputStreamReader;->chars:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 209
    .local v0, "r":I
    iget-object v1, p0, Lorg/jline/utils/NonBlocking$NonBlockingInputStreamReader;->chars:Ljava/nio/CharBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    .line 210
    return v0

    .line 212
    .end local v0    # "r":I
    :cond_1
    array-length v0, p1

    new-array v0, v0, [B

    .line 213
    .local v0, "buf":[B
    iget-object v2, p0, Lorg/jline/utils/NonBlocking$NonBlockingInputStreamReader;->input:Lorg/jline/utils/NonBlockingInputStream;

    invoke-virtual {v2, v0}, Lorg/jline/utils/NonBlockingInputStream;->readBuffered([B)I

    move-result v2

    .line 214
    .local v2, "l":I
    if-gez v2, :cond_2

    .line 215
    return v2

    .line 217
    :cond_2
    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 218
    .local v3, "bytes":Ljava/nio/ByteBuffer;
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v4

    .line 219
    .local v4, "chars":Ljava/nio/CharBuffer;
    iget-object v5, p0, Lorg/jline/utils/NonBlocking$NonBlockingInputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v5, v3, v4, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 220
    invoke-virtual {v4}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 221
    invoke-virtual {v4}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    return v1

    .line 203
    .end local v0    # "buf":[B
    .end local v2    # "l":I
    .end local v3    # "bytes":Ljava/nio/ByteBuffer;
    .end local v4    # "chars":Ljava/nio/CharBuffer;
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public shutdown()V
    .locals 1

    .line 229
    iget-object v0, p0, Lorg/jline/utils/NonBlocking$NonBlockingInputStreamReader;->input:Lorg/jline/utils/NonBlockingInputStream;

    invoke-virtual {v0}, Lorg/jline/utils/NonBlockingInputStream;->shutdown()V

    .line 230
    return-void
.end method
