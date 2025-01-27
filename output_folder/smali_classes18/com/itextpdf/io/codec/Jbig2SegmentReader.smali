.class public Lcom/itextpdf/io/codec/Jbig2SegmentReader;
.super Ljava/lang/Object;
.source "Jbig2SegmentReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;,
        Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;
    }
.end annotation


# static fields
.field public static final END_OF_FILE:I = 0x33

.field public static final END_OF_PAGE:I = 0x31

.field public static final END_OF_STRIPE:I = 0x32

.field public static final EXTENSION:I = 0x3e

.field public static final IMMEDIATE_GENERIC_REFINEMENT_REGION:I = 0x2a

.field public static final IMMEDIATE_GENERIC_REGION:I = 0x26

.field public static final IMMEDIATE_HALFTONE_REGION:I = 0x16

.field public static final IMMEDIATE_LOSSLESS_GENERIC_REFINEMENT_REGION:I = 0x2b

.field public static final IMMEDIATE_LOSSLESS_GENERIC_REGION:I = 0x27

.field public static final IMMEDIATE_LOSSLESS_HALFTONE_REGION:I = 0x17

.field public static final IMMEDIATE_LOSSLESS_TEXT_REGION:I = 0x7

.field public static final IMMEDIATE_TEXT_REGION:I = 0x6

.field public static final INTERMEDIATE_GENERIC_REFINEMENT_REGION:I = 0x28

.field public static final INTERMEDIATE_GENERIC_REGION:I = 0x24

.field public static final INTERMEDIATE_HALFTONE_REGION:I = 0x14

.field public static final INTERMEDIATE_TEXT_REGION:I = 0x4

.field public static final PAGE_INFORMATION:I = 0x30

.field public static final PATTERN_DICTIONARY:I = 0x10

.field public static final PROFILES:I = 0x34

.field public static final SYMBOL_DICTIONARY:I = 0x0

.field public static final TABLES:I = 0x35


# instance fields
.field private final globals:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;",
            ">;"
        }
    .end annotation
.end field

.field private number_of_pages:I

.field private number_of_pages_known:Z

.field private final pages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;",
            ">;"
        }
    .end annotation
.end field

.field private ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

.field private read:Z

.field private final segments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;",
            ">;"
        }
    .end annotation
.end field

.field private sequential:Z


# direct methods
.method public constructor <init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)V
    .locals 1
    .param p1, "ra"    # Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->segments:Ljava/util/Map;

    .line 116
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->pages:Ljava/util/Map;

    .line 117
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->globals:Ljava/util/Set;

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->number_of_pages:I

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->read:Z

    .line 217
    iput-object p1, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    .line 218
    return-void
.end method

