.class Lcom/itextpdf/io/font/woff2/Woff2Dec;
.super Ljava/lang/Object;
.source "Woff2Dec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;,
        Lcom/itextpdf/io/font/woff2/Woff2Dec$Checksums;,
        Lcom/itextpdf/io/font/woff2/Woff2Dec$CompositeGlyphInfo;,
        Lcom/itextpdf/io/font/woff2/Woff2Dec$TableChecksumInfo;,
        Lcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;,
        Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;,
        Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;,
        Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final FLAG_ARG_1_AND_2_ARE_WORDS:I = 0x1

.field private static final FLAG_MORE_COMPONENTS:I = 0x20

.field private static final FLAG_WE_HAVE_AN_X_AND_Y_SCALE:I = 0x40

.field private static final FLAG_WE_HAVE_A_SCALE:I = 0x8

.field private static final FLAG_WE_HAVE_A_TWO_BY_TWO:I = 0x80

.field private static final FLAG_WE_HAVE_INSTRUCTIONS:I = 0x100

.field private static final kCheckSumAdjustmentOffset:I = 0x8

.field private static final kCompositeGlyphBegin:I = 0xa

.field private static final kDefaultGlyphBuf:I = 0x1400

.field private static final kEndPtsOfContoursOffset:I = 0xa

.field private static final kGlyfOnCurve:I = 0x1

.field private static final kGlyfRepeat:I = 0x8

.field private static final kGlyfThisXIsSame:I = 0x10

.field private static final kGlyfThisYIsSame:I = 0x20

.field private static final kGlyfXShort:I = 0x2

.field private static final kGlyfYShort:I = 0x4

