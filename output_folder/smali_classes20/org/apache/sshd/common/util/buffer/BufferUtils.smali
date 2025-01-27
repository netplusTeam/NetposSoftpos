.class public final Lorg/apache/sshd/common/util/buffer/BufferUtils;
.super Ljava/lang/Object;
.source "BufferUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DEFAULT_BUFFER_GROWTH_FACTOR:Ljava/util/function/IntUnaryOperator;

.field public static final DEFAULT_HEXDUMP_CHUNK_SIZE:I = 0x40

.field public static final DEFAULT_HEXDUMP_LEVEL:Ljava/util/logging/Level;

.field public static final DEFAULT_HEX_SEPARATOR:C = ' '

.field public static final EMPTY_HEX_SEPARATOR:C = '\u0000'

.field public static final HEXDUMP_CHUNK_SIZE:Ljava/lang/String; = "sshd-hexdump-chunk-size"

.field public static final HEX_DIGITS:Ljava/lang/String; = "0123456789abcdef"

.field public static final MAX_UINT32_VALUE:J = 0xffffffffL

.field public static final MAX_UINT8_VALUE:I = 0xff


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    nop

    .line 47
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    sput-object v0, Lorg/apache/sshd/common/util/buffer/BufferUtils;->DEFAULT_HEXDUMP_LEVEL:Ljava/util/logging/Level;

    .line 49
    new-instance v0, Lorg/apache/sshd/common/util/buffer/BufferUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/buffer/BufferUtils$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/util/buffer/BufferUtils;->DEFAULT_BUFFER_GROWTH_FACTOR:Ljava/util/function/IntUnaryOperator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs appendHex(Ljava/lang/Appendable;C[B)Ljava/lang/Appendable;
    .locals 2
    .param p1, "sep"    # C
    .param p2, "array"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;C[B)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    .local p0, "sb":Ljava/lang/Appendable;, "TA;"
    invoke-static {p2}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p2, v1, v0, p1}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->appendHex(Ljava/lang/Appendable;[BIIC)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public static appendHex(Ljava/lang/Appendable;[BIIC)Ljava/lang/Appendable;
    .locals 5
    .param p1, "array"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "sep"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;[BIIC)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    .local p0, "sb":Ljava/lang/Appendable;, "TA;"
    if-gtz p3, :cond_0

    .line 166
    return-object p0

    .line 169
    :cond_0
    move v0, p2

    .local v0, "curOffset":I
    add-int v1, p2, p3

    .local v1, "maxOffset":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 170
    aget-byte v2, p1, v0

    .line 171
    .local v2, "b":B
    if-le v0, p2, :cond_1

    if-eqz p4, :cond_1

    .line 172
    invoke-interface {p0, p4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 174
    :cond_1
    shr-int/lit8 v3, v2, 0x4

    and-int/lit8 v3, v3, 0xf

    const-string v4, "0123456789abcdef"

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-interface {p0, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 175
    and-int/lit8 v3, v2, 0xf

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-interface {p0, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 169
    .end local v2    # "b":B
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    .end local v0    # "curOffset":I
    .end local v1    # "maxOffset":I
    :cond_2
    return-object p0
.end method

.method public static clear(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lorg/apache/sshd/common/util/buffer/Buffer;",
            ">(TB;)TB;"
        }
    .end annotation

    .line 579
    .local p0, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;, "TB;"
    if-eqz p0, :cond_0

    .line 580
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->clear()V

    .line 583
    :cond_0
    return-object p0
.end method

.method public static decodeHex(Ljava/io/OutputStream;CLjava/lang/CharSequence;)I
    .locals 2
    .param p1, "separator"    # C
    .param p2, "csq"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/io/OutputStream;",
            ">(TS;C",
            "Ljava/lang/CharSequence;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    .local p0, "stream":Ljava/io/OutputStream;, "TS;"
    invoke-static {p2}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->decodeHex(Ljava/io/OutputStream;CLjava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static decodeHex(Ljava/io/OutputStream;CLjava/lang/CharSequence;II)I
    .locals 7
    .param p1, "separator"    # C
    .param p2, "csq"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/io/OutputStream;",
            ">(TS;C",
            "Ljava/lang/CharSequence;",
            "II)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    .local p0, "stream":Ljava/io/OutputStream;, "TS;"
    sub-int v0, p4, p3

    .line 263
    .local v0, "len":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    int-to-long v4, v0

    const-string v6, "Bad HEX sequence length: %d"

    invoke-static {v3, v6, v4, v5}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 265
    const/4 v3, 0x2

    .line 266
    .local v3, "delta":I
    if-eqz p1, :cond_2

    .line 268
    rem-int/lit8 v4, v0, 0x3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    move v1, v2

    :cond_1
    int-to-long v4, v0

    const-string v2, "Invalid separated HEX sequence length: %d"

    invoke-static {v1, v2, v4, v5}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 269
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 271
    :cond_2
    and-int/lit8 v4, v0, 0x1

    if-nez v4, :cond_3

    move v1, v2

    :cond_3
    int-to-long v4, v0

    const-string v2, "Invalid contiguous HEX sequence length: %d"

    invoke-static {v1, v2, v4, v5}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 274
    :goto_1
    const/4 v1, 0x0

    .line 275
    .local v1, "writeLen":I
    move v2, p3

    .local v2, "curPos":I
    :goto_2
    if-ge v2, p4, :cond_4

    .line 276
    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v5, v2, 0x1

    invoke-interface {p2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v4, v5}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->fromHex(CC)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write(I)V

    .line 275
    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 279
    .end local v2    # "curPos":I
    :cond_4
    return v1
.end method

.method public static decodeHex(CLjava/lang/CharSequence;)[B
    .locals 2
    .param p0, "separator"    # C
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .line 190
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->decodeHex(CLjava/lang/CharSequence;II)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeHex(CLjava/lang/CharSequence;II)[B
    .locals 7
    .param p0, "separator"    # C
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 203
    sub-int v0, p3, p2

    .line 204
    .local v0, "len":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    int-to-long v4, v0

    const-string v6, "Bad HEX sequence length: %d"

    invoke-static {v3, v6, v4, v5}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 205
    if-nez v0, :cond_1

    .line 206
    sget-object v1, Lorg/apache/sshd/common/util/GenericUtils;->EMPTY_BYTE_ARRAY:[B

    return-object v1

    .line 209
    :cond_1
    const/4 v3, 0x2

    .line 211
    .local v3, "delta":I
    if-eqz p0, :cond_3

    .line 213
    rem-int/lit8 v4, v0, 0x3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    move v1, v2

    :cond_2
    int-to-long v4, v0

    const-string v2, "Invalid separated HEX sequence length: %d"

    invoke-static {v1, v2, v4, v5}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 214
    add-int/lit8 v1, v0, 0x1

    div-int/lit8 v1, v1, 0x3

    new-array v1, v1, [B

    .line 215
    .local v1, "bytes":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 217
    .end local v1    # "bytes":[B
    :cond_3
    and-int/lit8 v4, v0, 0x1

    if-nez v4, :cond_4

    move v1, v2

    :cond_4
    int-to-long v4, v0

    const-string v2, "Invalid contiguous HEX sequence length: %d"

    invoke-static {v1, v2, v4, v5}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 218
    ushr-int/lit8 v1, v0, 0x1

    new-array v1, v1, [B

    .line 221
    .restart local v1    # "bytes":[B
    :goto_1
    const/4 v2, 0x0

    .line 222
    .local v2, "writeLen":I
    move v4, p2

    .local v4, "curPos":I
    :goto_2
    if-ge v4, p3, :cond_5

    .line 223
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v6, v4, 0x1

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v5, v6}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->fromHex(CC)B

    move-result v5

    aput-byte v5, v1, v2

    .line 222
    add-int/2addr v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 225
    .end local v4    # "curPos":I
    :cond_5
    array-length v4, v1

    if-ne v2, v4, :cond_6

    .line 227
    return-object v1

    .line 225
    :cond_6
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
.end method

.method public static varargs dumpHex(Lorg/apache/sshd/common/util/logging/SimplifiedLog;Ljava/util/logging/Level;Ljava/lang/String;CI[B)V
    .locals 8
    .param p0, "logger"    # Lorg/apache/sshd/common/util/logging/SimplifiedLog;
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "sep"    # C
    .param p4, "chunkSize"    # I
    .param p5, "data"    # [B

    .line 83
    invoke-static {p5}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->dumpHex(Lorg/apache/sshd/common/util/logging/SimplifiedLog;Ljava/util/logging/Level;Ljava/lang/String;CI[BII)V

    .line 84
    return-void
.end method

.method public static dumpHex(Lorg/apache/sshd/common/util/logging/SimplifiedLog;Ljava/util/logging/Level;Ljava/lang/String;CI[BII)V
    .locals 17
    .param p0, "logger"    # Lorg/apache/sshd/common/util/logging/SimplifiedLog;
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "sep"    # C
    .param p4, "chunkSize"    # I
    .param p5, "data"    # [B
    .param p6, "offset"    # I
    .param p7, "len"    # I

    .line 89
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    invoke-interface/range {p0 .. p1}, Lorg/apache/sshd/common/util/logging/SimplifiedLog;->isEnabled(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object/from16 v7, p2

    move/from16 v13, p7

    goto/16 :goto_5

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v6, v4, 0x3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x40

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v6, v0

    .line 94
    .local v6, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v7, p2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    move/from16 v0, p7

    .local v0, "remainLen":I
    const/4 v8, 0x1

    .local v8, "chunkIndex":I
    move/from16 v9, p6

    .local v9, "curOffset":I
    const/4 v10, 0x0

    move/from16 v16, v8

    move v8, v0

    move v0, v10

    move v10, v9

    move/from16 v9, v16

    .local v0, "totalLen":I
    .local v8, "remainLen":I
    .local v9, "chunkIndex":I
    .local v10, "curOffset":I
    :goto_0
    if-lez v8, :cond_5

    .line 96
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 98
    const-string v11, " [chunk #"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x5d

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 101
    .local v11, "dumpSize":I
    add-int v12, v0, v11

    .line 102
    .end local v0    # "totalLen":I
    .local v12, "totalLen":I
    const/16 v0, 0x28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v13, 0x2f

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v13, p7

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v14, 0x29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    const/16 v14, 0x20

    :try_start_0
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v5, v10, v11, v3}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->appendHex(Ljava/lang/Appendable;[BIIC)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_1

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v14, ": "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    move v0, v11

    .local v0, "index":I
    :goto_2
    if-ge v0, v4, :cond_2

    .line 112
    if-eqz v3, :cond_1

    .line 113
    const/16 v14, 0x20

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    :cond_1
    const-string v14, "  "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 118
    .end local v0    # "index":I
    :cond_2
    const-string v0, "    "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    move v0, v10

    .local v0, "pos":I
    const/4 v14, 0x0

    .local v14, "l":I
    :goto_3
    if-ge v14, v11, :cond_4

    .line 120
    aget-byte v15, v5, v0

    and-int/lit16 v15, v15, 0xff

    .line 121
    .local v15, "b":I
    const/16 v3, 0x20

    if-le v15, v3, :cond_3

    const/16 v3, 0x7e

    if-ge v15, v3, :cond_3

    .line 122
    int-to-char v3, v15

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 124
    :cond_3
    const/16 v3, 0x2e

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    .end local v15    # "b":I
    :goto_4
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v14, v14, 0x1

    move/from16 v3, p3

    goto :goto_3

    .line 128
    .end local v0    # "pos":I
    .end local v14    # "l":I
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/apache/sshd/common/util/logging/SimplifiedLog;->log(Ljava/util/logging/Level;Ljava/lang/Object;)V

    .line 129
    sub-int/2addr v8, v11

    .line 130
    add-int/2addr v10, v11

    .line 95
    .end local v11    # "dumpSize":I
    add-int/lit8 v9, v9, 0x1

    move/from16 v3, p3

    move v0, v12

    goto/16 :goto_0

    .end local v12    # "totalLen":I
    .local v0, "totalLen":I
    :cond_5
    move/from16 v13, p7

    .line 132
    .end local v0    # "totalLen":I
    .end local v8    # "remainLen":I
    .end local v9    # "chunkIndex":I
    .end local v10    # "curOffset":I
    return-void

    .line 89
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    move-object/from16 v7, p2

    move/from16 v13, p7

    .line 90
    :goto_5
    return-void
.end method

.method public static varargs dumpHex(Lorg/apache/sshd/common/util/logging/SimplifiedLog;Ljava/util/logging/Level;Ljava/lang/String;Lorg/apache/sshd/common/PropertyResolver;C[B)V
    .locals 8
    .param p0, "logger"    # Lorg/apache/sshd/common/util/logging/SimplifiedLog;
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "resolver"    # Lorg/apache/sshd/common/PropertyResolver;
    .param p4, "sep"    # C
    .param p5, "data"    # [B

    .line 70
    invoke-static {p5}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->dumpHex(Lorg/apache/sshd/common/util/logging/SimplifiedLog;Ljava/util/logging/Level;Ljava/lang/String;Lorg/apache/sshd/common/PropertyResolver;C[BII)V

    .line 71
    return-void
.end method

.method public static dumpHex(Lorg/apache/sshd/common/util/logging/SimplifiedLog;Ljava/util/logging/Level;Ljava/lang/String;Lorg/apache/sshd/common/PropertyResolver;C[BII)V
    .locals 11
    .param p0, "logger"    # Lorg/apache/sshd/common/util/logging/SimplifiedLog;
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "resolver"    # Lorg/apache/sshd/common/PropertyResolver;
    .param p4, "sep"    # C
    .param p5, "data"    # [B
    .param p6, "offset"    # I
    .param p7, "len"    # I

    .line 76
    nop

    .line 77
    const-string v0, "sshd-hexdump-chunk-size"

    const/16 v1, 0x40

    move-object v2, p3

    invoke-interface {p3, v0, v1}, Lorg/apache/sshd/common/PropertyResolver;->getIntProperty(Ljava/lang/String;I)I

    move-result v7

    .line 76
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v3 .. v10}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->dumpHex(Lorg/apache/sshd/common/util/logging/SimplifiedLog;Ljava/util/logging/Level;Ljava/lang/String;CI[BII)V

    .line 79
    return-void
.end method

.method public static equals([BI[BII)Z
    .locals 5
    .param p0, "a1"    # [B
    .param p1, "a1Offset"    # I
    .param p2, "a2"    # [B
    .param p3, "a2Offset"    # I
    .param p4, "length"    # I

    .line 503
    invoke-static {p0}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v0

    .line 504
    .local v0, "len1":I
    invoke-static {p2}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v1

    .line 505
    .local v1, "len2":I
    add-int v2, p1, p4

    const/4 v3, 0x0

    if-lt v0, v2, :cond_3

    add-int v2, p3, p4

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 509
    :cond_0
    :goto_0
    add-int/lit8 v2, p4, -0x1

    .end local p4    # "length":I
    .local v2, "length":I
    if-lez p4, :cond_2

    .line 510
    add-int/lit8 p4, p1, 0x1

    .end local p1    # "a1Offset":I
    .local p4, "a1Offset":I
    aget-byte p1, p0, p1

    add-int/lit8 v4, p3, 0x1

    .end local p3    # "a2Offset":I
    .local v4, "a2Offset":I
    aget-byte p3, p2, p3

    if-eq p1, p3, :cond_1

    .line 511
    return v3

    .line 510
    :cond_1
    move p1, p4

    move p4, v2

    move p3, v4

    goto :goto_0

    .line 515
    .end local v4    # "a2Offset":I
    .end local p4    # "a1Offset":I
    .restart local p1    # "a1Offset":I
    .restart local p3    # "a2Offset":I
    :cond_2
    const/4 p4, 0x1

    return p4

    .line 506
    .end local v2    # "length":I
    .local p4, "length":I
    :cond_3
    :goto_1
    return v3
.end method

.method public static equals([B[B)Z
    .locals 3
    .param p0, "a1"    # [B
    .param p1, "a2"    # [B

    .line 492
    invoke-static {p0}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v0

    .line 493
    .local v0, "len1":I
    invoke-static {p1}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v1

    .line 494
    .local v1, "len2":I
    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 495
    return v2

    .line 497
    :cond_0
    invoke-static {p0, v2, p1, v2, v0}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->equals([BI[BII)Z

    move-result v2

    return v2
.end method

.method public static fromHex(CC)B
    .locals 7
    .param p0, "hi"    # C
    .param p1, "lo"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 283
    const/16 v0, 0x46

    const/16 v1, 0x41

    if-lt p0, v1, :cond_0

    if-gt p0, v0, :cond_0

    add-int/lit8 v2, p0, -0x41

    add-int/lit8 v2, v2, 0x61

    goto :goto_0

    :cond_0
    move v2, p0

    :goto_0
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 284
    .local v2, "hiValue":I
    if-lt p1, v1, :cond_1

    if-gt p1, v0, :cond_1

    add-int/lit8 v0, p1, -0x41

    add-int/lit8 v0, v0, 0x61

    goto :goto_1

    :cond_1
    move v0, p1

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 285
    .local v0, "loValue":I
    if-ltz v2, :cond_2

    if-ltz v0, :cond_2

    .line 289
    shl-int/lit8 v1, v2, 0x4

    add-int/2addr v1, v0

    int-to-byte v1, v1

    return v1

    .line 286
    :cond_2
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fromHex("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [C

    const/4 v6, 0x0

    aput-char p0, v5, v6

    const/4 v6, 0x1

    aput-char p1, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") non-HEX characters"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getNextPowerOf2(I)I
    .locals 1
    .param p0, "value"    # I

    .line 520
    const/16 v0, 0x8

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    if-le p0, v0, :cond_1

    move v0, p0

    goto :goto_0

    .line 524
    :cond_1
    invoke-static {p0}, Lorg/apache/sshd/common/util/NumberUtils;->getNextPowerOf2(I)I

    move-result v0

    .line 520
    :goto_0
    return v0
.end method

.method public static varargs getUInt([B)J
    .locals 2
    .param p0, "buf"    # [B

    .line 366
    invoke-static {p0}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->getUInt([BII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUInt([BII)J
    .locals 6
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 378
    const/4 v0, 0x4

    if-lt p2, v0, :cond_0

    .line 382
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    int-to-long v0, v0

    const-wide v2, 0xff000000L

    and-long/2addr v0, v2

    .line 383
    .local v0, "l":J
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    const-wide/32 v4, 0xff0000

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 384
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    const-wide/32 v4, 0xff00

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 385
    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 386
    return-wide v0

    .line 379
    .end local v0    # "l":J
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough data for a UINT: required=4, available="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isValidInt32Value(J)Z
    .locals 2
    .param p0, "value"    # J

    .line 602
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isValidUint32Value(J)Z
    .locals 2
    .param p0, "value"    # J

    .line 621
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static putUInt(J[B)I
    .locals 2
    .param p0, "value"    # J
    .param p2, "buf"    # [B

    .line 465
    invoke-static {p2}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->putUInt(J[BII)I

    move-result v0

    return v0
.end method

.method public static putUInt(J[BII)I
    .locals 7
    .param p0, "value"    # J
    .param p2, "buf"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I

    .line 479
    const/4 v0, 0x4

    if-lt p4, v0, :cond_0

    .line 483
    const/16 v1, 0x18

    shr-long v1, p0, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 484
    add-int/lit8 v1, p3, 0x1

    const/16 v2, 0x10

    shr-long v5, p0, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 485
    add-int/lit8 v1, p3, 0x2

    const/16 v2, 0x8

    shr-long v5, p0, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 486
    add-int/lit8 v1, p3, 0x3

    and-long v2, p0, v3

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 488
    return v0

    .line 480
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough data for a UINT: required=4, available="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static readInt(Ljava/io/InputStream;[B)I
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    invoke-static {p1}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->readInt(Ljava/io/InputStream;[BII)I

    move-result v0

    return v0
.end method

.method public static readInt(Ljava/io/InputStream;[BII)I
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    invoke-static {p0, p1, p2, p3}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->readUInt(Ljava/io/InputStream;[BII)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static readUInt(Ljava/io/InputStream;[B)J
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    invoke-static {p1}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->readUInt(Ljava/io/InputStream;[BII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static readUInt(Ljava/io/InputStream;[BII)J
    .locals 4
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    const/4 v0, 0x4

    if-lt p3, v0, :cond_0

    .line 350
    :try_start_0
    invoke-static {p0, p1, p2, v0}, Lorg/apache/sshd/common/util/io/IoUtils;->readFully(Ljava/io/InputStream;[BII)V

    .line 351
    invoke-static {p1, p2, p3}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->getUInt([BII)J

    move-result-wide v0

    return-wide v0

    .line 352
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    .line 347
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough data for a UINT: required=4, available="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "buf":[B
    .end local p2    # "offset":I
    .end local p3    # "len":I
    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    .local v0, "e":Ljava/lang/Throwable;
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "buf":[B
    .restart local p2    # "offset":I
    .restart local p3    # "len":I
    :goto_0
    new-instance v1, Ljava/io/StreamCorruptedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to read UINT value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 354
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static varargs toHex(C[B)Ljava/lang/String;
    .locals 2
    .param p0, "sep"    # C
    .param p1, "array"    # [B

    .line 139
    invoke-static {p1}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p0}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->toHex([BIIC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs toHex([B)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [B

    .line 135
    invoke-static {p0}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->toHex([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHex([BII)Ljava/lang/String;
    .locals 1
    .param p0, "array"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .line 143
    const/16 v0, 0x20

    invoke-static {p0, p1, p2, v0}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->toHex([BIIC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHex([BIIC)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "sep"    # C

    .line 147
    if-gtz p2, :cond_0

    .line 148
    const-string v0, ""

    return-object v0

    .line 152
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v0, p0, p1, p2, p3}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->appendHex(Ljava/lang/Appendable;[BIIC)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static updateLengthPlaceholder(Lorg/apache/sshd/common/util/buffer/Buffer;I)I
    .locals 7
    .param p0, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p1, "lenPos"    # I

    .line 542
    add-int/lit8 v0, p1, 0x4

    .line 543
    .local v0, "startPos":I
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos()I

    move-result v1

    .line 544
    .local v1, "endPos":I
    sub-int v2, v1, v0

    .line 546
    .local v2, "dataLength":I
    if-ltz v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    int-to-long v4, v2

    const-string v6, "Illegal data length: %d"

    invoke-static {v3, v6, v4, v5}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 547
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos(I)V

    .line 548
    int-to-long v3, v2

    invoke-virtual {p0, v3, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 549
    invoke-virtual {p0, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos(I)V

    .line 550
    return v2
.end method

.method public static updateLengthPlaceholder(Lorg/apache/sshd/common/util/buffer/Buffer;II)V
    .locals 3
    .param p0, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p1, "lenPos"    # I
    .param p2, "dataLength"    # I

    .line 565
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos()I

    move-result v0

    .line 566
    .local v0, "curPos":I
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos(I)V

    .line 567
    int-to-long v1, p2

    invoke-virtual {p0, v1, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 568
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos(I)V

    .line 569
    return-void
.end method

.method public static validateInt32Value(JLjava/lang/String;)J
    .locals 1
    .param p0, "value"    # J
    .param p2, "message"    # Ljava/lang/String;

    .line 587
    invoke-static {p0, p1}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->isValidInt32Value(J)Z

    move-result v0

    invoke-static {v0, p2, p0, p1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 588
    return-wide p0
.end method

.method public static validateInt32Value(JLjava/lang/String;Ljava/lang/Object;)J
    .locals 1
    .param p0, "value"    # J
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;

    .line 592
    invoke-static {p0, p1}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->isValidInt32Value(J)Z

    move-result v0

    invoke-static {v0, p2, p3}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 593
    return-wide p0
.end method

.method public static varargs validateInt32Value(JLjava/lang/String;[Ljava/lang/Object;)J
    .locals 1
    .param p0, "value"    # J
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 597
    invoke-static {p0, p1}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->isValidInt32Value(J)Z

    move-result v0

    invoke-static {v0, p2, p3}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 598
    return-wide p0
.end method

.method public static validateUint32Value(JLjava/lang/String;)J
    .locals 1
    .param p0, "value"    # J
    .param p2, "message"    # Ljava/lang/String;

    .line 606
    invoke-static {p0, p1}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->isValidUint32Value(J)Z

    move-result v0

    invoke-static {v0, p2, p0, p1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 607
    return-wide p0
.end method

.method public static validateUint32Value(JLjava/lang/String;Ljava/lang/Object;)J
    .locals 1
    .param p0, "value"    # J
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;

    .line 611
    invoke-static {p0, p1}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->isValidUint32Value(J)Z

    move-result v0

    invoke-static {v0, p2, p3}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 612
    return-wide p0
.end method

.method public static varargs validateUint32Value(JLjava/lang/String;[Ljava/lang/Object;)J
    .locals 1
    .param p0, "value"    # J
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 616
    invoke-static {p0, p1}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->isValidUint32Value(J)Z

    move-result v0

    invoke-static {v0, p2, p3}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 617
    return-wide p0
.end method

.method public static writeInt(Ljava/io/OutputStream;I[B)V
    .locals 6
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p1, "value"    # I
    .param p2, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    int-to-long v1, p1

    invoke-static {p2}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->writeUInt(Ljava/io/OutputStream;J[BII)V

    .line 400
    return-void
.end method

.method public static writeInt(Ljava/io/OutputStream;I[BII)V
    .locals 10
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p1, "value"    # I
    .param p2, "buf"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 416
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long v5, v0, v2

    move-object v4, p0

    move-object v7, p2

    move v8, p3

    move v9, p4

    invoke-static/range {v4 .. v9}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->writeUInt(Ljava/io/OutputStream;J[BII)V

    .line 417
    return-void
.end method

.method public static writeUInt(Ljava/io/OutputStream;J[B)V
    .locals 6
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p1, "value"    # J
    .param p3, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 429
    invoke-static {p3}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->writeUInt(Ljava/io/OutputStream;J[BII)V

    .line 430
    return-void
.end method

.method public static writeUInt(Ljava/io/OutputStream;J[BII)V
    .locals 4
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p1, "value"    # J
    .param p3, "buf"    # [B
    .param p4, "off"    # I
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 447
    :try_start_0
    invoke-static {p1, p2, p3, p4, p5}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->putUInt(J[BII)I

    move-result v0

    .line 448
    .local v0, "writeLen":I
    invoke-virtual {p0, p3, p4, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    .end local v0    # "writeLen":I
    nop

    .line 453
    return-void

    .line 449
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    new-instance v1, Ljava/io/StreamCorruptedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to write UINT value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 451
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
