.class public final Lcom/itextpdf/io/util/StreamUtil;
.super Ljava/lang/Object;
.source "StreamUtil.java"


# static fields
.field private static final TRANSFER_SIZE:I = 0x10000

.field private static final escB:[B

.field private static final escF:[B

.field private static final escN:[B

.field private static final escR:[B

.field private static final escT:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const-string v0, "\\r"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/util/StreamUtil;->escR:[B

    .line 67
    const-string v0, "\\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/util/StreamUtil;->escN:[B

    .line 68
    const-string v0, "\\t"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/util/StreamUtil;->escT:[B

    .line 69
    const-string v0, "\\b"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/util/StreamUtil;->escB:[B

    .line 70
    const-string v0, "\\f"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/util/StreamUtil;->escF:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method public static copyBytes(Lcom/itextpdf/io/source/IRandomAccessSource;JJLjava/io/OutputStream;)V
    .locals 13
    .param p0, "source"    # Lcom/itextpdf/io/source/IRandomAccessSource;
    .param p1, "start"    # J
    .param p3, "length"    # J
    .param p5, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-gtz v2, :cond_0

    .line 234
    return-void

    .line 236
    :cond_0
    move-wide v2, p1

    .line 237
    .local v2, "idx":J
    const/16 v4, 0x2000

    new-array v4, v4, [B

    move-wide v11, v2

    move-wide/from16 v2, p3

    .line 238
    .end local p3    # "length":J
    .local v2, "length":J
    .local v4, "buf":[B
    .local v11, "idx":J
    :goto_0
    cmp-long v5, v2, v0

    if-lez v5, :cond_2

    .line 239
    const/4 v9, 0x0

    array-length v5, v4

    int-to-long v5, v5

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v10, v5

    move-object v5, p0

    move-wide v6, v11

    move-object v8, v4

    invoke-interface/range {v5 .. v10}, Lcom/itextpdf/io/source/IRandomAccessSource;->get(J[BII)I

    move-result v5

    int-to-long v5, v5

    .line 240
    .local v5, "n":J
    cmp-long v7, v5, v0

    if-lez v7, :cond_1

    .line 243
    const/4 v7, 0x0

    long-to-int v8, v5

    move-object/from16 v9, p5

    invoke-virtual {v9, v4, v7, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 244
    add-long/2addr v11, v5

    .line 245
    sub-long/2addr v2, v5

    .line 246
    .end local v5    # "n":J
    goto :goto_0

    .line 241
    .restart local v5    # "n":J
    :cond_1
    move-object/from16 v9, p5

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 247
    .end local v5    # "n":J
    :cond_2
    move-object/from16 v9, p5

    return-void
.end method

.method public static createBufferedEscapedString([B)Lcom/itextpdf/io/source/ByteBuffer;
    .locals 6
    .param p0, "bytes"    # [B

    .line 130
    new-instance v0, Lcom/itextpdf/io/source/ByteBuffer;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/ByteBuffer;-><init>(I)V

    .line 131
    .local v0, "buf":Lcom/itextpdf/io/source/ByteBuffer;
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    .line 132
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-byte v3, p0, v2

    .line 133
    .local v3, "b":B
    sparse-switch v3, :sswitch_data_0

    .line 155
    const/16 v4, 0x8

    if-ge v3, v4, :cond_0

    if-ltz v3, :cond_0

    .line 156
    const-string v4, "\\00"

    invoke-virtual {v0, v4}, Lcom/itextpdf/io/source/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->toOctalString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/io/source/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/io/source/ByteBuffer;

    goto :goto_1

    .line 152
    :sswitch_0
    const/16 v4, 0x5c

    invoke-virtual {v0, v4}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/itextpdf/io/source/ByteBuffer;->append(B)Lcom/itextpdf/io/source/ByteBuffer;

    .line 153
    goto :goto_1

    .line 135
    :sswitch_1
    sget-object v4, Lcom/itextpdf/io/util/StreamUtil;->escR:[B

    invoke-virtual {v0, v4}, Lcom/itextpdf/io/source/ByteBuffer;->append([B)Lcom/itextpdf/io/source/ByteBuffer;

    .line 136
    goto :goto_1

    .line 147
    :sswitch_2
    sget-object v4, Lcom/itextpdf/io/util/StreamUtil;->escF:[B

    invoke-virtual {v0, v4}, Lcom/itextpdf/io/source/ByteBuffer;->append([B)Lcom/itextpdf/io/source/ByteBuffer;

    .line 148
    goto :goto_1

    .line 138
    :sswitch_3
    sget-object v4, Lcom/itextpdf/io/util/StreamUtil;->escN:[B

    invoke-virtual {v0, v4}, Lcom/itextpdf/io/source/ByteBuffer;->append([B)Lcom/itextpdf/io/source/ByteBuffer;

    .line 139
    goto :goto_1

    .line 141
    :sswitch_4
    sget-object v4, Lcom/itextpdf/io/util/StreamUtil;->escT:[B

    invoke-virtual {v0, v4}, Lcom/itextpdf/io/source/ByteBuffer;->append([B)Lcom/itextpdf/io/source/ByteBuffer;

    .line 142
    goto :goto_1

    .line 144
    :sswitch_5
    sget-object v4, Lcom/itextpdf/io/util/StreamUtil;->escB:[B

    invoke-virtual {v0, v4}, Lcom/itextpdf/io/source/ByteBuffer;->append([B)Lcom/itextpdf/io/source/ByteBuffer;

    .line 145
    goto :goto_1

    .line 157
    :cond_0
    if-lt v3, v4, :cond_1

    const/16 v4, 0x20

    if-ge v3, v4, :cond_1

    .line 158
    const-string v4, "\\0"

    invoke-virtual {v0, v4}, Lcom/itextpdf/io/source/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->toOctalString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/io/source/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/io/source/ByteBuffer;

    goto :goto_1

    .line 160
    :cond_1
    invoke-virtual {v0, v3}, Lcom/itextpdf/io/source/ByteBuffer;->append(B)Lcom/itextpdf/io/source/ByteBuffer;

    .line 132
    .end local v3    # "b":B
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    :cond_2
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    .line 165
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_5
        0x9 -> :sswitch_4
        0xa -> :sswitch_3
        0xc -> :sswitch_2
        0xd -> :sswitch_1
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method public static createBufferedHexedString([B)Lcom/itextpdf/io/source/ByteBuffer;
    .locals 4
    .param p0, "bytes"    # [B

    .line 169
    new-instance v0, Lcom/itextpdf/io/source/ByteBuffer;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/ByteBuffer;-><init>(I)V

    .line 170
    .local v0, "buf":Lcom/itextpdf/io/source/ByteBuffer;
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    .line 171
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    .line 172
    .local v3, "b":B
    invoke-virtual {v0, v3}, Lcom/itextpdf/io/source/ByteBuffer;->appendHex(B)Lcom/itextpdf/io/source/ByteBuffer;

    .line 171
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    :cond_0
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    .line 175
    return-object v0
.end method

.method public static createEscapedString([B)[B
    .locals 1
    .param p0, "bytes"    # [B

    .line 102
    invoke-static {p0}, Lcom/itextpdf/io/util/StreamUtil;->createBufferedEscapedString([B)Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static inputStreamToArray(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 211
    .local v0, "b":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 213
    .local v1, "output":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 214
    .local v2, "read":I
    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 215
    nop

    .line 219
    .end local v2    # "read":I
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 220
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 217
    .restart local v2    # "read":I
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 218
    .end local v2    # "read":I
    goto :goto_0
.end method

.method public static readFully(Ljava/io/InputStream;[BII)V
    .locals 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    if-ltz p3, :cond_2

    .line 261
    const/4 v0, 0x0

    .line 262
    .local v0, "n":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 263
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 264
    .local v1, "count":I
    if-ltz v1, :cond_0

    .line 267
    add-int/2addr v0, v1

    .line 268
    .end local v1    # "count":I
    goto :goto_0

    .line 265
    .restart local v1    # "count":I
    :cond_0
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 269
    .end local v1    # "count":I
    :cond_1
    return-void

    .line 260
    .end local v0    # "n":I
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static skip(Ljava/io/InputStream;J)V
    .locals 4
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 87
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 88
    .local v2, "n":J
    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    .line 89
    goto :goto_1

    .line 91
    :cond_0
    sub-long/2addr p1, v2

    goto :goto_0

    .line 93
    .end local v2    # "n":J
    :cond_1
    :goto_1
    return-void
.end method

.method public static transferBytes(Lcom/itextpdf/io/source/RandomAccessFileOrArray;Ljava/io/OutputStream;)V
    .locals 4
    .param p0, "input"    # Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    const/high16 v0, 0x10000

    new-array v1, v0, [B

    .line 193
    .local v1, "buffer":[B
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read([BII)I

    move-result v3

    .line 194
    .local v3, "len":I
    if-lez v3, :cond_0

    .line 195
    invoke-virtual {p1, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 199
    .end local v3    # "len":I
    goto :goto_0

    .line 200
    :cond_0
    return-void
.end method

.method public static transferBytes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    const/high16 v0, 0x10000

    new-array v1, v0, [B

    .line 181
    .local v1, "buffer":[B
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 182
    .local v3, "len":I
    if-lez v3, :cond_0

    .line 183
    invoke-virtual {p1, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 187
    .end local v3    # "len":I
    goto :goto_0

    .line 188
    :cond_0
    return-void
.end method

.method public static writeEscapedString(Ljava/io/OutputStream;[B)V
    .locals 4
    .param p0, "outputStream"    # Ljava/io/OutputStream;
    .param p1, "bytes"    # [B

    .line 112
    invoke-static {p1}, Lcom/itextpdf/io/util/StreamUtil;->createBufferedEscapedString([B)Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object v0

    .line 114
    .local v0, "buf":Lcom/itextpdf/io/source/ByteBuffer;
    :try_start_0
    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->getInternalBuffer()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->size()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    nop

    .line 118
    return-void

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/itextpdf/io/IOException;

    const-string v3, "Cannot write bytes."

    invoke-direct {v2, v3, v1}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static writeHexedString(Ljava/io/OutputStream;[B)V
    .locals 4
    .param p0, "outputStream"    # Ljava/io/OutputStream;
    .param p1, "bytes"    # [B

    .line 121
    invoke-static {p1}, Lcom/itextpdf/io/util/StreamUtil;->createBufferedHexedString([B)Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object v0

    .line 123
    .local v0, "buf":Lcom/itextpdf/io/source/ByteBuffer;
    :try_start_0
    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->getInternalBuffer()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->size()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    nop

    .line 127
    return-void

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/itextpdf/io/IOException;

    const-string v3, "Cannot write bytes."

    invoke-direct {v2, v3, v1}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
