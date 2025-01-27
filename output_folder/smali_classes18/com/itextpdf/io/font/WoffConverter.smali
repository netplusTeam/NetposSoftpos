.class Lcom/itextpdf/io/font/WoffConverter;
.super Ljava/lang/Object;
.source "WoffConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/font/WoffConverter$TableDirectory;
    }
.end annotation


# static fields
.field private static final woffSignature:J = 0x774f4646L


# direct methods
.method constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytesToUInt([BI)J
    .locals 7
    .param p0, "b"    # [B
    .param p1, "start"    # I

    .line 226
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v4, 0x18

    shl-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static bytesToUShort([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "start"    # I

    .line 233
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static convert([B)[B
    .locals 22
    .param p0, "woffBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 60
    .local v1, "srcPos":I
    const/4 v2, 0x0

    .line 63
    .local v2, "destPos":I
    invoke-static {v0, v1}, Lcom/itextpdf/io/font/WoffConverter;->bytesToUInt([BI)J

    move-result-wide v3

    const-wide/32 v5, 0x774f4646

    cmp-long v3, v3, v5

    if-nez v3, :cond_10

    .line 66
    const/4 v3, 0x4

    add-int/2addr v1, v3

    .line 68
    new-array v4, v3, [B

    .line 69
    .local v4, "flavor":[B
    const/4 v5, 0x0

    invoke-static {v0, v1, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    add-int/2addr v1, v3

    .line 73
    invoke-static {v0, v1}, Lcom/itextpdf/io/font/WoffConverter;->bytesToUInt([BI)J

    move-result-wide v6

    array-length v8, v0

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_f

    .line 76
    add-int/2addr v1, v3

    .line 78
    const/4 v6, 0x2

    new-array v7, v6, [B

    .line 79
    .local v7, "numTables":[B
    invoke-static {v0, v1, v7, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    add-int/2addr v1, v6

    .line 83
    invoke-static {v0, v1}, Lcom/itextpdf/io/font/WoffConverter;->bytesToUShort([BI)I

    move-result v8

    if-nez v8, :cond_e

    .line 86
    add-int/2addr v1, v6

    .line 88
    invoke-static {v0, v1}, Lcom/itextpdf/io/font/WoffConverter;->bytesToUInt([BI)J

    move-result-wide v8

    .line 89
    .local v8, "totalSfntSize":J
    add-int/2addr v1, v3

    .line 92
    add-int/2addr v1, v6

    .line 94
    add-int/2addr v1, v6

    .line 96
    add-int/2addr v1, v3

    .line 98
    add-int/2addr v1, v3

    .line 100
    add-int/2addr v1, v3

    .line 102
    add-int/2addr v1, v3

    .line 104
    add-int/2addr v1, v3

    .line 108
    long-to-int v10, v8

    new-array v10, v10, [B

    .line 109
    .local v10, "otfBytes":[B
    invoke-static {v4, v5, v10, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    add-int/2addr v2, v3

    .line 111
    invoke-static {v7, v5, v10, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    add-int/2addr v2, v6

    .line 114
    const/4 v11, -0x1

    .line 115
    .local v11, "entrySelector":I
    const/4 v12, -0x1

    .line 116
    .local v12, "searchRange":I
    invoke-static {v7, v5}, Lcom/itextpdf/io/font/WoffConverter;->bytesToUShort([BI)I

    move-result v13

    .line 117
    .local v13, "numTablesVal":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    const/16 v15, 0x11

    if-ge v14, v15, :cond_1

    .line 118
    move-object/from16 v16, v4

    .end local v4    # "flavor":[B
    .local v16, "flavor":[B
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    int-to-double v5, v14

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v3, v3

    .line 119
    .local v3, "powOfTwo":I
    if-le v3, v13, :cond_0

    .line 120
    move v11, v14

    .line 121
    mul-int/lit8 v12, v3, 0x10

    .line 122
    goto :goto_1

    .line 117
    .end local v3    # "powOfTwo":I
    :cond_0
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, v16

    const/4 v3, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x2

    goto :goto_0

    .end local v16    # "flavor":[B
    .restart local v4    # "flavor":[B
    :cond_1
    move-object/from16 v16, v4

    .line 125
    .end local v4    # "flavor":[B
    .end local v14    # "i":I
    .restart local v16    # "flavor":[B
    :goto_1
    if-ltz v11, :cond_d

    .line 128
    shr-int/lit8 v3, v12, 0x8

    int-to-byte v3, v3

    aput-byte v3, v10, v2

    .line 129
    add-int/lit8 v3, v2, 0x1

    int-to-byte v4, v12

    aput-byte v4, v10, v3

    .line 130
    const/4 v3, 0x2

    add-int/2addr v2, v3

    .line 131
    shr-int/lit8 v3, v11, 0x8

    int-to-byte v3, v3

    aput-byte v3, v10, v2

    .line 132
    add-int/lit8 v3, v2, 0x1

    int-to-byte v4, v11

    aput-byte v4, v10, v3

    .line 133
    const/4 v3, 0x2

    add-int/2addr v2, v3

    .line 134
    mul-int/lit8 v3, v13, 0x10

    sub-int/2addr v3, v12

    .line 135
    .local v3, "rangeShift":I
    shr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    aput-byte v4, v10, v2

    .line 136
    add-int/lit8 v4, v2, 0x1

    int-to-byte v5, v3

    aput-byte v5, v10, v4

    .line 137
    const/4 v4, 0x2

    add-int/2addr v2, v4

    .line 139
    move v4, v2

    .line 140
    .local v4, "outTableOffset":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 141
    .local v5, "tdList":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/WoffConverter$TableDirectory;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v13, :cond_3

    .line 142
    new-instance v14, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;-><init>(Lcom/itextpdf/io/font/WoffConverter$1;)V

    .line 143
    .local v14, "td":Lcom/itextpdf/io/font/WoffConverter$TableDirectory;
    iget-object v15, v14, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->tag:[B

    move/from16 v18, v2

    move/from16 v17, v3

    const/4 v2, 0x0

    const/4 v3, 0x4

    .end local v2    # "destPos":I
    .end local v3    # "rangeShift":I
    .local v17, "rangeShift":I
    .local v18, "destPos":I
    invoke-static {v0, v1, v15, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    add-int/lit8 v1, v1, 0x4

    .line 145
    move v2, v4

    .end local v4    # "outTableOffset":I
    .local v2, "outTableOffset":I
    invoke-static {v0, v1}, Lcom/itextpdf/io/font/WoffConverter;->bytesToUInt([BI)J

    move-result-wide v3

    iput-wide v3, v14, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->offset:J

    .line 146
    const/4 v3, 0x4

    add-int/2addr v1, v3

    .line 148
    iget-wide v3, v14, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->offset:J

    const-wide/16 v19, 0x4

    rem-long v3, v3, v19

    const-wide/16 v19, 0x0

    cmp-long v3, v3, v19

    if-nez v3, :cond_2

    .line 152
    invoke-static {v0, v1}, Lcom/itextpdf/io/font/WoffConverter;->bytesToUInt([BI)J

    move-result-wide v3

    iput-wide v3, v14, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->compLength:J

    .line 153
    add-int/lit8 v1, v1, 0x4

    .line 154
    iget-object v3, v14, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->origLength:[B

    const/4 v4, 0x0

    const/4 v15, 0x4

    invoke-static {v0, v1, v3, v4, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    iget-object v3, v14, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->origLength:[B

    move/from16 v19, v11

    move/from16 v20, v12

    .end local v11    # "entrySelector":I
    .end local v12    # "searchRange":I
    .local v19, "entrySelector":I
    .local v20, "searchRange":I
    invoke-static {v3, v4}, Lcom/itextpdf/io/font/WoffConverter;->bytesToUInt([BI)J

    move-result-wide v11

    iput-wide v11, v14, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->origLengthVal:J

    .line 156
    add-int/2addr v1, v15

    .line 157
    iget-object v3, v14, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->origChecksum:[B

    invoke-static {v0, v1, v3, v4, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    add-int/2addr v1, v15

    .line 160
    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    nop

    .end local v14    # "td":Lcom/itextpdf/io/font/WoffConverter$TableDirectory;
    add-int/lit8 v4, v2, 0x10

    .line 141
    .end local v2    # "outTableOffset":I
    .restart local v4    # "outTableOffset":I
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v17

    move/from16 v2, v18

    move/from16 v11, v19

    move/from16 v12, v20

    goto :goto_2

    .line 149
    .end local v4    # "outTableOffset":I
    .end local v19    # "entrySelector":I
    .end local v20    # "searchRange":I
    .restart local v2    # "outTableOffset":I
    .restart local v11    # "entrySelector":I
    .restart local v12    # "searchRange":I
    .restart local v14    # "td":Lcom/itextpdf/io/font/WoffConverter$TableDirectory;
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 141
    .end local v14    # "td":Lcom/itextpdf/io/font/WoffConverter$TableDirectory;
    .end local v17    # "rangeShift":I
    .end local v18    # "destPos":I
    .local v2, "destPos":I
    .restart local v3    # "rangeShift":I
    .restart local v4    # "outTableOffset":I
    :cond_3
    move/from16 v18, v2

    move/from16 v17, v3

    move v2, v4

    move/from16 v19, v11

    move/from16 v20, v12

    .line 164
    .end local v3    # "rangeShift":I
    .end local v4    # "outTableOffset":I
    .end local v6    # "i":I
    .end local v11    # "entrySelector":I
    .end local v12    # "searchRange":I
    .local v2, "outTableOffset":I
    .restart local v17    # "rangeShift":I
    .restart local v18    # "destPos":I
    .restart local v19    # "entrySelector":I
    .restart local v20    # "searchRange":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move/from16 v2, v18

    .end local v18    # "destPos":I
    .local v2, "destPos":I
    .restart local v4    # "outTableOffset":I
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;

    .line 165
    .local v6, "td":Lcom/itextpdf/io/font/WoffConverter$TableDirectory;
    iget-object v11, v6, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->tag:[B

    const/4 v12, 0x0

    const/4 v14, 0x4

    invoke-static {v11, v12, v10, v2, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    add-int/lit8 v2, v2, 0x4

    .line 168
    iget-object v11, v6, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->origChecksum:[B

    invoke-static {v11, v12, v10, v2, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    add-int/2addr v2, v14

    .line 171
    shr-int/lit8 v11, v4, 0x18

    int-to-byte v11, v11

    aput-byte v11, v10, v2

    .line 172
    add-int/lit8 v11, v2, 0x1

    shr-int/lit8 v12, v4, 0x10

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 173
    add-int/lit8 v11, v2, 0x2

    shr-int/lit8 v12, v4, 0x8

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 174
    add-int/lit8 v11, v2, 0x3

    int-to-byte v12, v4

    aput-byte v12, v10, v11

    .line 175
    const/4 v11, 0x4

    add-int/2addr v2, v11

    .line 177
    iget-object v12, v6, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->origLength:[B

    const/4 v14, 0x0

    invoke-static {v12, v14, v10, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    add-int/2addr v2, v11

    .line 180
    iput v4, v6, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->outOffset:I

    .line 182
    iget-wide v11, v6, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->origLengthVal:J

    long-to-int v11, v11

    add-int/2addr v4, v11

    .line 183
    rem-int/lit8 v11, v4, 0x4

    if-eqz v11, :cond_4

    .line 184
    rem-int/lit8 v11, v4, 0x4

    const/4 v12, 0x4

    rsub-int/lit8 v11, v11, 0x4

    add-int/2addr v4, v11

    goto :goto_4

    .line 183
    :cond_4
    const/4 v12, 0x4

    .line 186
    .end local v6    # "td":Lcom/itextpdf/io/font/WoffConverter$TableDirectory;
    :goto_4
    goto :goto_3

    .line 188
    :cond_5
    int-to-long v11, v4

    cmp-long v3, v11, v8

    if-nez v3, :cond_c

    .line 192
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;

    .line 193
    .restart local v6    # "td":Lcom/itextpdf/io/font/WoffConverter$TableDirectory;
    iget-wide v11, v6, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->compLength:J

    long-to-int v11, v11

    new-array v11, v11, [B

    .line 195
    .local v11, "compressedData":[B
    iget-wide v14, v6, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->offset:J

    long-to-int v12, v14

    iget-wide v14, v6, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->compLength:J

    long-to-int v14, v14

    const/4 v15, 0x0

    invoke-static {v0, v12, v11, v15, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    iget-wide v14, v6, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->origLengthVal:J

    long-to-int v12, v14

    .line 197
    .local v12, "expectedUncompressedLen":I
    iget-wide v14, v6, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->compLength:J

    move/from16 v18, v1

    .end local v1    # "srcPos":I
    .local v18, "srcPos":I
    iget-wide v0, v6, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->origLengthVal:J

    cmp-long v0, v14, v0

    if-gtz v0, :cond_a

    .line 200
    iget-wide v0, v6, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->compLength:J

    iget-wide v14, v6, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->origLengthVal:J

    cmp-long v0, v0, v14

    if-eqz v0, :cond_9

    .line 201
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 202
    .local v0, "stream":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 203
    .local v1, "zip":Ljava/util/zip/InflaterInputStream;
    new-array v14, v12, [B

    .line 204
    .local v14, "uncompressedData":[B
    const/4 v15, 0x0

    .line 205
    .local v15, "bytesRead":I
    :goto_6
    sub-int v21, v12, v15

    if-lez v21, :cond_7

    .line 206
    move-object/from16 v21, v0

    .end local v0    # "stream":Ljava/io/ByteArrayInputStream;
    .local v21, "stream":Ljava/io/ByteArrayInputStream;
    sub-int v0, v12, v15

    invoke-virtual {v1, v14, v15, v0}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result v0

    .line 207
    .local v0, "readRes":I
    if-ltz v0, :cond_6

    .line 210
    add-int/2addr v15, v0

    .line 211
    .end local v0    # "readRes":I
    move-object/from16 v0, v21

    goto :goto_6

    .line 208
    .restart local v0    # "readRes":I
    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 212
    .end local v21    # "stream":Ljava/io/ByteArrayInputStream;
    .local v0, "stream":Ljava/io/ByteArrayInputStream;
    :cond_7
    move-object/from16 v21, v0

    .end local v0    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v21    # "stream":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v1}, Ljava/util/zip/InflaterInputStream;->read()I

    move-result v0

    if-gez v0, :cond_8

    .line 215
    .end local v1    # "zip":Ljava/util/zip/InflaterInputStream;
    .end local v15    # "bytesRead":I
    .end local v21    # "stream":Ljava/io/ByteArrayInputStream;
    goto :goto_7

    .line 213
    .restart local v1    # "zip":Ljava/util/zip/InflaterInputStream;
    .restart local v15    # "bytesRead":I
    .restart local v21    # "stream":Ljava/io/ByteArrayInputStream;
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 216
    .end local v1    # "zip":Ljava/util/zip/InflaterInputStream;
    .end local v14    # "uncompressedData":[B
    .end local v15    # "bytesRead":I
    .end local v21    # "stream":Ljava/io/ByteArrayInputStream;
    :cond_9
    move-object v14, v11

    .line 219
    .restart local v14    # "uncompressedData":[B
    :goto_7
    iget v0, v6, Lcom/itextpdf/io/font/WoffConverter$TableDirectory;->outOffset:I

    const/4 v1, 0x0

    invoke-static {v14, v1, v10, v0, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    .end local v6    # "td":Lcom/itextpdf/io/font/WoffConverter$TableDirectory;
    .end local v11    # "compressedData":[B
    .end local v12    # "expectedUncompressedLen":I
    .end local v14    # "uncompressedData":[B
    move-object/from16 v0, p0

    move/from16 v1, v18

    goto :goto_5

    .line 198
    .restart local v6    # "td":Lcom/itextpdf/io/font/WoffConverter$TableDirectory;
    .restart local v11    # "compressedData":[B
    .restart local v12    # "expectedUncompressedLen":I
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 222
    .end local v6    # "td":Lcom/itextpdf/io/font/WoffConverter$TableDirectory;
    .end local v11    # "compressedData":[B
    .end local v12    # "expectedUncompressedLen":I
    .end local v18    # "srcPos":I
    .local v1, "srcPos":I
    :cond_b
    return-object v10

    .line 189
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 126
    .end local v4    # "outTableOffset":I
    .end local v5    # "tdList":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/WoffConverter$TableDirectory;>;"
    .end local v17    # "rangeShift":I
    .end local v19    # "entrySelector":I
    .end local v20    # "searchRange":I
    .local v11, "entrySelector":I
    .local v12, "searchRange":I
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 84
    .end local v8    # "totalSfntSize":J
    .end local v10    # "otfBytes":[B
    .end local v11    # "entrySelector":I
    .end local v12    # "searchRange":I
    .end local v13    # "numTablesVal":I
    .end local v16    # "flavor":[B
    .local v4, "flavor":[B
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 74
    .end local v7    # "numTables":[B
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 64
    .end local v4    # "flavor":[B
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static isWoffFont([B)Z
    .locals 5
    .param p0, "woffBytes"    # [B

    .line 55
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/itextpdf/io/font/WoffConverter;->bytesToUInt([BI)J

    move-result-wide v1

    const-wide/32 v3, 0x774f4646

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