.method public static copyByteArray([B)[B
    .locals 3
    .param p0, "b"    # [B

    .line 221
    array-length v0, p0

    new-array v0, v0, [B

    .line 222
    .local v0, "bc":[B
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    return-object v0
.end method


# virtual methods
.method public getGlobal(Z)[B
    .locals 7
    .param p1, "for_embedding"    # Z

    .line 432
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 433
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 435
    .local v1, "streamBytes":[B
    :try_start_0
    iget-object v2, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->globals:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 436
    .local v3, "element":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;

    .line 437
    .local v4, "s":Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;
    if-eqz p1, :cond_1

    iget v5, v4, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->type:I

    const/16 v6, 0x33

    if-eq v5, v6, :cond_0

    iget v5, v4, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->type:I

    const/16 v6, 0x31

    if-ne v5, v6, :cond_1

    .line 439
    goto :goto_0

    .line 441
    :cond_1
    iget-object v5, v4, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->headerData:[B

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 442
    iget-object v5, v4, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->data:[B

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 443
    .end local v3    # "element":Ljava/lang/Object;
    .end local v4    # "s":Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;
    goto :goto_0

    .line 445
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 446
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    move-object v1, v2

    .line 448
    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    goto :goto_1

    .line 449
    :catch_0
    move-exception v2

    .line 450
    .local v2, "e":Ljava/io/IOException;
    const-class v3, Lcom/itextpdf/io/codec/Jbig2SegmentReader;

    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v3

    .line 451
    .local v3, "logger":Lorg/slf4j/Logger;
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 454
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "logger":Lorg/slf4j/Logger;
    :goto_1
    return-object v1
.end method

.method public getPage(I)Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;
    .locals 2
    .param p1, "page"    # I

    .line 428
    iget-object v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->pages:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;

    return-object v0
.end method

.method public getPageHeight(I)I
    .locals 2
    .param p1, "i"    # I

    .line 420
    iget-object v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->pages:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;

    iget v0, v0, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;->pageBitmapHeight:I

    return v0
.end method

.method public getPageWidth(I)I
    .locals 2
    .param p1, "i"    # I

    .line 424
    iget-object v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->pages:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;

    iget v0, v0, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;->pageBitmapWidth:I

    return v0
.end method

.method public numberOfPages()I
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->pages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public read()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    iget-boolean v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->read:Z

    if-nez v0, :cond_3

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->read:Z

    .line 232
    invoke-virtual {p0}, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->readFileHeader()V

    .line 234
    iget-boolean v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->sequential:Z

    if-eqz v0, :cond_1

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->readHeader()Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;

    move-result-object v0

    .line 238
    .local v0, "tmp":Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;
    invoke-virtual {p0, v0}, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->readSegment(Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;)V

    .line 239
    iget-object v1, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->segments:Ljava/util/Map;

    iget v2, v0, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->segmentNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .end local v0    # "tmp":Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;
    iget-object v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->getPosition()J

    move-result-wide v0

    iget-object v2, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->length()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    goto :goto_1

    .line 245
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->readHeader()Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;

    move-result-object v0

    .line 246
    .restart local v0    # "tmp":Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;
    iget-object v1, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->segments:Ljava/util/Map;

    iget v2, v0, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->segmentNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget v1, v0, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->type:I

    const/16 v2, 0x33

    if-ne v1, v2, :cond_1

    .line 248
    iget-object v1, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->segments:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 249
    .local v2, "integer":I
    iget-object v3, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->segments:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;

    invoke-virtual {p0, v3}, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->readSegment(Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;)V

    .line 250
    .end local v2    # "integer":I
    goto :goto_0

    .line 252
    .end local v0    # "tmp":Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;
    :cond_2
    :goto_1
    return-void

    .line 228
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already.attempted.a.read.on.this.jbig2.file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method readFileHeader()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    iget-object v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 390
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 391
    .local v1, "idstring":[B
    iget-object v2, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read([B)I

    .line 393
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 395
    .local v0, "refidstring":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v3, :cond_1

    .line 396
    aget-byte v3, v1, v2

    aget-byte v6, v0, v2

    if-ne v3, v6, :cond_0

    .line 395
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 397
    :cond_0
    new-instance v3, Lcom/itextpdf/io/IOException;

    const-string v6, "File header idstring is not good at byte {0}"

    invoke-direct {v3, v6}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v3, v5}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v3

    throw v3

    .line 401
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v2

    .line 403
    .local v2, "fileheaderflags":I
    and-int/lit8 v3, v2, 0x1

    if-ne v3, v5, :cond_2

    move v3, v5

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->sequential:Z

    .line 404
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_3

    move v4, v5

    :cond_3
    iput-boolean v4, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->number_of_pages_known:Z

    .line 406
    and-int/lit16 v3, v2, 0xfc

    if-nez v3, :cond_5

    .line 410
    if-eqz v4, :cond_4

    .line 411
    iget-object v3, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v3

    iput v3, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->number_of_pages:I

    .line 413
    :cond_4
    return-void

    .line 407
    :cond_5
    new-instance v3, Lcom/itextpdf/io/IOException;

    const-string v4, "File header flags bits from 2 to 7 should be 0, some not"

    invoke-direct {v3, v4}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    nop

    :array_0
    .array-data 1
        -0x69t
        0x4at
        0x42t
        0x32t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method readHeader()Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->getPosition()J

    move-result-wide v1

    long-to-int v1, v1

    .line 285
    .local v1, "ptr":I
    iget-object v2, v0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v2

    .line 286
    .local v2, "segment_number":I
    new-instance v3, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;

    invoke-direct {v3, v2}, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;-><init>(I)V

    .line 289
    .local v3, "s":Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;
    iget-object v4, v0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v4

    .line 290
    .local v4, "segment_header_flags":I
    and-int/lit16 v5, v4, 0x80

    const/16 v6, 0x80

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 291
    .local v5, "deferred_non_retain":Z
    :goto_0
    iput-boolean v5, v3, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->deferredNonRetain:Z

    .line 292
    and-int/lit8 v6, v4, 0x40

    const/16 v9, 0x40

    if-ne v6, v9, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 293
    .local v6, "page_association_size":Z
    :goto_1
    and-int/lit8 v9, v4, 0x3f

    .line 294
    .local v9, "segment_type":I
    iput v9, v3, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->type:I

    .line 297
    iget-object v10, v0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v10

    .line 298
    .local v10, "referred_to_byte0":I
    and-int/lit16 v11, v10, 0xe0

    const/4 v12, 0x5

    shr-int/2addr v11, v12

    .line 299
    .local v11, "count_of_referred_to_segments":I
    const/4 v13, 0x0

    .line 300
    .local v13, "referred_to_segment_numbers":[I
    const/4 v14, 0x0

    .line 302
    .local v14, "segment_retention_flags":[Z
    const/4 v15, 0x7

    if-ne v11, v15, :cond_5

    .line 304
    iget-object v12, v0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v12}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->getPosition()J

    move-result-wide v16

    const-wide/16 v18, 0x1

    sub-long v7, v16, v18

    invoke-virtual {v12, v7, v8}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 305
    iget-object v7, v0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v7

    const v8, 0x1fffffff

    and-int/2addr v7, v8

    .line 306
    .end local v11    # "count_of_referred_to_segments":I
    .local v7, "count_of_referred_to_segments":I
    add-int/lit8 v8, v7, 0x1

    new-array v8, v8, [Z

    .line 307
    .end local v14    # "segment_retention_flags":[Z
    .local v8, "segment_retention_flags":[Z
    const/4 v11, 0x0

    .line 308
    .local v11, "i":I
    const/4 v12, 0x0

    .line 310
    .local v12, "referred_to_current_byte":I
    :goto_2
    rem-int/lit8 v14, v11, 0x8

    .line 311
    .local v14, "j":I
    if-nez v14, :cond_2

    .line 312
    iget-object v15, v0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v15}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v12

    .line 314
    :cond_2
    const/4 v15, 0x1

    shl-int v16, v15, v14

    and-int v16, v16, v12

    move/from16 v17, v4

    .end local v4    # "segment_header_flags":I
    .local v17, "segment_header_flags":I
    shr-int v4, v16, v14

    if-ne v4, v15, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    aput-boolean v4, v8, v11

    .line 315
    nop

    .end local v14    # "j":I
    add-int/lit8 v11, v11, 0x1

    .line 316
    if-le v11, v7, :cond_4

    .line 318
    .end local v11    # "i":I
    .end local v12    # "referred_to_current_byte":I
    move v11, v7

    move-object v14, v8

    goto :goto_6

    .line 316
    .restart local v11    # "i":I
    .restart local v12    # "referred_to_current_byte":I
    :cond_4
    move/from16 v4, v17

    goto :goto_2

    .line 318
    .end local v7    # "count_of_referred_to_segments":I
    .end local v8    # "segment_retention_flags":[Z
    .end local v12    # "referred_to_current_byte":I
    .end local v17    # "segment_header_flags":I
    .restart local v4    # "segment_header_flags":I
    .local v11, "count_of_referred_to_segments":I
    .local v14, "segment_retention_flags":[Z
    :cond_5
    move/from16 v17, v4

    .end local v4    # "segment_header_flags":I
    .restart local v17    # "segment_header_flags":I
    const/4 v4, 0x4

    if-gt v11, v4, :cond_8

    .line 320
    add-int/lit8 v4, v11, 0x1

    new-array v14, v4, [Z

    .line 321
    and-int/lit8 v10, v10, 0x1f

    .line 322
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-gt v4, v11, :cond_7

    .line 323
    const/4 v7, 0x1

    shl-int v8, v7, v4

    and-int/2addr v8, v10

    shr-int/2addr v8, v4

    if-ne v8, v7, :cond_6

    const/4 v7, 0x1

    goto :goto_5

    :cond_6
    const/4 v7, 0x0

    :goto_5
    aput-boolean v7, v14, v4

    .line 322
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .end local v4    # "i":I
    :cond_7
    goto :goto_6

    .line 326
    :cond_8
    if-eq v11, v12, :cond_10

    const/4 v4, 0x6

    if-eq v11, v4, :cond_10

    .line 331
    :goto_6
    iput-object v14, v3, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->segmentRetentionFlags:[Z

    .line 332
    iput v11, v3, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->countOfReferredToSegments:I

    .line 335
    add-int/lit8 v4, v11, 0x1

    new-array v4, v4, [I

    .line 336
    .end local v13    # "referred_to_segment_numbers":[I
    .local v4, "referred_to_segment_numbers":[I
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_7
    if-gt v7, v11, :cond_b

    .line 337
    const/16 v8, 0x100

    if-gt v2, v8, :cond_9

    .line 338
    iget-object v8, v0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v8}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v8

    aput v8, v4, v7

    goto :goto_8

    .line 339
    :cond_9
    const/high16 v8, 0x10000

    if-gt v2, v8, :cond_a

    .line 340
    iget-object v8, v0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v8}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v8

    aput v8, v4, v7

    goto :goto_8

    .line 343
    :cond_a
    iget-object v8, v0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v8}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedInt()J

    move-result-wide v12

    long-to-int v8, v12

    aput v8, v4, v7

    .line 336
    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 346
    .end local v7    # "i":I
    :cond_b
    iput-object v4, v3, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->referredToSegmentNumbers:[I

    .line 350
    iget-object v7, v0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->getPosition()J

    move-result-wide v7

    long-to-int v7, v7

    sub-int/2addr v7, v1

    .line 351
    .local v7, "page_association_offset":I
    if-eqz v6, :cond_c

    .line 352
    iget-object v8, v0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v8}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v8

    .local v8, "segment_page_association":I
    goto :goto_9

    .line 354
    .end local v8    # "segment_page_association":I
    :cond_c
    iget-object v8, v0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v8}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v8

    .line 356
    .restart local v8    # "segment_page_association":I
    :goto_9
    if-ltz v8, :cond_f

    .line 360
    iput v8, v3, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->page:I

    .line 362
    iput-boolean v6, v3, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->page_association_size:Z

    .line 363
    iput v7, v3, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->page_association_offset:I

    .line 365
    if-lez v8, :cond_d

    iget-object v12, v0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->pages:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d

    .line 366
    iget-object v12, v0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->pages:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-instance v15, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;

    invoke-direct {v15, v8, v0}, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;-><init>(ILcom/itextpdf/io/codec/Jbig2SegmentReader;)V

    invoke-interface {v12, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    :cond_d
    if-lez v8, :cond_e

    .line 369
    iget-object v12, v0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->pages:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;

    invoke-virtual {v12, v3}, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;->addSegment(Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;)V

    goto :goto_a

    .line 371
    :cond_e
    iget-object v12, v0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->globals:Ljava/util/Set;

    invoke-interface {v12, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 375
    :goto_a
    iget-object v12, v0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v12}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedInt()J

    move-result-wide v12

    .line 377
    .local v12, "segment_data_length":J
    iput-wide v12, v3, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->dataLength:J

    .line 379
    iget-object v15, v0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    move-object/from16 v18, v4

    move/from16 v16, v5

    .end local v4    # "referred_to_segment_numbers":[I
    .end local v5    # "deferred_non_retain":Z
    .local v16, "deferred_non_retain":Z
    .local v18, "referred_to_segment_numbers":[I
    invoke-virtual {v15}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->getPosition()J

    move-result-wide v4

    long-to-int v4, v4

    .line 380
    .local v4, "end_ptr":I
    iget-object v5, v0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    move/from16 v19, v6

    move/from16 v20, v7

    .end local v6    # "page_association_size":Z
    .end local v7    # "page_association_offset":I
    .local v19, "page_association_size":Z
    .local v20, "page_association_offset":I
    int-to-long v6, v1

    invoke-virtual {v5, v6, v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 381
    sub-int v5, v4, v1

    new-array v5, v5, [B

    .line 382
    .local v5, "header_data":[B
    iget-object v6, v0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6, v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read([B)I

    .line 383
    iput-object v5, v3, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->headerData:[B

    .line 385
    return-object v3

    .line 357
    .end local v12    # "segment_data_length":J
    .end local v16    # "deferred_non_retain":Z
    .end local v18    # "referred_to_segment_numbers":[I
    .end local v19    # "page_association_size":Z
    .end local v20    # "page_association_offset":I
    .local v4, "referred_to_segment_numbers":[I
    .local v5, "deferred_non_retain":Z
    .restart local v6    # "page_association_size":Z
    .restart local v7    # "page_association_offset":I
    :cond_f
    move-object/from16 v18, v4

    move/from16 v16, v5

    move/from16 v19, v6

    move/from16 v20, v7

    .end local v4    # "referred_to_segment_numbers":[I
    .end local v5    # "deferred_non_retain":Z
    .end local v6    # "page_association_size":Z
    .end local v7    # "page_association_offset":I
    .restart local v16    # "deferred_non_retain":Z
    .restart local v18    # "referred_to_segment_numbers":[I
    .restart local v19    # "page_association_size":Z
    .restart local v20    # "page_association_offset":I
    new-instance v4, Lcom/itextpdf/io/IOException;

    const-string v5, "Page {0} is invalid for segment {1} starting at {2}"

    invoke-direct {v4, v5}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 358
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v4

    throw v4

    .line 326
    .end local v8    # "segment_page_association":I
    .end local v16    # "deferred_non_retain":Z
    .end local v18    # "referred_to_segment_numbers":[I
    .end local v19    # "page_association_size":Z
    .end local v20    # "page_association_offset":I
    .restart local v5    # "deferred_non_retain":Z
    .restart local v6    # "page_association_size":Z
    .restart local v13    # "referred_to_segment_numbers":[I
    :cond_10
    move/from16 v16, v5

    move/from16 v19, v6

    const/4 v7, 0x2

    .line 327
    .end local v5    # "deferred_non_retain":Z
    .end local v6    # "page_association_size":Z
    .restart local v16    # "deferred_non_retain":Z
    .restart local v19    # "page_association_size":Z
    new-instance v4, Lcom/itextpdf/io/IOException;

    const-string v5, "Count of referred-to segments has forbidden value in the header for segment {0} starting at {1}"

    invoke-direct {v4, v5}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    new-array v5, v7, [Ljava/lang/Object;

    .line 328
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v4

    throw v4
.end method

.method readSegment(Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;)V
    .locals 10
    .param p1, "s"    # Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->getPosition()J

    move-result-wide v0

    long-to-int v0, v0

    .line 257
    .local v0, "ptr":I
    iget-wide v1, p1, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->dataLength:J

    const-wide v3, 0xffffffffL

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 259
    return-void

    .line 262
    :cond_0
    iget-wide v1, p1, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->dataLength:J

    long-to-int v1, v1

    new-array v1, v1, [B

    .line 263
    .local v1, "data":[B
    iget-object v2, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read([B)I

    .line 264
    iput-object v1, p1, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->data:[B

    .line 266
    iget v2, p1, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->type:I

    const/16 v3, 0x30

    if-ne v2, v3, :cond_2

    .line 267
    iget-object v2, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->getPosition()J

    move-result-wide v2

    long-to-int v2, v2

    .line 268
    .local v2, "last":I
    iget-object v3, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 269
    iget-object v3, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v3

    .line 270
    .local v3, "page_bitmap_width":I
    iget-object v4, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v4

    .line 271
    .local v4, "page_bitmap_height":I
    iget-object v5, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->ra:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    int-to-long v6, v2

    invoke-virtual {v5, v6, v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 272
    iget-object v5, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->pages:Ljava/util/Map;

    iget v6, p1, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->page:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;

    .line 273
    .local v5, "p":Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;
    if-eqz v5, :cond_1

    .line 277
    iput v3, v5, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;->pageBitmapWidth:I

    .line 278
    iput v4, v5, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;->pageBitmapHeight:I

    goto :goto_0

    .line 274
    :cond_1
    new-instance v6, Lcom/itextpdf/io/IOException;

    const-string v7, "Referring to widht or height of a page we haven\'t seen yet: {0}"

    invoke-direct {v6, v7}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p1, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->page:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v6

    throw v6

    .line 280
    .end local v2    # "last":I
    .end local v3    # "page_bitmap_width":I
    .end local v4    # "page_bitmap_height":I
    .end local v5    # "p":Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;
    :cond_2
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 459
    iget-boolean v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->read:Z

    if-eqz v0, :cond_0

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Jbig2SegmentReader: number of pages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->numberOfPages()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 462
    :cond_0
    const-string v0, "Jbig2SegmentReader in indeterminate state."

    return-object v0
.end method
