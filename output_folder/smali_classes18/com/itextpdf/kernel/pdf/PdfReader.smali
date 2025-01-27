.class public Lcom/itextpdf/kernel/pdf/PdfReader;
.super Ljava/lang/Object;
.source "PdfReader.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;,
        Lcom/itextpdf/kernel/pdf/PdfReader$ReusableRandomAccessSource;
    }
.end annotation


# static fields
.field public static final DEFAULT_STRICTNESS_LEVEL:Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

.field protected static correctStreamLength:Z = false

.field private static final endobj:[B

.field private static final endstream:[B

.field private static final endstream1:Ljava/lang/String; = "endstream"

.field private static final endstream2:Ljava/lang/String; = "\nendstream"

.field private static final endstream3:Ljava/lang/String; = "\r\nendstream"

.field private static final endstream4:Ljava/lang/String; = "\rendstream"

.field private static final serialVersionUID:J = -0x31bd977d7dacca0bL


# instance fields
.field private currentIndirectReference:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

.field protected decrypt:Lcom/itextpdf/kernel/pdf/PdfEncryption;

.field protected encrypted:Z

.field protected eofPos:J

.field protected fixedXref:Z

.field protected headerPdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

.field protected hybridXref:Z

.field protected lastXref:J

.field private memorySavingMode:Z

.field protected pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

.field protected pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field protected properties:Lcom/itextpdf/kernel/pdf/ReaderProperties;

.field protected rebuiltXref:Z

.field private sourcePath:Ljava/lang/String;

.field private strictnessLevel:Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

.field protected tokens:Lcom/itextpdf/io/source/PdfTokenizer;

.field protected trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

.field private unethicalReading:Z

.field protected xrefStm:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;->LENIENT:Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfReader;->DEFAULT_STRICTNESS_LEVEL:Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    .line 86
    const-string v0, "endstream"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfReader;->endstream:[B

    .line 87
    const-string v0, "endobj"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfReader;->endobj:[B

    .line 89
    const/4 v0, 0x1

    sput-boolean v0, Lcom/itextpdf/kernel/pdf/PdfReader;->correctStreamLength:Z

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/io/source/IRandomAccessSource;Lcom/itextpdf/kernel/pdf/ReaderProperties;)V
    .locals 1
    .param p1, "byteSource"    # Lcom/itextpdf/io/source/IRandomAccessSource;
    .param p2, "properties"    # Lcom/itextpdf/kernel/pdf/ReaderProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfReader;->DEFAULT_STRICTNESS_LEVEL:Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->strictnessLevel:Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->encrypted:Z

    .line 118
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->rebuiltXref:Z

    .line 119
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->hybridXref:Z

    .line 120
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->fixedXref:Z

    .line 121
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->xrefStm:Z

    .line 130
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->properties:Lcom/itextpdf/kernel/pdf/ReaderProperties;

    .line 131
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/PdfReader;->getOffsetTokeniser(Lcom/itextpdf/io/source/IRandomAccessSource;)Lcom/itextpdf/io/source/PdfTokenizer;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfReader;-><init>(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    new-instance v0, Lcom/itextpdf/kernel/pdf/ReaderProperties;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/ReaderProperties;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfReader;-><init>(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/ReaderProperties;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/ReaderProperties;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "properties"    # Lcom/itextpdf/kernel/pdf/ReaderProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    new-instance v0, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v0}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource(Ljava/io/InputStream;)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/itextpdf/kernel/pdf/PdfReader;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;Lcom/itextpdf/kernel/pdf/ReaderProperties;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    new-instance v0, Lcom/itextpdf/kernel/pdf/ReaderProperties;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/ReaderProperties;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfReader;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/ReaderProperties;)V

    .line 194
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/ReaderProperties;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "properties"    # Lcom/itextpdf/kernel/pdf/ReaderProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    new-instance v0, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v0}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    .line 178
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->setForceRead(Z)Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    move-result-object v0

    .line 179
    invoke-virtual {v0, p1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createBestSource(Ljava/lang/String;)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v0

    .line 176
    invoke-direct {p0, v0, p2}, Lcom/itextpdf/kernel/pdf/PdfReader;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;Lcom/itextpdf/kernel/pdf/ReaderProperties;)V

    .line 182
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->sourcePath:Ljava/lang/String;

    .line 183
    return-void
.end method

.method private checkPdfStreamLength(Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 19
    .param p1, "pdfStream"    # Lcom/itextpdf/kernel/pdf/PdfStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1350
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-boolean v2, Lcom/itextpdf/kernel/pdf/PdfReader;->correctStreamLength:Z

    if-nez v2, :cond_0

    .line 1351
    return-void

    .line 1352
    :cond_0
    iget-object v2, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/PdfTokenizer;->length()J

    move-result-wide v2

    .line 1353
    .local v2, "fileLength":J
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOffset()J

    move-result-wide v4

    .line 1354
    .local v4, "start":J
    const/4 v6, 0x0

    .line 1355
    .local v6, "calc":Z
    const/4 v7, 0x0

    .line 1356
    .local v7, "streamLength":I
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Length:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v8}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v8

    .line 1357
    .local v8, "pdfNumber":Lcom/itextpdf/kernel/pdf/PdfNumber;
    const-string v9, "endstream"

    const/4 v10, 0x0

    if-eqz v8, :cond_3

    .line 1358
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v7

    .line 1359
    int-to-long v11, v7

    add-long/2addr v11, v4

    const-wide/16 v13, 0x14

    sub-long v13, v2, v13

    cmp-long v11, v11, v13

    if-lez v11, :cond_1

    .line 1360
    const/4 v6, 0x1

    goto :goto_0

    .line 1362
    :cond_1
    iget-object v11, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    int-to-long v12, v7

    add-long/2addr v12, v4

    invoke-virtual {v11, v12, v13}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    .line 1363
    iget-object v11, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    const/16 v12, 0x14

    invoke-virtual {v11, v12}, Lcom/itextpdf/io/source/PdfTokenizer;->readString(I)Ljava/lang/String;

    move-result-object v11

    .line 1364
    .local v11, "line":Ljava/lang/String;
    const-string v12, "\nendstream"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v12, "\r\nendstream"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1365
    const-string v12, "\rendstream"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual {v11, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1366
    const/4 v6, 0x1

    .line 1368
    .end local v11    # "line":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 1370
    :cond_3
    new-instance v11, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v11, v10}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    move-object v8, v11

    .line 1371
    sget-object v11, Lcom/itextpdf/kernel/pdf/PdfName;->Length:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v11, v8}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1372
    const/4 v6, 0x1

    .line 1374
    :goto_0
    if-eqz v6, :cond_a

    .line 1375
    new-instance v11, Lcom/itextpdf/io/source/ByteBuffer;

    const/16 v12, 0x10

    invoke-direct {v11, v12}, Lcom/itextpdf/io/source/ByteBuffer;-><init>(I)V

    .line 1376
    .local v11, "line":Lcom/itextpdf/io/source/ByteBuffer;
    iget-object v13, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v13, v4, v5}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    .line 1379
    :goto_1
    iget-object v13, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v13}, Lcom/itextpdf/io/source/PdfTokenizer;->getPosition()J

    move-result-wide v13

    .line 1380
    .local v13, "pos":J
    invoke-virtual {v11}, Lcom/itextpdf/io/source/ByteBuffer;->reset()Lcom/itextpdf/io/source/ByteBuffer;

    .line 1383
    iget-object v15, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v15, v11, v10}, Lcom/itextpdf/io/source/PdfTokenizer;->readLineSegment(Lcom/itextpdf/io/source/ByteBuffer;Z)Z

    move-result v15

    if-nez v15, :cond_4

    .line 1384
    move-wide/from16 v17, v2

    move v15, v6

    goto :goto_3

    .line 1385
    :cond_4
    sget-object v15, Lcom/itextpdf/kernel/pdf/PdfReader;->endstream:[B

    invoke-virtual {v11, v15}, Lcom/itextpdf/io/source/ByteBuffer;->startsWith([B)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 1386
    sub-long v9, v13, v4

    long-to-int v7, v9

    .line 1387
    move-wide/from16 v17, v2

    move v15, v6

    goto :goto_3

    .line 1388
    :cond_5
    sget-object v15, Lcom/itextpdf/kernel/pdf/PdfReader;->endobj:[B

    invoke-virtual {v11, v15}, Lcom/itextpdf/io/source/ByteBuffer;->startsWith([B)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 1389
    iget-object v10, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    const-wide/16 v15, 0x10

    move-wide/from16 v17, v2

    .end local v2    # "fileLength":J
    .local v17, "fileLength":J
    sub-long v2, v13, v15

    invoke-virtual {v10, v2, v3}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    .line 1390
    iget-object v2, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v2, v12}, Lcom/itextpdf/io/source/PdfTokenizer;->readString(I)Ljava/lang/String;

    move-result-object v2

    .line 1391
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1392
    .local v3, "index":I
    if-ltz v3, :cond_6

    .line 1393
    sub-long v9, v13, v15

    move v15, v6

    move/from16 v16, v7

    .end local v6    # "calc":Z
    .end local v7    # "streamLength":I
    .local v15, "calc":Z
    .local v16, "streamLength":I
    int-to-long v6, v3

    add-long/2addr v9, v6

    move-wide v13, v9

    .end local v13    # "pos":J
    .local v9, "pos":J
    goto :goto_2

    .line 1392
    .end local v9    # "pos":J
    .end local v15    # "calc":Z
    .end local v16    # "streamLength":I
    .restart local v6    # "calc":Z
    .restart local v7    # "streamLength":I
    .restart local v13    # "pos":J
    :cond_6
    move v15, v6

    move/from16 v16, v7

    .line 1394
    .end local v6    # "calc":Z
    .end local v7    # "streamLength":I
    .restart local v15    # "calc":Z
    .restart local v16    # "streamLength":I
    :goto_2
    sub-long v6, v13, v4

    long-to-int v7, v6

    .line 1395
    .end local v16    # "streamLength":I
    .restart local v7    # "streamLength":I
    nop

    .line 1398
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "index":I
    :goto_3
    iget-object v2, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    const-wide/16 v9, 0x2

    sub-long v9, v13, v9

    invoke-virtual {v2, v9, v10}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    .line 1399
    iget-object v2, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/PdfTokenizer;->read()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_7

    .line 1400
    add-int/lit8 v7, v7, -0x1

    .line 1402
    :cond_7
    iget-object v2, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    const-wide/16 v9, 0x1

    sub-long v9, v13, v9

    invoke-virtual {v2, v9, v10}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    .line 1403
    iget-object v2, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/PdfTokenizer;->read()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_8

    .line 1404
    add-int/lit8 v7, v7, -0x1

    .line 1406
    :cond_8
    invoke-virtual {v8, v7}, Lcom/itextpdf/kernel/pdf/PdfNumber;->setValue(I)V

    .line 1407
    invoke-virtual {v1, v7}, Lcom/itextpdf/kernel/pdf/PdfStream;->updateLength(I)V

    goto :goto_4

    .line 1388
    .end local v15    # "calc":Z
    .end local v17    # "fileLength":J
    .local v2, "fileLength":J
    .restart local v6    # "calc":Z
    :cond_9
    move-wide/from16 v17, v2

    move v15, v6

    move/from16 v16, v7

    .end local v2    # "fileLength":J
    .end local v6    # "calc":Z
    .end local v7    # "streamLength":I
    .restart local v15    # "calc":Z
    .restart local v16    # "streamLength":I
    .restart local v17    # "fileLength":J
    goto/16 :goto_1

    .line 1374
    .end local v11    # "line":Lcom/itextpdf/io/source/ByteBuffer;
    .end local v13    # "pos":J
    .end local v15    # "calc":Z
    .end local v16    # "streamLength":I
    .end local v17    # "fileLength":J
    .restart local v2    # "fileLength":J
    .restart local v6    # "calc":Z
    .restart local v7    # "streamLength":I
    :cond_a
    move-wide/from16 v17, v2

    move v15, v6

    move/from16 v16, v7

    .line 1409
    .end local v2    # "fileLength":J
    .end local v6    # "calc":Z
    .restart local v15    # "calc":Z
    .restart local v17    # "fileLength":J
    :goto_4
    return-void
.end method

.method private createPdfNullInstance(Z)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1
    .param p1, "readAsDirect"    # Z

    .line 1412
    if-eqz p1, :cond_0

    .line 1413
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfNull;->PDF_NULL:Lcom/itextpdf/kernel/pdf/PdfNull;

    return-object v0

    .line 1415
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfNull;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfNull;-><init>()V

    return-object v0
.end method

.method public static decodeBytes([BLcom/itextpdf/kernel/pdf/PdfDictionary;)[B
    .locals 1
    .param p0, "b"    # [B
    .param p1, "streamDictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 444
    invoke-static {}, Lcom/itextpdf/kernel/pdf/filters/FilterHandlers;->getDefaultFilterHandlers()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfReader;->decodeBytes([BLcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Map;)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeBytes([BLcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Map;)[B
    .locals 17
    .param p0, "b"    # [B
    .param p1, "streamDictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            "Lcom/itextpdf/kernel/pdf/filters/IFilterHandler;",
            ">;)[B"
        }
    .end annotation

    .line 457
    .local p2, "filterHandlers":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/filters/IFilterHandler;>;"
    move-object/from16 v0, p1

    if-nez p0, :cond_0

    .line 458
    const/4 v1, 0x0

    return-object v1

    .line 460
    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    .line 461
    .local v1, "filter":Lcom/itextpdf/kernel/pdf/PdfObject;
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 462
    .local v2, "filters":Lcom/itextpdf/kernel/pdf/PdfArray;
    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 463
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_1

    .line 464
    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_0

    .line 465
    :cond_1
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v4

    if-ne v4, v3, :cond_2

    .line 466
    move-object v2, v1

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 470
    :cond_2
    :goto_0
    const/4 v4, 0x0

    .line 471
    .local v4, "memoryLimitsAwareHandler":Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 472
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v5

    iget-object v4, v5, Lcom/itextpdf/kernel/pdf/PdfDocument;->memoryLimitsAwareHandler:Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;

    .line 475
    :cond_3
    if-eqz v4, :cond_4

    .line 476
    invoke-virtual {v4, v2}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->isMemoryLimitsAwarenessRequiredOnDecompression(Lcom/itextpdf/kernel/pdf/PdfArray;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v3

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    .line 478
    .local v6, "memoryLimitsAwarenessRequired":Z
    :goto_1
    if-eqz v6, :cond_5

    .line 479
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->beginDecompressedPdfStreamProcessing()Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;

    .line 482
    :cond_5
    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v7}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 483
    .local v7, "dp":Lcom/itextpdf/kernel/pdf/PdfArray;
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->DecodeParms:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v8

    .line 484
    .local v8, "dpo":Lcom/itextpdf/kernel/pdf/PdfObject;
    const/4 v9, 0x3

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v10

    if-eq v10, v9, :cond_8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v10

    if-eq v10, v3, :cond_8

    .line 485
    :cond_6
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfObject;->release()V

    .line 486
    :cond_7
    sget-object v10, Lcom/itextpdf/kernel/pdf/PdfName;->DP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v10}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v8

    .line 488
    :cond_8
    if-eqz v8, :cond_b

    .line 489
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v10

    if-ne v10, v9, :cond_9

    .line 490
    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_2

    .line 491
    :cond_9
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v10

    if-ne v10, v3, :cond_a

    .line 492
    move-object v7, v8

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 494
    :cond_a
    :goto_2
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfObject;->release()V

    .line 496
    :cond_b
    const/4 v10, 0x0

    move v11, v10

    move-object/from16 v10, p0

    .end local p0    # "b":[B
    .local v10, "b":[B
    .local v11, "j":I
    :goto_3
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v12

    if-ge v11, v12, :cond_12

    .line 497
    invoke-virtual {v2, v11}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 498
    .local v12, "filterName":Lcom/itextpdf/kernel/pdf/PdfName;
    move-object/from16 v13, p2

    invoke-interface {v13, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/itextpdf/kernel/pdf/filters/IFilterHandler;

    .line 499
    .local v14, "filterHandler":Lcom/itextpdf/kernel/pdf/filters/IFilterHandler;
    if-eqz v14, :cond_11

    .line 503
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v15

    if-ge v11, v15, :cond_f

    .line 504
    invoke-virtual {v7, v11, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(IZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v15

    .line 505
    .local v15, "dpEntry":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v15, :cond_e

    invoke-virtual {v15}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v5

    const/4 v3, 0x7

    if-ne v5, v3, :cond_c

    goto :goto_4

    .line 507
    :cond_c
    invoke-virtual {v15}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v3

    if-ne v3, v9, :cond_d

    .line 508
    move-object v3, v15

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .local v3, "decodeParams":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    goto :goto_5

    .line 510
    .end local v3    # "decodeParams":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_d
    new-instance v3, Lcom/itextpdf/kernel/PdfException;

    const-string v5, "Decode parameter type {0} is not supported."

    invoke-direct {v3, v5}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v16, 0x0

    aput-object v9, v5, v16

    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;

    move-result-object v3

    throw v3

    .line 506
    :cond_e
    :goto_4
    const/4 v3, 0x0

    .line 512
    .end local v15    # "dpEntry":Lcom/itextpdf/kernel/pdf/PdfObject;
    .restart local v3    # "decodeParams":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :goto_5
    goto :goto_6

    .line 513
    .end local v3    # "decodeParams":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_f
    const/4 v3, 0x0

    .line 515
    .restart local v3    # "decodeParams":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :goto_6
    invoke-interface {v14, v10, v12, v3, v0}, Lcom/itextpdf/kernel/pdf/filters/IFilterHandler;->decode([BLcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDictionary;)[B

    move-result-object v10

    .line 516
    if-eqz v6, :cond_10

    .line 517
    array-length v5, v10

    move-object/from16 p0, v10

    .end local v10    # "b":[B
    .restart local p0    # "b":[B
    int-to-long v9, v5

    invoke-virtual {v4, v9, v10}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->considerBytesOccupiedByDecompressedPdfStream(J)Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;

    goto :goto_7

    .line 516
    .end local p0    # "b":[B
    .restart local v10    # "b":[B
    :cond_10
    move-object/from16 p0, v10

    .line 496
    .end local v3    # "decodeParams":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v10    # "b":[B
    .end local v12    # "filterName":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local v14    # "filterHandler":Lcom/itextpdf/kernel/pdf/filters/IFilterHandler;
    .restart local p0    # "b":[B
    :goto_7
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v10, p0

    const/4 v3, 0x1

    const/4 v9, 0x3

    goto :goto_3

    .line 500
    .end local p0    # "b":[B
    .restart local v10    # "b":[B
    .restart local v12    # "filterName":Lcom/itextpdf/kernel/pdf/PdfName;
    .restart local v14    # "filterHandler":Lcom/itextpdf/kernel/pdf/filters/IFilterHandler;
    :cond_11
    new-instance v3, Lcom/itextpdf/kernel/PdfException;

    const-string v5, "Filter {0} is not supported."

    invoke-direct {v3, v5}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v12, v5, v9

    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;

    move-result-object v3

    throw v3

    .line 496
    .end local v12    # "filterName":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local v14    # "filterHandler":Lcom/itextpdf/kernel/pdf/filters/IFilterHandler;
    :cond_12
    move-object/from16 v13, p2

    .line 520
    .end local v11    # "j":I
    if-eqz v6, :cond_13

    .line 521
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->endDecompressedPdfStreamProcessing()Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;

    .line 523
    :cond_13
    return-object v10
.end method

.method private static getOffsetTokeniser(Lcom/itextpdf/io/source/IRandomAccessSource;)Lcom/itextpdf/io/source/PdfTokenizer;
    .locals 5
    .param p0, "byteSource"    # Lcom/itextpdf/io/source/IRandomAccessSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1300
    new-instance v0, Lcom/itextpdf/io/source/PdfTokenizer;

    new-instance v1, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-direct {v1, p0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/PdfTokenizer;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)V

    .line 1301
    .local v0, "tok":Lcom/itextpdf/io/source/PdfTokenizer;
    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->getHeaderOffset()I

    move-result v1

    .line 1302
    .local v1, "offset":I
    if-eqz v1, :cond_0

    .line 1303
    new-instance v2, Lcom/itextpdf/io/source/WindowRandomAccessSource;

    int-to-long v3, v1

    invoke-direct {v2, p0, v3, v4}, Lcom/itextpdf/io/source/WindowRandomAccessSource;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;J)V

    .line 1304
    .local v2, "offsetSource":Lcom/itextpdf/io/source/IRandomAccessSource;
    new-instance v3, Lcom/itextpdf/io/source/PdfTokenizer;

    new-instance v4, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-direct {v4, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    invoke-direct {v3, v4}, Lcom/itextpdf/io/source/PdfTokenizer;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)V

    move-object v0, v3

    .line 1306
    .end local v2    # "offsetSource":Lcom/itextpdf/io/source/IRandomAccessSource;
    :cond_0
    return-object v0
.end method

.method private readDecryptObj()V
    .locals 9

    .line 1270
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->encrypted:Z

    if-eqz v0, :cond_0

    .line 1271
    return-void

    .line 1272
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Encrypt:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 1273
    .local v0, "enc":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-nez v0, :cond_1

    .line 1274
    return-void

    .line 1275
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->encrypted:Z

    .line 1277
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v8

    .line 1278
    .local v8, "filter":Lcom/itextpdf/kernel/pdf/PdfName;
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Adobe_PubSec:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v8}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1279
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->properties:Lcom/itextpdf/kernel/pdf/ReaderProperties;

    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/ReaderProperties;->certificate:Ljava/security/cert/Certificate;

    if-eqz v1, :cond_2

    .line 1282
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfEncryption;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->properties:Lcom/itextpdf/kernel/pdf/ReaderProperties;

    iget-object v4, v2, Lcom/itextpdf/kernel/pdf/ReaderProperties;->certificateKey:Ljava/security/Key;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->properties:Lcom/itextpdf/kernel/pdf/ReaderProperties;

    iget-object v5, v2, Lcom/itextpdf/kernel/pdf/ReaderProperties;->certificate:Ljava/security/cert/Certificate;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->properties:Lcom/itextpdf/kernel/pdf/ReaderProperties;

    iget-object v6, v2, Lcom/itextpdf/kernel/pdf/ReaderProperties;->certificateKeyProvider:Ljava/lang/String;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->properties:Lcom/itextpdf/kernel/pdf/ReaderProperties;

    iget-object v7, v2, Lcom/itextpdf/kernel/pdf/ReaderProperties;->externalDecryptionProcess:Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;

    move-object v2, v1

    move-object v3, v0

    invoke-direct/range {v2 .. v7}, Lcom/itextpdf/kernel/pdf/PdfEncryption;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/security/Key;Ljava/security/cert/Certificate;Ljava/lang/String;Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;)V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->decrypt:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    goto :goto_0

    .line 1280
    :cond_2
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "Certificate is not provided. Document is encrypted with public key certificate, it should be passed to PdfReader constructor with properties. See ReaderProperties#setPublicKeySecurityParams() method."

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1284
    :cond_3
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Standard:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v8}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1285
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfEncryption;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->properties:Lcom/itextpdf/kernel/pdf/ReaderProperties;

    iget-object v2, v2, Lcom/itextpdf/kernel/pdf/ReaderProperties;->password:[B

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfReader;->getOriginalFileId()[B

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfEncryption;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[B)V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->decrypt:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    .line 1289
    :goto_0
    return-void

    .line 1287
    :cond_4
    new-instance v2, Lcom/itextpdf/kernel/crypto/securityhandler/UnsupportedSecurityHandlerException;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v1, v3

    const-string v3, "Failed to open the document. Security handler {0} is not supported"

    invoke-static {v3, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/itextpdf/kernel/crypto/securityhandler/UnsupportedSecurityHandlerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private readObject(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Z)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 7
    .param p1, "reference"    # Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .param p2, "fixXref"    # Z

    .line 1310
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1311
    return-object v0

    .line 1312
    :cond_0
    iget-object v1, p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->refersTo:Lcom/itextpdf/kernel/pdf/PdfObject;

    if-eqz v1, :cond_1

    .line 1313
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->refersTo:Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object v0

    .line 1315
    :cond_1
    :try_start_0
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->currentIndirectReference:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 1316
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjStreamNumber()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    .line 1317
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v0

    .line 1318
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjStreamNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->get(I)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 1319
    .local v0, "objectStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfReader;->readObjectStream(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 1320
    iget-object v1, p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->refersTo:Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object v1

    .line 1321
    .end local v0    # "objectStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getOffset()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_7

    .line 1324
    :try_start_1
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getOffset()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    .line 1325
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->nextValidToken()V

    .line 1326
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v1

    sget-object v3, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Obj:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    .line 1327
    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getObjNr()I

    move-result v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v3

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    .line 1328
    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getGenNr()I

    move-result v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v3

    if-eq v1, v3, :cond_4

    .line 1329
    :cond_3
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    const-string v3, "Invalid offset for object {0}."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/io/source/PdfTokenizer;->throwError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1331
    :cond_4
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/PdfReader;->readObject(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1339
    .local v1, "object":Lcom/itextpdf/kernel/pdf/PdfObject;
    goto :goto_0

    .line 1332
    .end local v1    # "object":Lcom/itextpdf/kernel/pdf/PdfObject;
    :catch_0
    move-exception v1

    .line 1333
    .local v1, "ex":Ljava/lang/RuntimeException;
    if-eqz p2, :cond_6

    :try_start_2
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjStreamNumber()I

    move-result v3

    if-nez v3, :cond_6

    .line 1334
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfReader;->fixXref()V

    .line 1335
    invoke-direct {p0, p1, v2}, Lcom/itextpdf/kernel/pdf/PdfReader;->readObject(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    move-object v1, v2

    .line 1340
    .local v1, "object":Lcom/itextpdf/kernel/pdf/PdfObject;
    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->setIndirectReference(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    :cond_5
    return-object v0

    .line 1337
    .local v1, "ex":Ljava/lang/RuntimeException;
    :cond_6
    nop

    .end local p1    # "reference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .end local p2    # "fixXref":Z
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1342
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local p1    # "reference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .restart local p2    # "fixXref":Z
    :cond_7
    return-object v0

    .line 1344
    :catch_1
    move-exception v0

    .line 1345
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "Cannot read PdfObject."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1427
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1428
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->sourcePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    if-nez v0, :cond_0

    .line 1429
    new-instance v0, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v0}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->setForceRead(Z)Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->sourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createBestSource(Ljava/lang/String;)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/kernel/pdf/PdfReader;->getOffsetTokeniser(Lcom/itextpdf/io/source/IRandomAccessSource;)Lcom/itextpdf/io/source/PdfTokenizer;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    .line 1431
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1440
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->sourcePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1441
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    .line 1442
    .local v0, "tempTokens":Lcom/itextpdf/io/source/PdfTokenizer;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    .line 1443
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1444
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    .line 1445
    .end local v0    # "tempTokens":Lcom/itextpdf/io/source/PdfTokenizer;
    goto :goto_0

    .line 1446
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1448
    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->close()V

    .line 203
    return-void
.end method

.method public computeUserPassword()[B
    .locals 2

    .line 625
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->isReadingCompleted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 629
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->encrypted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->decrypt:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->isOpenedWithFullPermission()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->decrypt:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->properties:Lcom/itextpdf/kernel/pdf/ReaderProperties;

    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/ReaderProperties;->password:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->computeUserPassword([B)[B

    move-result-object v0

    return-object v0

    .line 630
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 626
    :cond_2
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "The PDF document has not been read yet. Document reading occurs in PdfDocument class constructor"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected fixXref()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->fixedXref:Z

    .line 1193
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v1

    .line 1194
    .local v1, "xref":Lcom/itextpdf/kernel/pdf/PdfXrefTable;
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    .line 1195
    new-instance v2, Lcom/itextpdf/io/source/ByteBuffer;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Lcom/itextpdf/io/source/ByteBuffer;-><init>(I)V

    .line 1196
    .local v2, "buffer":Lcom/itextpdf/io/source/ByteBuffer;
    new-instance v3, Lcom/itextpdf/io/source/PdfTokenizer;

    new-instance v4, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfReader$ReusableRandomAccessSource;

    invoke-direct {v5, v2}, Lcom/itextpdf/kernel/pdf/PdfReader$ReusableRandomAccessSource;-><init>(Lcom/itextpdf/io/source/ByteBuffer;)V

    invoke-direct {v4, v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    invoke-direct {v3, v4}, Lcom/itextpdf/io/source/PdfTokenizer;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)V

    .line 1198
    .local v3, "lineTokeniser":Lcom/itextpdf/io/source/PdfTokenizer;
    :goto_0
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/PdfTokenizer;->getPosition()J

    move-result-wide v4

    .line 1199
    .local v4, "pos":J
    invoke-virtual {v2}, Lcom/itextpdf/io/source/ByteBuffer;->reset()Lcom/itextpdf/io/source/ByteBuffer;

    .line 1202
    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v6, v2, v0}, Lcom/itextpdf/io/source/PdfTokenizer;->readLineSegment(Lcom/itextpdf/io/source/ByteBuffer;Z)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1203
    nop

    .line 1216
    .end local v4    # "pos":J
    return-void

    .line 1204
    .restart local v4    # "pos":J
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/itextpdf/io/source/ByteBuffer;->get(I)B

    move-result v7

    const/16 v8, 0x30

    if-lt v7, v8, :cond_2

    invoke-virtual {v2, v6}, Lcom/itextpdf/io/source/ByteBuffer;->get(I)B

    move-result v7

    const/16 v8, 0x39

    if-gt v7, v8, :cond_2

    .line 1205
    invoke-static {v3}, Lcom/itextpdf/io/source/PdfTokenizer;->checkObjectStart(Lcom/itextpdf/io/source/PdfTokenizer;)[I

    move-result-object v7

    .line 1206
    .local v7, "obj":[I
    if-nez v7, :cond_1

    .line 1207
    goto :goto_0

    .line 1208
    :cond_1
    aget v6, v7, v6

    .line 1209
    .local v6, "num":I
    aget v8, v7, v0

    .line 1210
    .local v8, "gen":I
    invoke-virtual {v1, v6}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->get(I)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v9

    .line 1211
    .local v9, "reference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v10

    if-ne v10, v8, :cond_2

    .line 1212
    invoke-virtual {v9, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->fixOffset(J)V

    .line 1215
    .end local v4    # "pos":J
    .end local v6    # "num":I
    .end local v7    # "obj":[I
    .end local v8    # "gen":I
    .end local v9    # "reference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    :cond_2
    goto :goto_0
.end method

.method public getCryptoMode()I
    .locals 2

    .line 597
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->isReadingCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 601
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->decrypt:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    if-nez v0, :cond_0

    .line 602
    const/4 v0, -0x1

    return v0

    .line 604
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getCryptoMode()I

    move-result v0

    return v0

    .line 598
    :cond_1
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "The PDF document has not been read yet. Document reading occurs in PdfDocument class constructor"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFileLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->getSafeFile()Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastXref()J
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->isReadingCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget-wide v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->lastXref:J

    return-wide v0

    .line 342
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "The PDF document has not been read yet. Document reading occurs in PdfDocument class constructor"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getModifiedFileId()[B
    .locals 3

    .line 672
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->isReadingCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 676
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ID:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 677
    .local v0, "id":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 678
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsString(I)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1

    .line 680
    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [B

    return-object v1

    .line 673
    .end local v0    # "id":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_1
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "The PDF document has not been read yet. Document reading occurs in PdfDocument class constructor"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOriginalFileId()[B
    .locals 4

    .line 648
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->isReadingCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 652
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ID:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 653
    .local v0, "id":Lcom/itextpdf/kernel/pdf/PdfArray;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 654
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsString(I)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1

    .line 656
    :cond_0
    new-array v1, v1, [B

    return-object v1

    .line 649
    .end local v0    # "id":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_1
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "The PDF document has not been read yet. Document reading occurs in PdfDocument class constructor"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPdfAConformanceLevel()Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfAConformanceLevel:Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    return-object v0
.end method

.method public getPermissions()J
    .locals 3

    .line 578
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->isReadingCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    const-wide/16 v0, 0x0

    .line 583
    .local v0, "perm":J
    iget-boolean v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->encrypted:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->decrypt:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPermissions()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 584
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->decrypt:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPermissions()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 586
    :cond_0
    return-wide v0

    .line 579
    .end local v0    # "perm":J
    :cond_1
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "The PDF document has not been read yet. Document reading occurs in PdfDocument class constructor"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSafeFile()Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->getSafeFile()Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    move-result-object v0

    return-object v0
.end method

.method public getStrictnessLevel()Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->strictnessLevel:Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    return-object v0
.end method

.method public hasFixedXref()Z
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->isReadingCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->fixedXref:Z

    return v0

    .line 328
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "The PDF document has not been read yet. Document reading occurs in PdfDocument class constructor"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasHybridXref()Z
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->isReadingCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->hybridXref:Z

    return v0

    .line 298
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "The PDF document has not been read yet. Document reading occurs in PdfDocument class constructor"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasRebuiltXref()Z
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->isReadingCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->rebuiltXref:Z

    return v0

    .line 283
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "The PDF document has not been read yet. Document reading occurs in PdfDocument class constructor"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasXrefStm()Z
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->isReadingCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->xrefStm:Z

    return v0

    .line 312
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "The PDF document has not been read yet. Document reading occurs in PdfDocument class constructor"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCloseStream()Z
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->isCloseStream()Z

    move-result v0

    return v0
.end method

.method public isEncrypted()Z
    .locals 2

    .line 691
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->isReadingCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->encrypted:Z

    return v0

    .line 692
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "The PDF document has not been read yet. Document reading occurs in PdfDocument class constructor"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method isMemorySavingMode()Z
    .locals 1

    .line 1266
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->memorySavingMode:Z

    return v0
.end method

.method public isOpenedWithFullPermission()Z
    .locals 2

    .line 556
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->isReadingCompleted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 560
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->encrypted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->decrypt:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->isOpenedWithFullPermission()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->unethicalReading:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 557
    :cond_2
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "The PDF document has not been read yet. Document reading occurs in PdfDocument class constructor"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected readArray(Z)Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 5
    .param p1, "objStm"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 927
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 929
    .local v0, "array":Lcom/itextpdf/kernel/pdf/PdfArray;
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/itextpdf/kernel/pdf/PdfReader;->readObject(ZZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    .line 930
    .local v1, "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-nez v1, :cond_1

    .line 931
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->EndArray:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-ne v2, v3, :cond_0

    .line 932
    nop

    .line 938
    .end local v1    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    return-object v0

    .line 933
    .restart local v1    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->EndDic:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-ne v2, v3, :cond_1

    .line 934
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "unexpected >>."

    invoke-virtual {v2, v4, v3}, Lcom/itextpdf/io/source/PdfTokenizer;->throwError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 936
    :cond_1
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 937
    .end local v1    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    goto :goto_0
.end method

.method protected readDictionary(Z)Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 7
    .param p1, "objStm"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 906
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 908
    .local v0, "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->nextValidToken()V

    .line 909
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->EndDic:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-ne v1, v2, :cond_0

    .line 910
    nop

    .line 923
    return-object v0

    .line 911
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Name:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    .line 912
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getStringValue()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v5, "Dictionary key {0} is not a name."

    invoke-virtual {v1, v5, v2}, Lcom/itextpdf/io/source/PdfTokenizer;->throwError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 913
    :cond_1
    invoke-virtual {p0, v4}, Lcom/itextpdf/kernel/pdf/PdfReader;->readPdfName(Z)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    .line 914
    .local v1, "name":Lcom/itextpdf/kernel/pdf/PdfName;
    invoke-virtual {p0, v4, p1}, Lcom/itextpdf/kernel/pdf/PdfReader;->readObject(ZZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    .line 915
    .local v2, "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-nez v2, :cond_3

    .line 916
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v4

    sget-object v5, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->EndDic:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-ne v4, v5, :cond_2

    .line 917
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    new-array v5, v3, [Ljava/lang/Object;

    const-string/jumbo v6, "unexpected >>."

    invoke-virtual {v4, v6, v5}, Lcom/itextpdf/io/source/PdfTokenizer;->throwError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 918
    :cond_2
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v4

    sget-object v5, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->EndArray:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-ne v4, v5, :cond_3

    .line 919
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "Unexpected close bracket."

    invoke-virtual {v4, v5, v3}, Lcom/itextpdf/io/source/PdfTokenizer;->throwError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 921
    :cond_3
    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 922
    .end local v1    # "name":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local v2    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    goto :goto_0
.end method

.method protected readObject(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1
    .param p1, "reference"    # Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 786
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfReader;->readObject(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    return-object v0
.end method

.method protected readObject(Z)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1
    .param p1, "readAsDirect"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 790
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfReader;->readObject(ZZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    return-object v0
.end method

.method protected readObject(ZZ)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 9
    .param p1, "readAsDirect"    # Z
    .param p2, "objStm"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 830
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->nextValidToken()V

    .line 831
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v0

    .line 832
    .local v0, "type":Lcom/itextpdf/io/source/PdfTokenizer$TokenType;
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfReader$1;->$SwitchMap$com$itextpdf$io$source$PdfTokenizer$TokenType:[I

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 876
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    sget-object v2, Lcom/itextpdf/io/source/PdfTokenizer;->Null:[B

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/source/PdfTokenizer;->tokenValueEqualsTo([B)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 877
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfReader;->createPdfNullInstance(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    return-object v1

    .line 874
    :pswitch_0
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "Unexpected end of file."

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 872
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfReader;->readReference(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    return-object v1

    .line 870
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfReader;->readPdfName(Z)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    return-object v1

    .line 863
    :pswitch_3
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfString;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/PdfTokenizer;->getByteContent()[B

    move-result-object v2

    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/PdfTokenizer;->isHexString()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>([BZ)V

    .line 864
    .local v1, "pdfString":Lcom/itextpdf/kernel/pdf/PdfString;
    iget-boolean v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->encrypted:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->decrypt:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->isEmbeddedFilesOnly()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    .line 865
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->currentIndirectReference:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v2

    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->currentIndirectReference:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v3

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->decrypt:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {v1, v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfString;->setDecryption(IILcom/itextpdf/kernel/pdf/PdfEncryption;)V

    .line 867
    :cond_0
    return-object v1

    .line 861
    .end local v1    # "pdfString":Lcom/itextpdf/kernel/pdf/PdfString;
    :pswitch_4
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/PdfTokenizer;->getByteContent()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>([B)V

    return-object v1

    .line 859
    :pswitch_5
    invoke-virtual {p0, p2}, Lcom/itextpdf/kernel/pdf/PdfReader;->readArray(Z)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    return-object v1

    .line 834
    :pswitch_6
    invoke-virtual {p0, p2}, Lcom/itextpdf/kernel/pdf/PdfReader;->readDictionary(Z)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 835
    .local v1, "dict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/PdfTokenizer;->getPosition()J

    move-result-wide v2

    .line 839
    .local v2, "pos":J
    :cond_1
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/PdfTokenizer;->nextToken()Z

    move-result v4

    .line 840
    .local v4, "hasNext":Z
    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v5

    sget-object v6, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Comment:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-eq v5, v6, :cond_1

    .line 842
    :cond_2
    if-eqz v4, :cond_6

    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    sget-object v6, Lcom/itextpdf/io/source/PdfTokenizer;->Stream:[B

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/source/PdfTokenizer;->tokenValueEqualsTo([B)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 846
    :cond_3
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/PdfTokenizer;->read()I

    move-result v5

    .line 847
    .local v5, "ch":I
    const/16 v6, 0x20

    if-eq v5, v6, :cond_3

    const/16 v6, 0x9

    if-eq v5, v6, :cond_3

    if-eqz v5, :cond_3

    const/16 v6, 0xc

    if-eq v5, v6, :cond_3

    .line 848
    const/16 v6, 0xa

    if-eq v5, v6, :cond_4

    .line 849
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v7}, Lcom/itextpdf/io/source/PdfTokenizer;->read()I

    move-result v5

    .line 850
    :cond_4
    if-eq v5, v6, :cond_5

    .line 851
    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v6, v5}, Lcom/itextpdf/io/source/PdfTokenizer;->backOnePosition(I)V

    .line 852
    :cond_5
    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfStream;

    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v7}, Lcom/itextpdf/io/source/PdfTokenizer;->getPosition()J

    move-result-wide v7

    invoke-direct {v6, v7, v8, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>(JLcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-object v6

    .line 854
    .end local v5    # "ch":I
    :cond_6
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v5, v2, v3}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    .line 855
    return-object v1

    .line 878
    .end local v1    # "dict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v2    # "pos":J
    .end local v4    # "hasNext":Z
    :cond_7
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    sget-object v2, Lcom/itextpdf/io/source/PdfTokenizer;->True:[B

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/source/PdfTokenizer;->tokenValueEqualsTo([B)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 879
    if-eqz p1, :cond_8

    .line 880
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfBoolean;->TRUE:Lcom/itextpdf/kernel/pdf/PdfBoolean;

    return-object v1

    .line 882
    :cond_8
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfBoolean;-><init>(Z)V

    return-object v1

    .line 884
    :cond_9
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    sget-object v2, Lcom/itextpdf/io/source/PdfTokenizer;->False:[B

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/source/PdfTokenizer;->tokenValueEqualsTo([B)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 885
    if-eqz p1, :cond_a

    .line 886
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfBoolean;->FALSE:Lcom/itextpdf/kernel/pdf/PdfBoolean;

    return-object v1

    .line 888
    :cond_a
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfBoolean;-><init>(Z)V

    return-object v1

    .line 891
    :cond_b
    const/4 v1, 0x0

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected readObjectStream(Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 14
    .param p1, "objectStream"    # Lcom/itextpdf/kernel/pdf/PdfStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 723
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v0

    .line 724
    .local v0, "objectStreamNumber":I
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->First:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    .line 725
    .local v1, "first":I
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v2

    .line 726
    .local v2, "n":I
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/itextpdf/kernel/pdf/PdfReader;->readStreamBytes(Lcom/itextpdf/kernel/pdf/PdfStream;Z)[B

    move-result-object v4

    .line 727
    .local v4, "bytes":[B
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    .line 729
    .local v5, "saveTokens":Lcom/itextpdf/io/source/PdfTokenizer;
    :try_start_0
    new-instance v6, Lcom/itextpdf/io/source/PdfTokenizer;

    new-instance v7, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    new-instance v8, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v8}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    invoke-virtual {v8, v4}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource([B)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    invoke-direct {v6, v7}, Lcom/itextpdf/io/source/PdfTokenizer;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)V

    iput-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    .line 730
    new-array v6, v2, [I

    .line 731
    .local v6, "address":[I
    new-array v7, v2, [I

    .line 732
    .local v7, "objNumber":[I
    const/4 v8, 0x1

    .line 733
    .local v8, "ok":Z
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_0
    if-ge v9, v2, :cond_4

    .line 734
    iget-object v10, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v10}, Lcom/itextpdf/io/source/PdfTokenizer;->nextToken()Z

    move-result v10

    move v8, v10

    .line 735
    if-nez v8, :cond_0

    .line 736
    goto :goto_1

    .line 737
    :cond_0
    iget-object v10, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v10}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v10

    sget-object v11, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Number:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-eq v10, v11, :cond_1

    .line 738
    const/4 v8, 0x0

    .line 739
    goto :goto_1

    .line 741
    :cond_1
    iget-object v10, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v10}, Lcom/itextpdf/io/source/PdfTokenizer;->getIntValue()I

    move-result v10

    aput v10, v7, v9

    .line 742
    iget-object v10, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v10}, Lcom/itextpdf/io/source/PdfTokenizer;->nextToken()Z

    move-result v10

    move v8, v10

    .line 743
    if-nez v8, :cond_2

    .line 744
    goto :goto_1

    .line 745
    :cond_2
    iget-object v10, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v10}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v10

    sget-object v11, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Number:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-eq v10, v11, :cond_3

    .line 746
    const/4 v8, 0x0

    .line 747
    goto :goto_1

    .line 749
    :cond_3
    iget-object v10, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v10}, Lcom/itextpdf/io/source/PdfTokenizer;->getIntValue()I

    move-result v10

    add-int/2addr v10, v1

    aput v10, v6, v9

    .line 733
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 751
    .end local v9    # "k":I
    :cond_4
    :goto_1
    if-eqz v8, :cond_9

    .line 753
    const/4 v9, 0x0

    .restart local v9    # "k":I
    :goto_2
    if-ge v9, v2, :cond_8

    .line 754
    iget-object v10, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    aget v11, v6, v9

    int-to-long v11, v11

    invoke-virtual {v10, v11, v12}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    .line 755
    iget-object v10, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v10}, Lcom/itextpdf/io/source/PdfTokenizer;->nextToken()Z

    .line 757
    iget-object v10, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v10

    aget v11, v7, v9

    invoke-virtual {v10, v11}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->get(I)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v10

    .line 758
    .local v10, "reference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    iget-object v11, v10, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->refersTo:Lcom/itextpdf/kernel/pdf/PdfObject;

    if-nez v11, :cond_7

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjStreamNumber()I

    move-result v11

    if-eq v11, v0, :cond_5

    .line 766
    goto :goto_4

    .line 768
    :cond_5
    iget-object v11, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v11}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v11

    sget-object v12, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Number:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-ne v11, v12, :cond_6

    .line 771
    new-instance v11, Lcom/itextpdf/kernel/pdf/PdfNumber;

    iget-object v12, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v12}, Lcom/itextpdf/io/source/PdfTokenizer;->getByteContent()[B

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>([B)V

    .local v11, "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    goto :goto_3

    .line 773
    .end local v11    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_6
    iget-object v11, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    aget v12, v6, v9

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    .line 774
    const/4 v11, 0x0

    invoke-virtual {p0, v11, v3}, Lcom/itextpdf/kernel/pdf/PdfReader;->readObject(ZZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v11

    .line 776
    .restart local v11    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    :goto_3
    invoke-virtual {v10, v11}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setRefersTo(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 777
    invoke-virtual {v11, v10}, Lcom/itextpdf/kernel/pdf/PdfObject;->setIndirectReference(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 753
    .end local v10    # "reference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .end local v11    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_7
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 779
    .end local v9    # "k":I
    :cond_8
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v3

    const/16 v9, 0x10

    invoke-virtual {v3, v9}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 781
    nop

    .end local v6    # "address":[I
    .end local v7    # "objNumber":[I
    .end local v8    # "ok":Z
    iput-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    .line 782
    nop

    .line 783
    return-void

    .line 752
    .restart local v6    # "address":[I
    .restart local v7    # "objNumber":[I
    .restart local v8    # "ok":Z
    :cond_9
    :try_start_1
    new-instance v3, Lcom/itextpdf/kernel/PdfException;

    const-string v9, "Error while reading Object Stream."

    invoke-direct {v3, v9}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    .end local v0    # "objectStreamNumber":I
    .end local v1    # "first":I
    .end local v2    # "n":I
    .end local v4    # "bytes":[B
    .end local v5    # "saveTokens":Lcom/itextpdf/io/source/PdfTokenizer;
    .end local p1    # "objectStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 781
    .end local v6    # "address":[I
    .end local v7    # "objNumber":[I
    .end local v8    # "ok":Z
    .restart local v0    # "objectStreamNumber":I
    .restart local v1    # "first":I
    .restart local v2    # "n":I
    .restart local v4    # "bytes":[B
    .restart local v5    # "saveTokens":Lcom/itextpdf/io/source/PdfTokenizer;
    .restart local p1    # "objectStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    :catchall_0
    move-exception v3

    iput-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    .line 782
    throw v3
.end method

.method protected readPdf()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 704
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->checkPdfHeader()Ljava/lang/String;

    move-result-object v0

    .line 706
    .local v0, "version":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lcom/itextpdf/kernel/pdf/PdfVersion;->fromString(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfVersion;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->headerPdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 709
    nop

    .line 711
    :try_start_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfReader;->readXref()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 717
    goto :goto_0

    .line 712
    :catch_0
    move-exception v1

    .line 713
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-class v2, Lcom/itextpdf/kernel/pdf/PdfReader;

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 714
    .local v2, "logger":Lorg/slf4j/Logger;
    const-string v3, "Error occurred while reading cross reference table. Cross reference table will be rebuilt."

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 716
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfReader;->rebuildXref()V

    .line 718
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .end local v2    # "logger":Lorg/slf4j/Logger;
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->markReadingCompleted()V

    .line 719
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfReader;->readDecryptObj()V

    .line 720
    return-void

    .line 707
    :catch_1
    move-exception v1

    .line 708
    .local v1, "exc":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcom/itextpdf/kernel/PdfException;

    const-string v3, "PDF version is not valid."

    invoke-direct {v2, v3, v0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v2
.end method

.method protected readPdfName(Z)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 2
    .param p1, "readAsDirect"    # Z

    .line 896
    if-eqz p1, :cond_0

    .line 897
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->staticNames:Ljava/util/Map;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 898
    .local v0, "cachedName":Lcom/itextpdf/kernel/pdf/PdfName;
    if-eqz v0, :cond_0

    .line 899
    return-object v0

    .line 902
    .end local v0    # "cachedName":Lcom/itextpdf/kernel/pdf/PdfName;
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getByteContent()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>([B)V

    return-object v0
.end method

.method protected readReference(Z)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 10
    .param p1, "readAsDirect"    # Z

    .line 794
    const-class v0, Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getObjNr()I

    move-result v1

    .line 795
    .local v1, "num":I
    if-gez v1, :cond_0

    .line 796
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfReader;->createPdfNullInstance(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    return-object v0

    .line 798
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v8

    .line 799
    .local v8, "table":Lcom/itextpdf/kernel/pdf/PdfXrefTable;
    invoke-virtual {v8, v1}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->get(I)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v9

    .line 800
    .local v9, "reference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    const-string v2, "Invalid indirect reference {0} {1} R"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v9, :cond_3

    .line 801
    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->isFree()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 802
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 803
    .local v0, "logger":Lorg/slf4j/Logger;
    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/PdfTokenizer;->getObjNr()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/PdfTokenizer;->getGenNr()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-static {v2, v5}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 804
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfReader;->createPdfNullInstance(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    return-object v2

    .line 806
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :cond_1
    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v6

    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v7}, Lcom/itextpdf/io/source/PdfTokenizer;->getGenNr()I

    move-result v7

    if-eq v6, v7, :cond_5

    .line 807
    iget-boolean v6, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->fixedXref:Z

    if-eqz v6, :cond_2

    .line 808
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 809
    .restart local v0    # "logger":Lorg/slf4j/Logger;
    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/PdfTokenizer;->getObjNr()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/PdfTokenizer;->getGenNr()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-static {v2, v5}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 810
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfReader;->createPdfNullInstance(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    return-object v2

    .line 812
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :cond_2
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    new-array v2, v5, [Ljava/lang/Object;

    .line 813
    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string/jumbo v3, "{0} {1} R"

    invoke-static {v3, v2}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Invalid indirect reference {0}."

    invoke-direct {v0, v3, v2}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0

    .line 817
    :cond_3
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->isReadingCompleted()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 818
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 819
    .restart local v0    # "logger":Lorg/slf4j/Logger;
    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/PdfTokenizer;->getObjNr()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/PdfTokenizer;->getGenNr()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-static {v2, v5}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 820
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfReader;->createPdfNullInstance(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    return-object v2

    .line 822
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :cond_4
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    .line 823
    invoke-virtual {v2}, Lcom/itextpdf/io/source/PdfTokenizer;->getGenNr()I

    move-result v5

    const-wide/16 v6, 0x0

    move-object v2, v0

    move v4, v1

    invoke-direct/range {v2 .. v7}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;IIJ)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 822
    invoke-virtual {v8, v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->add(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v9

    .line 826
    :cond_5
    return-object v9
.end method

.method public readStream(Lcom/itextpdf/kernel/pdf/PdfStream;Z)Ljava/io/InputStream;
    .locals 2
    .param p1, "stream"    # Lcom/itextpdf/kernel/pdf/PdfStream;
    .param p2, "decode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 431
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfReader;->readStreamBytes(Lcom/itextpdf/kernel/pdf/PdfStream;Z)[B

    move-result-object v0

    .line 432
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public readStreamBytes(Lcom/itextpdf/kernel/pdf/PdfStream;Z)[B
    .locals 2
    .param p1, "stream"    # Lcom/itextpdf/kernel/pdf/PdfStream;
    .param p2, "decode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfReader;->readStreamBytesRaw(Lcom/itextpdf/kernel/pdf/PdfStream;)[B

    move-result-object v0

    .line 359
    .local v0, "b":[B
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 360
    invoke-static {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfReader;->decodeBytes([BLcom/itextpdf/kernel/pdf/PdfDictionary;)[B

    move-result-object v1

    return-object v1

    .line 362
    :cond_0
    return-object v0
.end method

.method public readStreamBytesRaw(Lcom/itextpdf/kernel/pdf/PdfStream;)[B
    .locals 13
    .param p1, "stream"    # Lcom/itextpdf/kernel/pdf/PdfStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 376
    .local v0, "type":Lcom/itextpdf/kernel/pdf/PdfName;
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->XRefStm:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ObjStm:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 377
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfReader;->checkPdfStreamLength(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 378
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOffset()J

    move-result-wide v1

    .line 379
    .local v1, "offset":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1

    .line 380
    const/4 v3, 0x0

    return-object v3

    .line 381
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getLength()I

    move-result v3

    .line 382
    .local v3, "length":I
    if-gtz v3, :cond_2

    .line 383
    const/4 v4, 0x0

    new-array v4, v4, [B

    return-object v4

    .line 384
    :cond_2
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/PdfTokenizer;->getSafeFile()Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    move-result-object v4

    .line 385
    .local v4, "file":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    const/4 v5, 0x0

    .line 387
    .local v5, "bytes":[B
    :try_start_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOffset()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 388
    new-array v6, v3, [B

    move-object v5, v6

    .line 389
    invoke-virtual {v4, v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([B)V

    .line 390
    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->decrypt:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->isEmbeddedFilesOnly()Z

    move-result v6

    if-nez v6, :cond_7

    .line 391
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v7, 0x1

    invoke-virtual {p1, v6, v7}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    .line 392
    .local v6, "filter":Lcom/itextpdf/kernel/pdf/PdfObject;
    const/4 v8, 0x0

    .line 393
    .local v8, "skip":Z
    if-eqz v6, :cond_6

    .line 394
    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->Crypt:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v9, v6}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 395
    const/4 v7, 0x1

    move v8, v7

    .end local v8    # "skip":Z
    .local v7, "skip":Z
    goto :goto_1

    .line 396
    .end local v7    # "skip":Z
    .restart local v8    # "skip":Z
    :cond_3
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v9

    if-ne v9, v7, :cond_5

    .line 397
    move-object v9, v6

    check-cast v9, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 398
    .local v9, "filters":Lcom/itextpdf/kernel/pdf/PdfArray;
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_0
    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_5

    .line 399
    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfArray;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    sget-object v11, Lcom/itextpdf/kernel/pdf/PdfName;->Crypt:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v9, v10, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(IZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 400
    const/4 v7, 0x1

    .line 401
    .end local v8    # "skip":Z
    .restart local v7    # "skip":Z
    move v8, v7

    goto :goto_1

    .line 398
    .end local v7    # "skip":Z
    .restart local v8    # "skip":Z
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 405
    .end local v9    # "filters":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v10    # "k":I
    :cond_5
    :goto_1
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfObject;->release()V

    .line 407
    :cond_6
    if-nez v8, :cond_7

    .line 408
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->decrypt:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v9

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->setHashKeyForNextObject(II)V

    .line 409
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->decrypt:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {v7, v5}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->decryptByteArray([B)[B

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v7

    .line 414
    .end local v6    # "filter":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v8    # "skip":Z
    :cond_7
    :try_start_1
    invoke-virtual {v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 416
    goto :goto_2

    .line 415
    :catch_0
    move-exception v6

    .line 417
    nop

    .line 418
    :goto_2
    return-object v5

    .line 413
    :catchall_0
    move-exception v6

    .line 414
    :try_start_2
    invoke-virtual {v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 416
    goto :goto_3

    .line 415
    :catch_1
    move-exception v7

    .line 417
    :goto_3
    throw v6
.end method

.method protected readXref()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 942
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->getStartxref()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    .line 943
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->nextToken()Z

    .line 944
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    sget-object v1, Lcom/itextpdf/io/source/PdfTokenizer;->Startxref:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/PdfTokenizer;->tokenValueEqualsTo([B)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 946
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->nextToken()Z

    .line 947
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Number:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-ne v0, v1, :cond_4

    .line 949
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->getLongValue()J

    move-result-wide v0

    .line 950
    .local v0, "startxref":J
    iput-wide v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->lastXref:J

    .line 951
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/PdfTokenizer;->getPosition()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->eofPos:J

    .line 953
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfReader;->readXrefStream(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 954
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->xrefStm:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    return-void

    .line 958
    :cond_0
    goto :goto_0

    .line 957
    :catch_0
    move-exception v2

    .line 960
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->clear()V

    .line 962
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v2, v0, v1}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    .line 963
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfReader;->readXrefSection()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 969
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 971
    .local v2, "trailer2":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :goto_1
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Prev:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    .line 972
    .local v3, "prev":Lcom/itextpdf/kernel/pdf/PdfNumber;
    if-nez v3, :cond_2

    .line 973
    nop

    .line 981
    .end local v3    # "prev":Lcom/itextpdf/kernel/pdf/PdfNumber;
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Size:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsInt(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Integer;

    move-result-object v3

    .line 982
    .local v3, "xrefSize":Ljava/lang/Integer;
    if-eqz v3, :cond_1

    .line 985
    return-void

    .line 983
    :cond_1
    new-instance v4, Lcom/itextpdf/kernel/PdfException;

    const-string v5, "Invalid xref table."

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 974
    .local v3, "prev":Lcom/itextpdf/kernel/pdf/PdfNumber;
    :cond_2
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-eqz v4, :cond_3

    .line 976
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;->longValue()J

    move-result-wide v0

    .line 977
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v4, v0, v1}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    .line 978
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfReader;->readXrefSection()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    .line 979
    .end local v3    # "prev":Lcom/itextpdf/kernel/pdf/PdfNumber;
    goto :goto_1

    .line 975
    .restart local v3    # "prev":Lcom/itextpdf/kernel/pdf/PdfNumber;
    :cond_3
    new-instance v4, Lcom/itextpdf/kernel/PdfException;

    const-string v5, "Trailer prev entry points to its own cross reference section."

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 948
    .end local v0    # "startxref":J
    .end local v2    # "trailer2":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v3    # "prev":Lcom/itextpdf/kernel/pdf/PdfNumber;
    :cond_4
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    const-string v2, "PDF startxref is not followed by a number."

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0

    .line 945
    :cond_5
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    const-string v2, "PDF startxref not found."

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method

.method protected readXrefSection()Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 988
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->nextValidToken()V

    .line 989
    iget-object v0, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    sget-object v2, Lcom/itextpdf/io/source/PdfTokenizer;->Xref:[B

    invoke-virtual {v0, v2}, Lcom/itextpdf/io/source/PdfTokenizer;->tokenValueEqualsTo([B)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 990
    iget-object v0, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    new-array v3, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "xref subsection not found."

    invoke-virtual {v0, v4, v3}, Lcom/itextpdf/io/source/PdfTokenizer;->throwError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 991
    :cond_0
    iget-object v0, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v3

    .line 993
    .local v3, "xref":Lcom/itextpdf/kernel/pdf/PdfXrefTable;
    :goto_0
    iget-object v0, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->nextValidToken()V

    .line 994
    iget-object v0, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    sget-object v4, Lcom/itextpdf/io/source/PdfTokenizer;->Trailer:[B

    invoke-virtual {v0, v4}, Lcom/itextpdf/io/source/PdfTokenizer;->tokenValueEqualsTo([B)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    .line 995
    nop

    .line 1060
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfReader;->readObject(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 1061
    .local v2, "trailer":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->XRefStm:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    .line 1062
    .local v5, "xrs":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v0

    const/16 v6, 0x8

    if-ne v0, v6, :cond_1

    .line 1063
    move-object v0, v5

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v6

    .line 1065
    .local v6, "loc":I
    int-to-long v7, v6

    :try_start_0
    invoke-virtual {v1, v7, v8}, Lcom/itextpdf/kernel/pdf/PdfReader;->readXrefStream(J)Z

    .line 1066
    iput-boolean v4, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->xrefStm:Z

    .line 1067
    iput-boolean v4, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->hybridXref:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1071
    goto :goto_1

    .line 1068
    :catch_0
    move-exception v0

    .line 1069
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->clear()V

    .line 1070
    throw v0

    .line 1073
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "loc":I
    :cond_1
    :goto_1
    return-object v2

    .line 997
    .end local v2    # "trailer":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v5    # "xrs":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_2
    iget-object v0, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v0

    sget-object v5, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Number:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-eq v0, v5, :cond_3

    .line 998
    iget-object v0, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "Object number of the first object in this xref subsection not found."

    invoke-virtual {v0, v6, v5}, Lcom/itextpdf/io/source/PdfTokenizer;->throwError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1000
    :cond_3
    iget-object v0, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->getIntValue()I

    move-result v0

    .line 1001
    .local v0, "start":I
    iget-object v5, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/PdfTokenizer;->nextValidToken()V

    .line 1002
    iget-object v5, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v5

    sget-object v6, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Number:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-eq v5, v6, :cond_4

    .line 1003
    iget-object v5, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "Number of entries in this xref subsection not found."

    invoke-virtual {v5, v7, v6}, Lcom/itextpdf/io/source/PdfTokenizer;->throwError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1005
    :cond_4
    iget-object v5, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/PdfTokenizer;->getIntValue()I

    move-result v5

    add-int/2addr v5, v0

    .line 1006
    .local v5, "end":I
    move v6, v0

    move v12, v6

    .local v12, "num":I
    :goto_2
    if-ge v12, v5, :cond_e

    .line 1007
    iget-object v6, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/PdfTokenizer;->nextValidToken()V

    .line 1008
    iget-object v6, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/PdfTokenizer;->getLongValue()J

    move-result-wide v13

    .line 1009
    .local v13, "pos":J
    iget-object v6, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/PdfTokenizer;->nextValidToken()V

    .line 1010
    iget-object v6, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/PdfTokenizer;->getIntValue()I

    move-result v15

    .line 1011
    .local v15, "gen":I
    iget-object v6, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/PdfTokenizer;->nextValidToken()V

    .line 1012
    const-wide/16 v16, 0x0

    cmp-long v6, v13, v16

    if-nez v6, :cond_5

    const v6, 0xffff

    if-ne v15, v6, :cond_5

    if-ne v12, v4, :cond_5

    if-eqz v0, :cond_5

    .line 1024
    const/4 v12, 0x0

    .line 1025
    add-int/lit8 v5, v5, -0x1

    .line 1026
    goto/16 :goto_8

    .line 1028
    :cond_5
    invoke-virtual {v3, v12}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->get(I)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v10

    .line 1029
    .local v10, "reference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    const/4 v6, 0x4

    if-eqz v10, :cond_6

    invoke-virtual {v10, v6}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v7

    if-ne v7, v15, :cond_6

    move v7, v4

    goto :goto_3

    :cond_6
    move v7, v2

    :goto_3
    move/from16 v18, v7

    .line 1031
    .local v18, "refReadingState":Z
    if-eqz v10, :cond_8

    if-nez v18, :cond_7

    .line 1032
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v7

    if-nez v7, :cond_7

    goto :goto_4

    :cond_7
    move v7, v2

    goto :goto_5

    :cond_8
    :goto_4
    move v7, v4

    :goto_5
    move/from16 v19, v7

    .line 1034
    .local v19, "refFirstEncountered":Z
    if-eqz v19, :cond_9

    .line 1035
    new-instance v20, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    iget-object v7, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-object/from16 v6, v20

    move v8, v12

    move v9, v15

    move-object v4, v10

    .end local v10    # "reference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .local v4, "reference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    move-wide v10, v13

    invoke-direct/range {v6 .. v11}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;IIJ)V

    move-object/from16 v10, v20

    .end local v4    # "reference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .restart local v10    # "reference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    goto :goto_6

    .line 1036
    :cond_9
    move-object v4, v10

    .end local v10    # "reference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .restart local v4    # "reference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    if-eqz v18, :cond_d

    .line 1037
    invoke-virtual {v4, v13, v14}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setOffset(J)V

    .line 1038
    invoke-virtual {v4, v6}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->clearState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-object v10, v4

    .line 1043
    .end local v4    # "reference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .restart local v10    # "reference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    :goto_6
    iget-object v4, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    sget-object v6, Lcom/itextpdf/io/source/PdfTokenizer;->N:[B

    invoke-virtual {v4, v6}, Lcom/itextpdf/io/source/PdfTokenizer;->tokenValueEqualsTo([B)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1044
    cmp-long v4, v13, v16

    if-nez v4, :cond_c

    .line 1045
    iget-object v4, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "file position {0} cross reference entry in this xref subsection."

    invoke-virtual {v4, v7, v6}, Lcom/itextpdf/io/source/PdfTokenizer;->throwError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    .line 1047
    :cond_a
    iget-object v4, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    sget-object v6, Lcom/itextpdf/io/source/PdfTokenizer;->F:[B

    invoke-virtual {v4, v6}, Lcom/itextpdf/io/source/PdfTokenizer;->tokenValueEqualsTo([B)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1048
    if-eqz v19, :cond_c

    .line 1049
    const/4 v4, 0x2

    invoke-virtual {v10, v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_7

    .line 1052
    :cond_b
    iget-object v4, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "Invalid cross reference entry in this xref subsection."

    invoke-virtual {v4, v7, v6}, Lcom/itextpdf/io/source/PdfTokenizer;->throwError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1055
    :cond_c
    :goto_7
    if-eqz v19, :cond_d

    .line 1056
    invoke-virtual {v3, v10}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->add(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 1006
    .end local v10    # "reference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .end local v13    # "pos":J
    .end local v15    # "gen":I
    .end local v18    # "refReadingState":Z
    .end local v19    # "refFirstEncountered":Z
    :cond_d
    :goto_8
    const/4 v4, 0x1

    add-int/2addr v12, v4

    goto/16 :goto_2

    .line 1059
    .end local v0    # "start":I
    .end local v5    # "end":I
    .end local v12    # "num":I
    :cond_e
    goto/16 :goto_0
.end method

.method protected readXrefStream(J)Z
    .locals 34
    .param p1, "ptr"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 1077
    .end local p1    # "ptr":J
    .local v1, "ptr":J
    :goto_0
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    const/4 v4, 0x1

    if-eqz v3, :cond_17

    .line 1078
    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v3, v1, v2}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    .line 1079
    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/PdfTokenizer;->nextToken()Z

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_0

    .line 1080
    return v5

    .line 1082
    :cond_0
    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v3

    sget-object v6, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Number:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-eq v3, v6, :cond_1

    .line 1083
    return v5

    .line 1085
    :cond_1
    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/PdfTokenizer;->nextToken()Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v3

    sget-object v6, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Number:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-eq v3, v6, :cond_2

    move-wide/from16 v17, v1

    move v1, v5

    goto/16 :goto_e

    .line 1088
    :cond_2
    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/PdfTokenizer;->nextToken()Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    sget-object v6, Lcom/itextpdf/io/source/PdfTokenizer;->Obj:[B

    invoke-virtual {v3, v6}, Lcom/itextpdf/io/source/PdfTokenizer;->tokenValueEqualsTo([B)Z

    move-result v3

    if-nez v3, :cond_3

    move-wide/from16 v17, v1

    move v1, v5

    goto/16 :goto_d

    .line 1091
    :cond_3
    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v3

    .line 1092
    .local v3, "xref":Lcom/itextpdf/kernel/pdf/PdfXrefTable;
    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/pdf/PdfReader;->readObject(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    .line 1094
    .local v6, "object":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v7

    const/16 v8, 0x9

    if-ne v7, v8, :cond_14

    .line 1095
    move-object v7, v6

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 1096
    .local v7, "xrefStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->XRef:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v9}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1097
    return v5

    .line 1102
    :cond_4
    iget-object v8, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-nez v8, :cond_5

    .line 1103
    new-instance v8, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    iput-object v8, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 1104
    invoke-virtual {v8, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->putAll(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 1105
    iget-object v8, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->DecodeParms:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v8, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1106
    iget-object v8, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v8, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1107
    iget-object v8, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->Prev:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v8, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1108
    iget-object v8, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->Length:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v8, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1111
    :cond_5
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Size:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v8

    .line 1113
    .local v8, "size":I
    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->Index:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v9}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v9

    .line 1114
    .local v9, "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-nez v9, :cond_6

    .line 1115
    new-instance v10, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v10}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 1116
    .local v10, "index":Lcom/itextpdf/kernel/pdf/PdfArray;
    new-instance v11, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v11, v5}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v10, v11}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 1117
    new-instance v11, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v11, v8}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v10, v11}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_1

    .line 1119
    .end local v10    # "index":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_6
    move-object v10, v9

    check-cast v10, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 1121
    .restart local v10    # "index":Lcom/itextpdf/kernel/pdf/PdfArray;
    :goto_1
    sget-object v11, Lcom/itextpdf/kernel/pdf/PdfName;->W:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v11}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v11

    .line 1122
    .local v11, "w":Lcom/itextpdf/kernel/pdf/PdfArray;
    const-wide/16 v12, -0x1

    .line 1123
    .local v12, "prev":J
    sget-object v14, Lcom/itextpdf/kernel/pdf/PdfName;->Prev:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v14}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v9

    .line 1124
    if-eqz v9, :cond_7

    .line 1125
    move-object v14, v9

    check-cast v14, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v14}, Lcom/itextpdf/kernel/pdf/PdfNumber;->longValue()J

    move-result-wide v12

    .line 1126
    :cond_7
    invoke-virtual {v3, v8}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->setCapacity(I)V

    .line 1127
    invoke-virtual {v0, v7, v4}, Lcom/itextpdf/kernel/pdf/PdfReader;->readStreamBytes(Lcom/itextpdf/kernel/pdf/PdfStream;Z)[B

    move-result-object v14

    .line 1128
    .local v14, "b":[B
    const/4 v15, 0x0

    .line 1129
    .local v15, "bptr":I
    const/4 v4, 0x3

    new-array v5, v4, [I

    .line 1130
    .local v5, "wc":[I
    const/16 v16, 0x0

    move-wide/from16 v17, v1

    move/from16 v1, v16

    .local v1, "k":I
    .local v17, "ptr":J
    :goto_2
    if-ge v1, v4, :cond_8

    .line 1131
    invoke-virtual {v11, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v2

    aput v2, v5, v1

    .line 1130
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1133
    .end local v1    # "k":I
    :cond_8
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_3
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_13

    .line 1134
    invoke-virtual {v10, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v2

    .line 1135
    .local v2, "start":I
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v10, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v4

    .line 1136
    .local v4, "length":I
    move-object/from16 v16, v6

    .end local v6    # "object":Lcom/itextpdf/kernel/pdf/PdfObject;
    .local v16, "object":Lcom/itextpdf/kernel/pdf/PdfObject;
    add-int v6, v2, v4

    invoke-virtual {v3, v6}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->setCapacity(I)V

    .line 1137
    :goto_4
    add-int/lit8 v6, v4, -0x1

    .end local v4    # "length":I
    .local v6, "length":I
    if-lez v4, :cond_12

    .line 1138
    const/4 v4, 0x1

    .line 1139
    .local v4, "type":I
    const/16 v19, 0x0

    aget v20, v5, v19

    if-lez v20, :cond_9

    .line 1140
    const/4 v4, 0x0

    .line 1141
    const/16 v20, 0x0

    move/from16 v33, v20

    move/from16 v20, v6

    move/from16 v6, v33

    .local v6, "k":I
    .local v20, "length":I
    :goto_5
    move-object/from16 v21, v7

    .end local v7    # "xrefStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    .local v21, "xrefStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    aget v7, v5, v19

    if-ge v6, v7, :cond_a

    .line 1142
    shl-int/lit8 v7, v4, 0x8

    add-int/lit8 v19, v15, 0x1

    .end local v15    # "bptr":I
    .local v19, "bptr":I
    aget-byte v15, v14, v15

    and-int/lit16 v15, v15, 0xff

    add-int v4, v7, v15

    .line 1141
    add-int/lit8 v6, v6, 0x1

    move/from16 v15, v19

    move-object/from16 v7, v21

    const/16 v19, 0x0

    goto :goto_5

    .line 1139
    .end local v19    # "bptr":I
    .end local v20    # "length":I
    .end local v21    # "xrefStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    .local v6, "length":I
    .restart local v7    # "xrefStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    .restart local v15    # "bptr":I
    :cond_9
    move/from16 v20, v6

    move-object/from16 v21, v7

    .line 1145
    .end local v6    # "length":I
    .end local v7    # "xrefStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    .restart local v20    # "length":I
    .restart local v21    # "xrefStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    :cond_a
    const-wide/16 v6, 0x0

    .line 1146
    .local v6, "field2":J
    const/16 v19, 0x0

    move/from16 v33, v19

    move/from16 v19, v8

    move/from16 v8, v33

    .local v8, "k":I
    .local v19, "size":I
    :goto_6
    move-object/from16 v28, v9

    const/16 v22, 0x1

    .end local v9    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .local v28, "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    aget v9, v5, v22

    if-ge v8, v9, :cond_b

    .line 1147
    const/16 v9, 0x8

    shl-long v22, v6, v9

    add-int/lit8 v9, v15, 0x1

    .end local v15    # "bptr":I
    .local v9, "bptr":I
    aget-byte v15, v14, v15

    and-int/lit16 v15, v15, 0xff

    move/from16 v24, v9

    move-object/from16 v29, v10

    .end local v9    # "bptr":I
    .end local v10    # "index":Lcom/itextpdf/kernel/pdf/PdfArray;
    .local v24, "bptr":I
    .local v29, "index":Lcom/itextpdf/kernel/pdf/PdfArray;
    int-to-long v9, v15

    add-long v6, v22, v9

    .line 1146
    add-int/lit8 v8, v8, 0x1

    move/from16 v15, v24

    move-object/from16 v9, v28

    move-object/from16 v10, v29

    goto :goto_6

    .end local v24    # "bptr":I
    .end local v29    # "index":Lcom/itextpdf/kernel/pdf/PdfArray;
    .restart local v10    # "index":Lcom/itextpdf/kernel/pdf/PdfArray;
    .restart local v15    # "bptr":I
    :cond_b
    move-object/from16 v29, v10

    .line 1149
    .end local v8    # "k":I
    .end local v10    # "index":Lcom/itextpdf/kernel/pdf/PdfArray;
    .restart local v29    # "index":Lcom/itextpdf/kernel/pdf/PdfArray;
    const/4 v8, 0x0

    .line 1150
    .local v8, "field3":I
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_7
    const/4 v10, 0x2

    move-object/from16 v30, v11

    .end local v11    # "w":Lcom/itextpdf/kernel/pdf/PdfArray;
    .local v30, "w":Lcom/itextpdf/kernel/pdf/PdfArray;
    aget v11, v5, v10

    if-ge v9, v11, :cond_c

    .line 1151
    shl-int/lit8 v10, v8, 0x8

    add-int/lit8 v11, v15, 0x1

    .end local v15    # "bptr":I
    .local v11, "bptr":I
    aget-byte v15, v14, v15

    and-int/lit16 v15, v15, 0xff

    add-int v8, v10, v15

    .line 1150
    add-int/lit8 v9, v9, 0x1

    move v15, v11

    move-object/from16 v11, v30

    goto :goto_7

    .line 1153
    .end local v9    # "k":I
    .end local v11    # "bptr":I
    .restart local v15    # "bptr":I
    :cond_c
    move v9, v2

    .line 1155
    .local v9, "base":I
    packed-switch v4, :pswitch_data_0

    .line 1167
    move/from16 v32, v4

    move-object/from16 v31, v5

    .end local v4    # "type":I
    .end local v5    # "wc":[I
    .local v31, "wc":[I
    .local v32, "type":I
    new-instance v4, Lcom/itextpdf/kernel/PdfException;

    const-string v5, "Invalid xref stream."

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1163
    .end local v31    # "wc":[I
    .end local v32    # "type":I
    .restart local v4    # "type":I
    .restart local v5    # "wc":[I
    :pswitch_0
    new-instance v10, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    iget-object v11, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    const/16 v25, 0x0

    move/from16 v32, v4

    move-object/from16 v31, v5

    .end local v4    # "type":I
    .end local v5    # "wc":[I
    .restart local v31    # "wc":[I
    .restart local v32    # "type":I
    int-to-long v4, v8

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move/from16 v24, v9

    move-wide/from16 v26, v4

    invoke-direct/range {v22 .. v27}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;IIJ)V

    move-object v4, v10

    .line 1164
    .local v4, "newReference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    long-to-int v5, v6

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setObjStreamNumber(I)V

    .line 1165
    goto :goto_8

    .line 1160
    .end local v31    # "wc":[I
    .end local v32    # "type":I
    .local v4, "type":I
    .restart local v5    # "wc":[I
    :pswitch_1
    move/from16 v32, v4

    move-object/from16 v31, v5

    .end local v4    # "type":I
    .end local v5    # "wc":[I
    .restart local v31    # "wc":[I
    .restart local v32    # "type":I
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    iget-object v5, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move/from16 v24, v9

    move/from16 v25, v8

    move-wide/from16 v26, v6

    invoke-direct/range {v22 .. v27}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;IIJ)V

    .line 1161
    .local v4, "newReference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    goto :goto_8

    .line 1157
    .end local v31    # "wc":[I
    .end local v32    # "type":I
    .local v4, "type":I
    .restart local v5    # "wc":[I
    :pswitch_2
    move/from16 v32, v4

    move-object/from16 v31, v5

    .end local v4    # "type":I
    .end local v5    # "wc":[I
    .restart local v31    # "wc":[I
    .restart local v32    # "type":I
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    iget-object v5, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move/from16 v24, v9

    move/from16 v25, v8

    move-wide/from16 v26, v6

    invoke-direct/range {v22 .. v27}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;IIJ)V

    invoke-virtual {v4, v10}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 1158
    .local v4, "newReference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    nop

    .line 1170
    :goto_8
    invoke-virtual {v3, v9}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->get(I)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v5

    .line 1171
    .local v5, "reference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    const/4 v10, 0x4

    if-eqz v5, :cond_d

    invoke-virtual {v5, v10}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v11

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v10

    if-ne v11, v10, :cond_d

    const/4 v10, 0x1

    goto :goto_9

    :cond_d
    const/4 v10, 0x0

    .line 1173
    .local v10, "refReadingState":Z
    :goto_9
    if-eqz v5, :cond_f

    if-nez v10, :cond_e

    .line 1174
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v11

    if-nez v11, :cond_e

    goto :goto_a

    :cond_e
    const/4 v11, 0x0

    goto :goto_b

    :cond_f
    :goto_a
    const/4 v11, 0x1

    .line 1176
    .local v11, "refFirstEncountered":Z
    :goto_b
    if-eqz v11, :cond_10

    .line 1177
    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->add(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-wide/from16 v23, v6

    goto :goto_c

    .line 1178
    :cond_10
    if-eqz v10, :cond_11

    .line 1179
    move-wide/from16 v23, v6

    .end local v6    # "field2":J
    .local v23, "field2":J
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getOffset()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setOffset(J)V

    .line 1180
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjStreamNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setObjStreamNumber(I)V

    .line 1181
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->clearState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_c

    .line 1178
    .end local v23    # "field2":J
    .restart local v6    # "field2":J
    :cond_11
    move-wide/from16 v23, v6

    .line 1183
    .end local v6    # "field2":J
    .restart local v23    # "field2":J
    :goto_c
    nop

    .end local v4    # "newReference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .end local v5    # "reference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .end local v8    # "field3":I
    .end local v9    # "base":I
    .end local v10    # "refReadingState":Z
    .end local v11    # "refFirstEncountered":Z
    .end local v23    # "field2":J
    .end local v32    # "type":I
    add-int/lit8 v2, v2, 0x1

    .line 1184
    move/from16 v8, v19

    move/from16 v4, v20

    move-object/from16 v7, v21

    move-object/from16 v9, v28

    move-object/from16 v10, v29

    move-object/from16 v11, v30

    move-object/from16 v5, v31

    goto/16 :goto_4

    .line 1137
    .end local v19    # "size":I
    .end local v20    # "length":I
    .end local v21    # "xrefStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    .end local v28    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v29    # "index":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v30    # "w":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v31    # "wc":[I
    .local v5, "wc":[I
    .local v6, "length":I
    .restart local v7    # "xrefStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    .local v8, "size":I
    .local v9, "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .local v10, "index":Lcom/itextpdf/kernel/pdf/PdfArray;
    .local v11, "w":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_12
    move-object/from16 v31, v5

    move/from16 v20, v6

    move-object/from16 v21, v7

    move/from16 v19, v8

    move-object/from16 v28, v9

    move-object/from16 v29, v10

    move-object/from16 v30, v11

    .line 1133
    .end local v2    # "start":I
    .end local v5    # "wc":[I
    .end local v6    # "length":I
    .end local v7    # "xrefStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    .end local v8    # "size":I
    .end local v9    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v10    # "index":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v11    # "w":Lcom/itextpdf/kernel/pdf/PdfArray;
    .restart local v19    # "size":I
    .restart local v21    # "xrefStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    .restart local v28    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .restart local v29    # "index":Lcom/itextpdf/kernel/pdf/PdfArray;
    .restart local v30    # "w":Lcom/itextpdf/kernel/pdf/PdfArray;
    .restart local v31    # "wc":[I
    add-int/lit8 v1, v1, 0x2

    move-object/from16 v6, v16

    goto/16 :goto_3

    .end local v16    # "object":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v19    # "size":I
    .end local v21    # "xrefStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    .end local v28    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v29    # "index":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v30    # "w":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v31    # "wc":[I
    .restart local v5    # "wc":[I
    .local v6, "object":Lcom/itextpdf/kernel/pdf/PdfObject;
    .restart local v7    # "xrefStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    .restart local v8    # "size":I
    .restart local v9    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .restart local v10    # "index":Lcom/itextpdf/kernel/pdf/PdfArray;
    .restart local v11    # "w":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_13
    move-object/from16 v31, v5

    move-object/from16 v16, v6

    move-object/from16 v21, v7

    move/from16 v19, v8

    move-object/from16 v28, v9

    move-object/from16 v29, v10

    move-object/from16 v30, v11

    .line 1186
    .end local v1    # "idx":I
    .end local v5    # "wc":[I
    .end local v6    # "object":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v7    # "xrefStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    .end local v8    # "size":I
    .end local v9    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v10    # "index":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v11    # "w":Lcom/itextpdf/kernel/pdf/PdfArray;
    .restart local v16    # "object":Lcom/itextpdf/kernel/pdf/PdfObject;
    .restart local v19    # "size":I
    .restart local v21    # "xrefStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    .restart local v28    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .restart local v29    # "index":Lcom/itextpdf/kernel/pdf/PdfArray;
    .restart local v30    # "w":Lcom/itextpdf/kernel/pdf/PdfArray;
    .restart local v31    # "wc":[I
    move-wide v1, v12

    .line 1187
    .end local v3    # "xref":Lcom/itextpdf/kernel/pdf/PdfXrefTable;
    .end local v12    # "prev":J
    .end local v14    # "b":[B
    .end local v15    # "bptr":I
    .end local v16    # "object":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v17    # "ptr":J
    .end local v19    # "size":I
    .end local v21    # "xrefStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    .end local v28    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v29    # "index":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v30    # "w":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v31    # "wc":[I
    .local v1, "ptr":J
    goto/16 :goto_0

    .line 1100
    .restart local v3    # "xref":Lcom/itextpdf/kernel/pdf/PdfXrefTable;
    .restart local v6    # "object":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_14
    move-wide/from16 v17, v1

    .end local v1    # "ptr":J
    .restart local v17    # "ptr":J
    const/4 v1, 0x0

    return v1

    .line 1088
    .end local v3    # "xref":Lcom/itextpdf/kernel/pdf/PdfXrefTable;
    .end local v6    # "object":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v17    # "ptr":J
    .restart local v1    # "ptr":J
    :cond_15
    move-wide/from16 v17, v1

    move v1, v5

    .line 1089
    .end local v1    # "ptr":J
    .restart local v17    # "ptr":J
    :goto_d
    return v1

    .line 1085
    .end local v17    # "ptr":J
    .restart local v1    # "ptr":J
    :cond_16
    move-wide/from16 v17, v1

    move v1, v5

    .line 1086
    .end local v1    # "ptr":J
    .restart local v17    # "ptr":J
    :goto_e
    return v1

    .line 1188
    .end local v17    # "ptr":J
    .restart local v1    # "ptr":J
    :cond_17
    move-wide/from16 v17, v1

    .end local v1    # "ptr":J
    .restart local v17    # "ptr":J
    const/4 v1, 0x1

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected rebuildXref()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1219
    move-object/from16 v1, p0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->xrefStm:Z

    .line 1220
    iput-boolean v2, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->hybridXref:Z

    .line 1221
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->rebuiltXref:Z

    .line 1222
    iget-object v0, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v4

    .line 1223
    .local v4, "xref":Lcom/itextpdf/kernel/pdf/PdfXrefTable;
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->clear()V

    .line 1224
    iget-object v0, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v5, v6}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    .line 1225
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 1226
    new-instance v0, Lcom/itextpdf/io/source/ByteBuffer;

    const/16 v5, 0x18

    invoke-direct {v0, v5}, Lcom/itextpdf/io/source/ByteBuffer;-><init>(I)V

    move-object v5, v0

    .line 1227
    .local v5, "buffer":Lcom/itextpdf/io/source/ByteBuffer;
    new-instance v0, Lcom/itextpdf/io/source/PdfTokenizer;

    new-instance v6, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfReader$ReusableRandomAccessSource;

    invoke-direct {v7, v5}, Lcom/itextpdf/kernel/pdf/PdfReader$ReusableRandomAccessSource;-><init>(Lcom/itextpdf/io/source/ByteBuffer;)V

    invoke-direct {v6, v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    invoke-direct {v0, v6}, Lcom/itextpdf/io/source/PdfTokenizer;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;)V

    move-object v6, v0

    .line 1229
    .local v6, "lineTokeniser":Lcom/itextpdf/io/source/PdfTokenizer;
    :goto_0
    iget-object v0, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->getPosition()J

    move-result-wide v13

    .line 1230
    .local v13, "pos":J
    invoke-virtual {v5}, Lcom/itextpdf/io/source/ByteBuffer;->reset()Lcom/itextpdf/io/source/ByteBuffer;

    .line 1233
    iget-object v0, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0, v5, v3}, Lcom/itextpdf/io/source/PdfTokenizer;->readLineSegment(Lcom/itextpdf/io/source/ByteBuffer;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1234
    nop

    .line 1261
    .end local v13    # "pos":J
    iget-object v0, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz v0, :cond_0

    .line 1263
    return-void

    .line 1262
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "Trailer not found."

    invoke-direct {v0, v2}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1235
    .restart local v13    # "pos":J
    :cond_1
    invoke-virtual {v5, v2}, Lcom/itextpdf/io/source/ByteBuffer;->get(I)B

    move-result v0

    const/16 v7, 0x74

    if-ne v0, v7, :cond_4

    .line 1236
    invoke-static {v5}, Lcom/itextpdf/io/source/PdfTokenizer;->checkTrailer(Lcom/itextpdf/io/source/ByteBuffer;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1237
    goto :goto_0

    .line 1238
    :cond_2
    iget-object v0, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0, v13, v14}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    .line 1239
    iget-object v0, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->nextToken()Z

    .line 1240
    iget-object v0, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->getPosition()J

    move-result-wide v7

    .line 1242
    .end local v13    # "pos":J
    .local v7, "pos":J
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfReader;->readObject(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 1243
    .local v0, "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->Root:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v9, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 1244
    iput-object v0, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    goto :goto_1

    .line 1246
    :cond_3
    iget-object v9, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v9, v7, v8}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1247
    .end local v0    # "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :catch_0
    move-exception v0

    .line 1248
    .local v0, "e":Ljava/lang/Exception;
    iget-object v9, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v9, v7, v8}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    .line 1249
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_2

    .line 1250
    .end local v7    # "pos":J
    .restart local v13    # "pos":J
    :cond_4
    invoke-virtual {v5, v2}, Lcom/itextpdf/io/source/ByteBuffer;->get(I)B

    move-result v0

    const/16 v7, 0x30

    if-lt v0, v7, :cond_7

    invoke-virtual {v5, v2}, Lcom/itextpdf/io/source/ByteBuffer;->get(I)B

    move-result v0

    const/16 v7, 0x39

    if-gt v0, v7, :cond_7

    .line 1251
    invoke-static {v6}, Lcom/itextpdf/io/source/PdfTokenizer;->checkObjectStart(Lcom/itextpdf/io/source/PdfTokenizer;)[I

    move-result-object v0

    .line 1252
    .local v0, "obj":[I
    if-nez v0, :cond_5

    .line 1253
    goto :goto_0

    .line 1254
    :cond_5
    aget v15, v0, v2

    .line 1255
    .local v15, "num":I
    aget v11, v0, v3

    .line 1256
    .local v11, "gen":I
    invoke-virtual {v4, v15}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->get(I)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v4, v15}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->get(I)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v7

    if-gt v7, v11, :cond_7

    .line 1257
    :cond_6
    new-instance v12, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    iget-object v8, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-object v7, v12

    move v9, v15

    move v10, v11

    move/from16 v16, v11

    move-object v2, v12

    .end local v11    # "gen":I
    .local v16, "gen":I
    move-wide v11, v13

    invoke-direct/range {v7 .. v12}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;IIJ)V

    invoke-virtual {v4, v2}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->add(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 1260
    .end local v0    # "obj":[I
    .end local v13    # "pos":J
    .end local v15    # "num":I
    .end local v16    # "gen":I
    :cond_7
    :goto_2
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public setCloseStream(Z)V
    .locals 1
    .param p1, "closeStream"    # Z

    .line 272
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/source/PdfTokenizer;->setCloseStream(Z)V

    .line 273
    return-void
.end method

.method public setMemorySavingMode(Z)Lcom/itextpdf/kernel/pdf/PdfReader;
    .locals 0
    .param p1, "memorySavingMode"    # Z

    .line 229
    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->memorySavingMode:Z

    .line 230
    return-object p0
.end method

.method public setStrictnessLevel(Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;)Lcom/itextpdf/kernel/pdf/PdfReader;
    .locals 1
    .param p1, "strictnessLevel"    # Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    .line 251
    if-nez p1, :cond_0

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfReader;->DEFAULT_STRICTNESS_LEVEL:Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->strictnessLevel:Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    .line 252
    return-object p0
.end method

.method public setUnethicalReading(Z)Lcom/itextpdf/kernel/pdf/PdfReader;
    .locals 0
    .param p1, "unethicalReading"    # Z

    .line 214
    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/PdfReader;->unethicalReading:Z

    .line 215
    return-object p0
.end method
