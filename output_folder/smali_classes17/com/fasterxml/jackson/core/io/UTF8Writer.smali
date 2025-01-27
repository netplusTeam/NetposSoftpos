.class public final Lcom/fasterxml/jackson/core/io/UTF8Writer;
.super Ljava/io/Writer;
.source "UTF8Writer.java"


# static fields
.field static final SURR1_FIRST:I = 0xd800

.field static final SURR1_LAST:I = 0xdbff

.field static final SURR2_FIRST:I = 0xdc00

.field static final SURR2_LAST:I = 0xdfff


# instance fields
.field private final _context:Lcom/fasterxml/jackson/core/io/IOContext;

.field private _out:Ljava/io/OutputStream;

.field private _outBuffer:[B

.field private final _outBufferEnd:I

.field private _outPtr:I

.field private _surrogate:I


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/core/io/IOContext;
    .param p2, "out"    # Ljava/io/OutputStream;

    .line 30
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    .line 32
    iput-object p2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_out:Ljava/io/OutputStream;

    .line 34
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/IOContext;->allocWriteEncodingBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    .line 39
    array-length v0, v0

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBufferEnd:I

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    .line 41
    return-void
.end method

.method protected static illegalSurrogate(I)V
    .locals 2
    .param p0, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->illegalSurrogateDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static illegalSurrogateDesc(I)Ljava/lang/String;
    .locals 3
    .param p0, "code"    # I

    .line 375
    const-string v0, "Illegal character point (0x"

    const v1, 0x10ffff

    if-le p0, v1, :cond_0

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") to output; max is 0x10FFFF as per RFC 4627"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 378
    :cond_0
    const v1, 0xd800

    if-lt p0, v1, :cond_2

    .line 379
    const v0, 0xdbff

    const-string v1, ")"

    if-gt p0, v0, :cond_1

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmatched first part of surrogate pair (0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 382
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmatched second part of surrogate pair (0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 385
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") to output"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public append(C)Ljava/io/Writer;
    .locals 0
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->write(I)V

    .line 48
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->append(C)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_out:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    .line 56
    iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 57
    iget-object v3, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    invoke-virtual {v0, v3, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 58
    iput v2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_out:Ljava/io/OutputStream;

    .line 61
    .local v0, "out":Ljava/io/OutputStream;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_out:Ljava/io/OutputStream;

    .line 63
    iget-object v3, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    .line 64
    .local v3, "buf":[B
    if-eqz v3, :cond_1

    .line 65
    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    .line 66
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseWriteEncodingBuffer([B)V

    .line 69
    :cond_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 74
    iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I

    .line 75
    .local v1, "code":I
    iput v2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I

    .line 76
    if-lez v1, :cond_2

    .line 77
    invoke-static {v1}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->illegalSurrogate(I)V

    .line 80
    .end local v0    # "out":Ljava/io/OutputStream;
    .end local v1    # "code":I
    .end local v3    # "buf":[B
    :cond_2
    return-void
.end method

.method protected convertSurrogate(I)I
    .locals 4
    .param p1, "secondPart"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I

    .line 360
    .local v0, "firstPart":I
    const/4 v1, 0x0

    iput v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I

    .line 363
    const v1, 0xdc00

    if-lt p1, v1, :cond_0

    const v2, 0xdfff

    if-gt p1, v2, :cond_0

    .line 366
    const/high16 v2, 0x10000

    const v3, 0xd800

    sub-int v3, v0, v3

    shl-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v2

    sub-int v1, p1, v1

    add-int/2addr v3, v1

    return v3

    .line 364
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broken surrogate pair: first char 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", second 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; illegal combination"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 87
    iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    if-lez v1, :cond_0

    .line 88
    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 89
    iput v3, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 93
    :cond_1
    return-void
.end method

.method public write(I)V
    .locals 5
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I

    if-lez v0, :cond_0

    .line 204
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->convertSurrogate(I)I

    move-result p1

    goto :goto_0

    .line 206
    :cond_0
    const v0, 0xd800

    if-lt p1, v0, :cond_2

    const v0, 0xdfff

    if-gt p1, v0, :cond_2

    .line 208
    const v0, 0xdbff

    if-le p1, v0, :cond_1

    .line 209
    invoke-static {p1}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->illegalSurrogate(I)V

    .line 212
    :cond_1
    iput p1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I

    .line 213
    return-void

    .line 216
    :cond_2
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBufferEnd:I

    if-lt v0, v1, :cond_3

    .line 217
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 218
    iput v3, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    .line 221
    :cond_3
    const/16 v0, 0x80

    if-ge p1, v0, :cond_4

    .line 222
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    goto :goto_2

    .line 224
    :cond_4
    iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    .line 225
    .local v1, "ptr":I
    const/16 v2, 0x800

    if-ge p1, v2, :cond_5

    .line 226
    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "ptr":I
    .local v3, "ptr":I
    shr-int/lit8 v4, p1, 0x6

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 227
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "ptr":I
    .restart local v1    # "ptr":I
    and-int/lit8 v4, p1, 0x3f

    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    goto :goto_1

    .line 228
    :cond_5
    const v2, 0xffff

    if-gt p1, v2, :cond_6

    .line 229
    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "ptr":I
    .restart local v3    # "ptr":I
    shr-int/lit8 v4, p1, 0xc

    or-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 230
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "ptr":I
    .restart local v1    # "ptr":I
    shr-int/lit8 v4, p1, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v0

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 231
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "ptr":I
    .restart local v3    # "ptr":I
    and-int/lit8 v4, p1, 0x3f

    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, v2, v1

    move v1, v3

    goto :goto_1

    .line 233
    .end local v3    # "ptr":I
    .restart local v1    # "ptr":I
    :cond_6
    const v2, 0x10ffff

    if-le p1, v2, :cond_7

    .line 234
    invoke-static {p1}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->illegalSurrogate(I)V

    .line 236
    :cond_7
    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "ptr":I
    .restart local v3    # "ptr":I
    shr-int/lit8 v4, p1, 0x12

    or-int/lit16 v4, v4, 0xf0

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 237
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "ptr":I
    .restart local v1    # "ptr":I
    shr-int/lit8 v4, p1, 0xc

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v0

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 238
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "ptr":I
    .restart local v3    # "ptr":I
    shr-int/lit8 v4, p1, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v0

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 239
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "ptr":I
    .restart local v1    # "ptr":I
    and-int/lit8 v4, p1, 0x3f

    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 241
    :goto_1
    iput v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    .line 243
    .end local v1    # "ptr":I
    :goto_2
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->write(Ljava/lang/String;II)V

    .line 249
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 9
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    const/4 v0, 0x2

    if-ge p3, v0, :cond_1

    .line 255
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 256
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->write(I)V

    .line 258
    :cond_0
    return-void

    .line 262
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I

    if-lez v0, :cond_2

    .line 263
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "off":I
    .local v0, "off":I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    .line 264
    .local p2, "second":C
    add-int/lit8 p3, p3, -0x1

    .line 265
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->convertSurrogate(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->write(I)V

    move p2, v0

    .line 269
    .end local v0    # "off":I
    .local p2, "off":I
    :cond_2
    iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    .line 270
    .local v0, "outPtr":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    .line 271
    .local v1, "outBuf":[B
    iget v2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBufferEnd:I

    .line 274
    .local v2, "outBufLast":I
    add-int/2addr p3, p2

    .line 277
    :goto_0
    if-ge p2, p3, :cond_e

    .line 281
    if-lt v0, v2, :cond_3

    .line 282
    iget-object v3, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_out:Ljava/io/OutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 283
    const/4 v0, 0x0

    .line 286
    :cond_3
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .local v3, "off":I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    .line 288
    .local p2, "c":I
    const/16 v4, 0x80

    if-ge p2, v4, :cond_7

    .line 289
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "outPtr":I
    .local v5, "outPtr":I
    int-to-byte v6, p2

    aput-byte v6, v1, v0

    .line 291
    sub-int v0, p3, v3

    .line 292
    .local v0, "maxInCount":I
    sub-int v6, v2, v5

    .line 294
    .local v6, "maxOutCount":I
    if-le v0, v6, :cond_4

    .line 295
    move v0, v6

    .line 297
    :cond_4
    add-int v7, v0, v3

    move v0, p2

    move p2, v3

    .line 300
    .end local v3    # "off":I
    .local v0, "c":I
    .local v7, "maxInCount":I
    .local p2, "off":I
    :goto_1
    if-lt p2, v7, :cond_5

    .line 301
    move v0, v5

    goto :goto_0

    .line 303
    :cond_5
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .restart local v3    # "off":I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 304
    if-lt v0, v4, :cond_6

    .line 305
    move p2, v0

    move v0, v5

    goto :goto_2

    .line 307
    :cond_6
    add-int/lit8 p2, v5, 0x1

    .end local v5    # "outPtr":I
    .local p2, "outPtr":I
    int-to-byte v8, v0

    aput-byte v8, v1, v5

    move v5, p2

    move p2, v3

    goto :goto_1

    .line 312
    .end local v6    # "maxOutCount":I
    .end local v7    # "maxInCount":I
    .local v0, "outPtr":I
    .local p2, "c":I
    :cond_7
    :goto_2
    const/16 v5, 0x800

    if-ge p2, v5, :cond_8

    .line 313
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "outPtr":I
    .restart local v5    # "outPtr":I
    shr-int/lit8 v6, p2, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v1, v0

    .line 314
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "outPtr":I
    .restart local v0    # "outPtr":I
    and-int/lit8 v6, p2, 0x3f

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v1, v5

    move p2, v3

    goto :goto_3

    .line 317
    :cond_8
    const v5, 0xd800

    if-lt p2, v5, :cond_d

    const v5, 0xdfff

    if-le p2, v5, :cond_9

    goto :goto_4

    .line 324
    :cond_9
    const v5, 0xdbff

    if-le p2, v5, :cond_a

    .line 325
    iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    .line 326
    invoke-static {p2}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->illegalSurrogate(I)V

    .line 328
    :cond_a
    iput p2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I

    .line 330
    if-lt v3, p3, :cond_b

    .line 331
    move p2, v3

    goto :goto_5

    .line 333
    :cond_b
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "off":I
    .local v5, "off":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->convertSurrogate(I)I

    move-result p2

    .line 334
    const v3, 0x10ffff

    if-le p2, v3, :cond_c

    .line 335
    iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    .line 336
    invoke-static {p2}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->illegalSurrogate(I)V

    .line 338
    :cond_c
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "outPtr":I
    .local v3, "outPtr":I
    shr-int/lit8 v6, p2, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    aput-byte v6, v1, v0

    .line 339
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "outPtr":I
    .restart local v0    # "outPtr":I
    shr-int/lit8 v6, p2, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v4

    int-to-byte v6, v6

    aput-byte v6, v1, v3

    .line 340
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "outPtr":I
    .restart local v3    # "outPtr":I
    shr-int/lit8 v6, p2, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v4

    int-to-byte v6, v6

    aput-byte v6, v1, v0

    .line 341
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "outPtr":I
    .restart local v0    # "outPtr":I
    and-int/lit8 v6, p2, 0x3f

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    move p2, v5

    .line 343
    .end local v5    # "off":I
    .local p2, "off":I
    :goto_3
    goto/16 :goto_0

    .line 318
    .local v3, "off":I
    .local p2, "c":I
    :cond_d
    :goto_4
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "outPtr":I
    .local v5, "outPtr":I
    shr-int/lit8 v6, p2, 0xc

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    aput-byte v6, v1, v0

    .line 319
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "outPtr":I
    .restart local v0    # "outPtr":I
    shr-int/lit8 v6, p2, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v4

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 320
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "outPtr":I
    .restart local v5    # "outPtr":I
    and-int/lit8 v6, p2, 0x3f

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 321
    move p2, v3

    move v0, v5

    goto/16 :goto_0

    .line 344
    .end local v3    # "off":I
    .end local v5    # "outPtr":I
    .restart local v0    # "outPtr":I
    .local p2, "off":I
    :cond_e
    :goto_5
    iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    .line 345
    return-void
.end method

.method public write([C)V
    .locals 2
    .param p1, "cbuf"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->write([CII)V

    .line 100
    return-void
.end method

.method public write([CII)V
    .locals 9
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    const/4 v0, 0x2

    if-ge p3, v0, :cond_1

    .line 107
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 108
    aget-char v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->write(I)V

    .line 110
    :cond_0
    return-void

    .line 114
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I

    if-lez v0, :cond_2

    .line 115
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "off":I
    .local v0, "off":I
    aget-char p2, p1, p2

    .line 116
    .local p2, "second":C
    add-int/lit8 p3, p3, -0x1

    .line 117
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->convertSurrogate(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->write(I)V

    move p2, v0

    .line 121
    .end local v0    # "off":I
    .local p2, "off":I
    :cond_2
    iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    .line 122
    .local v0, "outPtr":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    .line 123
    .local v1, "outBuf":[B
    iget v2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBufferEnd:I

    .line 126
    .local v2, "outBufLast":I
    add-int/2addr p3, p2

    .line 129
    :goto_0
    if-ge p2, p3, :cond_e

    .line 133
    if-lt v0, v2, :cond_3

    .line 134
    iget-object v3, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_out:Ljava/io/OutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 135
    const/4 v0, 0x0

    .line 138
    :cond_3
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .local v3, "off":I
    aget-char p2, p1, p2

    .line 140
    .local p2, "c":I
    const/16 v4, 0x80

    if-ge p2, v4, :cond_7

    .line 141
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "outPtr":I
    .local v5, "outPtr":I
    int-to-byte v6, p2

    aput-byte v6, v1, v0

    .line 143
    sub-int v0, p3, v3

    .line 144
    .local v0, "maxInCount":I
    sub-int v6, v2, v5

    .line 146
    .local v6, "maxOutCount":I
    if-le v0, v6, :cond_4

    .line 147
    move v0, v6

    .line 149
    :cond_4
    add-int v7, v0, v3

    move v0, p2

    move p2, v3

    .line 152
    .end local v3    # "off":I
    .local v0, "c":I
    .local v7, "maxInCount":I
    .local p2, "off":I
    :goto_1
    if-lt p2, v7, :cond_5

    .line 153
    move v0, v5

    goto :goto_0

    .line 155
    :cond_5
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .restart local v3    # "off":I
    aget-char v0, p1, p2

    .line 156
    if-lt v0, v4, :cond_6

    .line 157
    move p2, v0

    move v0, v5

    goto :goto_2

    .line 159
    :cond_6
    add-int/lit8 p2, v5, 0x1

    .end local v5    # "outPtr":I
    .local p2, "outPtr":I
    int-to-byte v8, v0

    aput-byte v8, v1, v5

    move v5, p2

    move p2, v3

    goto :goto_1

    .line 164
    .end local v6    # "maxOutCount":I
    .end local v7    # "maxInCount":I
    .local v0, "outPtr":I
    .local p2, "c":I
    :cond_7
    :goto_2
    const/16 v5, 0x800

    if-ge p2, v5, :cond_8

    .line 165
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "outPtr":I
    .restart local v5    # "outPtr":I
    shr-int/lit8 v6, p2, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v1, v0

    .line 166
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "outPtr":I
    .restart local v0    # "outPtr":I
    and-int/lit8 v6, p2, 0x3f

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v1, v5

    move p2, v3

    goto :goto_3

    .line 169
    :cond_8
    const v5, 0xd800

    if-lt p2, v5, :cond_d

    const v5, 0xdfff

    if-le p2, v5, :cond_9

    goto :goto_4

    .line 176
    :cond_9
    const v5, 0xdbff

    if-le p2, v5, :cond_a

    .line 177
    iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    .line 178
    invoke-static {p2}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->illegalSurrogate(I)V

    .line 180
    :cond_a
    iput p2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I

    .line 182
    if-lt v3, p3, :cond_b

    .line 183
    move p2, v3

    goto :goto_5

    .line 185
    :cond_b
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "off":I
    .local v5, "off":I
    aget-char v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->convertSurrogate(I)I

    move-result p2

    .line 186
    const v3, 0x10ffff

    if-le p2, v3, :cond_c

    .line 187
    iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    .line 188
    invoke-static {p2}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->illegalSurrogate(I)V

    .line 190
    :cond_c
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "outPtr":I
    .local v3, "outPtr":I
    shr-int/lit8 v6, p2, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    aput-byte v6, v1, v0

    .line 191
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "outPtr":I
    .restart local v0    # "outPtr":I
    shr-int/lit8 v6, p2, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v4

    int-to-byte v6, v6

    aput-byte v6, v1, v3

    .line 192
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "outPtr":I
    .restart local v3    # "outPtr":I
    shr-int/lit8 v6, p2, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v4

    int-to-byte v6, v6

    aput-byte v6, v1, v0

    .line 193
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "outPtr":I
    .restart local v0    # "outPtr":I
    and-int/lit8 v6, p2, 0x3f

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    move p2, v5

    .line 195
    .end local v5    # "off":I
    .local p2, "off":I
    :goto_3
    goto/16 :goto_0

    .line 170
    .local v3, "off":I
    .local p2, "c":I
    :cond_d
    :goto_4
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "outPtr":I
    .local v5, "outPtr":I
    shr-int/lit8 v6, p2, 0xc

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    aput-byte v6, v1, v0

    .line 171
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "outPtr":I
    .restart local v0    # "outPtr":I
    shr-int/lit8 v6, p2, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v4

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 172
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "outPtr":I
    .restart local v5    # "outPtr":I
    and-int/lit8 v6, p2, 0x3f

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 173
    move p2, v3

    move v0, v5

    goto/16 :goto_0

    .line 196
    .end local v3    # "off":I
    .end local v5    # "outPtr":I
    .restart local v0    # "outPtr":I
    .local p2, "off":I
    :cond_e
    :goto_5
    iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    .line 197
    return-void
.end method
