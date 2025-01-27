.class public Lcom/itextpdf/io/codec/TIFFDirectory;
.super Ljava/lang/Object;
.source "TIFFDirectory.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2571e3ed10b6c74L

.field private static final sizeOfType:[I


# instance fields
.field IFDOffset:J

.field fieldIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field fields:[Lcom/itextpdf/io/codec/TIFFField;

.field isBigEndian:Z

.field nextIFDOffset:J

.field numEntries:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 224
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/io/codec/TIFFDirectory;->sizeOfType:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
    .end array-data
.end method

.method constructor <init>()V
    .locals 2

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->fieldIndex:Ljava/util/Map;

    .line 106
    const-wide/16 v0, 0x8

    iput-wide v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->IFDOffset:J

    .line 111
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->nextIFDOffset:J

    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;I)V
    .locals 12
    .param p1, "stream"    # Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .param p2, "directory"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->fieldIndex:Ljava/util/Map;

    .line 106
    const-wide/16 v0, 0x8

    iput-wide v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->IFDOffset:J

    .line 111
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->nextIFDOffset:J

    .line 137
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->getPosition()J

    move-result-wide v2

    .line 141
    .local v2, "global_save_offset":J
    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 142
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v4

    .line 143
    .local v4, "endian":I
    invoke-static {v4}, Lcom/itextpdf/io/codec/TIFFDirectory;->isValidEndianTag(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 146
    const/16 v5, 0x4d4d

    if-ne v4, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iput-boolean v5, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->isBigEndian:Z

    .line 148
    invoke-direct {p0, p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readUnsignedShort(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)I

    move-result v5

    .line 149
    .local v5, "magic":I
    const/16 v6, 0x2a

    if-ne v5, v6, :cond_3

    .line 154
    invoke-direct {p0, p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readUnsignedInt(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)J

    move-result-wide v6

    .line 156
    .local v6, "ifd_offset":J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, p2, :cond_2

    .line 157
    cmp-long v9, v6, v0

    if-eqz v9, :cond_1

    .line 161
    invoke-virtual {p1, v6, v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 162
    invoke-direct {p0, p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readUnsignedShort(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)I

    move-result v9

    .line 163
    .local v9, "entries":I
    mul-int/lit8 v10, v9, 0xc

    int-to-long v10, v10

    invoke-virtual {p1, v10, v11}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skip(J)J

    .line 165
    invoke-direct {p0, p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readUnsignedInt(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)J

    move-result-wide v6

    .line 156
    .end local v9    # "entries":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 158
    :cond_1
    new-instance v0, Lcom/itextpdf/io/IOException;

    const-string v1, "Directory number is too large."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    .end local v8    # "i":I
    :cond_2
    invoke-virtual {p1, v6, v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 169
    invoke-direct {p0, p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->initialize(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)V

    .line 170
    invoke-virtual {p1, v2, v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 171
    return-void

    .line 150
    .end local v6    # "ifd_offset":J
    :cond_3
    new-instance v0, Lcom/itextpdf/io/IOException;

    const-string v1, "Bad magic number. Should be 42."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    .end local v5    # "magic":I
    :cond_4
    new-instance v0, Lcom/itextpdf/io/IOException;

    const-string v1, "Bad endianness tag: 0x4949 or 0x4d4d."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;JI)V
    .locals 7
    .param p1, "stream"    # Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .param p2, "ifd_offset"    # J
    .param p4, "directory"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->fieldIndex:Ljava/util/Map;

    .line 106
    const-wide/16 v0, 0x8

    iput-wide v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->IFDOffset:J

    .line 111
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->nextIFDOffset:J

    .line 190
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->getPosition()J

    move-result-wide v2

    .line 191
    .local v2, "global_save_offset":J
    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 192
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v0

    .line 193
    .local v0, "endian":I
    invoke-static {v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->isValidEndianTag(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 196
    const/16 v1, 0x4d4d

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->isBigEndian:Z

    .line 199
    invoke-virtual {p1, p2, p3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 202
    const/4 v1, 0x0

    .line 203
    .local v1, "dirNum":I
    :goto_1
    if-ge v1, p4, :cond_1

    .line 205
    invoke-direct {p0, p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readUnsignedShort(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)I

    move-result v4

    .line 208
    .local v4, "numEntries":I
    mul-int/lit8 v5, v4, 0xc

    int-to-long v5, v5

    add-long/2addr v5, p2

    invoke-virtual {p1, v5, v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 211
    invoke-direct {p0, p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readUnsignedInt(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)J

    move-result-wide p2

    .line 214
    invoke-virtual {p1, p2, p3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 217
    nop

    .end local v4    # "numEntries":I
    add-int/lit8 v1, v1, 0x1

    .line 218
    goto :goto_1

    .line 220
    :cond_1
    invoke-direct {p0, p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->initialize(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)V

    .line 221
    invoke-virtual {p1, v2, v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 222
    return-void

    .line 194
    .end local v1    # "dirNum":I
    :cond_2
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v4, "Bad endianness tag: 0x4949 or 0x4d4d."

    invoke-direct {v1, v4}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getNumDirectories(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)I
    .locals 13
    .param p0, "stream"    # Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 698
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->getPosition()J

    move-result-wide v0

    .line 700
    .local v0, "pointer":J
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 701
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v4

    .line 702
    .local v4, "endian":I
    invoke-static {v4}, Lcom/itextpdf/io/codec/TIFFDirectory;->isValidEndianTag(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 705
    const/16 v5, 0x4d4d

    if-ne v4, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 706
    .local v5, "isBigEndian":Z
    :goto_0
    invoke-static {p0, v5}, Lcom/itextpdf/io/codec/TIFFDirectory;->readUnsignedShort(Lcom/itextpdf/io/source/RandomAccessFileOrArray;Z)I

    move-result v6

    .line 707
    .local v6, "magic":I
    const/16 v7, 0x2a

    if-ne v6, v7, :cond_2

    .line 711
    const-wide/16 v7, 0x4

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 712
    invoke-static {p0, v5}, Lcom/itextpdf/io/codec/TIFFDirectory;->readUnsignedInt(Lcom/itextpdf/io/source/RandomAccessFileOrArray;Z)J

    move-result-wide v7

    .line 714
    .local v7, "offset":J
    const/4 v9, 0x0

    .line 715
    .local v9, "numDirectories":I
    :goto_1
    cmp-long v10, v7, v2

    if-eqz v10, :cond_1

    .line 716
    add-int/lit8 v9, v9, 0x1

    .line 720
    :try_start_0
    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 721
    invoke-static {p0, v5}, Lcom/itextpdf/io/codec/TIFFDirectory;->readUnsignedShort(Lcom/itextpdf/io/source/RandomAccessFileOrArray;Z)I

    move-result v10

    .line 722
    .local v10, "entries":I
    mul-int/lit8 v11, v10, 0xc

    int-to-long v11, v11

    invoke-virtual {p0, v11, v12}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skip(J)J

    .line 723
    invoke-static {p0, v5}, Lcom/itextpdf/io/codec/TIFFDirectory;->readUnsignedInt(Lcom/itextpdf/io/source/RandomAccessFileOrArray;Z)J

    move-result-wide v11
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v7, v11

    .line 727
    .end local v10    # "entries":I
    goto :goto_1

    .line 724
    :catch_0
    move-exception v2

    .line 725
    .local v2, "eof":Ljava/io/EOFException;
    add-int/lit8 v9, v9, -0x1

    .line 731
    .end local v2    # "eof":Ljava/io/EOFException;
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 732
    return v9

    .line 708
    .end local v7    # "offset":J
    .end local v9    # "numDirectories":I
    :cond_2
    new-instance v2, Lcom/itextpdf/io/IOException;

    const-string v3, "Bad magic number. Should be 42."

    invoke-direct {v2, v3}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 703
    .end local v5    # "isBigEndian":Z
    .end local v6    # "magic":I
    :cond_3
    new-instance v2, Lcom/itextpdf/io/IOException;

    const-string v3, "Bad endianness tag: 0x4949 or 0x4d4d."

    invoke-direct {v2, v3}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private initialize(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)V
    .locals 20
    .param p1, "stream"    # Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-wide/16 v3, 0x0

    .line 268
    .local v3, "nextTagOffset":J
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->length()J

    move-result-wide v5

    .line 271
    .local v5, "maxOffset":J
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->getPosition()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/itextpdf/io/codec/TIFFDirectory;->IFDOffset:J

    .line 273
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readUnsignedShort(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)I

    move-result v0

    iput v0, v1, Lcom/itextpdf/io/codec/TIFFDirectory;->numEntries:I

    .line 274
    new-array v0, v0, [Lcom/itextpdf/io/codec/TIFFField;

    iput-object v0, v1, Lcom/itextpdf/io/codec/TIFFDirectory;->fields:[Lcom/itextpdf/io/codec/TIFFField;

    .line 276
    const/4 v0, 0x0

    move-wide v7, v3

    move v3, v0

    .local v3, "i":I
    .local v7, "nextTagOffset":J
    :goto_0
    iget v0, v1, Lcom/itextpdf/io/codec/TIFFDirectory;->numEntries:I

    if-ge v3, v0, :cond_10

    cmp-long v0, v7, v5

    if-gez v0, :cond_10

    .line 277
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readUnsignedShort(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)I

    move-result v4

    .line 278
    .local v4, "tag":I
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readUnsignedShort(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)I

    move-result v9

    .line 279
    .local v9, "type":I
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readUnsignedInt(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)J

    move-result-wide v10

    long-to-int v10, v10

    .line 280
    .local v10, "count":I
    const/4 v11, 0x1

    .line 283
    .local v11, "processTag":Z
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->getPosition()J

    move-result-wide v12

    const-wide/16 v14, 0x4

    add-long v7, v12, v14

    .line 288
    :try_start_0
    sget-object v0, Lcom/itextpdf/io/codec/TIFFDirectory;->sizeOfType:[I

    aget v0, v0, v9

    mul-int/2addr v0, v10

    const/4 v12, 0x4

    if-le v0, v12, :cond_1

    .line 289
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readUnsignedInt(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)J

    move-result-wide v12

    .line 292
    .local v12, "valueOffset":J
    cmp-long v0, v12, v5

    if-gez v0, :cond_0

    .line 293
    invoke-virtual {v2, v12, v13}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 296
    :cond_0
    const/4 v11, 0x0

    .line 302
    .end local v12    # "valueOffset":J
    :cond_1
    :goto_1
    goto :goto_2

    .line 299
    :catch_0
    move-exception v0

    .line 301
    .local v0, "ae":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v11, 0x0

    .line 304
    .end local v0    # "ae":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_2
    if-eqz v11, :cond_f

    .line 305
    iget-object v0, v1, Lcom/itextpdf/io/codec/TIFFDirectory;->fieldIndex:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const/4 v0, 0x0

    .line 308
    .local v0, "obj":Ljava/lang/Object;
    const/4 v12, 0x2

    packed-switch v9, :pswitch_data_0

    move-object/from16 v16, v0

    move-wide/from16 v17, v5

    .end local v0    # "obj":Ljava/lang/Object;
    .end local v5    # "maxOffset":J
    .local v16, "obj":Ljava/lang/Object;
    .local v17, "maxOffset":J
    goto/16 :goto_e

    .line 406
    .end local v16    # "obj":Ljava/lang/Object;
    .end local v17    # "maxOffset":J
    .restart local v0    # "obj":Ljava/lang/Object;
    .restart local v5    # "maxOffset":J
    :pswitch_0
    new-array v12, v10, [D

    .line 407
    .local v12, "dvalues":[D
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_3
    if-ge v13, v10, :cond_2

    .line 408
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readDouble(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)D

    move-result-wide v14

    aput-wide v14, v12, v13

    .line 407
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 410
    :cond_2
    move-object v0, v12

    .line 411
    move-wide/from16 v17, v5

    goto/16 :goto_e

    .line 398
    .end local v12    # "dvalues":[D
    .end local v13    # "j":I
    :pswitch_1
    new-array v12, v10, [F

    .line 399
    .local v12, "fvalues":[F
    const/4 v13, 0x0

    .restart local v13    # "j":I
    :goto_4
    if-ge v13, v10, :cond_3

    .line 400
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readFloat(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)F

    move-result v14

    aput v14, v12, v13

    .line 399
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 402
    :cond_3
    move-object v0, v12

    .line 403
    move-wide/from16 v17, v5

    goto/16 :goto_e

    .line 388
    .end local v12    # "fvalues":[F
    .end local v13    # "j":I
    :pswitch_2
    new-array v15, v10, [[I

    .line 389
    .local v15, "iivalues":[[I
    const/16 v16, 0x0

    move/from16 v14, v16

    .local v14, "j":I
    :goto_5
    if-ge v14, v10, :cond_4

    .line 390
    new-array v13, v12, [I

    aput-object v13, v15, v14

    .line 391
    aget-object v13, v15, v14

    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readInt(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)I

    move-result v18

    const/16 v16, 0x0

    aput v18, v13, v16

    .line 392
    aget-object v13, v15, v14

    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readInt(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)I

    move-result v18

    const/16 v17, 0x1

    aput v18, v13, v17

    .line 389
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 394
    :cond_4
    move-object v0, v15

    .line 395
    move-wide/from16 v17, v5

    goto/16 :goto_e

    .line 380
    .end local v14    # "j":I
    .end local v15    # "iivalues":[[I
    :pswitch_3
    new-array v12, v10, [I

    .line 381
    .local v12, "ivalues":[I
    const/4 v13, 0x0

    .restart local v13    # "j":I
    :goto_6
    if-ge v13, v10, :cond_5

    .line 382
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readInt(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)I

    move-result v14

    aput v14, v12, v13

    .line 381
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 384
    :cond_5
    move-object v0, v12

    .line 385
    move-wide/from16 v17, v5

    goto/16 :goto_e

    .line 372
    .end local v12    # "ivalues":[I
    .end local v13    # "j":I
    :pswitch_4
    new-array v12, v10, [S

    .line 373
    .local v12, "svalues":[S
    const/4 v13, 0x0

    .restart local v13    # "j":I
    :goto_7
    if-ge v13, v10, :cond_6

    .line 374
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readShort(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)S

    move-result v14

    aput-short v14, v12, v13

    .line 373
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 376
    :cond_6
    move-object v0, v12

    .line 377
    move-wide/from16 v17, v5

    goto/16 :goto_e

    .line 362
    .end local v12    # "svalues":[S
    .end local v13    # "j":I
    :pswitch_5
    new-array v13, v10, [[J

    .line 363
    .local v13, "llvalues":[[J
    const/4 v14, 0x0

    .restart local v14    # "j":I
    :goto_8
    if-ge v14, v10, :cond_7

    .line 364
    new-array v15, v12, [J

    aput-object v15, v13, v14

    .line 365
    aget-object v15, v13, v14

    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readUnsignedInt(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)J

    move-result-wide v18

    const/16 v16, 0x0

    aput-wide v18, v15, v16

    .line 366
    aget-object v15, v13, v14

    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readUnsignedInt(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)J

    move-result-wide v18

    const/16 v17, 0x1

    aput-wide v18, v15, v17

    .line 363
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 368
    :cond_7
    move-object v0, v13

    .line 369
    move-wide/from16 v17, v5

    goto/16 :goto_e

    .line 354
    .end local v13    # "llvalues":[[J
    .end local v14    # "j":I
    :pswitch_6
    new-array v12, v10, [J

    .line 355
    .local v12, "lvalues":[J
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_9
    if-ge v13, v10, :cond_8

    .line 356
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readUnsignedInt(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)J

    move-result-wide v14

    aput-wide v14, v12, v13

    .line 355
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 358
    :cond_8
    move-object v0, v12

    .line 359
    move-wide/from16 v17, v5

    goto/16 :goto_e

    .line 346
    .end local v12    # "lvalues":[J
    .end local v13    # "j":I
    :pswitch_7
    new-array v12, v10, [C

    .line 347
    .local v12, "cvalues":[C
    const/4 v13, 0x0

    .restart local v13    # "j":I
    :goto_a
    if-ge v13, v10, :cond_9

    .line 348
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readUnsignedShort(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)I

    move-result v14

    int-to-char v14, v14

    aput-char v14, v12, v13

    .line 347
    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    .line 350
    :cond_9
    move-object v0, v12

    .line 351
    move-wide/from16 v17, v5

    goto :goto_e

    .line 313
    .end local v12    # "cvalues":[C
    .end local v13    # "j":I
    :pswitch_8
    new-array v13, v10, [B

    .line 314
    .local v13, "bvalues":[B
    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14, v10}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([BII)V

    .line 316
    if-ne v9, v12, :cond_e

    .line 319
    const/4 v12, 0x0

    .local v12, "index":I
    const/4 v14, 0x0

    .line 320
    .local v14, "prevIndex":I
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v15, "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_b
    if-ge v12, v10, :cond_c

    .line 324
    :goto_c
    if-ge v12, v10, :cond_b

    add-int/lit8 v16, v12, 0x1

    .end local v12    # "index":I
    .local v16, "index":I
    aget-byte v12, v13, v12

    if-eqz v12, :cond_a

    move/from16 v12, v16

    goto :goto_c

    :cond_a
    move/from16 v12, v16

    .line 327
    .end local v16    # "index":I
    .restart local v12    # "index":I
    :cond_b
    move-object/from16 v16, v0

    .end local v0    # "obj":Ljava/lang/Object;
    .local v16, "obj":Ljava/lang/Object;
    new-instance v0, Ljava/lang/String;

    move-wide/from16 v17, v5

    .end local v5    # "maxOffset":J
    .restart local v17    # "maxOffset":J
    sub-int v5, v12, v14

    invoke-direct {v0, v13, v14, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    move v14, v12

    move-object/from16 v0, v16

    move-wide/from16 v5, v17

    goto :goto_b

    .line 332
    .end local v16    # "obj":Ljava/lang/Object;
    .end local v17    # "maxOffset":J
    .restart local v0    # "obj":Ljava/lang/Object;
    .restart local v5    # "maxOffset":J
    :cond_c
    move-object/from16 v16, v0

    move-wide/from16 v17, v5

    .end local v0    # "obj":Ljava/lang/Object;
    .end local v5    # "maxOffset":J
    .restart local v16    # "obj":Ljava/lang/Object;
    .restart local v17    # "maxOffset":J
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    .line 333
    .end local v10    # "count":I
    .local v0, "count":I
    new-array v5, v0, [Ljava/lang/String;

    .line 334
    .local v5, "strings":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "c":I
    :goto_d
    if-ge v6, v0, :cond_d

    .line 335
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    aput-object v10, v5, v6

    .line 334
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 338
    .end local v6    # "c":I
    :cond_d
    nop

    .line 339
    .end local v12    # "index":I
    .end local v14    # "prevIndex":I
    .end local v15    # "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "obj":Ljava/lang/Object;
    .local v5, "obj":Ljava/lang/Object;
    move v10, v0

    move-object v0, v5

    goto :goto_e

    .line 340
    .end local v17    # "maxOffset":J
    .local v0, "obj":Ljava/lang/Object;
    .local v5, "maxOffset":J
    .restart local v10    # "count":I
    :cond_e
    move-object/from16 v16, v0

    move-wide/from16 v17, v5

    .end local v0    # "obj":Ljava/lang/Object;
    .end local v5    # "maxOffset":J
    .restart local v16    # "obj":Ljava/lang/Object;
    .restart local v17    # "maxOffset":J
    move-object v0, v13

    .line 343
    .end local v16    # "obj":Ljava/lang/Object;
    .restart local v0    # "obj":Ljava/lang/Object;
    nop

    .line 417
    .end local v13    # "bvalues":[B
    :goto_e
    iget-object v5, v1, Lcom/itextpdf/io/codec/TIFFDirectory;->fields:[Lcom/itextpdf/io/codec/TIFFField;

    new-instance v6, Lcom/itextpdf/io/codec/TIFFField;

    invoke-direct {v6, v4, v9, v10, v0}, Lcom/itextpdf/io/codec/TIFFField;-><init>(IIILjava/lang/Object;)V

    aput-object v6, v5, v3

    goto :goto_f

    .line 304
    .end local v0    # "obj":Ljava/lang/Object;
    .end local v17    # "maxOffset":J
    .restart local v5    # "maxOffset":J
    :cond_f
    move-wide/from16 v17, v5

    .line 420
    .end local v5    # "maxOffset":J
    .restart local v17    # "maxOffset":J
    :goto_f
    invoke-virtual {v2, v7, v8}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 276
    .end local v4    # "tag":I
    .end local v9    # "type":I
    .end local v10    # "count":I
    .end local v11    # "processTag":Z
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v5, v17

    goto/16 :goto_0

    .end local v17    # "maxOffset":J
    .restart local v5    # "maxOffset":J
    :cond_10
    move-wide/from16 v17, v5

    .line 425
    .end local v5    # "maxOffset":J
    .restart local v17    # "maxOffset":J
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/io/codec/TIFFDirectory;->readUnsignedInt(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/itextpdf/io/codec/TIFFDirectory;->nextIFDOffset:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 429
    goto :goto_10

    .line 426
    :catch_1
    move-exception v0

    .line 428
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/itextpdf/io/codec/TIFFDirectory;->nextIFDOffset:J

    .line 430
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_10
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static isValidEndianTag(I)Z
    .locals 1
    .param p0, "endian"    # I

    .line 120
    const/16 v0, 0x4949

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4d4d

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private readDouble(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)D
    .locals 2
    .param p1, "stream"    # Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 656
    iget-boolean v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->isBigEndian:Z

    if-eqz v0, :cond_0

    .line 657
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readDouble()D

    move-result-wide v0

    return-wide v0

    .line 659
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readDoubleLE()D

    move-result-wide v0

    return-wide v0
.end method

.method private readFloat(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)F
    .locals 1
    .param p1, "stream"    # Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 647
    iget-boolean v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->isBigEndian:Z

    if-eqz v0, :cond_0

    .line 648
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFloat()F

    move-result v0

    return v0

    .line 650
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFloatLE()F

    move-result v0

    return v0
.end method

.method private readInt(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)I
    .locals 1
    .param p1, "stream"    # Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 620
    iget-boolean v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->isBigEndian:Z

    if-eqz v0, :cond_0

    .line 621
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v0

    return v0

    .line 623
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    return v0
.end method

.method private readLong(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)J
    .locals 2
    .param p1, "stream"    # Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 638
    iget-boolean v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->isBigEndian:Z

    if-eqz v0, :cond_0

    .line 639
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readLong()J

    move-result-wide v0

    return-wide v0

    .line 641
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readLongLE()J

    move-result-wide v0

    return-wide v0
.end method

.method private readShort(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)S
    .locals 1
    .param p1, "stream"    # Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 602
    iget-boolean v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->isBigEndian:Z

    if-eqz v0, :cond_0

    .line 603
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v0

    return v0

    .line 605
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    return v0
.end method

.method private readUnsignedInt(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)J
    .locals 2
    .param p1, "stream"    # Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 629
    iget-boolean v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->isBigEndian:Z

    if-eqz v0, :cond_0

    .line 630
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedInt()J

    move-result-wide v0

    return-wide v0

    .line 632
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedIntLE()J

    move-result-wide v0

    return-wide v0
.end method

.method private static readUnsignedInt(Lcom/itextpdf/io/source/RandomAccessFileOrArray;Z)J
    .locals 2
    .param p0, "stream"    # Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .param p1, "isBigEndian"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 676
    if-eqz p1, :cond_0

    .line 677
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedInt()J

    move-result-wide v0

    return-wide v0

    .line 679
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedIntLE()J

    move-result-wide v0

    return-wide v0
.end method

.method private readUnsignedShort(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)I
    .locals 1
    .param p1, "stream"    # Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 611
    iget-boolean v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->isBigEndian:Z

    if-eqz v0, :cond_0

    .line 612
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v0

    return v0

    .line 614
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShortLE()I

    move-result v0

    return v0
.end method

.method private static readUnsignedShort(Lcom/itextpdf/io/source/RandomAccessFileOrArray;Z)I
    .locals 1
    .param p0, "stream"    # Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .param p1, "isBigEndian"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 666
    if-eqz p1, :cond_0

    .line 667
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v0

    return v0

    .line 669
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShortLE()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getField(I)Lcom/itextpdf/io/codec/TIFFField;
    .locals 3
    .param p1, "tag"    # I

    .line 447
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->fieldIndex:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 448
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 449
    const/4 v1, 0x0

    return-object v1

    .line 451
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->fields:[Lcom/itextpdf/io/codec/TIFFField;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    return-object v1
.end method

.method public getFieldAsByte(I)B
    .locals 1
    .param p1, "tag"    # I

    .line 513
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsByte(II)B

    move-result v0

    return v0
.end method

.method public getFieldAsByte(II)B
    .locals 3
    .param p1, "tag"    # I
    .param p2, "index"    # I

    .line 499
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->fieldIndex:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 500
    .local v0, "i":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->fields:[Lcom/itextpdf/io/codec/TIFFField;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/itextpdf/io/codec/TIFFField;->getAsBytes()[B

    move-result-object v1

    .line 501
    .local v1, "b":[B
    aget-byte v2, v1, p2

    return v2
.end method

.method public getFieldAsDouble(I)D
    .locals 2
    .param p1, "tag"    # I

    .line 595
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsDouble(II)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFieldAsDouble(II)D
    .locals 3
    .param p1, "tag"    # I
    .param p2, "index"    # I

    .line 582
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->fieldIndex:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 583
    .local v0, "i":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->fields:[Lcom/itextpdf/io/codec/TIFFField;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Lcom/itextpdf/io/codec/TIFFField;->getAsDouble(I)D

    move-result-wide v1

    return-wide v1
.end method

.method public getFieldAsFloat(I)F
    .locals 1
    .param p1, "tag"    # I

    .line 568
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsFloat(II)F

    move-result v0

    return v0
.end method

.method public getFieldAsFloat(II)F
    .locals 3
    .param p1, "tag"    # I
    .param p2, "index"    # I

    .line 555
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->fieldIndex:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 556
    .local v0, "i":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->fields:[Lcom/itextpdf/io/codec/TIFFField;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Lcom/itextpdf/io/codec/TIFFField;->getAsFloat(I)F

    move-result v1

    return v1
.end method

.method public getFieldAsLong(I)J
    .locals 2
    .param p1, "tag"    # I

    .line 541
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/io/codec/TIFFDirectory;->getFieldAsLong(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFieldAsLong(II)J
    .locals 3
    .param p1, "tag"    # I
    .param p2, "index"    # I

    .line 527
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->fieldIndex:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 528
    .local v0, "i":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->fields:[Lcom/itextpdf/io/codec/TIFFField;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Lcom/itextpdf/io/codec/TIFFField;->getAsLong(I)J

    move-result-wide v1

    return-wide v1
.end method

.method public getFields()[Lcom/itextpdf/io/codec/TIFFField;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->fields:[Lcom/itextpdf/io/codec/TIFFField;

    return-object v0
.end method

.method public getIFDOffset()J
    .locals 2

    .line 752
    iget-wide v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->IFDOffset:J

    return-wide v0
.end method

.method public getNextIFDOffset()J
    .locals 2

    .line 763
    iget-wide v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->nextIFDOffset:J

    return-wide v0
.end method

.method public getNumEntries()I
    .locals 1

    .line 437
    iget v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->numEntries:I

    return v0
.end method

.method public getTags()[I
    .locals 6

    .line 470
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->fieldIndex:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 471
    .local v0, "tags":[I
    const/4 v1, 0x0

    .line 473
    .local v1, "i":I
    iget-object v2, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->fieldIndex:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 474
    .local v3, "integer":Ljava/lang/Integer;
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v0, v1

    .line 475
    .end local v3    # "integer":Ljava/lang/Integer;
    move v1, v4

    goto :goto_0

    .line 477
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public isBigEndian()Z
    .locals 1

    .line 743
    iget-boolean v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->isBigEndian:Z

    return v0
.end method

.method public isTagPresent(I)Z
    .locals 2
    .param p1, "tag"    # I

    .line 461
    iget-object v0, p0, Lcom/itextpdf/io/codec/TIFFDirectory;->fieldIndex:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
