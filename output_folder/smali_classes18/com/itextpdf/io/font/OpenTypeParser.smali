.class Lcom/itextpdf/io/font/OpenTypeParser;
.super Ljava/lang/Object;
.source "OpenTypeParser.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;,
        Lcom/itextpdf/io/font/OpenTypeParser$PostTable;,
        Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;,
        Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;,
        Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;
    }
.end annotation


# static fields
.field private static final HEAD_LOCA_FORMAT_OFFSET:I = 0x33

.field private static final serialVersionUID:J = 0x2f2be4957fb882aaL


# instance fields
.field protected allNameEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected cff:Z

.field protected cffLength:I

.field protected cffOffset:I

.field protected cmaps:Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;

.field protected directoryOffset:I

.field protected fileName:Ljava/lang/String;

.field protected fontName:Ljava/lang/String;

.field private glyphWidthsByIndex:[I

.field protected head:Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;

.field protected hhea:Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;

.field protected os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

.field protected post:Lcom/itextpdf/io/font/OpenTypeParser$PostTable;

.field protected raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

.field protected tables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field protected ttcIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->ttcIndex:I

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cff:Z

    .line 243
    invoke-static {p1}, Lcom/itextpdf/io/font/OpenTypeParser;->getTTCName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "ttcName":Ljava/lang/String;
    iput-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    .line 245
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 246
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->ttcIndex:I

    .line 248
    :cond_0
    new-instance v1, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    new-instance v2, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v2}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createBestSource(Ljava/lang/String;)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    iput-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    .line 249
    invoke-direct {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->initializeSfntTables()V

    .line 250
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "ttcPath"    # Ljava/lang/String;
    .param p2, "ttcIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->ttcIndex:I

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cff:Z

    .line 237
    iput p2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->ttcIndex:I

    .line 238
    new-instance v0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    new-instance v1, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    invoke-virtual {v1, p1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createBestSource(Ljava/lang/String;)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    iput-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    .line 239
    invoke-direct {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->initializeSfntTables()V

    .line 240
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "ttf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->ttcIndex:I

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cff:Z

    .line 226
    new-instance v0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    new-instance v1, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    invoke-virtual {v1, p1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource([B)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    iput-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    .line 227
    invoke-direct {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->initializeSfntTables()V

    .line 228
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2
    .param p1, "ttc"    # [B
    .param p2, "ttcIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->ttcIndex:I

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cff:Z

    .line 231
    iput p2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->ttcIndex:I

    .line 232
    new-instance v0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    new-instance v1, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    invoke-virtual {v1, p1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource([B)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    iput-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    .line 233
    invoke-direct {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->initializeSfntTables()V

    .line 234
    return-void
.end method

.method protected static getTTCName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 470
    if-nez p0, :cond_0

    .line 471
    const/4 v0, 0x0

    return-object v0

    .line 473
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".ttc,"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 474
    .local v0, "idx":I
    if-gez v0, :cond_1

    .line 475
    return-object p0

    .line 477
    :cond_1
    const/4 v1, 0x0

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initializeSfntTables()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->tables:Ljava/util/Map;

    .line 392
    iget v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->ttcIndex:I

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v0, :cond_6

    .line 393
    iget v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->ttcIndex:I

    .line 394
    .local v0, "dirIdx":I
    if-gez v0, :cond_1

    .line 395
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 396
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v2, "The font index for {0} must be positive."

    invoke-direct {v1, v2}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v1

    throw v1

    .line 398
    :cond_0
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v2, "The font index must be positive."

    invoke-direct {v1, v2}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 401
    :cond_1
    invoke-direct {p0, v2}, Lcom/itextpdf/io/font/OpenTypeParser;->readStandardString(I)Ljava/lang/String;

    move-result-object v5

    .line 402
    .local v5, "mainTag":Ljava/lang/String;
    const-string/jumbo v6, "ttcf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 403
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 404
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string/jumbo v2, "{0} is not a valid ttc file."

    invoke-direct {v1, v2}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v1

    throw v1

    .line 406
    :cond_2
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v2, "Not a valid ttc file."

    invoke-direct {v1, v2}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 409
    :cond_3
    iget-object v6, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    .line 410
    iget-object v6, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v6

    .line 411
    .local v6, "dirCount":I
    if-lt v0, v6, :cond_5

    .line 412
    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 413
    new-instance v2, Lcom/itextpdf/io/IOException;

    const-string v7, "The font index for {0} must be between 0 and {1}. It is {2}."

    invoke-direct {v2, v7}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    aput-object v8, v7, v3

    add-int/lit8 v3, v6, -0x1

    .line 414
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v1

    invoke-virtual {v2, v7}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v1

    throw v1

    .line 416
    :cond_4
    new-instance v2, Lcom/itextpdf/io/IOException;

    const-string v7, "The font index must be between 0 and {0}. It is {1}."

    invoke-direct {v2, v7}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    new-array v1, v1, [Ljava/lang/Object;

    add-int/lit8 v7, v6, -0x1

    .line 417
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {v2, v1}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v1

    throw v1

    .line 420
    :cond_5
    iget-object v7, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    mul-int/lit8 v8, v0, 0x4

    invoke-virtual {v7, v8}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    .line 421
    iget-object v7, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v7

    iput v7, p0, Lcom/itextpdf/io/font/OpenTypeParser;->directoryOffset:I

    .line 423
    .end local v0    # "dirIdx":I
    .end local v5    # "mainTag":Ljava/lang/String;
    .end local v6    # "dirCount":I
    :cond_6
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->directoryOffset:I

    int-to-long v5, v5

    invoke-virtual {v0, v5, v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 424
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v0

    .line 425
    .local v0, "ttId":I
    const/high16 v5, 0x10000

    if-eq v0, v5, :cond_8

    const v5, 0x4f54544f    # 3.56229504E9f

    if-eq v0, v5, :cond_8

    .line 426
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 427
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string/jumbo v2, "{0} is not a valid ttf or otf file."

    invoke-direct {v1, v2}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v1

    throw v1

    .line 429
    :cond_7
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v2, "Not a valid ttf or otf file."

    invoke-direct {v1, v2}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 432
    :cond_8
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v5

    .line 433
    .local v5, "num_tables":I
    iget-object v6, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    .line 434
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_0
    if-ge v6, v5, :cond_9

    .line 435
    invoke-direct {p0, v2}, Lcom/itextpdf/io/font/OpenTypeParser;->readStandardString(I)Ljava/lang/String;

    move-result-object v7

    .line 436
    .local v7, "tag":Ljava/lang/String;
    iget-object v8, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v8, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    .line 437
    new-array v8, v1, [I

    .line 438
    .local v8, "table_location":[I
    iget-object v9, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v9}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v9

    aput v9, v8, v3

    .line 439
    iget-object v9, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v9}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v9

    aput v9, v8, v4

    .line 440
    iget-object v9, p0, Lcom/itextpdf/io/font/OpenTypeParser;->tables:Ljava/util/Map;

    invoke-interface {v9, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    .end local v7    # "tag":Ljava/lang/String;
    .end local v8    # "table_location":[I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 442
    .end local v6    # "k":I
    :cond_9
    return-void
.end method

.method private readCmapTable()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 833
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->tables:Ljava/util/Map;

    const-string v1, "cmap"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 834
    .local v0, "table_location":[I
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 835
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 836
    new-instance v5, Lcom/itextpdf/io/IOException;

    const-string v6, "Table {0} does not exist in {1}"

    invoke-direct {v5, v6}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    aput-object v1, v2, v3

    invoke-virtual {v5, v2}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v1

    throw v1

    .line 838
    :cond_0
    new-instance v2, Lcom/itextpdf/io/IOException;

    const-string v5, "Table {0} does not exist."

    invoke-direct {v2, v5}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v1

    throw v1

    .line 841
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v5, v0, v4

    int-to-long v5, v5

    invoke-virtual {v1, v5, v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 842
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    .line 843
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    .line 844
    .local v1, "num_tables":I
    const/4 v2, 0x0

    .line 845
    .local v2, "map10":I
    const/4 v5, 0x0

    .line 846
    .local v5, "map31":I
    const/4 v6, 0x0

    .line 847
    .local v6, "map30":I
    const/4 v7, 0x0

    .line 848
    .local v7, "mapExt":I
    new-instance v8, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;

    invoke-direct {v8}, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;-><init>()V

    iput-object v8, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cmaps:Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;

    .line 849
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_0
    if-ge v8, v1, :cond_6

    .line 850
    iget-object v9, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v9}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v9

    .line 851
    .local v9, "platId":I
    iget-object v10, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v10

    .line 852
    .local v10, "platSpecId":I
    iget-object v11, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v11}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v11

    .line 853
    .local v11, "offset":I
    const/4 v12, 0x3

    if-ne v9, v12, :cond_2

    if-nez v10, :cond_2

    .line 854
    iget-object v12, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cmaps:Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;

    iput-boolean v3, v12, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->fontSpecific:Z

    .line 855
    move v6, v11

    goto :goto_1

    .line 856
    :cond_2
    if-ne v9, v12, :cond_3

    if-ne v10, v3, :cond_3

    .line 857
    move v5, v11

    goto :goto_1

    .line 858
    :cond_3
    if-ne v9, v12, :cond_4

    const/16 v12, 0xa

    if-ne v10, v12, :cond_4

    .line 859
    move v7, v11

    goto :goto_1

    .line 860
    :cond_4
    if-ne v9, v3, :cond_5

    if-nez v10, :cond_5

    .line 861
    move v2, v11

    .line 849
    .end local v9    # "platId":I
    .end local v10    # "platSpecId":I
    .end local v11    # "offset":I
    :cond_5
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 864
    .end local v8    # "k":I
    :cond_6
    if-lez v2, :cond_7

    .line 865
    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v8, v0, v4

    add-int/2addr v8, v2

    int-to-long v8, v8

    invoke-virtual {v3, v8, v9}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 866
    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v3

    .line 867
    .local v3, "format":I
    sparse-switch v3, :sswitch_data_0

    goto :goto_2

    .line 875
    :sswitch_0
    iget-object v8, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cmaps:Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;

    invoke-direct {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->readFormat6()Ljava/util/Map;

    move-result-object v9

    iput-object v9, v8, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->cmap10:Ljava/util/Map;

    goto :goto_2

    .line 872
    :sswitch_1
    iget-object v8, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cmaps:Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;

    invoke-direct {p0, v4}, Lcom/itextpdf/io/font/OpenTypeParser;->readFormat4(Z)Ljava/util/Map;

    move-result-object v9

    iput-object v9, v8, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->cmap10:Ljava/util/Map;

    .line 873
    goto :goto_2

    .line 869
    :sswitch_2
    iget-object v8, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cmaps:Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;

    invoke-direct {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->readFormat0()Ljava/util/Map;

    move-result-object v9

    iput-object v9, v8, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->cmap10:Ljava/util/Map;

    .line 879
    .end local v3    # "format":I
    :cond_7
    :goto_2
    const/4 v3, 0x4

    if-lez v5, :cond_8

    .line 880
    iget-object v8, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v9, v0, v4

    add-int/2addr v9, v5

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 881
    iget-object v8, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v8}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v8

    .line 882
    .local v8, "format":I
    if-ne v8, v3, :cond_8

    .line 883
    iget-object v9, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cmaps:Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;

    invoke-direct {p0, v4}, Lcom/itextpdf/io/font/OpenTypeParser;->readFormat4(Z)Ljava/util/Map;

    move-result-object v10

    iput-object v10, v9, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->cmap31:Ljava/util/Map;

    .line 886
    .end local v8    # "format":I
    :cond_8
    if-lez v6, :cond_a

    .line 887
    iget-object v8, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v9, v0, v4

    add-int/2addr v9, v6

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 888
    iget-object v8, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v8}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v8

    .line 889
    .restart local v8    # "format":I
    if-ne v8, v3, :cond_9

    .line 890
    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cmaps:Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;

    iget-boolean v9, v3, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->fontSpecific:Z

    invoke-direct {p0, v9}, Lcom/itextpdf/io/font/OpenTypeParser;->readFormat4(Z)Ljava/util/Map;

    move-result-object v9

    iput-object v9, v3, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->cmap10:Ljava/util/Map;

    goto :goto_3

    .line 892
    :cond_9
    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cmaps:Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;

    iput-boolean v4, v3, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->fontSpecific:Z

    .line 895
    .end local v8    # "format":I
    :cond_a
    :goto_3
    if-lez v7, :cond_b

    .line 896
    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v8, v0, v4

    add-int/2addr v8, v7

    int-to-long v8, v8

    invoke-virtual {v3, v8, v9}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 897
    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v3

    .line 898
    .restart local v3    # "format":I
    sparse-switch v3, :sswitch_data_1

    goto :goto_4

    .line 909
    :sswitch_3
    iget-object v4, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cmaps:Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;

    invoke-direct {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->readFormat12()Ljava/util/Map;

    move-result-object v8

    iput-object v8, v4, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->cmapExt:Ljava/util/Map;

    goto :goto_4

    .line 906
    :sswitch_4
    iget-object v4, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cmaps:Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;

    invoke-direct {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->readFormat6()Ljava/util/Map;

    move-result-object v8

    iput-object v8, v4, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->cmapExt:Ljava/util/Map;

    .line 907
    goto :goto_4

    .line 903
    :sswitch_5
    iget-object v8, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cmaps:Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;

    invoke-direct {p0, v4}, Lcom/itextpdf/io/font/OpenTypeParser;->readFormat4(Z)Ljava/util/Map;

    move-result-object v4

    iput-object v4, v8, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->cmapExt:Ljava/util/Map;

    .line 904
    goto :goto_4

    .line 900
    :sswitch_6
    iget-object v4, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cmaps:Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;

    invoke-direct {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->readFormat0()Ljava/util/Map;

    move-result-object v8

    iput-object v8, v4, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->cmapExt:Ljava/util/Map;

    .line 913
    .end local v3    # "format":I
    :cond_b
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x4 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_6
        0x4 -> :sswitch_5
        0x6 -> :sswitch_4
        0xc -> :sswitch_3
    .end sparse-switch
.end method

.method private readFormat0()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 963
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 964
    .local v0, "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    .line 965
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    .line 966
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 967
    .local v2, "r":[I
    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedByte()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 968
    aget v3, v2, v4

    invoke-virtual {p0, v3}, Lcom/itextpdf/io/font/OpenTypeParser;->getGlyphWidth(I)I

    move-result v3

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 969
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    .end local v2    # "r":[I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 971
    .end local v1    # "k":I
    :cond_0
    return-object v0
.end method

.method private readFormat12()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1058
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1059
    .local v0, "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    .line 1061
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v1

    .line 1062
    .local v1, "table_length":I
    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    .line 1063
    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v3

    .line 1064
    .local v3, "nGroups":I
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 1065
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v5

    .line 1066
    .local v5, "startCharCode":I
    iget-object v6, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v6

    .line 1067
    .local v6, "endCharCode":I
    iget-object v7, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v7

    .line 1068
    .local v7, "startGlyphID":I
    move v8, v5

    .local v8, "i":I
    :goto_1
    if-gt v8, v6, :cond_0

    .line 1069
    new-array v9, v2, [I

    .line 1070
    .local v9, "r":[I
    const/4 v10, 0x0

    aput v7, v9, v10

    .line 1071
    aget v10, v9, v10

    invoke-virtual {p0, v10}, Lcom/itextpdf/io/font/OpenTypeParser;->getGlyphWidth(I)I

    move-result v10

    const/4 v11, 0x1

    aput v10, v9, v11

    .line 1072
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    nop

    .end local v9    # "r":[I
    add-int/lit8 v7, v7, 0x1

    .line 1068
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1064
    .end local v5    # "startCharCode":I
    .end local v6    # "endCharCode":I
    .end local v7    # "startGlyphID":I
    .end local v8    # "i":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1076
    .end local v4    # "k":I
    :cond_1
    return-object v0
.end method

.method private readFormat4(Z)Ljava/util/Map;
    .locals 16
    .param p1, "fontSpecific"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 982
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 983
    .local v1, "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    iget-object v2, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v2

    .line 984
    .local v2, "table_lenght":I
    iget-object v3, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    .line 985
    iget-object v3, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v3

    div-int/2addr v3, v4

    .line 986
    .local v3, "segCount":I
    iget-object v5, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    .line 987
    new-array v5, v3, [I

    .line 988
    .local v5, "endCount":[I
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_0
    if-ge v6, v3, :cond_0

    .line 989
    iget-object v7, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v7

    aput v7, v5, v6

    .line 988
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 991
    .end local v6    # "k":I
    :cond_0
    iget-object v6, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6, v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    .line 992
    new-array v6, v3, [I

    .line 993
    .local v6, "startCount":[I
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_1
    if-ge v7, v3, :cond_1

    .line 994
    iget-object v8, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v8}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v8

    aput v8, v6, v7

    .line 993
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 996
    .end local v7    # "k":I
    :cond_1
    new-array v7, v3, [I

    .line 997
    .local v7, "idDelta":[I
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_2
    if-ge v8, v3, :cond_2

    .line 998
    iget-object v9, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v9}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v9

    aput v9, v7, v8

    .line 997
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1000
    .end local v8    # "k":I
    :cond_2
    new-array v8, v3, [I

    .line 1001
    .local v8, "idRO":[I
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_3
    if-ge v9, v3, :cond_3

    .line 1002
    iget-object v10, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v10

    aput v10, v8, v9

    .line 1001
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1004
    .end local v9    # "k":I
    :cond_3
    div-int/lit8 v9, v2, 0x2

    add-int/lit8 v9, v9, -0x8

    mul-int/lit8 v10, v3, 0x4

    sub-int/2addr v9, v10

    new-array v9, v9, [I

    .line 1005
    .local v9, "glyphId":[I
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_4
    array-length v11, v9

    if-ge v10, v11, :cond_4

    .line 1006
    iget-object v11, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v11}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v11

    aput v11, v9, v10

    .line 1005
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 1008
    .end local v10    # "k":I
    :cond_4
    const/4 v10, 0x0

    .restart local v10    # "k":I
    :goto_5
    if-ge v10, v3, :cond_9

    .line 1010
    aget v11, v6, v10

    .local v11, "j":I
    :goto_6
    aget v12, v5, v10

    if-gt v11, v12, :cond_8

    const v12, 0xffff

    if-eq v11, v12, :cond_8

    .line 1011
    aget v13, v8, v10

    if-nez v13, :cond_5

    .line 1012
    aget v13, v7, v10

    add-int/2addr v13, v11

    and-int/2addr v12, v13

    .local v12, "glyph":I
    goto :goto_7

    .line 1014
    .end local v12    # "glyph":I
    :cond_5
    aget v13, v8, v10

    div-int/2addr v13, v4

    add-int/2addr v13, v10

    sub-int/2addr v13, v3

    add-int/2addr v13, v11

    aget v14, v6, v10

    sub-int/2addr v13, v14

    .line 1015
    .local v13, "idx":I
    array-length v14, v9

    if-lt v13, v14, :cond_6

    .line 1016
    goto :goto_8

    .line 1017
    :cond_6
    aget v14, v9, v13

    aget v15, v7, v10

    add-int/2addr v14, v15

    and-int/2addr v12, v14

    .line 1019
    .end local v13    # "idx":I
    .restart local v12    # "glyph":I
    :goto_7
    new-array v13, v4, [I

    .line 1020
    .local v13, "r":[I
    const/4 v14, 0x0

    aput v12, v13, v14

    .line 1021
    aget v14, v13, v14

    invoke-virtual {v0, v14}, Lcom/itextpdf/io/font/OpenTypeParser;->getGlyphWidth(I)I

    move-result v14

    const/4 v15, 0x1

    aput v14, v13, v15

    .line 1026
    if-eqz p1, :cond_7

    const v14, 0xff00

    and-int/2addr v14, v11

    const v15, 0xf000

    if-ne v14, v15, :cond_7

    .line 1027
    and-int/lit16 v14, v11, 0xff

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v1, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    :cond_7
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v1, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    .end local v12    # "glyph":I
    .end local v13    # "r":[I
    :goto_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 1008
    .end local v11    # "j":I
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 1032
    .end local v10    # "k":I
    :cond_9
    return-object v1
.end method

.method private readFormat6()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1044
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1045
    .local v0, "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    .line 1046
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    .line 1047
    .local v1, "start_code":I
    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v2

    .line 1048
    .local v2, "code_count":I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1049
    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 1050
    .local v4, "r":[I
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v5

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 1051
    aget v5, v4, v6

    invoke-virtual {p0, v5}, Lcom/itextpdf/io/font/OpenTypeParser;->getGlyphWidth(I)I

    move-result v5

    const/4 v6, 0x1

    aput v5, v4, v6

    .line 1052
    add-int v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    .end local v4    # "r":[I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1054
    .end local v3    # "k":I
    :cond_0
    return-object v0
.end method

.method private readHeadTable()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 722
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->tables:Ljava/util/Map;

    const-string v1, "head"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 723
    .local v0, "table_location":[I
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 724
    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 725
    new-instance v3, Lcom/itextpdf/io/IOException;

    const-string v5, "Table {0} does not exist in {1}"

    invoke-direct {v3, v5}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v2

    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    aput-object v1, v5, v4

    invoke-virtual {v3, v5}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v1

    throw v1

    .line 727
    :cond_0
    new-instance v3, Lcom/itextpdf/io/IOException;

    const-string v5, "Table {0} does not exist."

    invoke-direct {v3, v5}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v2

    invoke-virtual {v3, v4}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v1

    throw v1

    .line 730
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v2, v0, v2

    const/16 v3, 0x10

    add-int/2addr v2, v3

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 731
    new-instance v1, Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;

    invoke-direct {v1}, Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->head:Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;

    .line 732
    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v2

    iput v2, v1, Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;->flags:I

    .line 733
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->head:Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;

    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v2

    iput v2, v1, Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;->unitsPerEm:I

    .line 734
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1, v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    .line 735
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->head:Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;

    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v2

    iput-short v2, v1, Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;->xMin:S

    .line 736
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->head:Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;

    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v2

    iput-short v2, v1, Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;->yMin:S

    .line 737
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->head:Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;

    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v2

    iput-short v2, v1, Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;->xMax:S

    .line 738
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->head:Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;

    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v2

    iput-short v2, v1, Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;->yMax:S

    .line 739
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->head:Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;

    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v2

    iput v2, v1, Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;->macStyle:I

    .line 740
    return-void
.end method

.method private readHheaTable()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 692
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->tables:Ljava/util/Map;

    const-string v1, "hhea"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 693
    .local v0, "table_location":[I
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 694
    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 695
    new-instance v3, Lcom/itextpdf/io/IOException;

    const-string v5, "Table {0} does not exist in {1}"

    invoke-direct {v3, v5}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v2

    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    aput-object v1, v5, v4

    invoke-virtual {v3, v5}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v1

    throw v1

    .line 697
    :cond_0
    new-instance v3, Lcom/itextpdf/io/IOException;

    const-string v5, "Table {0} does not exist."

    invoke-direct {v3, v5}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v2

    invoke-virtual {v3, v4}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v1

    throw v1

    .line 700
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v2, v0, v2

    add-int/lit8 v2, v2, 0x4

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 701
    new-instance v1, Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;

    invoke-direct {v1}, Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->hhea:Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;

    .line 702
    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v2

    iput-short v2, v1, Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;->Ascender:S

    .line 703
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->hhea:Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;

    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v2

    iput-short v2, v1, Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;->Descender:S

    .line 704
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->hhea:Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;

    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v2

    iput-short v2, v1, Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;->LineGap:S

    .line 705
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->hhea:Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;

    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v2

    iput v2, v1, Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;->advanceWidthMax:I

    .line 706
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->hhea:Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;

    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v2

    iput-short v2, v1, Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;->minLeftSideBearing:S

    .line 707
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->hhea:Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;

    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v2

    iput-short v2, v1, Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;->minRightSideBearing:S

    .line 708
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->hhea:Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;

    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v2

    iput-short v2, v1, Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;->xMaxExtent:S

    .line 709
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->hhea:Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;

    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v2

    iput-short v2, v1, Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;->caretSlopeRise:S

    .line 710
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->hhea:Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;

    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v2

    iput-short v2, v1, Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;->caretSlopeRun:S

    .line 711
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    .line 712
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->hhea:Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;

    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v2

    iput v2, v1, Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;->numberOfHMetrics:I

    .line 713
    return-void
.end method

.method private readNameTable()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 642
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/io/font/OpenTypeParser;->tables:Ljava/util/Map;

    const-string v2, "name"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 643
    .local v1, "table_location":[I
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_1

    .line 644
    iget-object v6, v0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 645
    new-instance v6, Lcom/itextpdf/io/IOException;

    const-string v7, "Table {0} does not exist in {1}"

    invoke-direct {v6, v7}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v5

    iget-object v2, v0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    aput-object v2, v3, v4

    invoke-virtual {v6, v3}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v2

    throw v2

    .line 647
    :cond_0
    new-instance v3, Lcom/itextpdf/io/IOException;

    const-string v6, "Table {0} does not exist."

    invoke-direct {v3, v6}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v2

    throw v2

    .line 650
    :cond_1
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Lcom/itextpdf/io/font/OpenTypeParser;->allNameEntries:Ljava/util/Map;

    .line 651
    iget-object v2, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v6, v1, v5

    add-int/2addr v6, v3

    int-to-long v6, v6

    invoke-virtual {v2, v6, v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 652
    iget-object v2, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v2

    .line 653
    .local v2, "numRecords":I
    iget-object v6, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v6

    .line 654
    .local v6, "startOfStorage":I
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_0
    if-ge v7, v2, :cond_5

    .line 655
    iget-object v8, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v8}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v8

    .line 656
    .local v8, "platformID":I
    iget-object v9, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v9}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v9

    .line 657
    .local v9, "platformEncodingID":I
    iget-object v10, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v10

    .line 658
    .local v10, "languageID":I
    iget-object v11, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v11}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v11

    .line 659
    .local v11, "nameID":I
    iget-object v12, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v12}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v12

    .line 660
    .local v12, "length":I
    iget-object v13, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v13}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v13

    .line 662
    .local v13, "offset":I
    iget-object v14, v0, Lcom/itextpdf/io/font/OpenTypeParser;->allNameEntries:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 663
    iget-object v14, v0, Lcom/itextpdf/io/font/OpenTypeParser;->allNameEntries:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .local v14, "names":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    goto :goto_1

    .line 665
    .end local v14    # "names":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    :cond_2
    iget-object v14, v0, Lcom/itextpdf/io/font/OpenTypeParser;->allNameEntries:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v4

    .local v17, "names":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    invoke-interface {v14, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v14, v17

    .line 667
    .end local v17    # "names":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    .restart local v14    # "names":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    :goto_1
    iget-object v4, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->getPosition()J

    move-result-wide v3

    long-to-int v3, v3

    .line 668
    .local v3, "pos":I
    iget-object v4, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v17, v1, v5

    add-int v17, v17, v6

    add-int v15, v17, v13

    move/from16 v19, v6

    .end local v6    # "startOfStorage":I
    .local v19, "startOfStorage":I
    int-to-long v5, v15

    invoke-virtual {v4, v5, v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 670
    const/4 v4, 0x3

    if-eqz v8, :cond_4

    if-eq v8, v4, :cond_4

    const/4 v5, 0x2

    if-ne v8, v5, :cond_3

    const/4 v5, 0x1

    if-ne v9, v5, :cond_3

    goto :goto_2

    .line 673
    :cond_3
    invoke-direct {v0, v12}, Lcom/itextpdf/io/font/OpenTypeParser;->readStandardString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "name":Ljava/lang/String;
    goto :goto_3

    .line 671
    .end local v5    # "name":Ljava/lang/String;
    :cond_4
    :goto_2
    invoke-direct {v0, v12}, Lcom/itextpdf/io/font/OpenTypeParser;->readUnicodeString(I)Ljava/lang/String;

    move-result-object v5

    .line 675
    .restart local v5    # "name":Ljava/lang/String;
    :goto_3
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    .line 676
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v17, 0x0

    aput-object v18, v6, v17

    .line 677
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v16, 0x1

    aput-object v18, v6, v16

    .line 678
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    const/4 v15, 0x2

    aput-object v18, v6, v15

    aput-object v5, v6, v4

    .line 675
    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    iget-object v4, v0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    move-object v6, v1

    .end local v1    # "table_location":[I
    .local v6, "table_location":[I
    int-to-long v0, v3

    invoke-virtual {v4, v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 654
    .end local v3    # "pos":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v8    # "platformID":I
    .end local v9    # "platformEncodingID":I
    .end local v10    # "languageID":I
    .end local v11    # "nameID":I
    .end local v12    # "length":I
    .end local v13    # "offset":I
    .end local v14    # "names":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v19

    goto/16 :goto_0

    .line 683
    .end local v7    # "k":I
    .end local v19    # "startOfStorage":I
    .restart local v1    # "table_location":[I
    .local v6, "startOfStorage":I
    :cond_5
    return-void
.end method

.method private readOs_2Table()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 750
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->tables:Ljava/util/Map;

    const-string v1, "OS/2"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 751
    .local v0, "table_location":[I
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 752
    iget-object v4, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    const-string v5, "os/2"

    if-eqz v4, :cond_0

    .line 753
    new-instance v4, Lcom/itextpdf/io/IOException;

    const-string v6, "Table {0} does not exist in {1}"

    invoke-direct {v4, v6}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v3

    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v4, v1}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v1

    throw v1

    .line 755
    :cond_0
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v4, "Table {0} does not exist."

    invoke-direct {v1, v4}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v3

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v1

    throw v1

    .line 758
    :cond_1
    new-instance v4, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    invoke-direct {v4}, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;-><init>()V

    iput-object v4, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    .line 759
    iget-object v4, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v5, v0, v3

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 760
    iget-object v4, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v4

    .line 761
    .local v4, "version":I
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v6, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v6

    iput-short v6, v5, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->xAvgCharWidth:S

    .line 762
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v6, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v6

    iput v6, v5, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->usWeightClass:I

    .line 763
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v6, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v6

    iput v6, v5, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->usWidthClass:I

    .line 764
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v6, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v6

    iput-short v6, v5, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->fsType:S

    .line 765
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v6, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v6

    iput-short v6, v5, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->ySubscriptXSize:S

    .line 766
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v6, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v6

    iput-short v6, v5, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->ySubscriptYSize:S

    .line 767
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v6, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v6

    iput-short v6, v5, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->ySubscriptXOffset:S

    .line 768
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v6, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v6

    iput-short v6, v5, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->ySubscriptYOffset:S

    .line 769
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v6, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v6

    iput-short v6, v5, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->ySuperscriptXSize:S

    .line 770
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v6, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v6

    iput-short v6, v5, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->ySuperscriptYSize:S

    .line 771
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v6, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v6

    iput-short v6, v5, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->ySuperscriptXOffset:S

    .line 772
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v6, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v6

    iput-short v6, v5, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->ySuperscriptYOffset:S

    .line 773
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v6, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v6

    iput-short v6, v5, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->yStrikeoutSize:S

    .line 774
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v6, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v6

    iput-short v6, v5, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->yStrikeoutPosition:S

    .line 775
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v6, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v6

    iput-short v6, v5, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->sFamilyClass:S

    .line 776
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget-object v6, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v6, v6, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->panose:[B

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([B)V

    .line 777
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    .line 778
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget-object v6, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v6, v6, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->achVendID:[B

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([B)V

    .line 779
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v6, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v6

    iput v6, v5, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->fsSelection:I

    .line 780
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v6, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v6

    iput v6, v5, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->usFirstCharIndex:I

    .line 781
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v6, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v6

    iput v6, v5, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->usLastCharIndex:I

    .line 782
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v6, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v6

    iput-short v6, v5, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->sTypoAscender:S

    .line 783
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v6, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v6

    iput-short v6, v5, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->sTypoDescender:S

    .line 784
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-short v5, v5, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->sTypoDescender:S

    if-lez v5, :cond_2

    .line 785
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-short v6, v5, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->sTypoDescender:S

    neg-int v6, v6

    int-to-short v6, v6

    iput-short v6, v5, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->sTypoDescender:S

    .line 787
    :cond_2
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v6, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v6

    iput-short v6, v5, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->sTypoLineGap:S

    .line 788
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v6, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v6

    iput v6, v5, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->usWinAscent:I

    .line 789
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v6, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v6

    iput v6, v5, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->usWinDescent:I

    .line 790
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget v5, v5, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->usWinDescent:I

    if-lez v5, :cond_3

    .line 791
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget v6, v5, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->usWinDescent:I

    neg-int v6, v6

    int-to-short v6, v6

    iput v6, v5, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->usWinDescent:I

    .line 793
    :cond_3
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iput v3, v5, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->ulCodePageRange1:I

    .line 794
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iput v3, v5, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->ulCodePageRange2:I

    .line 795
    if-lez v4, :cond_4

    .line 796
    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v5

    iput v5, v3, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->ulCodePageRange1:I

    .line 797
    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v5

    iput v5, v3, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->ulCodePageRange2:I

    .line 799
    :cond_4
    if-le v4, v2, :cond_5

    .line 801
    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    .line 802
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v2

    iput v2, v1, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->sCapHeight:I

    goto :goto_0

    .line 804
    :cond_5
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    const-wide v2, 0x3fe6666666666666L    # 0.7

    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->head:Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;

    iget v5, v5, Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;->unitsPerEm:I

    int-to-double v5, v5

    mul-double/2addr v5, v2

    double-to-int v2, v5

    iput v2, v1, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->sCapHeight:I

    .line 806
    :goto_0
    return-void
.end method

.method private readPostTable()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 809
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->tables:Ljava/util/Map;

    const-string v1, "post"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 810
    .local v0, "table_location":[I
    if-eqz v0, :cond_1

    .line 811
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v2, 0x0

    aget v3, v0, v2

    add-int/lit8 v3, v3, 0x4

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 812
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v1

    .line 813
    .local v1, "mantissa":S
    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v3

    .line 814
    .local v3, "fraction":I
    new-instance v4, Lcom/itextpdf/io/font/OpenTypeParser$PostTable;

    invoke-direct {v4}, Lcom/itextpdf/io/font/OpenTypeParser$PostTable;-><init>()V

    iput-object v4, p0, Lcom/itextpdf/io/font/OpenTypeParser;->post:Lcom/itextpdf/io/font/OpenTypeParser$PostTable;

    .line 815
    int-to-double v5, v1

    int-to-double v7, v3

    const-wide/high16 v9, 0x40d0000000000000L    # 16384.0

    div-double/2addr v7, v9

    add-double/2addr v5, v7

    double-to-float v5, v5

    iput v5, v4, Lcom/itextpdf/io/font/OpenTypeParser$PostTable;->italicAngle:F

    .line 816
    iget-object v4, p0, Lcom/itextpdf/io/font/OpenTypeParser;->post:Lcom/itextpdf/io/font/OpenTypeParser$PostTable;

    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v5

    iput v5, v4, Lcom/itextpdf/io/font/OpenTypeParser$PostTable;->underlinePosition:I

    .line 817
    iget-object v4, p0, Lcom/itextpdf/io/font/OpenTypeParser;->post:Lcom/itextpdf/io/font/OpenTypeParser$PostTable;

    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v5

    iput v5, v4, Lcom/itextpdf/io/font/OpenTypeParser$PostTable;->underlineThickness:I

    .line 818
    iget-object v4, p0, Lcom/itextpdf/io/font/OpenTypeParser;->post:Lcom/itextpdf/io/font/OpenTypeParser$PostTable;

    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, v4, Lcom/itextpdf/io/font/OpenTypeParser$PostTable;->isFixedPitch:Z

    .line 819
    .end local v1    # "mantissa":S
    .end local v3    # "fraction":I
    goto :goto_0

    .line 820
    :cond_1
    new-instance v1, Lcom/itextpdf/io/font/OpenTypeParser$PostTable;

    invoke-direct {v1}, Lcom/itextpdf/io/font/OpenTypeParser$PostTable;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->post:Lcom/itextpdf/io/font/OpenTypeParser$PostTable;

    .line 821
    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->hhea:Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;

    iget-short v2, v2, Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;->caretSlopeRun:S

    int-to-double v2, v2

    iget-object v4, p0, Lcom/itextpdf/io/font/OpenTypeParser;->hhea:Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;

    iget-short v4, v4, Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;->caretSlopeRise:S

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    neg-double v2, v2

    const-wide v4, 0x4066800000000000L    # 180.0

    mul-double/2addr v2, v4

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, v1, Lcom/itextpdf/io/font/OpenTypeParser$PostTable;->italicAngle:F

    .line 823
    :goto_0
    return-void
.end method

.method private readStandardString(I)Ljava/lang/String;
    .locals 2
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 924
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const-string v1, "Cp1252"

    invoke-virtual {v0, p1, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readUnicodeString(I)Ljava/lang/String;
    .locals 3
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 936
    .local v0, "buf":Ljava/lang/StringBuilder;
    div-int/lit8 p1, p1, 0x2

    .line 937
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 938
    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readChar()C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 937
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 940
    .end local v1    # "k":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected checkCff()V
    .locals 3

    .line 482
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->tables:Ljava/util/Map;

    const-string v1, "CFF "

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 483
    .local v0, "table_location":[I
    if-eqz v0, :cond_0

    .line 484
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cff:Z

    .line 485
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cffOffset:I

    .line 486
    aget v1, v0, v1

    iput v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cffLength:I

    .line 488
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V

    .line 387
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    .line 388
    return-void
.end method

.method public getAllNameEntries()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->allNameEntries:Ljava/util/Map;

    return-object v0
.end method

.method public getCmapTable()Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cmaps:Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;

    return-object v0
.end method

.method public getFontNames()Lcom/itextpdf/io/font/FontNames;
    .locals 10

    .line 296
    new-instance v0, Lcom/itextpdf/io/font/FontNames;

    invoke-direct {v0}, Lcom/itextpdf/io/font/FontNames;-><init>()V

    .line 297
    .local v0, "fontNames":Lcom/itextpdf/io/font/FontNames;
    invoke-virtual {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->getAllNameEntries()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontNames;->setAllNames(Ljava/util/Map;)V

    .line 298
    invoke-virtual {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->getPsFontName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontNames;->setFontName(Ljava/lang/String;)V

    .line 299
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontNames;->getNames(I)[[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontNames;->setFullName([[Ljava/lang/String;)V

    .line 300
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontNames;->getNames(I)[[Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "otfFamilyName":[[Ljava/lang/String;
    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 302
    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontNames;->setFamilyName([[Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {v0, v2}, Lcom/itextpdf/io/font/FontNames;->getNames(I)[[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/io/font/FontNames;->setFamilyName([[Ljava/lang/String;)V

    .line 306
    :goto_0
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/itextpdf/io/font/FontNames;->getNames(I)[[Ljava/lang/String;

    move-result-object v4

    .line 307
    .local v4, "subfamily":[[Ljava/lang/String;
    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    .line 308
    aget-object v7, v4, v6

    aget-object v7, v7, v5

    invoke-virtual {v0, v7}, Lcom/itextpdf/io/font/FontNames;->setStyle(Ljava/lang/String;)V

    .line 310
    :cond_1
    const/16 v7, 0x11

    invoke-virtual {v0, v7}, Lcom/itextpdf/io/font/FontNames;->getNames(I)[[Ljava/lang/String;

    move-result-object v7

    .line 311
    .local v7, "otfSubFamily":[[Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 312
    invoke-virtual {v0, v7}, Lcom/itextpdf/io/font/FontNames;->setSubfamily([[Ljava/lang/String;)V

    goto :goto_1

    .line 314
    :cond_2
    invoke-virtual {v0, v4}, Lcom/itextpdf/io/font/FontNames;->setSubfamily([[Ljava/lang/String;)V

    .line 316
    :goto_1
    const/16 v8, 0x14

    invoke-virtual {v0, v8}, Lcom/itextpdf/io/font/FontNames;->getNames(I)[[Ljava/lang/String;

    move-result-object v8

    .line 317
    .local v8, "cidName":[[Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 318
    aget-object v9, v8, v6

    aget-object v5, v9, v5

    invoke-virtual {v0, v5}, Lcom/itextpdf/io/font/FontNames;->setCidFontName(Ljava/lang/String;)V

    .line 320
    :cond_3
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget v5, v5, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->usWeightClass:I

    invoke-virtual {v0, v5}, Lcom/itextpdf/io/font/FontNames;->setFontWeight(I)V

    .line 321
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget v5, v5, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->usWidthClass:I

    invoke-static {v5}, Lcom/itextpdf/io/font/constants/FontStretches;->fromOpenTypeWidthClass(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/itextpdf/io/font/FontNames;->setFontStretch(Ljava/lang/String;)V

    .line 322
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->head:Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;

    iget v5, v5, Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;->macStyle:I

    invoke-virtual {v0, v5}, Lcom/itextpdf/io/font/FontNames;->setMacStyle(I)V

    .line 323
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    iget-short v5, v5, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->fsType:S

    if-eq v5, v3, :cond_4

    goto :goto_2

    :cond_4
    move v2, v6

    :goto_2
    invoke-virtual {v0, v2}, Lcom/itextpdf/io/font/FontNames;->setAllowEmbedding(Z)V

    .line 324
    return-object v0
.end method

.method public getFullFont()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    const/4 v0, 0x0

    .line 334
    .local v0, "rf2":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->createView()Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    move-result-object v1

    move-object v0, v1

    .line 335
    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->length()J

    move-result-wide v1

    long-to-int v1, v1

    new-array v1, v1, [B

    .line 336
    .local v1, "b":[B
    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    nop

    .line 340
    if-eqz v0, :cond_0

    .line 341
    :try_start_1
    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 343
    :catch_0
    move-exception v2

    goto :goto_1

    .line 344
    :cond_0
    :goto_0
    nop

    .line 337
    :goto_1
    return-object v1

    .line 339
    .end local v1    # "b":[B
    :catchall_0
    move-exception v1

    .line 340
    if-eqz v0, :cond_1

    .line 341
    :try_start_2
    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 343
    :catch_1
    move-exception v2

    goto :goto_3

    .line 344
    :cond_1
    :goto_2
    nop

    .line 345
    :goto_3
    throw v1
.end method

.method protected getGlyphWidth(I)I
    .locals 2
    .param p1, "glyph"    # I

    .line 950
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->glyphWidthsByIndex:[I

    array-length v1, v0

    if-lt p1, v1, :cond_0

    .line 951
    array-length v1, v0

    add-int/lit8 p1, v1, -0x1

    .line 952
    :cond_0
    aget v0, v0, p1

    return v0
.end method

.method public getGlyphWidthsByIndex()[I
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->glyphWidthsByIndex:[I

    return-object v0
.end method

.method public getHeadTable()Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->head:Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;

    return-object v0
.end method

.method public getHheaTable()Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->hhea:Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;

    return-object v0
.end method

.method public getOs_2Table()Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->os_2:Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    return-object v0
.end method

.method public getPostTable()Lcom/itextpdf/io/font/OpenTypeParser$PostTable;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->post:Lcom/itextpdf/io/font/OpenTypeParser$PostTable;

    return-object v0
.end method

.method public getPsFontName()Ljava/lang/String;
    .locals 4

    .line 256
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fontName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->allNameEntries:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 258
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 259
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fontName:Ljava/lang/String;

    goto :goto_0

    .line 261
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    const/16 v3, 0x2d

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fontName:Ljava/lang/String;

    .line 264
    .end local v0    # "names":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fontName:Ljava/lang/String;

    return-object v0
.end method

.method getSubset(Ljava/util/Set;Z)[B
    .locals 7
    .param p2, "subset"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;Z)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    .local p1, "glyphs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v6, Lcom/itextpdf/io/font/TrueTypeFontSubset;

    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    .line 378
    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->createView()Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    move-result-object v2

    iget v4, p0, Lcom/itextpdf/io/font/OpenTypeParser;->directoryOffset:I

    move-object v0, v6

    move-object v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/io/font/TrueTypeFontSubset;-><init>(Ljava/lang/String;Lcom/itextpdf/io/source/RandomAccessFileOrArray;Ljava/util/Set;IZ)V

    .line 379
    .local v0, "sb":Lcom/itextpdf/io/font/TrueTypeFontSubset;
    invoke-virtual {v0}, Lcom/itextpdf/io/font/TrueTypeFontSubset;->process()[B

    move-result-object v1

    return-object v1
.end method

.method public isCff()Z
    .locals 1

    .line 328
    iget-boolean v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cff:Z

    return v0
.end method

.method protected loadTables(Z)V
    .locals 0
    .param p1, "all"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 449
    invoke-direct {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->readNameTable()V

    .line 450
    invoke-direct {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->readHeadTable()V

    .line 451
    invoke-direct {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->readOs_2Table()V

    .line 452
    invoke-direct {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->readPostTable()V

    .line 453
    if-eqz p1, :cond_0

    .line 454
    invoke-virtual {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->checkCff()V

    .line 455
    invoke-direct {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->readHheaTable()V

    .line 456
    invoke-virtual {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->readGlyphWidths()V

    .line 457
    invoke-direct {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->readCmapTable()V

    .line 459
    :cond_0
    return-void
.end method

.method protected readBbox(I)[[I
    .locals 14
    .param p1, "unitsPerEm"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 570
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->tables:Ljava/util/Map;

    const-string v1, "head"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 571
    .local v0, "tableLocation":[I
    const-string v2, "Table {0} does not exist in {1}"

    const-string v3, "Table {0} does not exist."

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v0, :cond_1

    .line 572
    iget-object v7, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 573
    new-instance v3, Lcom/itextpdf/io/IOException;

    invoke-direct {v3, v2}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v5

    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    aput-object v1, v2, v6

    invoke-virtual {v3, v2}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v1

    throw v1

    .line 575
    :cond_0
    new-instance v2, Lcom/itextpdf/io/IOException;

    invoke-direct {v2, v3}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v1

    throw v1

    .line 578
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v7, v0, v5

    add-int/lit8 v7, v7, 0x33

    int-to-long v7, v7

    invoke-virtual {v1, v7, v8}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 579
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    if-nez v1, :cond_2

    move v1, v6

    goto :goto_0

    :cond_2
    move v1, v5

    .line 580
    .local v1, "locaShortTable":Z
    :goto_0
    iget-object v7, p0, Lcom/itextpdf/io/font/OpenTypeParser;->tables:Ljava/util/Map;

    const-string v8, "loca"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, [I

    .line 581
    if-nez v0, :cond_3

    .line 582
    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, [[I

    return-object v2

    .line 584
    :cond_3
    iget-object v7, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v8, v0, v5

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 586
    const/4 v7, 0x4

    if-eqz v1, :cond_5

    .line 587
    aget v8, v0, v6

    div-int/2addr v8, v4

    .line 588
    .local v8, "entries":I
    new-array v9, v8, [I

    .line 589
    .local v9, "locaTable":[I
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_1
    if-ge v10, v8, :cond_4

    .line 590
    iget-object v11, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v11}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v11

    mul-int/2addr v11, v4

    aput v11, v9, v10

    .line 589
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 592
    .end local v8    # "entries":I
    .end local v10    # "k":I
    :cond_4
    goto :goto_3

    .line 593
    .end local v9    # "locaTable":[I
    :cond_5
    aget v8, v0, v6

    div-int/2addr v8, v7

    .line 594
    .restart local v8    # "entries":I
    new-array v9, v8, [I

    .line 595
    .restart local v9    # "locaTable":[I
    const/4 v10, 0x0

    .restart local v10    # "k":I
    :goto_2
    if-ge v10, v8, :cond_6

    .line 596
    iget-object v11, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v11}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v11

    aput v11, v9, v10

    .line 595
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 600
    .end local v8    # "entries":I
    .end local v10    # "k":I
    :cond_6
    :goto_3
    iget-object v8, p0, Lcom/itextpdf/io/font/OpenTypeParser;->tables:Ljava/util/Map;

    const-string v10, "glyf"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, [I

    .line 601
    if-nez v0, :cond_8

    .line 602
    iget-object v7, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    if-eqz v7, :cond_7

    .line 603
    new-instance v3, Lcom/itextpdf/io/IOException;

    invoke-direct {v3, v2}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v10, v2, v5

    iget-object v4, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    aput-object v4, v2, v6

    invoke-virtual {v3, v2}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v2

    throw v2

    .line 605
    :cond_7
    new-instance v2, Lcom/itextpdf/io/IOException;

    invoke-direct {v2, v3}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v10, v3, v5

    invoke-virtual {v2, v3}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v2

    throw v2

    .line 608
    :cond_8
    aget v2, v0, v5

    .line 609
    .local v2, "tableGlyphOffset":I
    array-length v3, v9

    sub-int/2addr v3, v6

    new-array v3, v3, [[I

    .line 610
    .local v3, "bboxes":[[I
    const/4 v8, 0x0

    .local v8, "glyph":I
    :goto_4
    array-length v10, v9

    sub-int/2addr v10, v6

    if-ge v8, v10, :cond_a

    .line 611
    aget v10, v9, v8

    .line 612
    .local v10, "start":I
    add-int/lit8 v11, v8, 0x1

    aget v11, v9, v11

    if-eq v10, v11, :cond_9

    .line 613
    iget-object v11, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    add-int v12, v2, v10

    add-int/2addr v12, v4

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 614
    new-array v11, v7, [I

    iget-object v12, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    .line 615
    invoke-virtual {v12}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v12

    mul-int/lit16 v12, v12, 0x3e8

    div-int/2addr v12, p1

    aput v12, v11, v5

    iget-object v12, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    .line 616
    invoke-virtual {v12}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v12

    mul-int/lit16 v12, v12, 0x3e8

    div-int/2addr v12, p1

    aput v12, v11, v6

    iget-object v12, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    .line 617
    invoke-virtual {v12}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v12

    mul-int/lit16 v12, v12, 0x3e8

    div-int/2addr v12, p1

    aput v12, v11, v4

    const/4 v12, 0x3

    iget-object v13, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    .line 618
    invoke-virtual {v13}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v13

    mul-int/lit16 v13, v13, 0x3e8

    div-int/2addr v13, p1

    aput v13, v11, v12

    aput-object v11, v3, v8

    .line 610
    .end local v10    # "start":I
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 622
    .end local v8    # "glyph":I
    :cond_a
    return-object v3
.end method

.method public readCffFont()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    invoke-virtual {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->isCff()Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    const/4 v0, 0x0

    return-object v0

    .line 359
    :cond_0
    const/4 v0, 0x0

    .line 361
    .local v0, "rf2":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->createView()Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    move-result-object v1

    move-object v0, v1

    .line 362
    iget v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cffOffset:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 363
    iget v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->cffLength:I

    new-array v1, v1, [B

    .line 364
    .local v1, "cff":[B
    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    nop

    .line 368
    if-eqz v0, :cond_1

    .line 369
    :try_start_1
    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 371
    :catch_0
    move-exception v2

    goto :goto_1

    .line 372
    :cond_1
    :goto_0
    nop

    .line 365
    :goto_1
    return-object v1

    .line 367
    .end local v1    # "cff":[B
    :catchall_0
    move-exception v1

    .line 368
    if-eqz v0, :cond_2

    .line 369
    :try_start_2
    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 371
    :catch_1
    move-exception v2

    goto :goto_3

    .line 372
    :cond_2
    :goto_2
    nop

    .line 373
    :goto_3
    throw v1
.end method

.method protected readGlyphWidths()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 498
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->hhea:Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;

    iget v0, v0, Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;->numberOfHMetrics:I

    .line 499
    .local v0, "numberOfHMetrics":I
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->head:Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;

    iget v1, v1, Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;->unitsPerEm:I

    .line 501
    .local v1, "unitsPerEm":I
    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->tables:Ljava/util/Map;

    const-string v3, "hmtx"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 502
    .local v2, "table_location":[I
    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 503
    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 504
    new-instance v5, Lcom/itextpdf/io/IOException;

    const-string v7, "Table {0} does not exist in {1}"

    invoke-direct {v5, v7}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v4

    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    aput-object v3, v7, v6

    invoke-virtual {v5, v7}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v3

    throw v3

    .line 506
    :cond_0
    new-instance v5, Lcom/itextpdf/io/IOException;

    const-string v7, "Table {0} does not exist."

    invoke-direct {v5, v7}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v4

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v3

    throw v3

    .line 509
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/io/font/OpenTypeParser;->readNumGlyphs()I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->glyphWidthsByIndex:[I

    .line 510
    iget-object v3, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v4, v2, v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 511
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 512
    iget-object v4, p0, Lcom/itextpdf/io/font/OpenTypeParser;->glyphWidthsByIndex:[I

    iget-object v5, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    div-int/2addr v5, v1

    aput v5, v4, v3

    .line 514
    iget-object v4, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    div-int/2addr v4, v1

    .line 511
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 518
    .end local v3    # "k":I
    :cond_2
    if-lez v0, :cond_3

    .line 519
    move v3, v0

    .restart local v3    # "k":I
    :goto_1
    iget-object v4, p0, Lcom/itextpdf/io/font/OpenTypeParser;->glyphWidthsByIndex:[I

    array-length v5, v4

    if-ge v3, v5, :cond_3

    .line 520
    add-int/lit8 v5, v0, -0x1

    aget v5, v4, v5

    aput v5, v4, v3

    .line 519
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 523
    .end local v3    # "k":I
    :cond_3
    return-void
.end method

.method protected readKerning(I)Lcom/itextpdf/io/util/IntHashtable;
    .locals 12
    .param p1, "unitsPerEm"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 533
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->tables:Ljava/util/Map;

    const-string v1, "kern"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 534
    .local v0, "table_location":[I
    new-instance v1, Lcom/itextpdf/io/util/IntHashtable;

    invoke-direct {v1}, Lcom/itextpdf/io/util/IntHashtable;-><init>()V

    .line 535
    .local v1, "kerning":Lcom/itextpdf/io/util/IntHashtable;
    if-nez v0, :cond_0

    .line 536
    return-object v1

    .line 538
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v3, 0x0

    aget v4, v0, v3

    const/4 v5, 0x2

    add-int/2addr v4, v5

    int-to-long v6, v4

    invoke-virtual {v2, v6, v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 539
    iget-object v2, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v2

    .line 540
    .local v2, "nTables":I
    aget v3, v0, v3

    add-int/lit8 v3, v3, 0x4

    .line 541
    .local v3, "checkpoint":I
    const/4 v4, 0x0

    .line 542
    .local v4, "length":I
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_0
    if-ge v6, v2, :cond_2

    .line 543
    add-int/2addr v3, v4

    .line 544
    iget-object v7, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    int-to-long v8, v3

    invoke-virtual {v7, v8, v9}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 545
    iget-object v7, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v7, v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    .line 546
    iget-object v7, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v4

    .line 547
    iget-object v7, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v7

    .line 548
    .local v7, "coverage":I
    const v8, 0xfff7

    and-int/2addr v8, v7

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 549
    iget-object v8, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v8}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v8

    .line 550
    .local v8, "nPairs":I
    iget-object v9, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    .line 551
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    if-ge v9, v8, :cond_1

    .line 552
    iget-object v10, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v10}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v10

    .line 553
    .local v10, "pair":I
    iget-object v11, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v11}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v11

    mul-int/lit16 v11, v11, 0x3e8

    div-int/2addr v11, p1

    .line 554
    .local v11, "value":I
    invoke-virtual {v1, v10, v11}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    .line 551
    .end local v10    # "pair":I
    .end local v11    # "value":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 542
    .end local v7    # "coverage":I
    .end local v8    # "nPairs":I
    .end local v9    # "j":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 558
    .end local v6    # "k":I
    :cond_2
    return-object v1
.end method

.method protected readNumGlyphs()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 626
    iget-object v0, p0, Lcom/itextpdf/io/font/OpenTypeParser;->tables:Ljava/util/Map;

    const-string v1, "maxp"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 627
    .local v0, "table_location":[I
    if-nez v0, :cond_0

    .line 628
    const/high16 v1, 0x10000

    return v1

    .line 630
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v2, 0x0

    aget v2, v0, v2

    add-int/lit8 v2, v2, 0x4

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 631
    iget-object v1, p0, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    return v1
.end method
