.class public Lcom/fasterxml/jackson/core/io/UTF32Reader;
.super Ljava/io/Reader;
.source "UTF32Reader.java"


# static fields
.field protected static final LAST_VALID_UNICODE_CHAR:I = 0x10ffff

.field protected static final NC:C


# instance fields
.field protected final _bigEndian:Z

.field protected _buffer:[B

.field protected _byteCount:I

.field protected _charCount:I

.field protected final _context:Lcom/fasterxml/jackson/core/io/IOContext;

.field protected _in:Ljava/io/InputStream;

.field protected _length:I

.field protected final _managedBuffers:Z

.field protected _ptr:I

.field protected _surrogate:C

.field protected _tmpBuf:[C


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/InputStream;[BIIZ)V
    .locals 1
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/core/io/IOContext;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "buf"    # [B
    .param p4, "ptr"    # I
    .param p5, "len"    # I
    .param p6, "isBigEndian"    # Z

    .line 57
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_surrogate:C

    .line 58
    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    .line 59
    iput-object p2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_in:Ljava/io/InputStream;

    .line 60
    iput-object p3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    .line 61
    iput p4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    .line 62
    iput p5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    .line 63
    iput-boolean p6, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_bigEndian:Z

    .line 64
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_managedBuffers:Z

    .line 65
    return-void
.end method

.method private freeBuffers()V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    .line 261
    .local v0, "buf":[B
    if-eqz v0, :cond_0

    .line 262
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    .line 263
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseReadIOBuffer([B)V

    .line 265
    :cond_0
    return-void
.end method

.method private loadMore(I)Z
    .locals 7
    .param p1, "available"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_byteCount:I

    iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_byteCount:I

    .line 208
    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez p1, :cond_1

    .line 209
    iget v3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    if-lez v3, :cond_0

    .line 210
    iget-object v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    invoke-static {v4, v3, v4, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    iput v2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    .line 213
    :cond_0
    iput p1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    goto :goto_1

    .line 218
    :cond_1
    iput v2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    .line 219
    iget-object v3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_in:Ljava/io/InputStream;

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 220
    .local v3, "count":I
    :goto_0
    if-ge v3, v1, :cond_5

    .line 221
    iput v2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    .line 222
    if-gez v3, :cond_4

    .line 223
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_managedBuffers:Z

    if-eqz v0, :cond_3

    .line 224
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->freeBuffers()V

    .line 226
    :cond_3
    return v2

    .line 229
    :cond_4
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->reportStrangeStream()V

    .line 231
    :cond_5
    iput v3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    .line 237
    .end local v3    # "count":I
    :goto_1
    iget v2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_a

    .line 238
    iget-object v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_in:Ljava/io/InputStream;

    if-nez v4, :cond_6

    move v2, v0

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    array-length v6, v5

    sub-int/2addr v6, v2

    invoke-virtual {v4, v5, v2, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 239
    .local v2, "count":I
    :goto_2
    if-ge v2, v1, :cond_9

    .line 240
    if-gez v2, :cond_8

    .line 241
    iget-boolean v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_managedBuffers:Z

    if-eqz v4, :cond_7

    .line 242
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->freeBuffers()V

    .line 244
    :cond_7
    iget v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    invoke-direct {p0, v4, v3}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->reportUnexpectedEOF(II)V

    .line 247
    :cond_8
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->reportStrangeStream()V

    .line 249
    :cond_9
    iget v3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    .line 250
    .end local v2    # "count":I
    goto :goto_1

    .line 251
    :cond_a
    return v1
.end method

.method private reportBounds([CII)V
    .locals 3
    .param p1, "cbuf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read(buf,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), cbuf["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private reportInvalid(IILjava/lang/String;)V
    .locals 5
    .param p1, "value"    # I
    .param p2, "offset"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_byteCount:I

    iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .local v0, "bytePos":I
    iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_charCount:I

    add-int/2addr v1, p2

    .line 195
    .local v1, "charPos":I
    new-instance v2, Ljava/io/CharConversionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid UTF-32 character 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at char #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", byte #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private reportStrangeStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Strange I/O stream, returned 0 bytes on read"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private reportUnexpectedEOF(II)V
    .locals 5
    .param p1, "gotBytes"    # I
    .param p2, "needed"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_byteCount:I

    add-int/2addr v0, p1

    .local v0, "bytePos":I
    iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_charCount:I

    .line 189
    .local v1, "charPos":I
    new-instance v2, Ljava/io/CharConversionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected EOF in the middle of a 4-byte UTF-32 char: got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", needed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", at char #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", byte #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_in:Ljava/io/InputStream;

    .line 77
    .local v0, "in":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 78
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_in:Ljava/io/InputStream;

    .line 79
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->freeBuffers()V

    .line 80
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 82
    :cond_0
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_tmpBuf:[C

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 94
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_tmpBuf:[C

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_tmpBuf:[C

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->read([CII)I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 97
    const/4 v0, -0x1

    return v0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_tmpBuf:[C

    aget-char v0, v0, v2

    return v0
.end method

.method public read([CII)I
    .locals 17
    .param p1, "cbuf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    iget-object v3, v0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    const/4 v4, -0x1

    if-nez v3, :cond_0

    return v4

    .line 106
    :cond_0
    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    return v2

    .line 108
    :cond_1
    if-ltz p2, :cond_2

    add-int v5, p2, v2

    array-length v6, v1

    if-le v5, v6, :cond_3

    .line 109
    :cond_2
    invoke-direct/range {p0 .. p3}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->reportBounds([CII)V

    .line 112
    :cond_3
    move/from16 v5, p2

    .line 113
    .local v5, "outPtr":I
    add-int v6, v2, p2

    .line 116
    .local v6, "outEnd":I
    iget-char v7, v0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_surrogate:C

    const/4 v8, 0x0

    const/4 v9, 0x4

    if-eqz v7, :cond_4

    .line 117
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "outPtr":I
    .local v4, "outPtr":I
    aput-char v7, v1, v5

    .line 118
    iput-char v8, v0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_surrogate:C

    move v5, v4

    goto :goto_0

    .line 123
    .end local v4    # "outPtr":I
    .restart local v5    # "outPtr":I
    :cond_4
    iget v7, v0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    iget v10, v0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    sub-int/2addr v7, v10

    .line 124
    .local v7, "left":I
    if-ge v7, v9, :cond_6

    .line 125
    invoke-direct {v0, v7}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->loadMore(I)Z

    move-result v10

    if-nez v10, :cond_6

    .line 127
    if-nez v7, :cond_5

    .line 128
    return v4

    .line 130
    :cond_5
    iget v4, v0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    iget v10, v0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    sub-int/2addr v4, v10

    invoke-direct {v0, v4, v9}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->reportUnexpectedEOF(II)V

    .line 136
    .end local v7    # "left":I
    :cond_6
    :goto_0
    iget v4, v0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    sub-int/2addr v4, v9

    .line 139
    .local v4, "lastValidInputStart":I
    :goto_1
    if-ge v5, v6, :cond_c

    .line 140
    iget v7, v0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    .line 143
    .local v7, "ptr":I
    iget-boolean v10, v0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_bigEndian:Z

    if-eqz v10, :cond_7

    .line 144
    iget-object v10, v0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    aget-byte v11, v10, v7

    shl-int/lit8 v11, v11, 0x8

    add-int/lit8 v12, v7, 0x1

    aget-byte v12, v10, v12

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    .line 145
    .local v11, "hi":I
    add-int/lit8 v12, v7, 0x2

    aget-byte v12, v10, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    add-int/lit8 v13, v7, 0x3

    aget-byte v10, v10, v13

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v10, v12

    .local v10, "lo":I
    goto :goto_2

    .line 147
    .end local v10    # "lo":I
    .end local v11    # "hi":I
    :cond_7
    iget-object v10, v0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    aget-byte v11, v10, v7

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v12, v7, 0x1

    aget-byte v12, v10, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    .line 148
    .local v11, "lo":I
    add-int/lit8 v12, v7, 0x2

    aget-byte v12, v10, v12

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v13, v7, 0x3

    aget-byte v10, v10, v13

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v10, v12

    move/from16 v16, v11

    move v11, v10

    move/from16 v10, v16

    .line 150
    .restart local v10    # "lo":I
    .local v11, "hi":I
    :goto_2
    iget v12, v0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    add-int/2addr v12, v9

    iput v12, v0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    .line 154
    if-eqz v11, :cond_a

    .line 155
    const v12, 0xffff

    and-int/2addr v11, v12

    .line 156
    add-int/lit8 v12, v11, -0x1

    const/16 v13, 0x10

    shl-int/2addr v12, v13

    or-int/2addr v12, v10

    .line 157
    .local v12, "ch":I
    if-le v11, v13, :cond_8

    .line 158
    sub-int v13, v5, p2

    new-array v14, v3, [Ljava/lang/Object;

    const v15, 0x10ffff

    .line 159
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v8

    const-string v15, " (above 0x%08x)"

    invoke-static {v15, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 158
    invoke-direct {v0, v12, v13, v14}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->reportInvalid(IILjava/lang/String;)V

    .line 161
    :cond_8
    add-int/lit8 v13, v5, 0x1

    .end local v5    # "outPtr":I
    .local v13, "outPtr":I
    const v14, 0xd800

    shr-int/lit8 v15, v12, 0xa

    add-int/2addr v15, v14

    int-to-char v14, v15

    aput-char v14, v1, v5

    .line 163
    const v5, 0xdc00

    and-int/lit16 v14, v12, 0x3ff

    or-int v10, v14, v5

    .line 165
    if-lt v13, v6, :cond_9

    .line 166
    int-to-char v3, v12

    iput-char v3, v0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_surrogate:C

    .line 167
    move v5, v13

    goto :goto_3

    .line 165
    :cond_9
    move v5, v13

    .line 170
    .end local v12    # "ch":I
    .end local v13    # "outPtr":I
    .restart local v5    # "outPtr":I
    :cond_a
    add-int/lit8 v12, v5, 0x1

    .end local v5    # "outPtr":I
    .local v12, "outPtr":I
    int-to-char v13, v10

    aput-char v13, v1, v5

    .line 171
    iget v5, v0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    if-le v5, v4, :cond_b

    .line 172
    move v5, v12

    goto :goto_3

    .line 174
    .end local v7    # "ptr":I
    .end local v10    # "lo":I
    .end local v11    # "hi":I
    :cond_b
    move v5, v12

    goto/16 :goto_1

    .line 175
    .end local v12    # "outPtr":I
    .restart local v5    # "outPtr":I
    :cond_c
    :goto_3
    sub-int v3, v5, p2

    .line 176
    .local v3, "actualLen":I
    iget v7, v0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_charCount:I

    add-int/2addr v7, v3

    iput v7, v0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_charCount:I

    .line 177
    return v3
.end method