.field private static final kMaxPlausibleCompressionRatio:F = 100.0f


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 53
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeBbox(I[Lcom/itextpdf/io/font/woff2/Woff2Common$Point;[B)V
    .locals 7
    .param p0, "n_points"    # I
    .param p1, "points"    # [Lcom/itextpdf/io/font/woff2/Woff2Common$Point;
    .param p2, "dst"    # [B

    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, "x_min":I
    const/4 v1, 0x0

    .line 325
    .local v1, "y_min":I
    const/4 v2, 0x0

    .line 326
    .local v2, "x_max":I
    const/4 v3, 0x0

    .line 328
    .local v3, "y_max":I
    if-lez p0, :cond_0

    .line 329
    const/4 v4, 0x0

    aget-object v5, p1, v4

    iget v0, v5, Lcom/itextpdf/io/font/woff2/Woff2Common$Point;->x:I

    .line 330
    aget-object v5, p1, v4

    iget v2, v5, Lcom/itextpdf/io/font/woff2/Woff2Common$Point;->x:I

    .line 331
    aget-object v5, p1, v4

    iget v1, v5, Lcom/itextpdf/io/font/woff2/Woff2Common$Point;->y:I

    .line 332
    aget-object v4, p1, v4

    iget v3, v4, Lcom/itextpdf/io/font/woff2/Woff2Common$Point;->y:I

    .line 334
    :cond_0
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-ge v4, p0, :cond_1

    .line 335
    aget-object v5, p1, v4

    iget v5, v5, Lcom/itextpdf/io/font/woff2/Woff2Common$Point;->x:I

    .line 336
    .local v5, "x":I
    aget-object v6, p1, v4

    iget v6, v6, Lcom/itextpdf/io/font/woff2/Woff2Common$Point;->y:I

    .line 337
    .local v6, "y":I
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 338
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 339
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 340
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 334
    .end local v5    # "x":I
    .end local v6    # "y":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 342
    .end local v4    # "i":I
    :cond_1
    const/4 v4, 0x2

    .line 343
    .local v4, "offset":I
    invoke-static {p2, v4, v0}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU16([BII)I

    move-result v4

    .line 344
    invoke-static {p2, v4, v1}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU16([BII)I

    move-result v4

    .line 345
    invoke-static {p2, v4, v2}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU16([BII)I

    move-result v4

    .line 346
    invoke-static {p2, v4, v3}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU16([BII)I

    move-result v4

    .line 347
    return-void
.end method

.method private static computeOffsetToFirstTable(Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;)J
    .locals 8
    .param p0, "hdr"    # Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;

    .line 835
    iget-short v0, p0, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->num_tables:S

    mul-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0xc

    int-to-long v0, v0

    .line 837
    .local v0, "offset":J
    iget v2, p0, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->header_version:I

    if-eqz v2, :cond_0

    .line 838
    iget v2, p0, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->header_version:I

    iget-object v3, p0, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->ttc_fonts:[Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;

    array-length v3, v3

    invoke-static {v2, v3}, Lcom/itextpdf/io/font/woff2/Woff2Common;->collectionHeaderSize(II)I

    move-result v2

    iget-object v3, p0, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->ttc_fonts:[Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;

    array-length v3, v3

    mul-int/lit8 v3, v3, 0xc

    add-int/2addr v2, v3

    int-to-long v0, v2

    .line 840
    iget-object v2, p0, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->ttc_fonts:[Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 841
    .local v5, "ttc_font":Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;
    iget-object v6, v5, Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;->table_indices:[S

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x10

    int-to-long v6, v6

    add-long/2addr v0, v6

    .line 840
    .end local v5    # "ttc_font":Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 844
    :cond_0
    return-wide v0
.end method

.method public static computeWoff2FinalSize([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "length"    # I

    .line 1219
    new-instance v0, Lcom/itextpdf/io/font/woff2/Buffer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/itextpdf/io/font/woff2/Buffer;-><init>([BII)V

    .line 1220
    .local v0, "file":Lcom/itextpdf/io/font/woff2/Buffer;
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/woff2/Buffer;->skip(I)V

    .line 1221
    invoke-virtual {v0}, Lcom/itextpdf/io/font/woff2/Buffer;->readInt()I

    move-result v1

    return v1
.end method

.method public static convertWoff2ToTtf([BILcom/itextpdf/io/font/woff2/Woff2Out;)V
    .locals 12
    .param p0, "data"    # [B
    .param p1, "length"    # I
    .param p2, "out"    # Lcom/itextpdf/io/font/woff2/Woff2Out;

    .line 1228
    new-instance v0, Lcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;-><init>(Lcom/itextpdf/io/font/woff2/Woff2Dec$1;)V

    .line 1229
    .local v0, "metadata":Lcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;
    new-instance v2, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;

    invoke-direct {v2, v1}, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;-><init>(Lcom/itextpdf/io/font/woff2/Woff2Dec$1;)V

    move-object v1, v2

    .line 1230
    .local v1, "hdr":Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;
    invoke-static {p0, p1, v1}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->readWoff2Header([BILcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;)V

    .line 1232
    invoke-static {p0, p1, v0, v1, p2}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->writeHeaders([BILcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;Lcom/itextpdf/io/font/woff2/Woff2Out;)V

    .line 1234
    iget v2, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->uncompressed_size:I

    int-to-float v2, v2

    int-to-float v3, p1

    div-float v9, v2, v3

    .line 1235
    .local v9, "compression_ratio":F
    const/high16 v2, 0x42c80000    # 100.0f

    cmpl-float v2, v9, v2

    if-gtz v2, :cond_1

    .line 1239
    iget v2, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->uncompressed_size:I

    new-array v10, v2, [B

    .line 1240
    .local v10, "uncompressed_buf":[B
    const/4 v4, 0x0

    iget v5, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->uncompressed_size:I

    iget-wide v2, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->compressed_offset:J

    long-to-int v7, v2

    iget v8, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->compressed_length:I

    move-object v3, v10

    move-object v6, p0

    invoke-static/range {v3 .. v8}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->woff2Uncompress([BII[BII)V

    .line 1242
    const/4 v2, 0x0

    move v11, v2

    .local v11, "i":I
    :goto_0
    iget-object v2, v0, Lcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;->font_infos:[Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;

    array-length v2, v2

    if-ge v11, v2, :cond_0

    .line 1243
    const/4 v3, 0x0

    iget v4, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->uncompressed_size:I

    move-object v2, v10

    move-object v5, v0

    move-object v6, v1

    move v7, v11

    move-object v8, p2

    invoke-static/range {v2 .. v8}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->reconstructFont([BIILcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;ILcom/itextpdf/io/font/woff2/Woff2Out;)V

    .line 1242
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1245
    .end local v11    # "i":I
    :cond_0
    return-void

    .line 1236
    .end local v10    # "uncompressed_buf":[B
    :cond_1
    new-instance v2, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "Implausible compression ratio {0}"

    invoke-static {v4, v3}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static findTable(Ljava/util/ArrayList;I)Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    .locals 3
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/itextpdf/io/font/woff2/Woff2Common$Table;",
            ">;I)",
            "Lcom/itextpdf/io/font/woff2/Woff2Common$Table;"
        }
    .end annotation

    .line 640
    .local p0, "tables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itextpdf/io/font/woff2/Woff2Common$Table;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    .line 641
    .local v1, "table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    iget v2, v1, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->tag:I

    if-ne v2, p1, :cond_0

    .line 642
    return-object v1

    .line 644
    .end local v1    # "table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    :cond_0
    goto :goto_0

    .line 645
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static pad4(Lcom/itextpdf/io/font/woff2/Woff2Out;)V
    .locals 3
    .param p0, "out"    # Lcom/itextpdf/io/font/woff2/Woff2Out;

    .line 392
    const/4 v0, 0x3

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    .line 393
    .local v1, "zeroes":[B
    invoke-interface {p0}, Lcom/itextpdf/io/font/woff2/Woff2Out;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-interface {p0}, Lcom/itextpdf/io/font/woff2/Woff2Out;->size()I

    move-result v0

    if-lt v2, v0, :cond_1

    .line 396
    invoke-interface {p0}, Lcom/itextpdf/io/font/woff2/Woff2Out;->size()I

    move-result v0

    invoke-static {v0}, Lcom/itextpdf/io/font/woff2/Round;->round4(I)I

    move-result v0

    invoke-interface {p0}, Lcom/itextpdf/io/font/woff2/Woff2Out;->size()I

    move-result v2

    sub-int/2addr v0, v2

    .line 397
    .local v0, "pad_bytes":I
    if-lez v0, :cond_0

    .line 398
    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, v0}, Lcom/itextpdf/io/font/woff2/Woff2Out;->write([BII)V

    .line 400
    :cond_0
    return-void

    .line 394
    .end local v0    # "pad_bytes":I
    :cond_1
    new-instance v0, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    const-string/jumbo v2, "woff2 padding overflow exception"

    invoke-direct {v0, v2}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static readNumHMetrics([BII)S
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "data_length"    # I

    .line 651
    new-instance v0, Lcom/itextpdf/io/font/woff2/Buffer;

    invoke-direct {v0, p0, p1, p2}, Lcom/itextpdf/io/font/woff2/Buffer;-><init>([BII)V

    .line 652
    .local v0, "buffer":Lcom/itextpdf/io/font/woff2/Buffer;
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/woff2/Buffer;->skip(I)V

    .line 653
    invoke-virtual {v0}, Lcom/itextpdf/io/font/woff2/Buffer;->readShort()S

    move-result v1

    .line 654
    .local v1, "result":S
    return v1
.end method

.method private static readTableDirectory(Lcom/itextpdf/io/font/woff2/Buffer;[Lcom/itextpdf/io/font/woff2/Woff2Common$Table;I)V
    .locals 12
    .param p0, "file"    # Lcom/itextpdf/io/font/woff2/Buffer;
    .param p1, "tables"    # [Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    .param p2, "num_tables"    # I

    .line 762
    const/4 v0, 0x0

    .line 763
    .local v0, "src_offset":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_7

    .line 764
    new-instance v2, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    invoke-direct {v2}, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;-><init>()V

    .line 765
    .local v2, "table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    aput-object v2, p1, v1

    .line 766
    invoke-virtual {p0}, Lcom/itextpdf/io/font/woff2/Buffer;->readByte()B

    move-result v3

    invoke-static {v3}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result v3

    .line 768
    .local v3, "flag_byte":I
    and-int/lit8 v4, v3, 0x3f

    const/16 v5, 0x3f

    if-ne v4, v5, :cond_0

    .line 769
    invoke-virtual {p0}, Lcom/itextpdf/io/font/woff2/Buffer;->readInt()I

    move-result v4

    .local v4, "tag":I
    goto :goto_1

    .line 771
    .end local v4    # "tag":I
    :cond_0
    sget-object v4, Lcom/itextpdf/io/font/woff2/TableTags;->kKnownTags:[I

    and-int/lit8 v5, v3, 0x3f

    aget v4, v4, v5

    .line 773
    .restart local v4    # "tag":I
    :goto_1
    const/4 v5, 0x0

    .line 774
    .local v5, "flags":I
    shr-int/lit8 v6, v3, 0x6

    and-int/lit8 v6, v6, 0x3

    .line 777
    .local v6, "xform_version":I
    const v7, 0x676c7966

    const v8, 0x6c6f6361

    if-eq v4, v7, :cond_2

    if-ne v4, v8, :cond_1

    goto :goto_2

    .line 781
    :cond_1
    if-eqz v6, :cond_3

    .line 782
    or-int/lit16 v5, v5, 0x100

    goto :goto_3

    .line 778
    :cond_2
    :goto_2
    if-nez v6, :cond_3

    .line 779
    or-int/lit16 v5, v5, 0x100

    .line 784
    :cond_3
    :goto_3
    or-int/2addr v5, v6

    .line 786
    invoke-static {p0}, Lcom/itextpdf/io/font/woff2/VariableLength;->readBase128(Lcom/itextpdf/io/font/woff2/Buffer;)I

    move-result v7

    .line 787
    .local v7, "dst_length":I
    move v9, v7

    .line 788
    .local v9, "transform_length":I
    and-int/lit16 v10, v5, 0x100

    const-string v11, "Reading woff2 tables directory exception"

    if-eqz v10, :cond_5

    .line 789
    invoke-static {p0}, Lcom/itextpdf/io/font/woff2/VariableLength;->readBase128(Lcom/itextpdf/io/font/woff2/Buffer;)I

    move-result v9

    .line 790
    if-ne v4, v8, :cond_5

    if-nez v9, :cond_4

    goto :goto_4

    .line 791
    :cond_4
    new-instance v8, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v8, v11}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 794
    :cond_5
    :goto_4
    add-int v8, v0, v9

    if-lt v8, v0, :cond_6

    .line 797
    iput v0, v2, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->src_offset:I

    .line 798
    iput v9, v2, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->src_length:I

    .line 799
    add-int/2addr v0, v9

    .line 801
    iput v4, v2, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->tag:I

    .line 802
    iput v5, v2, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->flags:I

    .line 803
    iput v9, v2, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->transform_length:I

    .line 804
    iput v7, v2, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->dst_length:I

    .line 763
    .end local v2    # "table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    .end local v3    # "flag_byte":I
    .end local v4    # "tag":I
    .end local v5    # "flags":I
    .end local v6    # "xform_version":I
    .end local v7    # "dst_length":I
    .end local v9    # "transform_length":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 795
    .restart local v2    # "table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    .restart local v3    # "flag_byte":I
    .restart local v4    # "tag":I
    .restart local v5    # "flags":I
    .restart local v6    # "xform_version":I
    .restart local v7    # "dst_length":I
    .restart local v9    # "transform_length":I
    :cond_6
    new-instance v8, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v8, v11}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 806
    .end local v1    # "i":I
    .end local v2    # "table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    .end local v3    # "flag_byte":I
    .end local v4    # "tag":I
    .end local v5    # "flags":I
    .end local v6    # "xform_version":I
    .end local v7    # "dst_length":I
    .end local v9    # "transform_length":I
    :cond_7
    return-void
.end method

.method private static readWoff2Header([BILcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;)V
    .locals 26
    .param p0, "data"    # [B
    .param p1, "length"    # I
    .param p2, "hdr"    # Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;

    .line 975
    move/from16 v0, p1

    move-object/from16 v1, p2

    new-instance v2, Lcom/itextpdf/io/font/woff2/Buffer;

    const/4 v3, 0x0

    move-object/from16 v4, p0

    invoke-direct {v2, v4, v3, v0}, Lcom/itextpdf/io/font/woff2/Buffer;-><init>([BII)V

    .line 978
    .local v2, "file":Lcom/itextpdf/io/font/woff2/Buffer;
    invoke-virtual {v2}, Lcom/itextpdf/io/font/woff2/Buffer;->readInt()I

    move-result v5

    .line 979
    .local v5, "signature":I
    const v6, 0x774f4632

    if-ne v5, v6, :cond_23

    .line 982
    invoke-virtual {v2}, Lcom/itextpdf/io/font/woff2/Buffer;->readInt()I

    move-result v6

    iput v6, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->flavor:I

    .line 987
    invoke-virtual {v2}, Lcom/itextpdf/io/font/woff2/Buffer;->readInt()I

    move-result v6

    .line 988
    .local v6, "reported_length":I
    if-lez v6, :cond_22

    .line 990
    const-string v7, "Reading woff2 header exception"

    if-ne v0, v6, :cond_21

    .line 994
    invoke-virtual {v2}, Lcom/itextpdf/io/font/woff2/Buffer;->readShort()S

    move-result v8

    iput-short v8, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->num_tables:S

    .line 995
    iget-short v8, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->num_tables:S

    if-eqz v8, :cond_20

    .line 1002
    const/4 v8, 0x6

    invoke-virtual {v2, v8}, Lcom/itextpdf/io/font/woff2/Buffer;->skip(I)V

    .line 1004
    invoke-virtual {v2}, Lcom/itextpdf/io/font/woff2/Buffer;->readInt()I

    move-result v8

    iput v8, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->compressed_length:I

    .line 1005
    iget v8, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->compressed_length:I

    if-ltz v8, :cond_1f

    .line 1009
    const/4 v8, 0x4

    invoke-virtual {v2, v8}, Lcom/itextpdf/io/font/woff2/Buffer;->skip(I)V

    .line 1014
    invoke-virtual {v2}, Lcom/itextpdf/io/font/woff2/Buffer;->readInt()I

    move-result v8

    .line 1015
    .local v8, "meta_offset":I
    if-ltz v8, :cond_1e

    .line 1016
    invoke-virtual {v2}, Lcom/itextpdf/io/font/woff2/Buffer;->readInt()I

    move-result v9

    .line 1017
    .local v9, "meta_length":I
    if-ltz v9, :cond_1d

    .line 1018
    invoke-virtual {v2}, Lcom/itextpdf/io/font/woff2/Buffer;->readInt()I

    move-result v10

    .line 1019
    .local v10, "meta_length_orig":I
    if-ltz v10, :cond_1c

    .line 1020
    if-eqz v8, :cond_1

    .line 1021
    if-ge v8, v0, :cond_0

    sub-int v11, v0, v8

    if-lt v11, v9, :cond_0

    goto :goto_0

    .line 1022
    :cond_0
    new-instance v3, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v3, v7}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1027
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lcom/itextpdf/io/font/woff2/Buffer;->readInt()I

    move-result v11

    .line 1028
    .local v11, "priv_offset":I
    if-ltz v11, :cond_1b

    .line 1029
    invoke-virtual {v2}, Lcom/itextpdf/io/font/woff2/Buffer;->readInt()I

    move-result v12

    .line 1030
    .local v12, "priv_length":I
    if-ltz v12, :cond_1a

    .line 1032
    if-eqz v11, :cond_3

    .line 1033
    if-ge v11, v0, :cond_2

    sub-int v13, v0, v11

    if-lt v13, v12, :cond_2

    goto :goto_1

    .line 1034
    :cond_2
    new-instance v3, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v3, v7}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1037
    :cond_3
    :goto_1
    iget-short v13, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->num_tables:S

    new-array v13, v13, [Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    iput-object v13, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->tables:[Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    .line 1038
    iget-object v13, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->tables:[Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    iget-short v14, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->num_tables:S

    invoke-static {v2, v13, v14}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->readTableDirectory(Lcom/itextpdf/io/font/woff2/Buffer;[Lcom/itextpdf/io/font/woff2/Woff2Common$Table;I)V

    .line 1041
    iget-object v13, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->tables:[Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    iget-object v14, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->tables:[Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    array-length v14, v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    aget-object v13, v13, v14

    .line 1042
    .local v13, "last_table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    iget v14, v13, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->src_offset:I

    iget v15, v13, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->src_length:I

    add-int/2addr v14, v15

    iput v14, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->uncompressed_size:I

    .line 1043
    iget v14, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->uncompressed_size:I

    if-lez v14, :cond_19

    .line 1044
    iget v14, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->uncompressed_size:I

    iget v15, v13, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->src_offset:I

    if-lt v14, v15, :cond_18

    .line 1048
    iput v3, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->header_version:I

    .line 1050
    iget v14, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->flavor:I

    const v15, 0x74746366

    if-ne v14, v15, :cond_e

    .line 1051
    invoke-virtual {v2}, Lcom/itextpdf/io/font/woff2/Buffer;->readInt()I

    move-result v14

    iput v14, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->header_version:I

    .line 1052
    iget v14, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->header_version:I

    const/high16 v15, 0x10000

    const-string v3, "Reading collection woff2 header exception"

    if-eq v14, v15, :cond_5

    iget v14, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->header_version:I

    const/high16 v15, 0x20000

    if-ne v14, v15, :cond_4

    goto :goto_2

    .line 1053
    :cond_4
    new-instance v7, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v7, v3}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1056
    :cond_5
    :goto_2
    invoke-static {v2}, Lcom/itextpdf/io/font/woff2/VariableLength;->read255UShort(Lcom/itextpdf/io/font/woff2/Buffer;)I

    move-result v14

    .line 1057
    .local v14, "num_fonts":I
    new-array v15, v14, [Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;

    iput-object v15, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->ttc_fonts:[Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;

    .line 1059
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_3
    if-ge v15, v14, :cond_d

    .line 1060
    new-instance v4, Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;

    move/from16 v17, v5

    .end local v5    # "signature":I
    .local v17, "signature":I
    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;-><init>(Lcom/itextpdf/io/font/woff2/Woff2Dec$1;)V

    .line 1061
    .local v4, "ttc_font":Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;
    iget-object v5, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->ttc_fonts:[Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;

    aput-object v4, v5, v15

    .line 1063
    invoke-static {v2}, Lcom/itextpdf/io/font/woff2/VariableLength;->read255UShort(Lcom/itextpdf/io/font/woff2/Buffer;)I

    move-result v5

    .line 1064
    .local v5, "num_tables":I
    move/from16 v18, v6

    .end local v6    # "reported_length":I
    .local v18, "reported_length":I
    invoke-virtual {v2}, Lcom/itextpdf/io/font/woff2/Buffer;->readInt()I

    move-result v6

    iput v6, v4, Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;->flavor:I

    .line 1066
    new-array v6, v5, [S

    iput-object v6, v4, Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;->table_indices:[S

    .line 1068
    const/4 v6, 0x0

    .line 1069
    .local v6, "glyf_table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    const/16 v19, 0x0

    .line 1071
    .local v19, "loca_table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    const/16 v20, 0x0

    move/from16 v25, v20

    move/from16 v20, v10

    move/from16 v10, v25

    .local v10, "j":I
    .local v20, "meta_length_orig":I
    :goto_4
    if-ge v10, v5, :cond_9

    .line 1073
    move/from16 v21, v5

    .end local v5    # "num_tables":I
    .local v21, "num_tables":I
    invoke-static {v2}, Lcom/itextpdf/io/font/woff2/VariableLength;->read255UShort(Lcom/itextpdf/io/font/woff2/Buffer;)I

    move-result v5

    .line 1074
    .local v5, "table_idx":I
    move-object/from16 v22, v13

    .end local v13    # "last_table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    .local v22, "last_table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    iget-object v13, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->tables:[Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    array-length v13, v13

    if-ge v5, v13, :cond_8

    .line 1077
    iget-object v13, v4, Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;->table_indices:[S

    move-object/from16 v23, v4

    .end local v4    # "ttc_font":Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;
    .local v23, "ttc_font":Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;
    int-to-short v4, v5

    aput-short v4, v13, v10

    .line 1079
    iget-object v4, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->tables:[Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    aget-object v4, v4, v5

    .line 1080
    .local v4, "table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    iget v13, v4, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->tag:I

    move/from16 v24, v5

    .end local v5    # "table_idx":I
    .local v24, "table_idx":I
    const v5, 0x6c6f6361

    if-ne v13, v5, :cond_6

    .line 1081
    move-object v5, v4

    move-object/from16 v19, v5

    .line 1083
    :cond_6
    iget v5, v4, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->tag:I

    const v13, 0x676c7966

    if-ne v5, v13, :cond_7

    .line 1084
    move-object v5, v4

    move-object v6, v5

    .line 1071
    .end local v4    # "table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    .end local v24    # "table_idx":I
    :cond_7
    add-int/lit8 v10, v10, 0x1

    move/from16 v5, v21

    move-object/from16 v13, v22

    move-object/from16 v4, v23

    goto :goto_4

    .line 1075
    .end local v23    # "ttc_font":Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;
    .local v4, "ttc_font":Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;
    .restart local v5    # "table_idx":I
    :cond_8
    move-object/from16 v23, v4

    .end local v4    # "ttc_font":Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;
    .restart local v23    # "ttc_font":Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;
    new-instance v4, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v4, v3}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1071
    .end local v21    # "num_tables":I
    .end local v22    # "last_table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    .end local v23    # "ttc_font":Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;
    .restart local v4    # "ttc_font":Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;
    .local v5, "num_tables":I
    .restart local v13    # "last_table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    :cond_9
    move-object/from16 v23, v4

    move/from16 v21, v5

    move-object/from16 v22, v13

    .line 1089
    .end local v4    # "ttc_font":Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;
    .end local v5    # "num_tables":I
    .end local v10    # "j":I
    .end local v13    # "last_table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    .restart local v21    # "num_tables":I
    .restart local v22    # "last_table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    .restart local v23    # "ttc_font":Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;
    if-nez v6, :cond_a

    const/4 v4, 0x1

    goto :goto_5

    :cond_a
    const/4 v4, 0x0

    :goto_5
    if-nez v19, :cond_b

    const/4 v5, 0x1

    goto :goto_6

    :cond_b
    const/4 v5, 0x0

    :goto_6
    if-ne v4, v5, :cond_c

    .line 1059
    .end local v6    # "glyf_table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    .end local v19    # "loca_table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    .end local v21    # "num_tables":I
    .end local v23    # "ttc_font":Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, p0

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v10, v20

    move-object/from16 v13, v22

    goto/16 :goto_3

    .line 1090
    .restart local v6    # "glyf_table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    .restart local v19    # "loca_table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    .restart local v21    # "num_tables":I
    .restart local v23    # "ttc_font":Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;
    :cond_c
    new-instance v4, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v4, v3}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1059
    .end local v17    # "signature":I
    .end local v18    # "reported_length":I
    .end local v19    # "loca_table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    .end local v20    # "meta_length_orig":I
    .end local v21    # "num_tables":I
    .end local v22    # "last_table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    .end local v23    # "ttc_font":Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;
    .local v5, "signature":I
    .local v6, "reported_length":I
    .local v10, "meta_length_orig":I
    .restart local v13    # "last_table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    :cond_d
    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v20, v10

    move-object/from16 v22, v13

    .end local v5    # "signature":I
    .end local v6    # "reported_length":I
    .end local v10    # "meta_length_orig":I
    .end local v13    # "last_table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    .restart local v17    # "signature":I
    .restart local v18    # "reported_length":I
    .restart local v20    # "meta_length_orig":I
    .restart local v22    # "last_table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    goto :goto_7

    .line 1050
    .end local v14    # "num_fonts":I
    .end local v15    # "i":I
    .end local v17    # "signature":I
    .end local v18    # "reported_length":I
    .end local v20    # "meta_length_orig":I
    .end local v22    # "last_table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    .restart local v5    # "signature":I
    .restart local v6    # "reported_length":I
    .restart local v10    # "meta_length_orig":I
    .restart local v13    # "last_table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    :cond_e
    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v20, v10

    move-object/from16 v22, v13

    .line 1095
    .end local v5    # "signature":I
    .end local v6    # "reported_length":I
    .end local v10    # "meta_length_orig":I
    .end local v13    # "last_table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    .restart local v17    # "signature":I
    .restart local v18    # "reported_length":I
    .restart local v20    # "meta_length_orig":I
    .restart local v22    # "last_table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    :goto_7
    invoke-static/range {p2 .. p2}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->computeOffsetToFirstTable(Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;)J

    move-result-wide v3

    .line 1097
    .local v3, "first_table_offset":J
    invoke-virtual {v2}, Lcom/itextpdf/io/font/woff2/Buffer;->getOffset()I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->compressed_offset:J

    .line 1099
    iget-wide v5, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->compressed_offset:J

    const-wide/32 v13, 0x7fffffff

    cmp-long v5, v5, v13

    if-gtz v5, :cond_17

    .line 1102
    iget-wide v5, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->compressed_offset:J

    iget v10, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->compressed_length:I

    int-to-long v13, v10

    add-long/2addr v5, v13

    invoke-static {v5, v6}, Lcom/itextpdf/io/font/woff2/Round;->round4(J)J

    move-result-wide v5

    .line 1103
    .local v5, "src_offset":J
    move-wide v13, v3

    .line 1105
    .local v13, "dst_offset":J
    move-object v10, v2

    .end local v2    # "file":Lcom/itextpdf/io/font/woff2/Buffer;
    .local v10, "file":Lcom/itextpdf/io/font/woff2/Buffer;
    int-to-long v1, v0

    cmp-long v1, v5, v1

    if-gtz v1, :cond_16

    .line 1108
    if-eqz v8, :cond_11

    .line 1109
    int-to-long v1, v8

    cmp-long v1, v5, v1

    if-nez v1, :cond_10

    .line 1112
    add-int v1, v8, v9

    invoke-static {v1}, Lcom/itextpdf/io/font/woff2/Round;->round4(I)I

    move-result v1

    int-to-long v5, v1

    .line 1114
    const-wide/32 v1, 0x7fffffff

    cmp-long v16, v5, v1

    if-gtz v16, :cond_f

    goto :goto_8

    .line 1115
    :cond_f
    new-instance v1, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v1, v7}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1110
    :cond_10
    new-instance v1, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v1, v7}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1119
    :cond_11
    :goto_8
    if-eqz v11, :cond_14

    .line 1120
    int-to-long v1, v11

    cmp-long v1, v5, v1

    if-nez v1, :cond_13

    .line 1123
    add-int v1, v11, v12

    invoke-static {v1}, Lcom/itextpdf/io/font/woff2/Round;->round4(I)I

    move-result v1

    int-to-long v5, v1

    .line 1125
    const-wide/32 v1, 0x7fffffff

    cmp-long v1, v5, v1

    if-gtz v1, :cond_12

    goto :goto_9

    .line 1126
    :cond_12
    new-instance v1, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v1, v7}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1121
    :cond_13
    new-instance v1, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v1, v7}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1130
    :cond_14
    :goto_9
    invoke-static/range {p1 .. p1}, Lcom/itextpdf/io/font/woff2/Round;->round4(I)I

    move-result v1

    int-to-long v1, v1

    cmp-long v1, v5, v1

    if-nez v1, :cond_15

    .line 1133
    return-void

    .line 1131
    :cond_15
    new-instance v1, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v1, v7}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1106
    :cond_16
    new-instance v1, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v1, v7}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1100
    .end local v5    # "src_offset":J
    .end local v10    # "file":Lcom/itextpdf/io/font/woff2/Buffer;
    .end local v13    # "dst_offset":J
    .restart local v2    # "file":Lcom/itextpdf/io/font/woff2/Buffer;
    :cond_17
    new-instance v1, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v1, v7}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1045
    .end local v3    # "first_table_offset":J
    .end local v17    # "signature":I
    .end local v18    # "reported_length":I
    .end local v20    # "meta_length_orig":I
    .end local v22    # "last_table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    .local v5, "signature":I
    .restart local v6    # "reported_length":I
    .local v10, "meta_length_orig":I
    .local v13, "last_table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    :cond_18
    new-instance v1, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v1, v7}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1043
    :cond_19
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1030
    .end local v13    # "last_table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    :cond_1a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1028
    .end local v12    # "priv_length":I
    :cond_1b
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1019
    .end local v11    # "priv_offset":I
    :cond_1c
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1017
    .end local v10    # "meta_length_orig":I
    :cond_1d
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1015
    .end local v9    # "meta_length":I
    :cond_1e
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1005
    .end local v8    # "meta_offset":I
    :cond_1f
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 996
    :cond_20
    new-instance v1, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v1, v7}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 991
    :cond_21
    new-instance v1, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v1, v7}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 988
    :cond_22
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 980
    .end local v6    # "reported_length":I
    :cond_23
    move-object v10, v2

    .end local v2    # "file":Lcom/itextpdf/io/font/woff2/Buffer;
    .local v10, "file":Lcom/itextpdf/io/font/woff2/Buffer;
    new-instance v1, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    const-string v2, "Incorrect woff2 signature"

    invoke-direct {v1, v2}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static reconstructFont([BIILcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;ILcom/itextpdf/io/font/woff2/Woff2Out;)V
    .locals 27
    .param p0, "transformed_buf"    # [B
    .param p1, "transformed_buf_offset"    # I
    .param p2, "transformed_buf_size"    # I
    .param p3, "metadata"    # Lcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;
    .param p4, "hdr"    # Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;
    .param p5, "font_index"    # I
    .param p6, "out"    # Lcom/itextpdf/io/font/woff2/Woff2Out;

    .line 868
    move-object/from16 v8, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    invoke-interface/range {p6 .. p6}, Lcom/itextpdf/io/font/woff2/Woff2Out;->size()I

    move-result v0

    .line 869
    .local v0, "dest_offset":I
    const/16 v12, 0xc

    new-array v13, v12, [B

    .line 870
    .local v13, "table_entry":[B
    iget-object v1, v9, Lcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;->font_infos:[Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;

    aget-object v14, v1, p5

    .line 871
    .local v14, "info":Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;
    invoke-static/range {p4 .. p5}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->tables(Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;I)Ljava/util/ArrayList;

    move-result-object v15

    .line 874
    .local v15, "tables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itextpdf/io/font/woff2/Woff2Common$Table;>;"
    const v7, 0x676c7966

    invoke-static {v15, v7}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->findTable(Ljava/util/ArrayList;I)Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v5, 0x6c6f6361

    invoke-static {v15, v5}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->findTable(Ljava/util/ArrayList;I)Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v4, "Reconstructing woff2 table directory exception"

    if-ne v1, v2, :cond_12

    .line 878
    iget v1, v9, Lcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;->header_checksum:I

    .line 879
    .local v1, "font_checksum":I
    iget v2, v10, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->header_version:I

    if-eqz v2, :cond_2

    .line 880
    iget-object v2, v10, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->ttc_fonts:[Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;

    aget-object v2, v2, p5

    iget v1, v2, Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;->header_checksum:I

    .line 883
    :cond_2
    const/4 v2, 0x0

    .line 884
    .local v2, "loca_checksum":I
    const/4 v3, 0x0

    move/from16 v16, v1

    move/from16 v17, v2

    move v2, v3

    move v3, v0

    .end local v0    # "dest_offset":I
    .end local v1    # "font_checksum":I
    .local v2, "i":I
    .local v3, "dest_offset":I
    .local v16, "font_checksum":I
    .local v17, "loca_checksum":I
    :goto_2
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_f

    .line 885
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    .line 887
    .local v0, "table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    new-instance v7, Lcom/itextpdf/io/font/woff2/Woff2Dec$TableChecksumInfo;

    iget v6, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->tag:I

    iget v5, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->src_offset:I

    invoke-direct {v7, v6, v5}, Lcom/itextpdf/io/font/woff2/Woff2Dec$TableChecksumInfo;-><init>(II)V

    .line 888
    .local v7, "checksum_key":Lcom/itextpdf/io/font/woff2/Woff2Dec$TableChecksumInfo;
    iget-object v5, v9, Lcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;->checksums:Ljava/util/Map;

    invoke-interface {v5, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    .line 889
    .local v23, "reused":Z
    if-nez p5, :cond_4

    if-nez v23, :cond_3

    goto :goto_3

    .line 890
    :cond_3
    new-instance v1, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v1, v4}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 895
    :cond_4
    :goto_3
    iget v5, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->src_offset:I

    int-to-long v5, v5

    iget v12, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->src_length:I

    move/from16 v24, v2

    .end local v2    # "i":I
    .local v24, "i":I
    int-to-long v1, v12

    add-long/2addr v5, v1

    move/from16 v12, p2

    int-to-long v1, v12

    cmp-long v1, v5, v1

    if-gtz v1, :cond_e

    .line 899
    iget v1, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->tag:I

    const v2, 0x68686561

    if-ne v1, v2, :cond_5

    .line 900
    iget v1, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->src_offset:I

    add-int v1, p1, v1

    iget v2, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->src_length:I

    invoke-static {v8, v1, v2}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->readNumHMetrics([BII)S

    move-result v1

    iput-short v1, v14, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;->num_hmetrics:S

    .line 903
    :cond_5
    const/16 v25, 0x0

    .line 904
    .local v25, "checksum":I
    if-nez v23, :cond_c

    .line 905
    iget v1, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->flags:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_8

    .line 906
    iget v1, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->tag:I

    const v2, 0x68656164

    if-ne v1, v2, :cond_7

    .line 907
    iget v1, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->src_length:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_6

    .line 911
    iget v1, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->src_offset:I

    add-int v1, p1, v1

    const/16 v5, 0x8

    add-int/2addr v1, v5

    const/4 v6, 0x0

    invoke-static {v8, v1, v6}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU32([BII)I

    goto :goto_4

    .line 908
    :cond_6
    new-instance v1, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v1, v4}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 906
    :cond_7
    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 913
    :goto_4
    iput v3, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->dst_offset:I

    .line 914
    iget v1, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->src_offset:I

    add-int v1, p1, v1

    iget v2, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->src_length:I

    invoke-static {v8, v1, v2}, Lcom/itextpdf/io/font/woff2/Woff2Common;->computeULongSum([BII)I

    move-result v1

    .line 915
    .end local v25    # "checksum":I
    .local v1, "checksum":I
    iget v2, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->src_offset:I

    add-int v2, p1, v2

    iget v5, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->src_length:I

    invoke-interface {v11, v8, v2, v5}, Lcom/itextpdf/io/font/woff2/Woff2Out;->write([BII)V

    move v8, v3

    move-object v10, v4

    move-object/from16 v26, v7

    move/from16 v21, v24

    const v12, 0x6c6f6361

    const v20, 0x676c7966

    move-object v7, v0

    goto/16 :goto_5

    .line 917
    .end local v1    # "checksum":I
    .restart local v25    # "checksum":I
    :cond_8
    const/4 v6, 0x0

    iget v1, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->tag:I

    const v5, 0x676c7966

    if-ne v1, v5, :cond_9

    .line 918
    iput v3, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->dst_offset:I

    .line 920
    const v2, 0x6c6f6361

    invoke-static {v15, v2}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->findTable(Ljava/util/ArrayList;I)Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    move-result-object v18

    .line 922
    .local v18, "loca_table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    iget v1, v0, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->src_offset:I

    add-int v1, p1, v1

    move-object/from16 v19, v0

    .end local v0    # "table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    .local v19, "table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    move-object/from16 v0, p0

    move/from16 v21, v24

    move/from16 v24, v2

    .end local v24    # "i":I
    .local v21, "i":I
    move-object/from16 v2, v19

    move v8, v3

    .end local v3    # "dest_offset":I
    .local v8, "dest_offset":I
    move/from16 v3, v25

    move-object v10, v4

    move-object/from16 v4, v18

    move/from16 v22, v5

    move/from16 v12, v24

    move/from16 v5, v17

    move-object v6, v14

    move-object/from16 v26, v7

    move/from16 v20, v22

    .end local v7    # "checksum_key":Lcom/itextpdf/io/font/woff2/Woff2Dec$TableChecksumInfo;
    .local v26, "checksum_key":Lcom/itextpdf/io/font/woff2/Woff2Dec$TableChecksumInfo;
    move-object/from16 v7, p6

    invoke-static/range {v0 .. v7}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->reconstructGlyf([BILcom/itextpdf/io/font/woff2/Woff2Common$Table;ILcom/itextpdf/io/font/woff2/Woff2Common$Table;ILcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;Lcom/itextpdf/io/font/woff2/Woff2Out;)Lcom/itextpdf/io/font/woff2/Woff2Dec$Checksums;

    move-result-object v0

    .line 923
    .local v0, "resultChecksum":Lcom/itextpdf/io/font/woff2/Woff2Dec$Checksums;
    iget v1, v0, Lcom/itextpdf/io/font/woff2/Woff2Dec$Checksums;->glyph_checksum:I

    .line 924
    .end local v25    # "checksum":I
    .restart local v1    # "checksum":I
    iget v0, v0, Lcom/itextpdf/io/font/woff2/Woff2Dec$Checksums;->loca_checksum:I

    .line 925
    .end local v17    # "loca_checksum":I
    .end local v18    # "loca_table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    .local v0, "loca_checksum":I
    move/from16 v17, v0

    move-object/from16 v7, v19

    goto :goto_5

    .end local v1    # "checksum":I
    .end local v8    # "dest_offset":I
    .end local v19    # "table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    .end local v21    # "i":I
    .end local v26    # "checksum_key":Lcom/itextpdf/io/font/woff2/Woff2Dec$TableChecksumInfo;
    .local v0, "table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    .restart local v3    # "dest_offset":I
    .restart local v7    # "checksum_key":Lcom/itextpdf/io/font/woff2/Woff2Dec$TableChecksumInfo;
    .restart local v17    # "loca_checksum":I
    .restart local v24    # "i":I
    .restart local v25    # "checksum":I
    :cond_9
    move-object/from16 v19, v0

    move v8, v3

    move-object v10, v4

    move/from16 v20, v5

    move-object/from16 v26, v7

    move/from16 v21, v24

    const v12, 0x6c6f6361

    .end local v0    # "table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    .end local v3    # "dest_offset":I
    .end local v7    # "checksum_key":Lcom/itextpdf/io/font/woff2/Woff2Dec$TableChecksumInfo;
    .end local v24    # "i":I
    .restart local v8    # "dest_offset":I
    .restart local v19    # "table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    .restart local v21    # "i":I
    .restart local v26    # "checksum_key":Lcom/itextpdf/io/font/woff2/Woff2Dec$TableChecksumInfo;
    move-object/from16 v7, v19

    .end local v19    # "table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    .local v7, "table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    iget v0, v7, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->tag:I

    if-ne v0, v12, :cond_a

    .line 927
    move/from16 v1, v17

    .end local v25    # "checksum":I
    .restart local v1    # "checksum":I
    goto :goto_5

    .line 928
    .end local v1    # "checksum":I
    .restart local v25    # "checksum":I
    :cond_a
    iget v0, v7, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->tag:I

    const v1, 0x686d7478

    if-ne v0, v1, :cond_b

    .line 929
    iput v8, v7, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->dst_offset:I

    .line 931
    iget v0, v7, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->src_offset:I

    add-int v1, p1, v0

    iget v2, v7, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->src_length:I

    iget-short v0, v14, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;->num_glyphs:S

    .line 933
    invoke-static {v0}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU16(S)I

    move-result v3

    iget-short v0, v14, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;->num_hmetrics:S

    invoke-static {v0}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU16(S)I

    move-result v4

    iget-object v5, v14, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;->x_mins:[S

    .line 931
    move-object/from16 v0, p0

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->reconstructTransformedHmtx([BIIII[SLcom/itextpdf/io/font/woff2/Woff2Out;)I

    move-result v1

    .line 939
    .end local v25    # "checksum":I
    .restart local v1    # "checksum":I
    :goto_5
    iget-object v0, v9, Lcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;->checksums:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v26

    .end local v26    # "checksum_key":Lcom/itextpdf/io/font/woff2/Woff2Dec$TableChecksumInfo;
    .local v3, "checksum_key":Lcom/itextpdf/io/font/woff2/Woff2Dec$TableChecksumInfo;
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 936
    .end local v1    # "checksum":I
    .end local v3    # "checksum_key":Lcom/itextpdf/io/font/woff2/Woff2Dec$TableChecksumInfo;
    .restart local v25    # "checksum":I
    .restart local v26    # "checksum_key":Lcom/itextpdf/io/font/woff2/Woff2Dec$TableChecksumInfo;
    :cond_b
    new-instance v0, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v0, v10}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 941
    .end local v8    # "dest_offset":I
    .end local v21    # "i":I
    .end local v26    # "checksum_key":Lcom/itextpdf/io/font/woff2/Woff2Dec$TableChecksumInfo;
    .restart local v0    # "table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    .local v3, "dest_offset":I
    .local v7, "checksum_key":Lcom/itextpdf/io/font/woff2/Woff2Dec$TableChecksumInfo;
    .restart local v24    # "i":I
    :cond_c
    move v8, v3

    move-object v10, v4

    move-object v3, v7

    move/from16 v21, v24

    const v12, 0x6c6f6361

    const v20, 0x676c7966

    move-object v7, v0

    .end local v0    # "table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    .end local v24    # "i":I
    .local v3, "checksum_key":Lcom/itextpdf/io/font/woff2/Woff2Dec$TableChecksumInfo;
    .local v7, "table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    .restart local v8    # "dest_offset":I
    .restart local v21    # "i":I
    iget-object v0, v9, Lcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;->checksums:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 943
    .end local v25    # "checksum":I
    .restart local v1    # "checksum":I
    :goto_6
    add-int v16, v16, v1

    .line 946
    const/4 v0, 0x0

    invoke-static {v13, v0, v1}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU32([BII)I

    .line 947
    iget v2, v7, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->dst_offset:I

    const/4 v4, 0x4

    invoke-static {v13, v4, v2}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU32([BII)I

    .line 948
    iget v2, v7, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->dst_length:I

    const/16 v5, 0x8

    invoke-static {v13, v5, v2}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU32([BII)I

    .line 949
    iget-object v2, v14, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;->table_entry_by_tag:Ljava/util/Map;

    iget v5, v7, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->tag:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v4

    const/16 v4, 0xc

    invoke-interface {v11, v13, v0, v2, v4}, Lcom/itextpdf/io/font/woff2/Woff2Out;->write([BIII)V

    .line 952
    invoke-static {v13, v0, v4}, Lcom/itextpdf/io/font/woff2/Woff2Common;->computeULongSum([BII)I

    move-result v2

    add-int v16, v16, v2

    .line 954
    invoke-static/range {p6 .. p6}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->pad4(Lcom/itextpdf/io/font/woff2/Woff2Out;)V

    .line 956
    iget v2, v7, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->dst_offset:I

    int-to-long v4, v2

    iget v2, v7, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->dst_length:I

    move-object v6, v13

    .end local v13    # "table_entry":[B
    .local v6, "table_entry":[B
    int-to-long v12, v2

    add-long/2addr v4, v12

    invoke-interface/range {p6 .. p6}, Lcom/itextpdf/io/font/woff2/Woff2Out;->size()I

    move-result v2

    int-to-long v12, v2

    cmp-long v2, v4, v12

    if-gtz v2, :cond_d

    .line 959
    invoke-interface/range {p6 .. p6}, Lcom/itextpdf/io/font/woff2/Woff2Out;->size()I

    move-result v3

    .line 884
    .end local v1    # "checksum":I
    .end local v7    # "table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    .end local v8    # "dest_offset":I
    .end local v23    # "reused":Z
    .local v3, "dest_offset":I
    add-int/lit8 v2, v21, 0x1

    move-object/from16 v8, p0

    move-object v13, v6

    move-object v4, v10

    move/from16 v7, v20

    const v5, 0x6c6f6361

    const/16 v12, 0xc

    move-object/from16 v10, p4

    .end local v21    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_2

    .line 957
    .end local v2    # "i":I
    .restart local v1    # "checksum":I
    .local v3, "checksum_key":Lcom/itextpdf/io/font/woff2/Woff2Dec$TableChecksumInfo;
    .restart local v7    # "table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    .restart local v8    # "dest_offset":I
    .restart local v21    # "i":I
    .restart local v23    # "reused":Z
    :cond_d
    new-instance v0, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v0, v10}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 896
    .end local v1    # "checksum":I
    .end local v6    # "table_entry":[B
    .end local v8    # "dest_offset":I
    .end local v21    # "i":I
    .restart local v0    # "table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    .local v3, "dest_offset":I
    .local v7, "checksum_key":Lcom/itextpdf/io/font/woff2/Woff2Dec$TableChecksumInfo;
    .restart local v13    # "table_entry":[B
    .restart local v24    # "i":I
    :cond_e
    move v8, v3

    move-object v10, v4

    move-object v3, v7

    move-object v7, v0

    .end local v0    # "table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    .local v3, "checksum_key":Lcom/itextpdf/io/font/woff2/Woff2Dec$TableChecksumInfo;
    .local v7, "table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    .restart local v8    # "dest_offset":I
    new-instance v0, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v0, v10}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 884
    .end local v7    # "table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    .end local v8    # "dest_offset":I
    .end local v23    # "reused":Z
    .end local v24    # "i":I
    .restart local v2    # "i":I
    .local v3, "dest_offset":I
    :cond_f
    move/from16 v21, v2

    move v8, v3

    move-object v10, v4

    move-object v6, v13

    const/4 v0, 0x0

    const/4 v4, 0x4

    .line 963
    .end local v2    # "i":I
    .end local v3    # "dest_offset":I
    .end local v13    # "table_entry":[B
    .restart local v6    # "table_entry":[B
    .restart local v8    # "dest_offset":I
    const v1, 0x68656164

    invoke-static {v15, v1}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->findTable(Ljava/util/ArrayList;I)Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    move-result-object v1

    .line 964
    .local v1, "head_table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    if-eqz v1, :cond_11

    .line 965
    iget v2, v1, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->dst_length:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_10

    .line 968
    new-array v2, v4, [B

    .line 969
    .local v2, "checksum_adjustment":[B
    const v3, -0x4e4f5046

    sub-int v3, v3, v16

    invoke-static {v2, v0, v3}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU32([BII)I

    .line 970
    iget v3, v1, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->dst_offset:I

    const/16 v5, 0x8

    add-int/2addr v3, v5

    invoke-interface {v11, v2, v0, v3, v4}, Lcom/itextpdf/io/font/woff2/Woff2Out;->write([BIII)V

    goto :goto_7

    .line 966
    .end local v2    # "checksum_adjustment":[B
    :cond_10
    new-instance v0, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v0, v10}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 972
    :cond_11
    :goto_7
    return-void

    .line 875
    .end local v1    # "head_table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    .end local v6    # "table_entry":[B
    .end local v8    # "dest_offset":I
    .end local v16    # "font_checksum":I
    .end local v17    # "loca_checksum":I
    .local v0, "dest_offset":I
    .restart local v13    # "table_entry":[B
    :cond_12
    move-object v10, v4

    new-instance v1, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v1, v10}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static reconstructGlyf([BILcom/itextpdf/io/font/woff2/Woff2Common$Table;ILcom/itextpdf/io/font/woff2/Woff2Common$Table;ILcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;Lcom/itextpdf/io/font/woff2/Woff2Out;)Lcom/itextpdf/io/font/woff2/Woff2Dec$Checksums;
    .locals 46
    .param p0, "data"    # [B
    .param p1, "data_offset"    # I
    .param p2, "glyf_table"    # Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    .param p3, "glyph_checksum"    # I
    .param p4, "loca_table"    # Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    .param p5, "loca_checksum"    # I
    .param p6, "info"    # Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;
    .param p7, "out"    # Lcom/itextpdf/io/font/woff2/Woff2Out;

    .line 431
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    const/4 v12, 0x7

    .line 432
    .local v12, "kNumSubStreams":I
    new-instance v0, Lcom/itextpdf/io/font/woff2/Buffer;

    iget v1, v8, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->transform_length:I

    invoke-direct {v0, v6, v7, v1}, Lcom/itextpdf/io/font/woff2/Buffer;-><init>([BII)V

    move-object v13, v0

    .line 434
    .local v13, "file":Lcom/itextpdf/io/font/woff2/Buffer;
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v14, v0

    .line 435
    .local v14, "substreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;>;"
    invoke-interface/range {p7 .. p7}, Lcom/itextpdf/io/font/woff2/Woff2Out;->size()I

    move-result v15

    .line 438
    .local v15, "glyf_start":I
    invoke-virtual {v13}, Lcom/itextpdf/io/font/woff2/Buffer;->readInt()I

    move-result v16

    .line 439
    .local v16, "version":I
    invoke-virtual {v13}, Lcom/itextpdf/io/font/woff2/Buffer;->readShort()S

    move-result v0

    iput-short v0, v10, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;->num_glyphs:S

    .line 440
    invoke-virtual {v13}, Lcom/itextpdf/io/font/woff2/Buffer;->readShort()S

    move-result v0

    iput-short v0, v10, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;->index_format:S

    .line 442
    const/16 v0, 0x24

    .line 443
    .local v0, "offset":I
    iget v2, v8, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->transform_length:I

    const-string v5, "Reconstructing woff2 glyf table exception"

    if-gt v0, v2, :cond_14

    .line 447
    const/4 v2, 0x0

    move/from16 v17, v0

    .end local v0    # "offset":I
    .local v2, "i":I
    .local v17, "offset":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 449
    invoke-virtual {v13}, Lcom/itextpdf/io/font/woff2/Buffer;->readInt()I

    move-result v0

    .line 450
    .local v0, "substream_size":I
    iget v3, v8, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->transform_length:I

    sub-int v3, v3, v17

    if-gt v0, v3, :cond_0

    .line 453
    new-instance v3, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;

    add-int v4, v7, v17

    invoke-direct {v3, v4, v0}, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;-><init>(II)V

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    add-int v17, v17, v0

    .line 447
    .end local v0    # "substream_size":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 451
    .restart local v0    # "substream_size":I
    :cond_0
    new-instance v1, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v1, v5}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 456
    .end local v0    # "substream_size":I
    .end local v2    # "i":I
    :cond_1
    new-instance v0, Lcom/itextpdf/io/font/woff2/Buffer;

    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;

    iget v1, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;->offset:I

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;

    iget v2, v2, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;->length:I

    invoke-direct {v0, v6, v1, v2}, Lcom/itextpdf/io/font/woff2/Buffer;-><init>([BII)V

    move-object/from16 v18, v0

    .line 457
    .local v18, "n_contour_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    new-instance v0, Lcom/itextpdf/io/font/woff2/Buffer;

    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;

    iget v2, v2, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;->offset:I

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;

    iget v3, v3, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;->length:I

    invoke-direct {v0, v6, v2, v3}, Lcom/itextpdf/io/font/woff2/Buffer;-><init>([BII)V

    move-object/from16 v19, v0

    .line 458
    .local v19, "n_points_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    new-instance v0, Lcom/itextpdf/io/font/woff2/Buffer;

    const/4 v3, 0x2

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;

    iget v2, v2, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;->offset:I

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v3, v20

    check-cast v3, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;

    iget v3, v3, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;->length:I

    invoke-direct {v0, v6, v2, v3}, Lcom/itextpdf/io/font/woff2/Buffer;-><init>([BII)V

    move-object v3, v0

    .line 459
    .local v3, "flag_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    new-instance v0, Lcom/itextpdf/io/font/woff2/Buffer;

    const/4 v2, 0x3

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v4, v20

    check-cast v4, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;

    iget v4, v4, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;->offset:I

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;

    iget v2, v2, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;->length:I

    invoke-direct {v0, v6, v4, v2}, Lcom/itextpdf/io/font/woff2/Buffer;-><init>([BII)V

    move-object v4, v0

    .line 460
    .local v4, "glyph_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    new-instance v0, Lcom/itextpdf/io/font/woff2/Buffer;

    const/4 v2, 0x4

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v1, v20

    check-cast v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;

    iget v1, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;->offset:I

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;

    iget v2, v2, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;->length:I

    invoke-direct {v0, v6, v1, v2}, Lcom/itextpdf/io/font/woff2/Buffer;-><init>([BII)V

    move-object v2, v0

    .line 461
    .local v2, "composite_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    new-instance v0, Lcom/itextpdf/io/font/woff2/Buffer;

    const/4 v1, 0x5

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v7, v20

    check-cast v7, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;

    iget v7, v7, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;->offset:I

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v1, v20

    check-cast v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;

    iget v1, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;->length:I

    invoke-direct {v0, v6, v7, v1}, Lcom/itextpdf/io/font/woff2/Buffer;-><init>([BII)V

    move-object v7, v0

    .line 462
    .local v7, "bbox_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    new-instance v0, Lcom/itextpdf/io/font/woff2/Buffer;

    const/4 v1, 0x6

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move/from16 v25, v12

    .end local v12    # "kNumSubStreams":I
    .local v25, "kNumSubStreams":I
    move-object/from16 v12, v20

    check-cast v12, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;

    iget v12, v12, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;->offset:I

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;

    iget v1, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;->length:I

    invoke-direct {v0, v6, v12, v1}, Lcom/itextpdf/io/font/woff2/Buffer;-><init>([BII)V

    move-object v12, v0

    .line 464
    .local v12, "instruction_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    iget-short v0, v10, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;->num_glyphs:S

    invoke-static {v0}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU16(S)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v1, v0, [I

    .line 465
    .local v1, "loca_values":[I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 466
    .local v0, "n_points_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v20, v1

    move-object/from16 v23, v13

    const/4 v1, 0x0

    .end local v1    # "loca_values":[I
    .end local v13    # "file":Lcom/itextpdf/io/font/woff2/Buffer;
    .local v20, "loca_values":[I
    .local v23, "file":Lcom/itextpdf/io/font/woff2/Buffer;
    new-array v13, v1, [Lcom/itextpdf/io/font/woff2/Woff2Common$Point;

    .line 467
    .local v13, "points":[Lcom/itextpdf/io/font/woff2/Woff2Common$Point;
    const/4 v1, 0x0

    .line 468
    .local v1, "points_size":I
    move-object/from16 v26, v13

    .end local v13    # "points":[Lcom/itextpdf/io/font/woff2/Woff2Common$Point;
    .local v26, "points":[Lcom/itextpdf/io/font/woff2/Woff2Common$Point;
    invoke-virtual {v7}, Lcom/itextpdf/io/font/woff2/Buffer;->getInitialOffset()I

    move-result v13

    .line 470
    .local v13, "bbox_bitmap_offset":I
    move/from16 v27, v1

    .end local v1    # "points_size":I
    .local v27, "points_size":I
    iget-short v1, v10, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;->num_glyphs:S

    invoke-static {v1}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU16(S)I

    move-result v1

    add-int/lit8 v1, v1, 0x1f

    const/16 v24, 0x5

    shr-int/lit8 v1, v1, 0x5

    const/16 v21, 0x2

    shl-int/lit8 v1, v1, 0x2

    .line 471
    .local v1, "bitmap_length":I
    invoke-virtual {v7, v1}, Lcom/itextpdf/io/font/woff2/Buffer;->skip(I)V

    .line 474
    move-object/from16 v24, v14

    .end local v14    # "substreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;>;"
    .local v24, "substreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;>;"
    const/16 v14, 0x1400

    .line 475
    .local v14, "glyph_buf_size":I
    new-array v9, v14, [B

    .line 477
    .local v9, "glyph_buf":[B
    move-object/from16 v28, v9

    .end local v9    # "glyph_buf":[B
    .local v28, "glyph_buf":[B
    iget-short v9, v10, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;->num_glyphs:S

    invoke-static {v9}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU16(S)I

    move-result v9

    new-array v9, v9, [S

    iput-object v9, v10, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;->x_mins:[S

    .line 478
    const/4 v9, 0x0

    move v8, v9

    move v9, v14

    move/from16 v14, v27

    .end local v27    # "points_size":I
    .local v8, "i":I
    .local v9, "glyph_buf_size":I
    .local v14, "points_size":I
    :goto_1
    iget-short v11, v10, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;->num_glyphs:S

    invoke-static {v11}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU16(S)I

    move-result v11

    if-ge v8, v11, :cond_13

    .line 479
    const/4 v11, 0x0

    .line 480
    .local v11, "glyph_size":I
    const/16 v27, 0x0

    .line 481
    .local v27, "n_contours":I
    const/16 v29, 0x0

    .line 482
    .local v29, "have_bbox":Z
    new-array v10, v1, [B

    .line 483
    .local v10, "bitmap":[B
    move/from16 v30, v15

    const/4 v15, 0x0

    .end local v15    # "glyf_start":I
    .local v30, "glyf_start":I
    invoke-static {v6, v13, v10, v15, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 484
    shr-int/lit8 v22, v8, 0x3

    add-int v22, v13, v22

    aget-byte v22, v6, v22

    const/16 v31, 0x80

    and-int/lit8 v32, v8, 0x7

    shr-int v31, v31, v32

    and-int v22, v22, v31

    if-eqz v22, :cond_2

    .line 485
    const/16 v29, 0x1

    .line 487
    :cond_2
    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/io/font/woff2/Buffer;->readShort()S

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU16(S)I

    move-result v15

    .line 489
    .end local v27    # "n_contours":I
    .local v15, "n_contours":I
    move/from16 v22, v1

    .end local v1    # "bitmap_length":I
    .local v22, "bitmap_length":I
    const v1, 0xffff

    if-ne v15, v1, :cond_7

    .line 491
    const/4 v1, 0x0

    .line 492
    .local v1, "have_instructions":Z
    const/16 v27, 0x0

    .line 493
    .local v27, "instruction_size":I
    if-eqz v29, :cond_6

    .line 499
    invoke-static {v2}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->sizeOfComposite(Lcom/itextpdf/io/font/woff2/Buffer;)Lcom/itextpdf/io/font/woff2/Woff2Dec$CompositeGlyphInfo;

    move-result-object v6

    .line 500
    .local v6, "compositeGlyphInfo":Lcom/itextpdf/io/font/woff2/Woff2Dec$CompositeGlyphInfo;
    iget-boolean v1, v6, Lcom/itextpdf/io/font/woff2/Woff2Dec$CompositeGlyphInfo;->have_instructions:Z

    .line 501
    move-object/from16 v37, v10

    .end local v10    # "bitmap":[B
    .local v37, "bitmap":[B
    iget v10, v6, Lcom/itextpdf/io/font/woff2/Woff2Dec$CompositeGlyphInfo;->size:I

    .line 502
    .local v10, "composite_size":I
    if-eqz v1, :cond_3

    .line 503
    invoke-static {v4}, Lcom/itextpdf/io/font/woff2/VariableLength;->read255UShort(Lcom/itextpdf/io/font/woff2/Buffer;)I

    move-result v27

    move-object/from16 v33, v6

    move/from16 v6, v27

    goto :goto_2

    .line 502
    :cond_3
    move-object/from16 v33, v6

    move/from16 v6, v27

    .line 506
    .end local v27    # "instruction_size":I
    .local v6, "instruction_size":I
    .local v33, "compositeGlyphInfo":Lcom/itextpdf/io/font/woff2/Woff2Dec$CompositeGlyphInfo;
    :goto_2
    add-int/lit8 v27, v10, 0xc

    move/from16 v38, v13

    .end local v13    # "bbox_bitmap_offset":I
    .local v38, "bbox_bitmap_offset":I
    add-int v13, v27, v6

    .line 507
    .local v13, "size_needed":I
    if-ge v9, v13, :cond_4

    .line 508
    move/from16 v39, v8

    .end local v8    # "i":I
    .local v39, "i":I
    new-array v8, v13, [B

    .line 509
    .end local v28    # "glyph_buf":[B
    .local v8, "glyph_buf":[B
    move v9, v13

    goto :goto_3

    .line 507
    .end local v39    # "i":I
    .local v8, "i":I
    .restart local v28    # "glyph_buf":[B
    :cond_4
    move/from16 v39, v8

    .end local v8    # "i":I
    .restart local v39    # "i":I
    move-object/from16 v8, v28

    .line 512
    .end local v28    # "glyph_buf":[B
    .local v8, "glyph_buf":[B
    :goto_3
    invoke-static {v8, v11, v15}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU16([BII)I

    move-result v11

    .line 513
    move/from16 v27, v9

    const/16 v9, 0x8

    .end local v9    # "glyph_buf_size":I
    .local v27, "glyph_buf_size":I
    invoke-virtual {v7, v8, v11, v9}, Lcom/itextpdf/io/font/woff2/Buffer;->read([BII)V

    .line 514
    add-int/2addr v11, v9

    .line 516
    invoke-virtual {v2, v8, v11, v10}, Lcom/itextpdf/io/font/woff2/Buffer;->read([BII)V

    .line 517
    add-int/2addr v11, v10

    .line 518
    if-eqz v1, :cond_5

    .line 519
    invoke-static {v8, v11, v6}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU16([BII)I

    move-result v9

    .line 520
    .end local v11    # "glyph_size":I
    .local v9, "glyph_size":I
    invoke-virtual {v12, v8, v9, v6}, Lcom/itextpdf/io/font/woff2/Buffer;->read([BII)V

    .line 521
    add-int/2addr v9, v6

    move v11, v9

    .line 523
    .end local v1    # "have_instructions":Z
    .end local v6    # "instruction_size":I
    .end local v9    # "glyph_size":I
    .end local v10    # "composite_size":I
    .end local v13    # "size_needed":I
    .end local v33    # "compositeGlyphInfo":Lcom/itextpdf/io/font/woff2/Woff2Dec$CompositeGlyphInfo;
    .restart local v11    # "glyph_size":I
    :cond_5
    move-object/from16 v41, v2

    move-object v10, v3

    move-object v13, v4

    move-object v2, v12

    move-object/from16 v40, v20

    move/from16 v20, v22

    move/from16 v9, v27

    move-object v12, v5

    move-object/from16 v5, v26

    move/from16 v26, v14

    move-object v14, v0

    goto/16 :goto_9

    .line 495
    .end local v37    # "bitmap":[B
    .end local v38    # "bbox_bitmap_offset":I
    .end local v39    # "i":I
    .restart local v1    # "have_instructions":Z
    .local v8, "i":I
    .local v9, "glyph_buf_size":I
    .local v10, "bitmap":[B
    .local v13, "bbox_bitmap_offset":I
    .local v27, "instruction_size":I
    .restart local v28    # "glyph_buf":[B
    :cond_6
    new-instance v6, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v6, v5}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 523
    .end local v1    # "have_instructions":Z
    .end local v27    # "instruction_size":I
    :cond_7
    move/from16 v39, v8

    move-object/from16 v37, v10

    move/from16 v38, v13

    .end local v8    # "i":I
    .end local v10    # "bitmap":[B
    .end local v13    # "bbox_bitmap_offset":I
    .restart local v37    # "bitmap":[B
    .restart local v38    # "bbox_bitmap_offset":I
    .restart local v39    # "i":I
    if-lez v15, :cond_11

    .line 525
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 526
    const/4 v1, 0x0

    .line 532
    .local v1, "total_n_points":I
    const/4 v6, 0x0

    move/from16 v45, v6

    move v6, v1

    move/from16 v1, v45

    .local v1, "j":I
    .local v6, "total_n_points":I
    :goto_4
    if-ge v1, v15, :cond_9

    .line 533
    invoke-static/range {v19 .. v19}, Lcom/itextpdf/io/font/woff2/VariableLength;->read255UShort(Lcom/itextpdf/io/font/woff2/Buffer;)I

    move-result v8

    .line 534
    .local v8, "n_points_contour":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    add-int v10, v6, v8

    if-lt v10, v6, :cond_8

    .line 538
    add-int/2addr v6, v8

    .line 532
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 536
    :cond_8
    new-instance v10, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v10, v5}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 540
    .end local v1    # "j":I
    .end local v8    # "n_points_contour":I
    :cond_9
    move v8, v6

    .line 541
    .local v8, "flag_size":I
    invoke-virtual {v3}, Lcom/itextpdf/io/font/woff2/Buffer;->getLength()I

    move-result v1

    invoke-virtual {v3}, Lcom/itextpdf/io/font/woff2/Buffer;->getOffset()I

    move-result v10

    sub-int/2addr v1, v10

    if-gt v8, v1, :cond_10

    .line 544
    invoke-virtual {v3}, Lcom/itextpdf/io/font/woff2/Buffer;->getInitialOffset()I

    move-result v1

    invoke-virtual {v3}, Lcom/itextpdf/io/font/woff2/Buffer;->getOffset()I

    move-result v10

    add-int/2addr v10, v1

    .line 545
    .local v10, "flags_buf_offset":I
    invoke-virtual {v4}, Lcom/itextpdf/io/font/woff2/Buffer;->getInitialOffset()I

    move-result v1

    invoke-virtual {v4}, Lcom/itextpdf/io/font/woff2/Buffer;->getOffset()I

    move-result v13

    add-int/2addr v13, v1

    .line 546
    .local v13, "triplet_buf_offset":I
    invoke-virtual {v4}, Lcom/itextpdf/io/font/woff2/Buffer;->getLength()I

    move-result v1

    invoke-virtual {v4}, Lcom/itextpdf/io/font/woff2/Buffer;->getOffset()I

    move-result v27

    sub-int v27, v1, v27

    .line 547
    .local v27, "triplet_size":I
    const/16 v33, 0x0

    .line 548
    .local v33, "triplet_bytes_consumed":I
    if-ge v14, v6, :cond_a

    .line 549
    move v14, v6

    .line 550
    new-array v1, v14, [Lcom/itextpdf/io/font/woff2/Woff2Common$Point;

    .end local v26    # "points":[Lcom/itextpdf/io/font/woff2/Woff2Common$Point;
    .local v1, "points":[Lcom/itextpdf/io/font/woff2/Woff2Common$Point;
    goto :goto_5

    .line 548
    .end local v1    # "points":[Lcom/itextpdf/io/font/woff2/Woff2Common$Point;
    .restart local v26    # "points":[Lcom/itextpdf/io/font/woff2/Woff2Common$Point;
    :cond_a
    move-object/from16 v1, v26

    .line 552
    .end local v26    # "points":[Lcom/itextpdf/io/font/woff2/Woff2Common$Point;
    .restart local v1    # "points":[Lcom/itextpdf/io/font/woff2/Woff2Common$Point;
    :goto_5
    move/from16 v26, v14

    move-object v14, v0

    .end local v0    # "n_points_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v14, "n_points_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v26, "points_size":I
    move-object/from16 v0, p0

    move-object/from16 v40, v20

    move/from16 v20, v22

    move-object/from16 v22, v1

    .end local v1    # "points":[Lcom/itextpdf/io/font/woff2/Woff2Common$Point;
    .local v20, "bitmap_length":I
    .local v22, "points":[Lcom/itextpdf/io/font/woff2/Woff2Common$Point;
    .local v40, "loca_values":[I
    move v1, v10

    move-object/from16 v41, v2

    .end local v2    # "composite_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .local v41, "composite_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    move v2, v13

    move/from16 v42, v10

    move-object v10, v3

    move/from16 v45, v21

    move/from16 v21, v13

    move/from16 v13, v45

    .end local v3    # "flag_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .end local v13    # "triplet_buf_offset":I
    .local v10, "flag_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .local v21, "triplet_buf_offset":I
    .local v42, "flags_buf_offset":I
    move/from16 v3, v27

    move-object v13, v4

    .end local v4    # "glyph_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .local v13, "glyph_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    move v4, v6

    move-object/from16 v43, v12

    move-object v12, v5

    .end local v12    # "instruction_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .local v43, "instruction_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    move-object/from16 v5, v22

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->tripletDecode([BIIII[Lcom/itextpdf/io/font/woff2/Woff2Common$Point;)I

    move-result v0

    .line 555
    .end local v33    # "triplet_bytes_consumed":I
    .local v0, "triplet_bytes_consumed":I
    invoke-virtual {v10, v8}, Lcom/itextpdf/io/font/woff2/Buffer;->skip(I)V

    .line 556
    invoke-virtual {v13, v0}, Lcom/itextpdf/io/font/woff2/Buffer;->skip(I)V

    .line 558
    invoke-static {v13}, Lcom/itextpdf/io/font/woff2/VariableLength;->read255UShort(Lcom/itextpdf/io/font/woff2/Buffer;)I

    move-result v1

    .line 560
    .local v1, "instruction_size":I
    const/high16 v2, 0x8000000

    if-ge v6, v2, :cond_f

    const/high16 v2, 0x40000000    # 2.0f

    if-ge v1, v2, :cond_f

    .line 563
    mul-int/lit8 v2, v15, 0x2

    add-int/lit8 v2, v2, 0xc

    mul-int/lit8 v3, v6, 0x5

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    .line 565
    .local v2, "size_needed":I
    if-ge v9, v2, :cond_b

    .line 566
    new-array v3, v2, [B

    .line 567
    .end local v28    # "glyph_buf":[B
    .local v3, "glyph_buf":[B
    move v9, v2

    goto :goto_6

    .line 565
    .end local v3    # "glyph_buf":[B
    .restart local v28    # "glyph_buf":[B
    :cond_b
    move-object/from16 v3, v28

    .line 570
    .end local v28    # "glyph_buf":[B
    .restart local v3    # "glyph_buf":[B
    :goto_6
    invoke-static {v3, v11, v15}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU16([BII)I

    move-result v4

    .line 571
    .end local v11    # "glyph_size":I
    .local v4, "glyph_size":I
    if-eqz v29, :cond_c

    .line 572
    const/16 v5, 0x8

    invoke-virtual {v7, v3, v4, v5}, Lcom/itextpdf/io/font/woff2/Buffer;->read([BII)V

    move-object/from16 v5, v22

    goto :goto_7

    .line 574
    :cond_c
    move-object/from16 v5, v22

    .end local v22    # "points":[Lcom/itextpdf/io/font/woff2/Woff2Common$Point;
    .local v5, "points":[Lcom/itextpdf/io/font/woff2/Woff2Common$Point;
    invoke-static {v6, v5, v3}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->computeBbox(I[Lcom/itextpdf/io/font/woff2/Woff2Common$Point;[B)V

    .line 576
    :goto_7
    const/16 v4, 0xa

    .line 577
    const/4 v11, -0x1

    .line 578
    .local v11, "end_point":I
    const/16 v22, 0x0

    move/from16 v45, v22

    move/from16 v22, v0

    move/from16 v0, v45

    .local v0, "contour_ix":I
    .local v22, "triplet_bytes_consumed":I
    :goto_8
    if-ge v0, v15, :cond_e

    .line 579
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    add-int v11, v11, v28

    .line 580
    move/from16 v44, v2

    .end local v2    # "size_needed":I
    .local v44, "size_needed":I
    const/high16 v2, 0x10000

    if-ge v11, v2, :cond_d

    .line 583
    invoke-static {v3, v4, v11}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU16([BII)I

    move-result v4

    .line 578
    add-int/lit8 v0, v0, 0x1

    move/from16 v2, v44

    goto :goto_8

    .line 581
    :cond_d
    new-instance v2, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v2, v12}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 578
    .end local v44    # "size_needed":I
    .restart local v2    # "size_needed":I
    :cond_e
    move/from16 v44, v2

    .line 586
    .end local v0    # "contour_ix":I
    .end local v2    # "size_needed":I
    .restart local v44    # "size_needed":I
    invoke-static {v3, v4, v1}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU16([BII)I

    move-result v0

    .line 587
    .end local v4    # "glyph_size":I
    .local v0, "glyph_size":I
    move-object/from16 v2, v43

    .end local v43    # "instruction_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .local v2, "instruction_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    invoke-virtual {v2, v3, v0, v1}, Lcom/itextpdf/io/font/woff2/Buffer;->read([BII)V

    .line 588
    add-int/2addr v0, v1

    .line 590
    move/from16 v31, v6

    move-object/from16 v32, v5

    move/from16 v33, v15

    move/from16 v34, v1

    move-object/from16 v35, v3

    move/from16 v36, v9

    invoke-static/range {v31 .. v36}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->storePoints(I[Lcom/itextpdf/io/font/woff2/Woff2Common$Point;II[BI)I

    move-result v0

    move v11, v0

    move-object v8, v3

    goto :goto_9

    .line 560
    .end local v2    # "instruction_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .end local v3    # "glyph_buf":[B
    .end local v5    # "points":[Lcom/itextpdf/io/font/woff2/Woff2Common$Point;
    .end local v44    # "size_needed":I
    .local v0, "triplet_bytes_consumed":I
    .local v11, "glyph_size":I
    .local v22, "points":[Lcom/itextpdf/io/font/woff2/Woff2Common$Point;
    .restart local v28    # "glyph_buf":[B
    .restart local v43    # "instruction_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    :cond_f
    move-object/from16 v5, v22

    move-object/from16 v2, v43

    move/from16 v22, v0

    .line 561
    .end local v0    # "triplet_bytes_consumed":I
    .end local v43    # "instruction_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .restart local v2    # "instruction_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .restart local v5    # "points":[Lcom/itextpdf/io/font/woff2/Woff2Common$Point;
    .local v22, "triplet_bytes_consumed":I
    new-instance v0, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v0, v12}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
    .end local v1    # "instruction_size":I
    .end local v5    # "points":[Lcom/itextpdf/io/font/woff2/Woff2Common$Point;
    .end local v10    # "flag_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .end local v13    # "glyph_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .end local v21    # "triplet_buf_offset":I
    .end local v27    # "triplet_size":I
    .end local v40    # "loca_values":[I
    .end local v41    # "composite_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .end local v42    # "flags_buf_offset":I
    .local v0, "n_points_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v2, "composite_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .local v3, "flag_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .local v4, "glyph_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .restart local v12    # "instruction_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .local v14, "points_size":I
    .local v20, "loca_values":[I
    .local v22, "bitmap_length":I
    .local v26, "points":[Lcom/itextpdf/io/font/woff2/Woff2Common$Point;
    :cond_10
    move-object/from16 v41, v2

    move-object v2, v12

    move/from16 v27, v14

    move-object v14, v0

    move-object v12, v5

    .end local v0    # "n_points_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12    # "instruction_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .local v2, "instruction_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .local v14, "n_points_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v27, "points_size":I
    .restart local v41    # "composite_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    new-instance v0, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v0, v12}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    .end local v6    # "total_n_points":I
    .end local v8    # "flag_size":I
    .end local v27    # "points_size":I
    .end local v41    # "composite_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .restart local v0    # "n_points_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v2, "composite_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .restart local v12    # "instruction_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .local v14, "points_size":I
    :cond_11
    move-object/from16 v41, v2

    move-object v10, v3

    move-object v13, v4

    move-object v2, v12

    move/from16 v27, v14

    move-object/from16 v40, v20

    move/from16 v20, v22

    move-object v14, v0

    move-object v12, v5

    .end local v0    # "n_points_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3    # "flag_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .end local v4    # "glyph_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .end local v12    # "instruction_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .end local v22    # "bitmap_length":I
    .local v2, "instruction_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .restart local v10    # "flag_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .restart local v13    # "glyph_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .local v14, "n_points_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v20, "bitmap_length":I
    .restart local v27    # "points_size":I
    .restart local v40    # "loca_values":[I
    .restart local v41    # "composite_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    move-object/from16 v5, v26

    move/from16 v26, v27

    move-object/from16 v8, v28

    .line 593
    .end local v27    # "points_size":I
    .end local v28    # "glyph_buf":[B
    .restart local v5    # "points":[Lcom/itextpdf/io/font/woff2/Woff2Common$Point;
    .local v8, "glyph_buf":[B
    .local v26, "points_size":I
    :goto_9
    invoke-interface/range {p7 .. p7}, Lcom/itextpdf/io/font/woff2/Woff2Out;->size()I

    move-result v0

    sub-int v0, v0, v30

    move-object/from16 v1, v40

    .end local v40    # "loca_values":[I
    .local v1, "loca_values":[I
    aput v0, v1, v39

    .line 594
    move-object/from16 v3, p7

    const/4 v0, 0x0

    invoke-interface {v3, v8, v0, v11}, Lcom/itextpdf/io/font/woff2/Woff2Out;->write([BII)V

    .line 597
    invoke-static/range {p7 .. p7}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->pad4(Lcom/itextpdf/io/font/woff2/Woff2Out;)V

    .line 599
    invoke-static {v8, v0, v11}, Lcom/itextpdf/io/font/woff2/Woff2Common;->computeULongSum([BII)I

    move-result v4

    add-int v4, p3, v4

    .line 602
    .end local p3    # "glyph_checksum":I
    .local v4, "glyph_checksum":I
    if-lez v15, :cond_12

    .line 603
    new-instance v6, Lcom/itextpdf/io/font/woff2/Buffer;

    const/4 v0, 0x2

    invoke-direct {v6, v8, v0, v0}, Lcom/itextpdf/io/font/woff2/Buffer;-><init>([BII)V

    .line 604
    .local v6, "x_min_buf":Lcom/itextpdf/io/font/woff2/Buffer;
    move-object/from16 v0, p6

    move-object/from16 v43, v2

    move-object/from16 v22, v37

    .end local v2    # "instruction_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .end local v37    # "bitmap":[B
    .local v22, "bitmap":[B
    .restart local v43    # "instruction_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    iget-object v2, v0, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;->x_mins:[S

    invoke-virtual {v6}, Lcom/itextpdf/io/font/woff2/Buffer;->readShort()S

    move-result v27

    aput-short v27, v2, v39

    goto :goto_a

    .line 602
    .end local v6    # "x_min_buf":Lcom/itextpdf/io/font/woff2/Buffer;
    .end local v22    # "bitmap":[B
    .end local v43    # "instruction_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .restart local v2    # "instruction_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .restart local v37    # "bitmap":[B
    :cond_12
    move-object/from16 v0, p6

    move-object/from16 v43, v2

    move-object/from16 v22, v37

    .line 478
    .end local v2    # "instruction_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .end local v11    # "glyph_size":I
    .end local v15    # "n_contours":I
    .end local v29    # "have_bbox":Z
    .end local v37    # "bitmap":[B
    .restart local v43    # "instruction_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    :goto_a
    add-int/lit8 v2, v39, 0x1

    move-object/from16 v6, p0

    move-object v11, v3

    move/from16 p3, v4

    move-object/from16 v28, v8

    move-object v3, v10

    move-object v4, v13

    move/from16 v15, v30

    move/from16 v13, v38

    const/16 v21, 0x2

    move-object v10, v0

    move v8, v2

    move-object v0, v14

    move/from16 v14, v26

    move-object/from16 v2, v41

    move-object/from16 v26, v5

    move-object v5, v12

    move-object/from16 v12, v43

    move/from16 v45, v20

    move-object/from16 v20, v1

    move/from16 v1, v45

    .end local v39    # "i":I
    .local v2, "i":I
    goto/16 :goto_1

    .end local v5    # "points":[Lcom/itextpdf/io/font/woff2/Woff2Common$Point;
    .end local v10    # "flag_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .end local v30    # "glyf_start":I
    .end local v38    # "bbox_bitmap_offset":I
    .end local v41    # "composite_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .end local v43    # "instruction_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .restart local v0    # "n_points_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v1, "bitmap_length":I
    .local v2, "composite_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .restart local v3    # "flag_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .local v4, "glyph_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .local v8, "i":I
    .restart local v12    # "instruction_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .local v13, "bbox_bitmap_offset":I
    .local v14, "points_size":I
    .local v15, "glyf_start":I
    .local v20, "loca_values":[I
    .local v26, "points":[Lcom/itextpdf/io/font/woff2/Woff2Common$Point;
    .restart local v28    # "glyph_buf":[B
    .restart local p3    # "glyph_checksum":I
    :cond_13
    move-object/from16 v41, v2

    move/from16 v39, v8

    move/from16 v38, v13

    move/from16 v27, v14

    move-object v14, v0

    move-object v13, v4

    move-object v0, v10

    move-object v10, v3

    move-object/from16 v3, p7

    move-object/from16 v45, v20

    move/from16 v20, v1

    move-object/from16 v1, v45

    .line 609
    .end local v0    # "n_points_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "composite_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .end local v3    # "flag_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .end local v4    # "glyph_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .end local v8    # "i":I
    .local v1, "loca_values":[I
    .restart local v10    # "flag_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .local v13, "glyph_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .local v14, "n_points_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v20, "bitmap_length":I
    .restart local v27    # "points_size":I
    .restart local v38    # "bbox_bitmap_offset":I
    .restart local v41    # "composite_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    invoke-interface/range {p7 .. p7}, Lcom/itextpdf/io/font/woff2/Woff2Out;->size()I

    move-result v2

    move-object/from16 v4, p2

    iget v5, v4, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->dst_offset:I

    sub-int/2addr v2, v5

    iput v2, v4, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->dst_length:I

    .line 610
    invoke-interface/range {p7 .. p7}, Lcom/itextpdf/io/font/woff2/Woff2Out;->size()I

    move-result v2

    move-object/from16 v5, p4

    iput v2, v5, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->dst_offset:I

    .line 612
    iget-short v2, v0, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;->num_glyphs:S

    invoke-static {v2}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU16(S)I

    move-result v2

    iget v6, v4, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->dst_length:I

    aput v6, v1, v2

    .line 613
    iget-short v2, v0, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;->index_format:S

    invoke-static {v1, v2, v3}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->storeLoca([IILcom/itextpdf/io/font/woff2/Woff2Out;)I

    move-result v2

    .line 614
    .end local p5    # "loca_checksum":I
    .local v2, "loca_checksum":I
    invoke-interface/range {p7 .. p7}, Lcom/itextpdf/io/font/woff2/Woff2Out;->size()I

    move-result v6

    iget v8, v5, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->dst_offset:I

    sub-int/2addr v6, v8

    iput v6, v5, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->dst_length:I

    .line 616
    new-instance v6, Lcom/itextpdf/io/font/woff2/Woff2Dec$Checksums;

    move/from16 v8, p3

    .end local p3    # "glyph_checksum":I
    .local v8, "glyph_checksum":I
    invoke-direct {v6, v2, v8}, Lcom/itextpdf/io/font/woff2/Woff2Dec$Checksums;-><init>(II)V

    return-object v6

    .line 444
    .end local v1    # "loca_values":[I
    .end local v2    # "loca_checksum":I
    .end local v7    # "bbox_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .end local v8    # "glyph_checksum":I
    .end local v9    # "glyph_buf_size":I
    .end local v10    # "flag_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .end local v17    # "offset":I
    .end local v18    # "n_contour_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .end local v19    # "n_points_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .end local v20    # "bitmap_length":I
    .end local v23    # "file":Lcom/itextpdf/io/font/woff2/Buffer;
    .end local v24    # "substreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;>;"
    .end local v25    # "kNumSubStreams":I
    .end local v26    # "points":[Lcom/itextpdf/io/font/woff2/Woff2Common$Point;
    .end local v27    # "points_size":I
    .end local v28    # "glyph_buf":[B
    .end local v38    # "bbox_bitmap_offset":I
    .end local v41    # "composite_stream":Lcom/itextpdf/io/font/woff2/Buffer;
    .local v0, "offset":I
    .local v12, "kNumSubStreams":I
    .local v13, "file":Lcom/itextpdf/io/font/woff2/Buffer;
    .local v14, "substreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itextpdf/io/font/woff2/Woff2Dec$StreamInfo;>;"
    .restart local p3    # "glyph_checksum":I
    .restart local p5    # "loca_checksum":I
    :cond_14
    move/from16 v25, v12

    move-object v12, v5

    .end local v12    # "kNumSubStreams":I
    .restart local v25    # "kNumSubStreams":I
    new-instance v2, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v2, v12}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static reconstructTransformedHmtx([BIIII[SLcom/itextpdf/io/font/woff2/Woff2Out;)I
    .locals 17
    .param p0, "transformed_buf"    # [B
    .param p1, "transformed_offset"    # I
    .param p2, "transformed_size"    # I
    .param p3, "num_glyphs"    # I
    .param p4, "num_hmetrics"    # I
    .param p5, "x_mins"    # [S
    .param p6, "out"    # Lcom/itextpdf/io/font/woff2/Woff2Out;

    .line 664
    move/from16 v0, p3

    move/from16 v1, p4

    move-object/from16 v2, p5

    new-instance v3, Lcom/itextpdf/io/font/woff2/Buffer;

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-direct {v3, v4, v5, v6}, Lcom/itextpdf/io/font/woff2/Buffer;-><init>([BII)V

    .line 666
    .local v3, "hmtx_buff_in":Lcom/itextpdf/io/font/woff2/Buffer;
    invoke-virtual {v3}, Lcom/itextpdf/io/font/woff2/Buffer;->readByte()B

    move-result v7

    invoke-static {v7}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result v7

    .line 670
    .local v7, "hmtx_flags":I
    and-int/lit8 v8, v7, 0x1

    const/4 v10, 0x1

    if-nez v8, :cond_0

    move v8, v10

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 671
    .local v8, "has_proportional_lsbs":Z
    :goto_0
    and-int/lit8 v11, v7, 0x2

    if-nez v11, :cond_1

    move v11, v10

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    .line 674
    .local v11, "has_monospace_lsbs":Z
    :goto_1
    const-string v12, "Reconstructing woff2 hmtx table exception"

    if-eqz v8, :cond_3

    if-nez v11, :cond_2

    goto :goto_2

    .line 675
    :cond_2
    new-instance v9, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v9, v12}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 678
    :cond_3
    :goto_2
    if-eqz v2, :cond_d

    array-length v13, v2

    if-ne v13, v0, :cond_d

    .line 683
    if-gt v1, v0, :cond_c

    .line 689
    if-lt v1, v10, :cond_b

    .line 693
    new-array v10, v1, [S

    .line 694
    .local v10, "advance_widths":[S
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    if-ge v12, v1, :cond_4

    .line 696
    invoke-virtual {v3}, Lcom/itextpdf/io/font/woff2/Buffer;->readShort()S

    move-result v13

    .line 697
    .local v13, "advance_width":S
    aput-short v13, v10, v12

    .line 694
    .end local v13    # "advance_width":S
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 700
    .end local v12    # "i":I
    :cond_4
    new-array v12, v0, [S

    .line 701
    .local v12, "lsbs":[S
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    if-ge v13, v1, :cond_6

    .line 703
    if-eqz v8, :cond_5

    .line 704
    invoke-virtual {v3}, Lcom/itextpdf/io/font/woff2/Buffer;->readShort()S

    move-result v14

    .local v14, "lsb":S
    goto :goto_5

    .line 706
    .end local v14    # "lsb":S
    :cond_5
    aget-short v14, v2, v13

    .line 708
    .restart local v14    # "lsb":S
    :goto_5
    aput-short v14, v12, v13

    .line 701
    .end local v14    # "lsb":S
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 711
    .end local v13    # "i":I
    :cond_6
    move/from16 v13, p4

    .restart local v13    # "i":I
    :goto_6
    if-ge v13, v0, :cond_8

    .line 713
    if-eqz v11, :cond_7

    .line 714
    invoke-virtual {v3}, Lcom/itextpdf/io/font/woff2/Buffer;->readShort()S

    move-result v14

    .restart local v14    # "lsb":S
    goto :goto_7

    .line 716
    .end local v14    # "lsb":S
    :cond_7
    aget-short v14, v2, v13

    .line 718
    .restart local v14    # "lsb":S
    :goto_7
    aput-short v14, v12, v13

    .line 711
    .end local v14    # "lsb":S
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 722
    .end local v13    # "i":I
    :cond_8
    mul-int/lit8 v13, v0, 0x2

    mul-int/lit8 v14, v1, 0x2

    add-int/2addr v13, v14

    .line 723
    .local v13, "hmtx_output_size":I
    new-array v14, v13, [B

    .line 724
    .local v14, "hmtx_table":[B
    const/4 v15, 0x0

    .line 725
    .local v15, "dst_offset":I
    const/16 v16, 0x0

    move/from16 v9, v16

    .local v9, "i":I
    :goto_8
    if-ge v9, v0, :cond_a

    .line 726
    if-ge v9, v1, :cond_9

    .line 727
    aget-short v0, v10, v9

    invoke-static {v14, v15, v0}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU16([BII)I

    move-result v15

    .line 729
    :cond_9
    aget-short v0, v12, v9

    invoke-static {v14, v15, v0}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU16([BII)I

    move-result v15

    .line 725
    add-int/lit8 v9, v9, 0x1

    move/from16 v0, p3

    goto :goto_8

    .line 732
    .end local v9    # "i":I
    :cond_a
    const/4 v0, 0x0

    invoke-static {v14, v0, v13}, Lcom/itextpdf/io/font/woff2/Woff2Common;->computeULongSum([BII)I

    move-result v9

    .line 733
    .local v9, "checksum":I
    move-object/from16 v1, p6

    invoke-interface {v1, v14, v0, v13}, Lcom/itextpdf/io/font/woff2/Woff2Out;->write([BII)V

    .line 735
    return v9

    .line 690
    .end local v9    # "checksum":I
    .end local v10    # "advance_widths":[S
    .end local v12    # "lsbs":[S
    .end local v13    # "hmtx_output_size":I
    .end local v14    # "hmtx_table":[B
    .end local v15    # "dst_offset":I
    :cond_b
    move-object/from16 v1, p6

    new-instance v0, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v0, v12}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 684
    :cond_c
    move-object/from16 v1, p6

    new-instance v0, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v0, v12}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 678
    :cond_d
    move-object/from16 v1, p6

    .line 679
    new-instance v0, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v0, v12}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static sizeOfComposite(Lcom/itextpdf/io/font/woff2/Buffer;)Lcom/itextpdf/io/font/woff2/Woff2Dec$CompositeGlyphInfo;
    .locals 6
    .param p0, "composite_stream"    # Lcom/itextpdf/io/font/woff2/Buffer;

    .line 351
    new-instance v0, Lcom/itextpdf/io/font/woff2/Buffer;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/font/woff2/Buffer;-><init>(Lcom/itextpdf/io/font/woff2/Buffer;)V

    move-object p0, v0

    .line 352
    invoke-virtual {p0}, Lcom/itextpdf/io/font/woff2/Buffer;->getOffset()I

    move-result v0

    .line 353
    .local v0, "start_offset":I
    const/4 v1, 0x0

    .line 355
    .local v1, "we_have_instructions":Z
    const/16 v2, 0x20

    .line 356
    .local v2, "flags":I
    :goto_0
    and-int/lit8 v3, v2, 0x20

    if-eqz v3, :cond_5

    .line 357
    invoke-virtual {p0}, Lcom/itextpdf/io/font/woff2/Buffer;->readShort()S

    move-result v3

    invoke-static {v3}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU16(S)I

    move-result v2

    .line 358
    and-int/lit16 v3, v2, 0x100

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    or-int/2addr v1, v3

    .line 359
    const/4 v3, 0x2

    .line 360
    .local v3, "arg_size":I
    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_1

    .line 361
    add-int/lit8 v3, v3, 0x4

    goto :goto_2

    .line 363
    :cond_1
    add-int/lit8 v3, v3, 0x2

    .line 365
    :goto_2
    and-int/lit8 v4, v2, 0x8

    if-eqz v4, :cond_2

    .line 366
    add-int/lit8 v3, v3, 0x2

    goto :goto_3

    .line 367
    :cond_2
    and-int/lit8 v4, v2, 0x40

    if-eqz v4, :cond_3

    .line 368
    add-int/lit8 v3, v3, 0x4

    goto :goto_3

    .line 369
    :cond_3
    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_4

    .line 370
    add-int/lit8 v3, v3, 0x8

    .line 372
    :cond_4
    :goto_3
    invoke-virtual {p0, v3}, Lcom/itextpdf/io/font/woff2/Buffer;->skip(I)V

    .line 373
    .end local v3    # "arg_size":I
    goto :goto_0

    .line 375
    :cond_5
    invoke-virtual {p0}, Lcom/itextpdf/io/font/woff2/Buffer;->getOffset()I

    move-result v3

    sub-int/2addr v3, v0

    .line 376
    .local v3, "size":I
    move v4, v1

    .line 378
    .local v4, "have_instructions":Z
    new-instance v5, Lcom/itextpdf/io/font/woff2/Woff2Dec$CompositeGlyphInfo;

    invoke-direct {v5, v3, v4}, Lcom/itextpdf/io/font/woff2/Woff2Dec$CompositeGlyphInfo;-><init>(IZ)V

    return-object v5
.end method

.method private static storeLoca([IILcom/itextpdf/io/font/woff2/Woff2Out;)I
    .locals 9
    .param p0, "loca_values"    # [I
    .param p1, "index_format"    # I
    .param p2, "out"    # Lcom/itextpdf/io/font/woff2/Woff2Out;

    .line 406
    array-length v0, p0

    int-to-long v0, v0

    .line 407
    .local v0, "loca_size":J
    if-eqz p1, :cond_0

    const-wide/16 v2, 0x4

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x2

    .line 408
    .local v2, "offset_size":J
    :goto_0
    const/4 v4, 0x2

    shl-long v5, v0, v4

    shr-long v4, v5, v4

    cmp-long v4, v4, v0

    if-nez v4, :cond_3

    .line 411
    mul-long v4, v0, v2

    long-to-int v4, v4

    new-array v4, v4, [B

    .line 412
    .local v4, "loca_content":[B
    const/4 v5, 0x0

    .line 413
    .local v5, "offset":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v7, p0

    if-ge v6, v7, :cond_2

    .line 414
    aget v7, p0, v6

    .line 415
    .local v7, "value":I
    if-eqz p1, :cond_1

    .line 416
    invoke-static {v4, v5, v7}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU32([BII)I

    move-result v5

    goto :goto_2

    .line 418
    :cond_1
    shr-int/lit8 v8, v7, 0x1

    invoke-static {v4, v5, v8}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU16([BII)I

    move-result v5

    .line 413
    .end local v7    # "value":I
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 421
    .end local v6    # "i":I
    :cond_2
    array-length v6, v4

    const/4 v7, 0x0

    invoke-static {v4, v7, v6}, Lcom/itextpdf/io/font/woff2/Woff2Common;->computeULongSum([BII)I

    move-result v6

    .line 422
    .local v6, "checksum":I
    array-length v8, v4

    invoke-interface {p2, v4, v7, v8}, Lcom/itextpdf/io/font/woff2/Woff2Out;->write([BII)V

    .line 423
    return v6

    .line 409
    .end local v4    # "loca_content":[B
    .end local v5    # "offset":I
    .end local v6    # "checksum":I
    :cond_3
    new-instance v4, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    const-string/jumbo v5, "woff2 loca table content size overflow exception"

    invoke-direct {v4, v5}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static storeOffsetTable([BIII)I
    .locals 3
    .param p0, "result"    # [B
    .param p1, "offset"    # I
    .param p2, "flavor"    # I
    .param p3, "num_tables"    # I

    .line 810
    invoke-static {p0, p1, p2}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU32([BII)I

    move-result p1

    .line 811
    invoke-static {p0, p1, p3}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU16([BII)I

    move-result p1

    .line 812
    const/4 v0, 0x0

    .line 813
    .local v0, "max_pow2":I
    :goto_0
    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    shl-int v1, v2, v1

    if-gt v1, p3, :cond_0

    .line 814
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 816
    :cond_0
    shl-int v1, v2, v0

    shl-int/lit8 v1, v1, 0x4

    .line 817
    .local v1, "output_search_range":I
    invoke-static {p0, p1, v1}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU16([BII)I

    move-result p1

    .line 818
    invoke-static {p0, p1, v0}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU16([BII)I

    move-result p1

    .line 820
    shl-int/lit8 v2, p3, 0x4

    sub-int/2addr v2, v1

    invoke-static {p0, p1, v2}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU16([BII)I

    move-result p1

    .line 821
    return p1
.end method

.method private static storePoints(I[Lcom/itextpdf/io/font/woff2/Woff2Common$Point;II[BI)I
    .locals 19
    .param p0, "n_points"    # I
    .param p1, "points"    # [Lcom/itextpdf/io/font/woff2/Woff2Common$Point;
    .param p2, "n_contours"    # I
    .param p3, "instruction_length"    # I
    .param p4, "dst"    # [B
    .param p5, "dst_size"    # I

    .line 225
    move/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p5

    mul-int/lit8 v3, p2, 0x2

    add-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x2

    add-int v3, v3, p3

    .line 227
    .local v3, "flag_offset":I
    const/4 v4, -0x1

    .line 228
    .local v4, "last_flag":I
    const/4 v5, 0x0

    .line 229
    .local v5, "repeat_count":I
    const/4 v6, 0x0

    .line 230
    .local v6, "last_x":I
    const/4 v7, 0x0

    .line 231
    .local v7, "last_y":I
    const/4 v8, 0x0

    .line 232
    .local v8, "x_bytes":I
    const/4 v9, 0x0

    .line 234
    .local v9, "y_bytes":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    const-string v13, "Reconstructing woff2 glyph\'s point exception"

    if-ge v10, v0, :cond_a

    .line 235
    aget-object v14, p1, v10

    .line 236
    .local v14, "point":Lcom/itextpdf/io/font/woff2/Woff2Common$Point;
    iget-boolean v15, v14, Lcom/itextpdf/io/font/woff2/Woff2Common$Point;->on_curve:Z

    .line 237
    .local v15, "flag":I
    iget v11, v14, Lcom/itextpdf/io/font/woff2/Woff2Common$Point;->x:I

    sub-int/2addr v11, v6

    .line 238
    .local v11, "dx":I
    iget v12, v14, Lcom/itextpdf/io/font/woff2/Woff2Common$Point;->y:I

    sub-int/2addr v12, v7

    .line 239
    .local v12, "dy":I
    const/16 v17, 0x0

    if-nez v11, :cond_0

    .line 240
    or-int/lit8 v15, v15, 0x10

    move/from16 v18, v6

    goto :goto_2

    .line 241
    :cond_0
    move/from16 v18, v6

    const/16 v6, -0x100

    .end local v6    # "last_x":I
    .local v18, "last_x":I
    if-le v11, v6, :cond_2

    const/16 v6, 0x100

    if-ge v11, v6, :cond_2

    .line 242
    if-lez v11, :cond_1

    const/16 v6, 0x10

    goto :goto_1

    :cond_1
    move/from16 v6, v17

    :goto_1
    or-int/lit8 v6, v6, 0x2

    or-int/2addr v15, v6

    .line 243
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 245
    :cond_2
    add-int/lit8 v8, v8, 0x2

    .line 247
    :goto_2
    if-nez v12, :cond_3

    .line 248
    or-int/lit8 v15, v15, 0x20

    goto :goto_3

    .line 249
    :cond_3
    const/16 v6, -0x100

    if-le v12, v6, :cond_5

    const/16 v6, 0x100

    if-ge v12, v6, :cond_5

    .line 250
    if-lez v12, :cond_4

    const/16 v17, 0x20

    :cond_4
    or-int/lit8 v6, v17, 0x4

    or-int/2addr v15, v6

    .line 251
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 253
    :cond_5
    add-int/lit8 v9, v9, 0x2

    .line 256
    :goto_3
    if-ne v15, v4, :cond_6

    const/16 v6, 0xff

    if-eq v5, v6, :cond_6

    .line 257
    add-int/lit8 v6, v3, -0x1

    aget-byte v13, v1, v6

    or-int/lit8 v13, v13, 0x8

    int-to-byte v13, v13

    aput-byte v13, v1, v6

    .line 258
    add-int/lit8 v5, v5, 0x1

    move/from16 v17, v4

    goto :goto_5

    .line 260
    :cond_6
    if-eqz v5, :cond_8

    .line 261
    if-ge v3, v2, :cond_7

    .line 264
    add-int/lit8 v6, v3, 0x1

    move/from16 v17, v4

    .end local v3    # "flag_offset":I
    .end local v4    # "last_flag":I
    .local v6, "flag_offset":I
    .local v17, "last_flag":I
    int-to-byte v4, v5

    aput-byte v4, v1, v3

    move v3, v6

    goto :goto_4

    .line 262
    .end local v6    # "flag_offset":I
    .end local v17    # "last_flag":I
    .restart local v3    # "flag_offset":I
    .restart local v4    # "last_flag":I
    :cond_7
    move/from16 v17, v4

    .end local v4    # "last_flag":I
    .restart local v17    # "last_flag":I
    new-instance v4, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v4, v13}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 260
    .end local v17    # "last_flag":I
    .restart local v4    # "last_flag":I
    :cond_8
    move/from16 v17, v4

    .line 266
    .end local v4    # "last_flag":I
    .restart local v17    # "last_flag":I
    :goto_4
    if-ge v3, v2, :cond_9

    .line 269
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "flag_offset":I
    .local v4, "flag_offset":I
    int-to-byte v6, v15

    aput-byte v6, v1, v3

    .line 270
    const/4 v3, 0x0

    move v5, v3

    move v3, v4

    .line 272
    .end local v4    # "flag_offset":I
    .restart local v3    # "flag_offset":I
    :goto_5
    iget v6, v14, Lcom/itextpdf/io/font/woff2/Woff2Common$Point;->x:I

    .line 273
    .end local v18    # "last_x":I
    .local v6, "last_x":I
    iget v7, v14, Lcom/itextpdf/io/font/woff2/Woff2Common$Point;->y:I

    .line 274
    move v4, v15

    .line 234
    .end local v11    # "dx":I
    .end local v12    # "dy":I
    .end local v14    # "point":Lcom/itextpdf/io/font/woff2/Woff2Common$Point;
    .end local v15    # "flag":I
    .end local v17    # "last_flag":I
    .local v4, "last_flag":I
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 267
    .end local v4    # "last_flag":I
    .end local v6    # "last_x":I
    .restart local v11    # "dx":I
    .restart local v12    # "dy":I
    .restart local v14    # "point":Lcom/itextpdf/io/font/woff2/Woff2Common$Point;
    .restart local v15    # "flag":I
    .restart local v17    # "last_flag":I
    .restart local v18    # "last_x":I
    :cond_9
    new-instance v4, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v4, v13}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 234
    .end local v11    # "dx":I
    .end local v12    # "dy":I
    .end local v14    # "point":Lcom/itextpdf/io/font/woff2/Woff2Common$Point;
    .end local v15    # "flag":I
    .end local v17    # "last_flag":I
    .end local v18    # "last_x":I
    .restart local v4    # "last_flag":I
    .restart local v6    # "last_x":I
    :cond_a
    move/from16 v17, v4

    move/from16 v18, v6

    .line 277
    .end local v4    # "last_flag":I
    .end local v6    # "last_x":I
    .end local v10    # "i":I
    .restart local v17    # "last_flag":I
    .restart local v18    # "last_x":I
    if-eqz v5, :cond_c

    .line 278
    if-ge v3, v2, :cond_b

    .line 281
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "flag_offset":I
    .local v4, "flag_offset":I
    int-to-byte v6, v5

    aput-byte v6, v1, v3

    move v3, v4

    goto :goto_6

    .line 279
    .end local v4    # "flag_offset":I
    .restart local v3    # "flag_offset":I
    :cond_b
    new-instance v4, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v4, v13}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 283
    :cond_c
    :goto_6
    add-int v4, v8, v9

    .line 284
    .local v4, "xy_bytes":I
    if-lt v4, v8, :cond_12

    add-int v6, v3, v4

    if-lt v6, v3, :cond_12

    add-int v6, v3, v4

    if-gt v6, v2, :cond_12

    .line 290
    move v6, v3

    .line 291
    .local v6, "x_offset":I
    add-int v10, v3, v8

    .line 292
    .local v10, "y_offset":I
    const/4 v11, 0x0

    .line 293
    .end local v18    # "last_x":I
    .local v11, "last_x":I
    const/4 v7, 0x0

    .line 294
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_7
    if-ge v12, v0, :cond_11

    .line 295
    aget-object v13, p1, v12

    iget v13, v13, Lcom/itextpdf/io/font/woff2/Woff2Common$Point;->x:I

    sub-int/2addr v13, v11

    .line 296
    .local v13, "dx":I
    if-nez v13, :cond_d

    goto :goto_8

    .line 298
    :cond_d
    const/16 v14, -0x100

    if-le v13, v14, :cond_e

    const/16 v14, 0x100

    if-ge v13, v14, :cond_e

    .line 299
    add-int/lit8 v14, v6, 0x1

    .end local v6    # "x_offset":I
    .local v14, "x_offset":I
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v15

    int-to-byte v15, v15

    aput-byte v15, v1, v6

    move v6, v14

    goto :goto_8

    .line 302
    .end local v14    # "x_offset":I
    .restart local v6    # "x_offset":I
    :cond_e
    invoke-static {v1, v6, v13}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU16([BII)I

    move-result v6

    .line 304
    :goto_8
    add-int/2addr v11, v13

    .line 305
    aget-object v14, p1, v12

    iget v14, v14, Lcom/itextpdf/io/font/woff2/Woff2Common$Point;->y:I

    sub-int/2addr v14, v7

    .line 306
    .local v14, "dy":I
    if-nez v14, :cond_f

    goto :goto_9

    .line 308
    :cond_f
    const/16 v15, -0x100

    if-le v14, v15, :cond_10

    const/16 v15, 0x100

    if-ge v14, v15, :cond_10

    .line 309
    add-int/lit8 v16, v10, 0x1

    .end local v10    # "y_offset":I
    .local v16, "y_offset":I
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v15

    int-to-byte v15, v15

    aput-byte v15, v1, v10

    move/from16 v10, v16

    goto :goto_9

    .line 311
    .end local v16    # "y_offset":I
    .restart local v10    # "y_offset":I
    :cond_10
    invoke-static {v1, v10, v14}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU16([BII)I

    move-result v10

    .line 313
    :goto_9
    add-int/2addr v7, v14

    .line 294
    .end local v13    # "dx":I
    .end local v14    # "dy":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 315
    .end local v12    # "i":I
    :cond_11
    move v12, v10

    .line 316
    .local v12, "glyph_size":I
    return v12

    .line 287
    .end local v6    # "x_offset":I
    .end local v10    # "y_offset":I
    .end local v11    # "last_x":I
    .end local v12    # "glyph_size":I
    .restart local v18    # "last_x":I
    :cond_12
    new-instance v6, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v6, v13}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private static storeTableEntry([BII)I
    .locals 1
    .param p0, "result"    # [B
    .param p1, "offset"    # I
    .param p2, "tag"    # I

    .line 825
    invoke-static {p0, p1, p2}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU32([BII)I

    move-result p1

    .line 826
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU32([BII)I

    move-result p1

    .line 827
    invoke-static {p0, p1, v0}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU32([BII)I

    move-result p1

    .line 828
    invoke-static {p0, p1, v0}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU32([BII)I

    move-result p1

    .line 829
    return p1
.end method

.method private static tables(Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;I)Ljava/util/ArrayList;
    .locals 7
    .param p0, "hdr"    # Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;
    .param p1, "font_index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/itextpdf/io/font/woff2/Woff2Common$Table;",
            ">;"
        }
    .end annotation

    .line 848
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 849
    .local v0, "tables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itextpdf/io/font/woff2/Woff2Common$Table;>;"
    iget v1, p0, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->header_version:I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 850
    iget-object v1, p0, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->ttc_fonts:[Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;->table_indices:[S

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-short v4, v1, v2

    .line 851
    .local v4, "index":S
    iget-object v5, p0, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->tables:[Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    invoke-static {v4}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU16(S)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 850
    .end local v4    # "index":S
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 854
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->tables:[Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 855
    .local v4, "table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 854
    .end local v4    # "table":Lcom/itextpdf/io/font/woff2/Woff2Common$Table;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 858
    :cond_1
    return-object v0
.end method

.method private static tripletDecode([BIIII[Lcom/itextpdf/io/font/woff2/Woff2Common$Point;)I
    .locals 17
    .param p0, "data"    # [B
    .param p1, "flags_in_offset"    # I
    .param p2, "in_offset"    # I
    .param p3, "in_size"    # I
    .param p4, "n_points"    # I
    .param p5, "result"    # [Lcom/itextpdf/io/font/woff2/Woff2Common$Point;

    .line 157
    move/from16 v0, p3

    move/from16 v1, p4

    const/4 v2, 0x0

    .line 158
    .local v2, "x":I
    const/4 v3, 0x0

    .line 160
    .local v3, "y":I
    const-string v4, "Reconstructing woff2 glyph exception"

    if-gt v1, v0, :cond_b

    .line 163
    const/4 v5, 0x0

    .line 165
    .local v5, "triplet_index":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v1, :cond_a

    .line 166
    add-int v7, v6, p1

    aget-byte v7, p0, v7

    invoke-static {v7}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result v7

    .line 167
    .local v7, "flag":I
    shr-int/lit8 v8, v7, 0x7

    const/4 v9, 0x1

    if-nez v8, :cond_0

    move v8, v9

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    .line 168
    .local v8, "on_curve":Z
    :goto_1
    and-int/lit8 v7, v7, 0x7f

    .line 170
    const/16 v10, 0x7c

    const/16 v11, 0x78

    const/16 v12, 0x54

    if-ge v7, v12, :cond_1

    .line 171
    const/4 v13, 0x1

    .local v13, "n_data_bytes":I
    goto :goto_2

    .line 172
    .end local v13    # "n_data_bytes":I
    :cond_1
    if-ge v7, v11, :cond_2

    .line 173
    const/4 v13, 0x2

    .restart local v13    # "n_data_bytes":I
    goto :goto_2

    .line 174
    .end local v13    # "n_data_bytes":I
    :cond_2
    if-ge v7, v10, :cond_3

    .line 175
    const/4 v13, 0x3

    .restart local v13    # "n_data_bytes":I
    goto :goto_2

    .line 177
    .end local v13    # "n_data_bytes":I
    :cond_3
    const/4 v13, 0x4

    .line 179
    .restart local v13    # "n_data_bytes":I
    :goto_2
    add-int v14, v5, v13

    if-gt v14, v0, :cond_9

    add-int v14, v5, v13

    if-lt v14, v5, :cond_9

    .line 184
    const/16 v14, 0xa

    if-ge v7, v14, :cond_4

    .line 185
    const/4 v9, 0x0

    .line 186
    .local v9, "dx":I
    and-int/lit8 v10, v7, 0xe

    shl-int/lit8 v10, v10, 0x7

    add-int v11, p2, v5

    aget-byte v11, p0, v11

    invoke-static {v11}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {v7, v10}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->withSign(II)I

    move-result v10

    .local v10, "dy":I
    goto/16 :goto_3

    .line 187
    .end local v9    # "dx":I
    .end local v10    # "dy":I
    :cond_4
    const/16 v14, 0x14

    if-ge v7, v14, :cond_5

    .line 188
    add-int/lit8 v9, v7, -0xa

    and-int/lit8 v9, v9, 0xe

    shl-int/lit8 v9, v9, 0x7

    add-int v10, p2, v5

    aget-byte v10, p0, v10

    invoke-static {v10}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v7, v9}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->withSign(II)I

    move-result v9

    .line 189
    .restart local v9    # "dx":I
    const/4 v10, 0x0

    .restart local v10    # "dy":I
    goto/16 :goto_3

    .line 190
    .end local v9    # "dx":I
    .end local v10    # "dy":I
    :cond_5
    if-ge v7, v12, :cond_6

    .line 191
    add-int/lit8 v10, v7, -0x14

    .line 192
    .local v10, "b0":I
    add-int v11, p2, v5

    aget-byte v11, p0, v11

    invoke-static {v11}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result v11

    .line 193
    .local v11, "b1":I
    and-int/lit8 v12, v10, 0x30

    add-int/2addr v12, v9

    shr-int/lit8 v14, v11, 0x4

    add-int/2addr v12, v14

    invoke-static {v7, v12}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->withSign(II)I

    move-result v12

    .line 194
    .local v12, "dx":I
    shr-int/lit8 v14, v7, 0x1

    and-int/lit8 v15, v10, 0xc

    shl-int/lit8 v15, v15, 0x2

    add-int/2addr v15, v9

    and-int/lit8 v9, v11, 0xf

    add-int/2addr v15, v9

    invoke-static {v14, v15}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->withSign(II)I

    move-result v10

    .line 195
    .end local v11    # "b1":I
    .local v10, "dy":I
    move v9, v12

    goto/16 :goto_3

    .end local v10    # "dy":I
    .end local v12    # "dx":I
    :cond_6
    if-ge v7, v11, :cond_7

    .line 196
    add-int/lit8 v10, v7, -0x54

    .line 197
    .local v10, "b0":I
    div-int/lit8 v11, v10, 0xc

    shl-int/lit8 v11, v11, 0x8

    add-int/2addr v11, v9

    add-int v12, p2, v5

    aget-byte v12, p0, v12

    invoke-static {v12}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result v12

    add-int/2addr v11, v12

    invoke-static {v7, v11}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->withSign(II)I

    move-result v11

    .line 198
    .local v11, "dx":I
    shr-int/lit8 v12, v7, 0x1

    rem-int/lit8 v14, v10, 0xc

    shr-int/lit8 v14, v14, 0x2

    shl-int/lit8 v14, v14, 0x8

    add-int/2addr v14, v9

    add-int v15, p2, v5

    add-int/2addr v15, v9

    aget-byte v9, p0, v15

    .line 199
    invoke-static {v9}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result v9

    add-int/2addr v14, v9

    .line 198
    invoke-static {v12, v14}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->withSign(II)I

    move-result v10

    .line 200
    .local v10, "dy":I
    move v9, v11

    goto :goto_3

    .end local v10    # "dy":I
    .end local v11    # "dx":I
    :cond_7
    if-ge v7, v10, :cond_8

    .line 201
    add-int v10, p2, v5

    add-int/2addr v10, v9

    aget-byte v9, p0, v10

    invoke-static {v9}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result v9

    .line 202
    .local v9, "b2":I
    add-int v10, p2, v5

    aget-byte v10, p0, v10

    invoke-static {v10}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result v10

    shl-int/lit8 v10, v10, 0x4

    shr-int/lit8 v11, v9, 0x4

    add-int/2addr v10, v11

    invoke-static {v7, v10}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->withSign(II)I

    move-result v10

    .line 203
    .local v10, "dx":I
    shr-int/lit8 v11, v7, 0x1

    and-int/lit8 v12, v9, 0xf

    shl-int/lit8 v12, v12, 0x8

    add-int v14, p2, v5

    add-int/lit8 v14, v14, 0x2

    aget-byte v14, p0, v14

    invoke-static {v14}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result v14

    add-int/2addr v12, v14

    invoke-static {v11, v12}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->withSign(II)I

    move-result v9

    .line 204
    .local v9, "dy":I
    move/from16 v16, v10

    move v10, v9

    move/from16 v9, v16

    goto :goto_3

    .line 205
    .end local v9    # "dy":I
    .end local v10    # "dx":I
    :cond_8
    add-int v10, p2, v5

    aget-byte v10, p0, v10

    invoke-static {v10}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result v10

    shl-int/lit8 v10, v10, 0x8

    add-int v11, p2, v5

    add-int/2addr v11, v9

    aget-byte v9, p0, v11

    invoke-static {v9}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result v9

    add-int/2addr v10, v9

    invoke-static {v7, v10}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->withSign(II)I

    move-result v9

    .line 206
    .local v9, "dx":I
    shr-int/lit8 v10, v7, 0x1

    add-int v11, p2, v5

    add-int/lit8 v11, v11, 0x2

    aget-byte v11, p0, v11

    .line 207
    invoke-static {v11}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result v11

    shl-int/lit8 v11, v11, 0x8

    add-int v12, p2, v5

    add-int/lit8 v12, v12, 0x3

    aget-byte v12, p0, v12

    invoke-static {v12}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result v12

    add-int/2addr v11, v12

    .line 206
    invoke-static {v10, v11}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->withSign(II)I

    move-result v10

    .line 209
    .local v10, "dy":I
    :goto_3
    add-int/2addr v5, v13

    .line 211
    add-int/2addr v2, v9

    .line 212
    add-int/2addr v3, v10

    .line 213
    new-instance v11, Lcom/itextpdf/io/font/woff2/Woff2Common$Point;

    invoke-direct {v11, v2, v3, v8}, Lcom/itextpdf/io/font/woff2/Woff2Common$Point;-><init>(IIZ)V

    aput-object v11, p5, v6

    .line 165
    .end local v7    # "flag":I
    .end local v8    # "on_curve":Z
    .end local v9    # "dx":I
    .end local v10    # "dy":I
    .end local v13    # "n_data_bytes":I
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 181
    .restart local v7    # "flag":I
    .restart local v8    # "on_curve":Z
    .restart local v13    # "n_data_bytes":I
    :cond_9
    new-instance v9, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v9, v4}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 215
    .end local v6    # "i":I
    .end local v7    # "flag":I
    .end local v8    # "on_curve":Z
    .end local v13    # "n_data_bytes":I
    :cond_a
    return v5

    .line 161
    .end local v5    # "triplet_index":I
    :cond_b
    new-instance v5, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v5, v4}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static withSign(II)I
    .locals 1
    .param p0, "flag"    # I
    .param p1, "baseval"    # I

    .line 153
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    neg-int v0, p1

    :goto_0
    return v0
.end method

.method private static woff2Uncompress([BII[BII)V
    .locals 5
    .param p0, "dst_buf"    # [B
    .param p1, "dst_offset"    # I
    .param p2, "dst_length"    # I
    .param p3, "src_buf"    # [B
    .param p4, "src_offset"    # I
    .param p5, "src_length"    # I

    .line 739
    const-string v0, "Woff2 brotli decoding exception"

    move v1, p2

    .line 741
    .local v1, "remain":I
    :try_start_0
    new-instance v2, Lcom/itextpdf/io/codec/brotli/dec/BrotliInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p3, p4, p5}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v2, v3}, Lcom/itextpdf/io/codec/brotli/dec/BrotliInputStream;-><init>(Ljava/io/InputStream;)V

    .line 742
    .local v2, "stream":Lcom/itextpdf/io/codec/brotli/dec/BrotliInputStream;
    :goto_0
    if-lez v1, :cond_1

    .line 743
    invoke-virtual {v2, p0, p1, p2}, Lcom/itextpdf/io/codec/brotli/dec/BrotliInputStream;->read([BII)I

    move-result v3

    .line 744
    .local v3, "read":I
    if-ltz v3, :cond_0

    .line 747
    sub-int/2addr v1, v3

    .line 748
    .end local v3    # "read":I
    goto :goto_0

    .line 745
    .restart local v3    # "read":I
    :cond_0
    new-instance v4, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v4, v0}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    .end local v1    # "remain":I
    .end local p0    # "dst_buf":[B
    .end local p1    # "dst_offset":I
    .end local p2    # "dst_length":I
    .end local p3    # "src_buf":[B
    .end local p4    # "src_offset":I
    .end local p5    # "src_length":I
    throw v4

    .line 750
    .end local v3    # "read":I
    .restart local v1    # "remain":I
    .restart local p0    # "dst_buf":[B
    .restart local p1    # "dst_offset":I
    .restart local p2    # "dst_length":I
    .restart local p3    # "src_buf":[B
    .restart local p4    # "src_offset":I
    .restart local p5    # "src_length":I
    :cond_1
    invoke-virtual {v2}, Lcom/itextpdf/io/codec/brotli/dec/BrotliInputStream;->read()I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 755
    .end local v2    # "stream":Lcom/itextpdf/io/codec/brotli/dec/BrotliInputStream;
    nop

    .line 756
    if-nez v1, :cond_2

    .line 759
    return-void

    .line 757
    :cond_2
    new-instance v2, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v2, v0}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 751
    .restart local v2    # "stream":Lcom/itextpdf/io/codec/brotli/dec/BrotliInputStream;
    :cond_3
    :try_start_1
    new-instance v3, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v3, v0}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    .end local v1    # "remain":I
    .end local p0    # "dst_buf":[B
    .end local p1    # "dst_offset":I
    .end local p2    # "dst_length":I
    .end local p3    # "src_buf":[B
    .end local p4    # "src_offset":I
    .end local p5    # "src_length":I
    throw v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 753
    .end local v2    # "stream":Lcom/itextpdf/io/codec/brotli/dec/BrotliInputStream;
    .restart local v1    # "remain":I
    .restart local p0    # "dst_buf":[B
    .restart local p1    # "dst_offset":I
    .restart local p2    # "dst_length":I
    .restart local p3    # "src_buf":[B
    .restart local p4    # "src_offset":I
    .restart local p5    # "src_length":I
    :catch_0
    move-exception v2

    .line 754
    .local v2, "any":Ljava/io/IOException;
    new-instance v3, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v3, v0}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static writeHeaders([BILcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;Lcom/itextpdf/io/font/woff2/Woff2Out;)V
    .locals 19
    .param p0, "data"    # [B
    .param p1, "length"    # I
    .param p2, "metadata"    # Lcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;
    .param p3, "hdr"    # Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;
    .param p4, "out"    # Lcom/itextpdf/io/font/woff2/Woff2Out;

    .line 1138
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static/range {p3 .. p3}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->computeOffsetToFirstTable(Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;)J

    move-result-wide v2

    .line 1139
    .local v2, "firstTableOffset":J
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-gtz v4, :cond_a

    .line 1140
    long-to-int v4, v2

    new-array v4, v4, [B

    .line 1143
    .local v4, "output":[B
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->tables:[Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1145
    .local v5, "sorted_tables":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/woff2/Woff2Common$Table;>;"
    iget v6, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->header_version:I

    if-eqz v6, :cond_3

    .line 1147
    iget-object v6, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->ttc_fonts:[Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;

    array-length v8, v6

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_2

    aget-object v10, v6, v9

    .line 1148
    .local v10, "ttc_font":Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;
    new-instance v11, Ljava/util/TreeMap;

    invoke-direct {v11}, Ljava/util/TreeMap;-><init>()V

    .line 1149
    .local v11, "sorted_index_by_tag":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Short;>;"
    iget-object v12, v10, Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;->table_indices:[S

    array-length v13, v12

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_0

    aget-short v15, v12, v14

    .line 1150
    .local v15, "table_index":S
    iget-object v7, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->tables:[Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    aget-object v7, v7, v15

    iget v7, v7, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->tag:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-wide/from16 v16, v2

    .end local v2    # "firstTableOffset":J
    .local v16, "firstTableOffset":J
    invoke-static {v15}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v11, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    .end local v15    # "table_index":S
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v2, v16

    goto :goto_1

    .line 1152
    .end local v16    # "firstTableOffset":J
    .restart local v2    # "firstTableOffset":J
    :cond_0
    move-wide/from16 v16, v2

    .end local v2    # "firstTableOffset":J
    .restart local v16    # "firstTableOffset":J
    const/4 v2, 0x0

    .line 1153
    .local v2, "index":S
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1154
    .local v7, "i":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Short;>;"
    iget-object v12, v10, Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;->table_indices:[S

    add-int/lit8 v13, v2, 0x1

    int-to-short v13, v13

    .end local v2    # "index":S
    .local v13, "index":S
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Short;

    invoke-virtual {v14}, Ljava/lang/Short;->shortValue()S

    move-result v14

    aput-short v14, v12, v2

    .line 1155
    .end local v7    # "i":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Short;>;"
    move v2, v13

    goto :goto_2

    .line 1147
    .end local v10    # "ttc_font":Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;
    .end local v11    # "sorted_index_by_tag":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Short;>;"
    .end local v13    # "index":S
    :cond_1
    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v2, v16

    goto :goto_0

    .end local v16    # "firstTableOffset":J
    .local v2, "firstTableOffset":J
    :cond_2
    move-wide/from16 v16, v2

    .end local v2    # "firstTableOffset":J
    .restart local v16    # "firstTableOffset":J
    goto :goto_3

    .line 1159
    .end local v16    # "firstTableOffset":J
    .restart local v2    # "firstTableOffset":J
    :cond_3
    move-wide/from16 v16, v2

    .end local v2    # "firstTableOffset":J
    .restart local v16    # "firstTableOffset":J
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1163
    :goto_3
    move-object v2, v4

    .line 1164
    .local v2, "result":[B
    const/4 v3, 0x0

    .line 1165
    .local v3, "offset":I
    iget v6, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->header_version:I

    const/4 v7, 0x0

    if-eqz v6, :cond_8

    .line 1167
    iget v6, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->flavor:I

    invoke-static {v2, v3, v6}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU32([BII)I

    move-result v3

    .line 1168
    iget v6, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->header_version:I

    invoke-static {v2, v3, v6}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU32([BII)I

    move-result v3

    .line 1169
    iget-object v6, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->ttc_fonts:[Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;

    array-length v6, v6

    invoke-static {v2, v3, v6}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU32([BII)I

    move-result v3

    .line 1171
    move v6, v3

    .line 1172
    .local v6, "offset_table":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    iget-object v9, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->ttc_fonts:[Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;

    array-length v9, v9

    if-ge v8, v9, :cond_4

    .line 1173
    const/4 v9, 0x0

    invoke-static {v2, v3, v9}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU32([BII)I

    move-result v3

    .line 1172
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1176
    .end local v8    # "i":I
    :cond_4
    iget v8, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->header_version:I

    const/high16 v9, 0x20000

    if-ne v8, v9, :cond_5

    .line 1177
    const/4 v8, 0x0

    invoke-static {v2, v3, v8}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU32([BII)I

    move-result v3

    .line 1178
    invoke-static {v2, v3, v8}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU32([BII)I

    move-result v3

    .line 1179
    invoke-static {v2, v3, v8}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU32([BII)I

    move-result v3

    .line 1183
    :cond_5
    iget-object v8, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->ttc_fonts:[Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;

    array-length v8, v8

    new-array v8, v8, [Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;

    iput-object v8, v0, Lcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;->font_infos:[Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;

    .line 1184
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_5
    iget-object v9, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->ttc_fonts:[Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;

    array-length v9, v9

    if-ge v8, v9, :cond_7

    .line 1185
    iget-object v9, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->ttc_fonts:[Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;

    aget-object v9, v9, v8

    .line 1188
    .local v9, "ttc_font":Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;
    invoke-static {v2, v6, v3}, Lcom/itextpdf/io/font/woff2/StoreBytes;->storeU32([BII)I

    move-result v6

    .line 1191
    iput v3, v9, Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;->dst_offset:I

    .line 1192
    iget v10, v9, Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;->flavor:I

    iget-object v11, v9, Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;->table_indices:[S

    array-length v11, v11

    invoke-static {v2, v3, v10, v11}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->storeOffsetTable([BIII)I

    move-result v3

    .line 1194
    iget-object v10, v0, Lcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;->font_infos:[Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;

    new-instance v11, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;

    invoke-direct {v11, v7}, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;-><init>(Lcom/itextpdf/io/font/woff2/Woff2Dec$1;)V

    aput-object v11, v10, v8

    .line 1195
    iget-object v10, v9, Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;->table_indices:[S

    array-length v11, v10

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v11, :cond_6

    aget-short v13, v10, v12

    .line 1196
    .local v13, "table_index":S
    iget-object v14, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->tables:[Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    aget-object v14, v14, v13

    iget v14, v14, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->tag:I

    .line 1197
    .local v14, "tag":I
    iget-object v15, v0, Lcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;->font_infos:[Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;

    aget-object v15, v15, v8

    iget-object v15, v15, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;->table_entry_by_tag:Ljava/util/Map;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move/from16 v18, v6

    .end local v6    # "offset_table":I
    .local v18, "offset_table":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v15, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    invoke-static {v2, v3, v14}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->storeTableEntry([BII)I

    move-result v3

    .line 1195
    .end local v13    # "table_index":S
    .end local v14    # "tag":I
    add-int/lit8 v12, v12, 0x1

    move/from16 v6, v18

    const/4 v7, 0x0

    goto :goto_6

    .line 1201
    .end local v18    # "offset_table":I
    .restart local v6    # "offset_table":I
    :cond_6
    move/from16 v18, v6

    .end local v6    # "offset_table":I
    .restart local v18    # "offset_table":I
    iget v6, v9, Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;->dst_offset:I

    iget v7, v9, Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;->dst_offset:I

    sub-int v7, v3, v7

    invoke-static {v4, v6, v7}, Lcom/itextpdf/io/font/woff2/Woff2Common;->computeULongSum([BII)I

    move-result v6

    iput v6, v9, Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;->header_checksum:I

    .line 1184
    .end local v9    # "ttc_font":Lcom/itextpdf/io/font/woff2/Woff2Dec$TtcFont;
    add-int/lit8 v8, v8, 0x1

    move/from16 v6, v18

    const/4 v7, 0x0

    goto :goto_5

    .line 1203
    .end local v8    # "i":I
    .end local v18    # "offset_table":I
    :cond_7
    goto :goto_8

    .line 1204
    :cond_8
    const/4 v6, 0x1

    new-array v6, v6, [Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;

    iput-object v6, v0, Lcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;->font_infos:[Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;

    .line 1205
    iget v6, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->flavor:I

    iget-short v7, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->num_tables:S

    invoke-static {v2, v3, v6, v7}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->storeOffsetTable([BIII)I

    move-result v3

    .line 1206
    iget-object v6, v0, Lcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;->font_infos:[Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;

    new-instance v7, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;-><init>(Lcom/itextpdf/io/font/woff2/Woff2Dec$1;)V

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 1207
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_7
    iget-short v7, v1, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2Header;->num_tables:S

    if-ge v6, v7, :cond_9

    .line 1208
    iget-object v7, v0, Lcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;->font_infos:[Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;

    aget-object v7, v7, v8

    iget-object v7, v7, Lcom/itextpdf/io/font/woff2/Woff2Dec$Woff2FontInfo;->table_entry_by_tag:Ljava/util/Map;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    iget v8, v8, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->tag:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;

    iget v7, v7, Lcom/itextpdf/io/font/woff2/Woff2Common$Table;->tag:I

    invoke-static {v2, v3, v7}, Lcom/itextpdf/io/font/woff2/Woff2Dec;->storeTableEntry([BII)I

    move-result v3

    .line 1207
    add-int/lit8 v6, v6, 0x1

    const/4 v8, 0x0

    goto :goto_7

    .line 1213
    .end local v6    # "i":I
    :cond_9
    :goto_8
    array-length v6, v4

    move-object/from16 v7, p4

    const/4 v8, 0x0

    invoke-interface {v7, v4, v8, v6}, Lcom/itextpdf/io/font/woff2/Woff2Out;->write([BII)V

    .line 1214
    array-length v6, v4

    invoke-static {v4, v8, v6}, Lcom/itextpdf/io/font/woff2/Woff2Common;->computeULongSum([BII)I

    move-result v6

    iput v6, v0, Lcom/itextpdf/io/font/woff2/Woff2Dec$RebuildMetadata;->header_checksum:I

    .line 1215
    return-void

    .line 1139
    .end local v3    # "offset":I
    .end local v4    # "output":[B
    .end local v5    # "sorted_tables":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/woff2/Woff2Common$Table;>;"
    .end local v16    # "firstTableOffset":J
    .local v2, "firstTableOffset":J
    :cond_a
    move-wide/from16 v16, v2

    .end local v2    # "firstTableOffset":J
    .restart local v16    # "firstTableOffset":J
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method
