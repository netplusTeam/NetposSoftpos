.class Lcom/itextpdf/io/font/TrueTypeFontSubset;
.super Ljava/lang/Object;
.source "TrueTypeFontSubset.java"


# static fields
.field private static final ARG_1_AND_2_ARE_WORDS:I = 0x1

.field private static final HEAD_LOCA_FORMAT_OFFSET:I = 0x33

.field private static final MORE_COMPONENTS:I = 0x20

.field private static final TABLE_CHECKSUM:I = 0x0

.field private static final TABLE_LENGTH:I = 0x2

.field private static final TABLE_NAMES:[Ljava/lang/String;

.field private static final TABLE_NAMES_SUBSET:[Ljava/lang/String;

.field private static final TABLE_OFFSET:I = 0x1

.field private static final WE_HAVE_AN_X_AND_Y_SCALE:I = 0x40

.field private static final WE_HAVE_A_SCALE:I = 0x8

.field private static final WE_HAVE_A_TWO_BY_TWO:I = 0x80

.field private static final entrySelectors:[I


# instance fields
.field private directoryOffset:I

.field private fileName:Ljava/lang/String;

.field private fontPtr:I

.field private glyfTableRealSize:I

.field private glyphsInList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private glyphsUsed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private locaShortTable:Z

.field private locaTable:[I

.field private locaTableRealSize:I

.field private newGlyfTable:[B

.field private newLocaTable:[I

.field private newLocaTableOut:[B

.field private outFont:[B

.field protected rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

.field private tableDirectory:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field private tableGlyphOffset:I

.field private final tableNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 66
    const-string v0, "cvt "

    const-string v1, "fpgm"

    const-string v2, "glyf"

    const-string v3, "head"

    const-string v4, "hhea"

    const-string v5, "hmtx"

    const-string v6, "loca"

    const-string v7, "maxp"

    const-string v8, "prep"

    const-string v9, "cmap"

    const-string v10, "OS/2"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->TABLE_NAMES_SUBSET:[Ljava/lang/String;

    .line 70
    const-string v1, "cvt "

    const-string v2, "fpgm"

    const-string v3, "glyf"

    const-string v4, "head"

    const-string v5, "hhea"

    const-string v6, "hmtx"

    const-string v7, "loca"

    const-string v8, "maxp"

    const-string v9, "prep"

    const-string v10, "cmap"

    const-string v11, "OS/2"

    const-string v12, "name"

    const-string v13, "post"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->TABLE_NAMES:[Ljava/lang/String;

    .line 72
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->entrySelectors:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;Lcom/itextpdf/io/source/RandomAccessFileOrArray;Ljava/util/Set;IZ)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "rf"    # Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .param p4, "directoryOffset"    # I
    .param p5, "subset"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/itextpdf/io/source/RandomAccessFileOrArray;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;IZ)V"
        }
    .end annotation

    .line 122
    .local p3, "glyphsUsed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fileName:Ljava/lang/String;

    .line 124
    iput-object p2, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    .line 125
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->glyphsUsed:Ljava/util/Set;

    .line 126
    iput p4, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->directoryOffset:I

    .line 128
    if-eqz p5, :cond_0

    .line 129
    sget-object v0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->TABLE_NAMES_SUBSET:[Ljava/lang/String;

    iput-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->tableNames:[Ljava/lang/String;

    goto :goto_0

    .line 131
    :cond_0
    sget-object v0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->TABLE_NAMES:[Ljava/lang/String;

    iput-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->tableNames:[Ljava/lang/String;

    .line 133
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->glyphsInList:Ljava/util/List;

    .line 134
    return-void
.end method

.method private assembleFont()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 162
    .local v1, "fullFontSize":I
    const/4 v2, 0x2

    .line 163
    .local v2, "tablesUsed":I
    iget-object v3, v0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->tableNames:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const-string v7, "loca"

    const-string v8, "glyf"

    const/4 v9, 0x2

    if-ge v6, v4, :cond_3

    aget-object v10, v3, v6

    .line 164
    .local v10, "name":Ljava/lang/String;
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 165
    goto :goto_1

    .line 167
    :cond_0
    iget-object v7, v0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->tableDirectory:Ljava/util/Map;

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 168
    .local v7, "tableLocation":[I
    if-nez v7, :cond_1

    .line 169
    goto :goto_1

    .line 171
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 172
    aget v8, v7, v9

    add-int/lit8 v8, v8, 0x3

    and-int/lit8 v8, v8, -0x4

    add-int/2addr v1, v8

    .line 163
    .end local v7    # "tableLocation":[I
    .end local v10    # "name":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 174
    :cond_3
    iget-object v3, v0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->newLocaTableOut:[B

    array-length v3, v3

    add-int/2addr v1, v3

    .line 175
    iget-object v3, v0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->newGlyfTable:[B

    array-length v3, v3

    add-int/2addr v1, v3

    .line 176
    mul-int/lit8 v3, v2, 0x10

    add-int/lit8 v3, v3, 0xc

    .line 177
    .local v3, "reference":I
    add-int/2addr v1, v3

    .line 178
    new-array v4, v1, [B

    iput-object v4, v0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->outFont:[B

    .line 179
    iput v5, v0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    .line 180
    const/high16 v4, 0x10000

    invoke-direct {v0, v4}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->writeFontInt(I)V

    .line 181
    invoke-direct {v0, v2}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->writeFontShort(I)V

    .line 182
    sget-object v4, Lcom/itextpdf/io/font/TrueTypeFontSubset;->entrySelectors:[I

    aget v4, v4, v2

    .line 183
    .local v4, "selector":I
    const/4 v6, 0x1

    shl-int v10, v6, v4

    mul-int/lit8 v10, v10, 0x10

    invoke-direct {v0, v10}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->writeFontShort(I)V

    .line 184
    invoke-direct {v0, v4}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->writeFontShort(I)V

    .line 185
    shl-int v10, v6, v4

    sub-int v10, v2, v10

    mul-int/lit8 v10, v10, 0x10

    invoke-direct {v0, v10}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->writeFontShort(I)V

    .line 186
    iget-object v10, v0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->tableNames:[Ljava/lang/String;

    array-length v11, v10

    move v12, v5

    :goto_2
    if-ge v12, v11, :cond_6

    aget-object v14, v10, v12

    .line 188
    .local v14, "name":Ljava/lang/String;
    iget-object v15, v0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->tableDirectory:Ljava/util/Map;

    invoke-interface {v15, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [I

    .line 189
    .local v15, "tableLocation":[I
    if-nez v15, :cond_4

    .line 190
    goto :goto_6

    .line 192
    :cond_4
    invoke-direct {v0, v14}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->writeFontString(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    :cond_5
    goto :goto_3

    :sswitch_0
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    move v13, v6

    goto :goto_4

    :sswitch_1
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    move v13, v5

    goto :goto_4

    :goto_3
    const/4 v13, -0x1

    :goto_4
    packed-switch v13, :pswitch_data_0

    .line 203
    aget v13, v15, v5

    invoke-direct {v0, v13}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->writeFontInt(I)V

    .line 204
    aget v13, v15, v9

    .local v13, "len":I
    goto :goto_5

    .line 199
    .end local v13    # "len":I
    :pswitch_0
    iget-object v13, v0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->newLocaTableOut:[B

    invoke-direct {v0, v13}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->calculateChecksum([B)I

    move-result v13

    invoke-direct {v0, v13}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->writeFontInt(I)V

    .line 200
    iget v13, v0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->locaTableRealSize:I

    .line 201
    .restart local v13    # "len":I
    goto :goto_5

    .line 195
    .end local v13    # "len":I
    :pswitch_1
    iget-object v13, v0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->newGlyfTable:[B

    invoke-direct {v0, v13}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->calculateChecksum([B)I

    move-result v13

    invoke-direct {v0, v13}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->writeFontInt(I)V

    .line 196
    iget v13, v0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->glyfTableRealSize:I

    .line 197
    .restart local v13    # "len":I
    nop

    .line 207
    :goto_5
    invoke-direct {v0, v3}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->writeFontInt(I)V

    .line 208
    invoke-direct {v0, v13}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->writeFontInt(I)V

    .line 209
    add-int/lit8 v16, v13, 0x3

    and-int/lit8 v16, v16, -0x4

    add-int v3, v3, v16

    .line 186
    .end local v13    # "len":I
    .end local v14    # "name":Ljava/lang/String;
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 211
    .end local v15    # "tableLocation":[I
    :cond_6
    iget-object v10, v0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->tableNames:[Ljava/lang/String;

    array-length v11, v10

    move v12, v5

    :goto_7
    if-ge v12, v11, :cond_9

    aget-object v14, v10, v12

    .line 212
    .restart local v14    # "name":Ljava/lang/String;
    iget-object v15, v0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->tableDirectory:Ljava/util/Map;

    invoke-interface {v15, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [I

    .line 213
    .restart local v15    # "tableLocation":[I
    if-nez v15, :cond_7

    .line 214
    move/from16 v17, v1

    goto/16 :goto_a

    .line 216
    :cond_7
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_1

    :cond_8
    goto :goto_8

    :sswitch_2
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    move/from16 v16, v6

    goto :goto_9

    :sswitch_3
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    move/from16 v16, v5

    goto :goto_9

    :goto_8
    const/16 v16, -0x1

    :goto_9
    packed-switch v16, :pswitch_data_1

    .line 228
    move/from16 v17, v1

    .end local v1    # "fullFontSize":I
    .local v17, "fullFontSize":I
    iget-object v1, v0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v6, 0x1

    aget v9, v15, v6

    int-to-long v5, v9

    invoke-virtual {v1, v5, v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 229
    iget-object v1, v0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget-object v5, v0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->outFont:[B

    iget v6, v0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    const/4 v9, 0x2

    aget v13, v15, v9

    invoke-virtual {v1, v5, v6, v13}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([BII)V

    .line 230
    iget v1, v0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    aget v5, v15, v9

    add-int/lit8 v5, v5, 0x3

    and-int/lit8 v5, v5, -0x4

    add-int/2addr v1, v5

    iput v1, v0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    goto :goto_a

    .line 223
    .end local v17    # "fullFontSize":I
    .restart local v1    # "fullFontSize":I
    :pswitch_2
    iget-object v9, v0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->newLocaTableOut:[B

    iget-object v6, v0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->outFont:[B

    iget v13, v0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    move/from16 v17, v1

    .end local v1    # "fullFontSize":I
    .restart local v17    # "fullFontSize":I
    array-length v1, v9

    invoke-static {v9, v5, v6, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    iget v1, v0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    iget-object v6, v0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->newLocaTableOut:[B

    array-length v6, v6

    add-int/2addr v1, v6

    iput v1, v0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    .line 225
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->newLocaTableOut:[B

    .line 226
    const/4 v9, 0x2

    goto :goto_a

    .line 218
    .end local v17    # "fullFontSize":I
    .restart local v1    # "fullFontSize":I
    :pswitch_3
    move/from16 v17, v1

    .end local v1    # "fullFontSize":I
    .restart local v17    # "fullFontSize":I
    iget-object v1, v0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->newGlyfTable:[B

    iget-object v6, v0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->outFont:[B

    iget v9, v0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    array-length v13, v1

    invoke-static {v1, v5, v6, v9, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    iget v1, v0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    iget-object v6, v0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->newGlyfTable:[B

    array-length v6, v6

    add-int/2addr v1, v6

    iput v1, v0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    .line 220
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->newGlyfTable:[B

    .line 221
    const/4 v9, 0x2

    .line 211
    .end local v14    # "name":Ljava/lang/String;
    :goto_a
    add-int/lit8 v12, v12, 0x1

    move/from16 v1, v17

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_7

    .line 234
    .end local v15    # "tableLocation":[I
    .end local v17    # "fullFontSize":I
    .restart local v1    # "fullFontSize":I
    :cond_9
    return-void

    :sswitch_data_0
    .sparse-switch
        0x3076b2 -> :sswitch_1
        0x32c521 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x3076b2 -> :sswitch_3
        0x32c521 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private calculateChecksum([B)I
    .locals 8
    .param p1, "b"    # [B

    .line 425
    array-length v0, p1

    div-int/lit8 v0, v0, 0x4

    .line 426
    .local v0, "len":I
    const/4 v1, 0x0

    .line 427
    .local v1, "v0":I
    const/4 v2, 0x0

    .line 428
    .local v2, "v1":I
    const/4 v3, 0x0

    .line 429
    .local v3, "v2":I
    const/4 v4, 0x0

    .line 430
    .local v4, "v3":I
    const/4 v5, 0x0

    .line 431
    .local v5, "ptr":I
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_0
    if-ge v6, v0, :cond_0

    .line 432
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "ptr":I
    .local v7, "ptr":I
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    .line 433
    add-int/lit8 v5, v7, 0x1

    .end local v7    # "ptr":I
    .restart local v5    # "ptr":I
    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v3, v7

    .line 434
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "ptr":I
    .restart local v7    # "ptr":I
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v2, v5

    .line 435
    add-int/lit8 v5, v7, 0x1

    .end local v7    # "ptr":I
    .restart local v5    # "ptr":I
    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v1, v7

    .line 431
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 437
    .end local v6    # "k":I
    :cond_0
    shl-int/lit8 v6, v2, 0x8

    add-int/2addr v6, v1

    shl-int/lit8 v7, v3, 0x10

    add-int/2addr v6, v7

    shl-int/lit8 v7, v4, 0x18

    add-int/2addr v6, v7

    return v6
.end method

.method private checkGlyphComposite(I)V
    .locals 6
    .param p1, "glyph"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->locaTable:[I

    aget v1, v0, p1

    .line 352
    .local v1, "start":I
    add-int/lit8 v2, p1, 0x1

    aget v0, v0, v2

    if-ne v1, v0, :cond_0

    .line 353
    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget v2, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->tableGlyphOffset:I

    add-int/2addr v2, v1

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 356
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v0

    .line 357
    .local v0, "numContours":I
    if-ltz v0, :cond_1

    .line 358
    return-void

    .line 360
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    .line 362
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v2

    .line 363
    .local v2, "flags":I
    iget-object v3, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v3

    .line 364
    .local v3, "cGlyph":I
    iget-object v4, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->glyphsUsed:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 365
    iget-object v4, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->glyphsUsed:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v4, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->glyphsInList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    :cond_2
    and-int/lit8 v4, v2, 0x20

    if-nez v4, :cond_3

    .line 369
    return-void

    .line 372
    :cond_3
    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_4

    .line 373
    const/4 v4, 0x4

    .local v4, "skip":I
    goto :goto_1

    .line 375
    .end local v4    # "skip":I
    :cond_4
    const/4 v4, 0x2

    .line 377
    .restart local v4    # "skip":I
    :goto_1
    and-int/lit8 v5, v2, 0x8

    if-eqz v5, :cond_5

    .line 378
    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    .line 379
    :cond_5
    and-int/lit8 v5, v2, 0x40

    if-eqz v5, :cond_6

    .line 380
    add-int/lit8 v4, v4, 0x4

    .line 382
    :cond_6
    :goto_2
    and-int/lit16 v5, v2, 0x80

    if-eqz v5, :cond_7

    .line 383
    add-int/lit8 v4, v4, 0x8

    .line 385
    :cond_7
    iget-object v5, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v5, v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    .line 386
    .end local v2    # "flags":I
    .end local v3    # "cGlyph":I
    .end local v4    # "skip":I
    goto :goto_0
.end method

.method private createNewGlyphTables()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->locaTable:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->newLocaTable:[I

    .line 284
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->glyphsInList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 285
    .local v0, "activeGlyphs":[I
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 286
    iget-object v2, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->glyphsInList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 285
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 288
    .end local v1    # "k":I
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 289
    const/4 v1, 0x0

    .line 290
    .local v1, "glyfSize":I
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    .line 291
    .local v4, "glyph":I
    iget-object v5, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->locaTable:[I

    add-int/lit8 v6, v4, 0x1

    aget v6, v5, v6

    aget v5, v5, v4

    sub-int/2addr v6, v5

    add-int/2addr v1, v6

    .line 290
    .end local v4    # "glyph":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 293
    :cond_1
    iput v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->glyfTableRealSize:I

    .line 294
    add-int/lit8 v2, v1, 0x3

    and-int/lit8 v1, v2, -0x4

    .line 295
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->newGlyfTable:[B

    .line 296
    const/4 v2, 0x0

    .line 297
    .local v2, "glyfPtr":I
    const/4 v3, 0x0

    .line 298
    .local v3, "listGlyf":I
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_2
    iget-object v5, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->newLocaTable:[I

    array-length v6, v5

    if-ge v4, v6, :cond_3

    .line 299
    aput v2, v5, v4

    .line 300
    array-length v6, v0

    if-ge v3, v6, :cond_2

    aget v6, v0, v3

    if-ne v6, v4, :cond_2

    .line 301
    add-int/lit8 v3, v3, 0x1

    .line 302
    aput v2, v5, v4

    .line 303
    iget-object v5, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->locaTable:[I

    aget v6, v5, v4

    .line 304
    .local v6, "start":I
    add-int/lit8 v7, v4, 0x1

    aget v5, v5, v7

    sub-int/2addr v5, v6

    .line 305
    .local v5, "len":I
    if-lez v5, :cond_2

    .line 306
    iget-object v7, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget v8, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->tableGlyphOffset:I

    add-int/2addr v8, v6

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 307
    iget-object v7, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget-object v8, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->newGlyfTable:[B

    invoke-virtual {v7, v8, v2, v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([BII)V

    .line 308
    add-int/2addr v2, v5

    .line 298
    .end local v5    # "len":I
    .end local v6    # "start":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 312
    .end local v4    # "k":I
    :cond_3
    return-void
.end method

.method private createTableDirectory()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->tableDirectory:Ljava/util/Map;

    .line 238
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->directoryOffset:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 239
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v0

    .line 240
    .local v0, "id":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/high16 v3, 0x10000

    if-ne v0, v3, :cond_1

    .line 243
    iget-object v3, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v3

    .line 244
    .local v3, "num_tables":I
    iget-object v4, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    .line 245
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 246
    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->readStandardString(I)Ljava/lang/String;

    move-result-object v5

    .line 247
    .local v5, "tag":Ljava/lang/String;
    const/4 v6, 0x3

    new-array v6, v6, [I

    .line 248
    .local v6, "tableLocation":[I
    iget-object v7, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v7

    aput v7, v6, v1

    .line 249
    iget-object v7, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v7

    aput v7, v6, v2

    .line 250
    const/4 v7, 0x2

    iget-object v8, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v8}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v8

    aput v8, v6, v7

    .line 251
    iget-object v7, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->tableDirectory:Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "tableLocation":[I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 253
    .end local v4    # "k":I
    :cond_0
    return-void

    .line 241
    .end local v3    # "num_tables":I
    :cond_1
    new-instance v3, Lcom/itextpdf/io/IOException;

    const-string/jumbo v4, "{0} is not a true type file"

    invoke-direct {v3, v4}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fileName:Ljava/lang/String;

    aput-object v4, v2, v1

    invoke-virtual {v3, v2}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v1

    throw v1
.end method

.method private flatGlyphs()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->tableDirectory:Ljava/util/Map;

    const-string v1, "glyf"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 333
    .local v0, "tableLocation":[I
    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 335
    const/4 v1, 0x0

    .line 336
    .local v1, "glyph0":I
    iget-object v3, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->glyphsUsed:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 337
    iget-object v3, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->glyphsUsed:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v3, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->glyphsInList:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_0
    aget v2, v0, v2

    iput v2, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->tableGlyphOffset:I

    .line 343
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->glyphsInList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 344
    iget-object v3, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->glyphsInList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->checkGlyphComposite(I)V

    .line 343
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 346
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 334
    .end local v1    # "glyph0":I
    :cond_2
    new-instance v3, Lcom/itextpdf/io/IOException;

    const-string v4, "Table {0} does not exist in {1}"

    invoke-direct {v3, v4}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fileName:Ljava/lang/String;

    aput-object v1, v4, v2

    invoke-virtual {v3, v4}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v1

    throw v1
.end method

.method private locaToBytes()V
    .locals 5

    .line 315
    iget-boolean v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->locaShortTable:Z

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->newLocaTable:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->locaTableRealSize:I

    goto :goto_0

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->newLocaTable:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->locaTableRealSize:I

    .line 320
    :goto_0
    iget v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->locaTableRealSize:I

    add-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, -0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->newLocaTableOut:[B

    .line 321
    iput-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->outFont:[B

    .line 322
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    .line 323
    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->newLocaTable:[I

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_2

    aget v3, v1, v0

    .line 324
    .local v3, "location":I
    iget-boolean v4, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->locaShortTable:Z

    if-eqz v4, :cond_1

    .line 325
    div-int/lit8 v4, v3, 0x2

    invoke-direct {p0, v4}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->writeFontShort(I)V

    goto :goto_2

    .line 327
    :cond_1
    invoke-direct {p0, v3}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->writeFontInt(I)V

    .line 323
    .end local v3    # "location":I
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 329
    :cond_2
    return-void
.end method

.method private readLoca()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->tableDirectory:Ljava/util/Map;

    const-string v1, "head"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 257
    .local v0, "tableLocation":[I
    const-string v2, "Table {0} does not exist in {1}"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_5

    .line 260
    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v6, v0, v5

    add-int/lit8 v6, v6, 0x33

    int-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 261
    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->locaShortTable:Z

    .line 262
    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->tableDirectory:Ljava/util/Map;

    const-string v6, "loca"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [I

    .line 263
    if-eqz v0, :cond_4

    .line 266
    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v2, v0, v5

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 267
    iget-boolean v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->locaShortTable:Z

    if-eqz v1, :cond_2

    .line 268
    aget v1, v0, v4

    div-int/2addr v1, v4

    .line 269
    .local v1, "entries":I
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->locaTable:[I

    .line 270
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 271
    iget-object v3, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->locaTable:[I

    iget-object v5, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v5

    mul-int/2addr v5, v4

    aput v5, v3, v2

    .line 270
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 273
    .end local v1    # "entries":I
    .end local v2    # "k":I
    :cond_1
    goto :goto_3

    .line 274
    :cond_2
    aget v1, v0, v4

    div-int/lit8 v1, v1, 0x4

    .line 275
    .restart local v1    # "entries":I
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->locaTable:[I

    .line 276
    const/4 v2, 0x0

    .restart local v2    # "k":I
    :goto_2
    if-ge v2, v1, :cond_3

    .line 277
    iget-object v3, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->locaTable:[I

    iget-object v4, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v4

    aput v4, v3, v2

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 280
    .end local v1    # "entries":I
    .end local v2    # "k":I
    :cond_3
    :goto_3
    return-void

    .line 264
    :cond_4
    new-instance v1, Lcom/itextpdf/io/IOException;

    invoke-direct {v1, v2}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v6, v2, v3

    iget-object v3, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fileName:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v1

    throw v1

    .line 258
    :cond_5
    new-instance v6, Lcom/itextpdf/io/IOException;

    invoke-direct {v6, v2}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v3

    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fileName:Ljava/lang/String;

    aput-object v1, v2, v5

    invoke-virtual {v6, v2}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v1

    throw v1
.end method

.method private readStandardString(I)Ljava/lang/String;
    .locals 4
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    new-array v0, p1, [B

    .line 398
    .local v0, "buf":[B
    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1, v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([B)V

    .line 400
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "Cp1252"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 401
    :catch_0
    move-exception v1

    .line 402
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/itextpdf/io/IOException;

    const-string v3, "TrueType font"

    invoke-direct {v2, v3, v1}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private writeFontInt(I)V
    .locals 4
    .param p1, "n"    # I

    .line 412
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->outFont:[B

    iget v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    shr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 413
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 414
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 415
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 416
    return-void
.end method

.method private writeFontShort(I)V
    .locals 4
    .param p1, "n"    # I

    .line 407
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->outFont:[B

    iget v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 408
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 409
    return-void
.end method

.method private writeFontString(Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .line 419
    const-string v0, "Cp1252"

    invoke-static {p1, v0}, Lcom/itextpdf/io/font/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 420
    .local v0, "b":[B
    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->outFont:[B

    iget v2, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 421
    iget v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    array-length v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->fontPtr:I

    .line 422
    return-void
.end method


# virtual methods
.method process()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    :try_start_0
    invoke-direct {p0}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->createTableDirectory()V

    .line 145
    invoke-direct {p0}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->readLoca()V

    .line 146
    invoke-direct {p0}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->flatGlyphs()V

    .line 147
    invoke-direct {p0}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->createNewGlyphTables()V

    .line 148
    invoke-direct {p0}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->locaToBytes()V

    .line 149
    invoke-direct {p0}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->assembleFont()V

    .line 150
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->outFont:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :try_start_1
    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 155
    goto :goto_0

    .line 154
    :catch_0
    move-exception v1

    .line 150
    :goto_0
    return-object v0

    .line 152
    :catchall_0
    move-exception v0

    .line 153
    :try_start_2
    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFontSubset;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 155
    goto :goto_1

    .line 154
    :catch_1
    move-exception v1

    .line 156
    :goto_1
    throw v0
.end method
