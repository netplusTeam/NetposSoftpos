.class Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;
.super Lcom/itextpdf/kernel/pdf/PdfReader;
.source "SignatureUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/signatures/SignatureUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContentsChecker"
.end annotation


# instance fields
.field private contentsEnd:J

.field private contentsLevel:I

.field private contentsStart:J

.field private currentLevel:I

.field private rangeIsCorrect:Z

.field private searchInV:Z


# direct methods
.method public constructor <init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V
    .locals 2
    .param p1, "byteSource"    # Lcom/itextpdf/io/source/IRandomAccessSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 457
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfReader;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;Lcom/itextpdf/kernel/pdf/ReaderProperties;)V

    .line 449
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->currentLevel:I

    .line 450
    const/4 v1, 0x1

    iput v1, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->contentsLevel:I

    .line 451
    iput-boolean v1, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->searchInV:Z

    .line 453
    iput-boolean v0, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->rangeIsCorrect:Z

    .line 458
    return-void
.end method


# virtual methods
.method public checkWhetherSignatureCoversWholeDocument(Lcom/itextpdf/forms/fields/PdfFormField;)Z
    .locals 8
    .param p1, "signatureField"    # Lcom/itextpdf/forms/fields/PdfFormField;

    .line 461
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->rangeIsCorrect:Z

    .line 462
    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getValue()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 463
    .local v1, "signature":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->ByteRange:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->toIntArray()[I

    move-result-object v2

    .line 465
    .local v2, "byteRange":[I
    const/4 v3, 0x4

    :try_start_0
    array-length v4, v2

    if-ne v3, v4, :cond_2

    aget v3, v2, v0

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/PdfTokenizer;->getSafeFile()Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->length()J

    move-result-wide v3

    const/4 v5, 0x2

    aget v6, v2, v5

    const/4 v7, 0x3

    aget v7, v2, v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/2addr v6, v7

    int-to-long v6, v6

    cmp-long v3, v3, v6

    if-eqz v3, :cond_0

    goto :goto_1

    .line 471
    :cond_0
    nop

    .line 473
    const/4 v3, 0x1

    aget v4, v2, v3

    int-to-long v6, v4

    iput-wide v6, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->contentsStart:J

    .line 474
    aget v4, v2, v5

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->contentsEnd:J

    .line 477
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 478
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getOffset()J

    move-result-wide v4

    .line 479
    .local v4, "signatureOffset":J
    iput-boolean v3, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->searchInV:Z

    goto :goto_0

    .line 481
    .end local v4    # "signatureOffset":J
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getOffset()J

    move-result-wide v4

    .line 482
    .restart local v4    # "signatureOffset":J
    iput-boolean v0, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->searchInV:Z

    .line 483
    iget v6, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->contentsLevel:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->contentsLevel:I

    .line 487
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    .line 488
    iget-object v3, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/PdfTokenizer;->nextValidToken()V

    .line 489
    invoke-virtual {p0, v0, v0}, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->readObject(ZZ)Lcom/itextpdf/kernel/pdf/PdfObject;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 493
    nop

    .line 495
    iget-boolean v0, p0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->rangeIsCorrect:Z

    return v0

    .line 490
    :catch_0
    move-exception v3

    .line 492
    .local v3, "e":Ljava/io/IOException;
    return v0

    .line 466
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "signatureOffset":J
    :cond_2
    :goto_1
    return v0

    .line 468
    :catch_1
    move-exception v3

    .line 470
    .restart local v3    # "e":Ljava/io/IOException;
    return v0
.end method

.method protected readDictionary(Z)Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 17
    .param p1, "objStm"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 502
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->currentLevel:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->currentLevel:I

    .line 503
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 504
    .local v2, "dic":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :goto_0
    iget-boolean v4, v0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->rangeIsCorrect:Z

    if-nez v4, :cond_a

    .line 505
    iget-object v4, v0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/PdfTokenizer;->nextValidToken()V

    .line 506
    iget-object v4, v0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v4

    sget-object v5, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->EndDic:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-ne v4, v5, :cond_0

    .line 507
    iget v4, v0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->currentLevel:I

    sub-int/2addr v4, v3

    iput v4, v0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->currentLevel:I

    .line 508
    goto/16 :goto_3

    .line 510
    :cond_0
    iget-object v4, v0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v4

    sget-object v5, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Name:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    const/4 v6, 0x0

    if-eq v4, v5, :cond_1

    .line 511
    iget-object v4, v0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v7}, Lcom/itextpdf/io/source/PdfTokenizer;->getStringValue()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v7, "Dictionary key {0} is not a name."

    invoke-virtual {v4, v7, v5}, Lcom/itextpdf/io/source/PdfTokenizer;->throwError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    :cond_1
    invoke-virtual {v0, v3}, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->readPdfName(Z)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v4

    .line 515
    .local v4, "name":Lcom/itextpdf/kernel/pdf/PdfName;
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Contents:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v4}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-boolean v5, v0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->searchInV:Z

    if-eqz v5, :cond_6

    iget v5, v0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->contentsLevel:I

    iget v7, v0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->currentLevel:I

    if-ne v5, v7, :cond_6

    .line 516
    iget-object v5, v0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/PdfTokenizer;->getPosition()J

    move-result-wide v7

    .line 518
    .local v7, "startPosition":J
    const/4 v5, -0x1

    .line 520
    .local v5, "whiteSpacesCount":I
    :cond_2
    iget-object v9, v0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v9}, Lcom/itextpdf/io/source/PdfTokenizer;->read()I

    move-result v9

    .line 521
    .local v9, "ch":I
    add-int/2addr v5, v3

    .line 522
    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    invoke-static {v9}, Lcom/itextpdf/io/source/PdfTokenizer;->isWhitespace(I)Z

    move-result v10

    if-nez v10, :cond_2

    .line 523
    :cond_3
    iget-object v10, v0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v10, v7, v8}, Lcom/itextpdf/io/source/PdfTokenizer;->seek(J)V

    .line 524
    invoke-virtual {v0, v3, v1}, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->readObject(ZZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v10

    .line 525
    .local v10, "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    iget-object v11, v0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v11}, Lcom/itextpdf/io/source/PdfTokenizer;->getPosition()J

    move-result-wide v11

    .line 526
    .local v11, "endPosition":J
    iget-wide v13, v0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->contentsEnd:J

    cmp-long v13, v11, v13

    if-nez v13, :cond_4

    int-to-long v13, v5

    add-long/2addr v13, v7

    move-wide v15, v7

    .end local v7    # "startPosition":J
    .local v15, "startPosition":J
    iget-wide v6, v0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->contentsStart:J

    cmp-long v6, v13, v6

    if-nez v6, :cond_5

    .line 527
    iput-boolean v3, v0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->rangeIsCorrect:Z

    goto :goto_1

    .line 526
    .end local v15    # "startPosition":J
    .restart local v7    # "startPosition":J
    :cond_4
    move-wide v15, v7

    .line 529
    .end local v5    # "whiteSpacesCount":I
    .end local v7    # "startPosition":J
    .end local v9    # "ch":I
    .end local v11    # "endPosition":J
    :cond_5
    :goto_1
    goto :goto_2

    .end local v10    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_6
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v4}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-boolean v5, v0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->searchInV:Z

    if-nez v5, :cond_7

    iget v5, v0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->currentLevel:I

    if-ne v3, v5, :cond_7

    .line 530
    iput-boolean v3, v0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->searchInV:Z

    .line 531
    invoke-virtual {v0, v3, v1}, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->readObject(ZZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v10

    .line 532
    .restart local v10    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->searchInV:Z

    goto :goto_2

    .line 534
    .end local v10    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_7
    invoke-virtual {v0, v3, v1}, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->readObject(ZZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v10

    .line 536
    .restart local v10    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    :goto_2
    if-nez v10, :cond_9

    .line 537
    iget-object v5, v0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v5

    sget-object v6, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->EndDic:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-ne v5, v6, :cond_8

    .line 538
    iget-object v5, v0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "unexpected >>."

    invoke-virtual {v5, v6, v7}, Lcom/itextpdf/io/source/PdfTokenizer;->throwError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 539
    :cond_8
    iget-object v5, v0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v5

    sget-object v6, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->EndArray:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-ne v5, v6, :cond_9

    .line 540
    iget-object v5, v0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "Unexpected close bracket."

    invoke-virtual {v5, v7, v6}, Lcom/itextpdf/io/source/PdfTokenizer;->throwError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 542
    :cond_9
    invoke-virtual {v2, v4, v10}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 543
    .end local v4    # "name":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local v10    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    goto/16 :goto_0

    .line 544
    :cond_a
    :goto_3
    return-object v2
.end method

.method protected readReference(Z)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1
    .param p1, "readAsDirect"    # Z

    .line 549
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfNull;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfNull;-><init>()V

    return-object v0
.end method
