.class public Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;
.super Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
.source "PdfImageXObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject$PngChromaticitiesHelper;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2db777a899ce7f4L


# instance fields
.field private height:F

.field private mask:Z

.field private softMask:Z

.field private width:F


# direct methods
.method public constructor <init>(Lcom/itextpdf/io/image/ImageData;)V
    .locals 1
    .param p1, "image"    # Lcom/itextpdf/io/image/ImageData;

    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;-><init>(Lcom/itextpdf/io/image/ImageData;Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/io/image/ImageData;Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;)V
    .locals 1
    .param p1, "image"    # Lcom/itextpdf/io/image/ImageData;
    .param p2, "imageMask"    # Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    .line 116
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->checkImageType(Lcom/itextpdf/io/image/ImageData;)Lcom/itextpdf/io/image/ImageData;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->createPdfStream(Lcom/itextpdf/io/image/ImageData;Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 117
    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageData;->isMask()Z

    move-result v0

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->mask:Z

    .line 118
    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageData;->isSoftMask()Z

    move-result v0

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->softMask:Z

    .line 119
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 1
    .param p1, "pdfStream"    # Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 129
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 130
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->isFlushed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->initWidthField()F

    .line 132
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->initHeightField()F

    .line 134
    :cond_0
    return-void
.end method

.method private static checkImageType(Lcom/itextpdf/io/image/ImageData;)Lcom/itextpdf/io/image/ImageData;
    .locals 2
    .param p0, "image"    # Lcom/itextpdf/io/image/ImageData;

    .line 547
    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;

    if-nez v0, :cond_0

    .line 550
    return-object p0

    .line 548
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Cannot create PdfImageXObject instance by WmfImage. Use PdfFormXObject constructor instead."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createArray(Lcom/itextpdf/kernel/pdf/PdfStream;[Ljava/lang/Object;)Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 7
    .param p0, "stream"    # Lcom/itextpdf/kernel/pdf/PdfStream;
    .param p1, "objects"    # [Ljava/lang/Object;

    .line 524
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 525
    .local v0, "array":Lcom/itextpdf/kernel/pdf/PdfArray;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, p1, v2

    .line 526
    .local v3, "obj":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 527
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .line 528
    .local v4, "str":Ljava/lang/String;
    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-nez v5, :cond_0

    .line 529
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_1

    .line 531
    :cond_0
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {v5, v4}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 533
    .end local v4    # "str":Ljava/lang/String;
    :goto_1
    goto :goto_2

    :cond_1
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 534
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-object v5, v3

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_2

    .line 535
    :cond_2
    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_3

    .line 536
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-object v5, v3

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v5, v5

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v0, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_2

    .line 537
    :cond_3
    instance-of v4, v3, [Ljava/lang/Object;

    if-eqz v4, :cond_4

    .line 538
    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    invoke-static {p0, v4}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->createArray(Lcom/itextpdf/kernel/pdf/PdfStream;[Ljava/lang/Object;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_2

    .line 540
    :cond_4
    move-object v4, v3

    check-cast v4, Ljava/util/Map;

    invoke-static {p0, v4}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->createDictionaryFromMap(Lcom/itextpdf/kernel/pdf/PdfStream;Ljava/util/Map;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 525
    .end local v3    # "obj":Ljava/lang/Object;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 543
    :cond_5
    return-object v0
.end method

.method private static createDictionaryFromMap(Lcom/itextpdf/kernel/pdf/PdfStream;Ljava/util/Map;)Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 9
    .param p0, "stream"    # Lcom/itextpdf/kernel/pdf/PdfStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;"
        }
    .end annotation

    .line 484
    .local p1, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_b

    .line 485
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 486
    .local v0, "dictionary":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 487
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 488
    .local v3, "value":Ljava/lang/Object;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 489
    .local v4, "key":Ljava/lang/String;
    instance-of v5, v3, Ljava/lang/Integer;

    if-eqz v5, :cond_0

    .line 490
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v5, v4}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-object v7, v3

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v5, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto/16 :goto_2

    .line 491
    :cond_0
    instance-of v5, v3, Ljava/lang/Float;

    if-eqz v5, :cond_1

    .line 492
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v5, v4}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-object v7, v3

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    float-to-double v7, v7

    invoke-direct {v6, v7, v8}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v0, v5, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto/16 :goto_2

    .line 493
    :cond_1
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 494
    const-string v5, "Mask"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 495
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Mask:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfLiteral;

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto/16 :goto_2

    .line 497
    :cond_2
    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    .line 498
    .local v5, "str":Ljava/lang/String;
    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-nez v6, :cond_3

    .line 499
    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v6, v4}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_1

    .line 501
    :cond_3
    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v6, v4}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {v7, v5}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 503
    .end local v5    # "str":Ljava/lang/String;
    :goto_1
    goto/16 :goto_2

    .line 504
    :cond_4
    instance-of v5, v3, [B

    if-eqz v5, :cond_5

    .line 505
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v5}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>()V

    .line 506
    .local v5, "globalsStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v6

    move-object v7, v3

    check-cast v7, [B

    check-cast v7, [B

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 507
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->JBIG2Globals:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v6, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 508
    .end local v5    # "globalsStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    goto :goto_2

    :cond_5
    instance-of v5, v3, Ljava/lang/Boolean;

    if-eqz v5, :cond_6

    .line 509
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v5, v4}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    move-object v6, v3

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v6}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->valueOf(Z)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_2

    .line 510
    :cond_6
    instance-of v5, v3, [Ljava/lang/Object;

    if-eqz v5, :cond_7

    .line 511
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v5, v4}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    move-object v6, v3

    check-cast v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    invoke-static {p0, v6}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->createArray(Lcom/itextpdf/kernel/pdf/PdfStream;[Ljava/lang/Object;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_2

    .line 512
    :cond_7
    instance-of v5, v3, [F

    if-eqz v5, :cond_8

    .line 513
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v5, v4}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfArray;

    move-object v7, v3

    check-cast v7, [F

    check-cast v7, [F

    invoke-direct {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v0, v5, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_2

    .line 514
    :cond_8
    instance-of v5, v3, [I

    if-eqz v5, :cond_9

    .line 515
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v5, v4}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfArray;

    move-object v7, v3

    check-cast v7, [I

    check-cast v7, [I

    invoke-direct {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([I)V

    invoke-virtual {v0, v5, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 517
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "key":Ljava/lang/String;
    :cond_9
    :goto_2
    goto/16 :goto_0

    .line 518
    :cond_a
    return-object v0

    .line 520
    .end local v0    # "dictionary":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method private static createPdfStream(Lcom/itextpdf/io/image/ImageData;Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;)Lcom/itextpdf/kernel/pdf/PdfStream;
    .locals 16
    .param p0, "image"    # Lcom/itextpdf/io/image/ImageData;
    .param p1, "imageMask"    # Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    .line 326
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-class v2, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/image/ImageData;->getOriginalType()Lcom/itextpdf/io/image/ImageType;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/io/image/ImageType;->RAW:Lcom/itextpdf/io/image/ImageType;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    .line 327
    move-object v3, v0

    check-cast v3, Lcom/itextpdf/io/image/RawImageData;

    invoke-static {v3, v5}, Lcom/itextpdf/io/image/RawImageHelper;->updateImageAttributes(Lcom/itextpdf/io/image/RawImageData;Ljava/util/Map;)V

    .line 329
    :cond_0
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/image/ImageData;->getData()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>([B)V

    .line 330
    .local v3, "stream":Lcom/itextpdf/kernel/pdf/PdfStream;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/image/ImageData;->getFilter()Ljava/lang/String;

    move-result-object v4

    .line 331
    .local v4, "filter":Ljava/lang/String;
    const/4 v6, 0x0

    if-eqz v4, :cond_1

    const-string v7, "JPXDecode"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/image/ImageData;->getColorSpace()I

    move-result v7

    if-gtz v7, :cond_1

    .line 332
    invoke-virtual {v3, v6}, Lcom/itextpdf/kernel/pdf/PdfStream;->setCompressionLevel(I)V

    .line 333
    invoke-virtual {v0, v6}, Lcom/itextpdf/io/image/ImageData;->setBpc(I)V

    .line 335
    :cond_1
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->XObject:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v7, v8}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 336
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Image:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v7, v8}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/image/ImageData;->getDecodeParms()Ljava/util/Map;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->createDictionaryFromMap(Lcom/itextpdf/kernel/pdf/PdfStream;Ljava/util/Map;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v7

    .line 338
    .local v7, "decodeParms":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v7, :cond_2

    .line 339
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->DecodeParms:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v8, v7}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 342
    :cond_2
    instance-of v8, v0, Lcom/itextpdf/io/image/PngImageData;

    if-nez v8, :cond_3

    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/image/ImageData;->getColorSpace()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 352
    :pswitch_0
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceCMYK:Lcom/itextpdf/kernel/pdf/PdfName;

    .local v8, "colorSpace":Lcom/itextpdf/kernel/pdf/PdfName;
    goto :goto_0

    .line 349
    .end local v8    # "colorSpace":Lcom/itextpdf/kernel/pdf/PdfName;
    :pswitch_1
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceRGB:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 350
    .restart local v8    # "colorSpace":Lcom/itextpdf/kernel/pdf/PdfName;
    goto :goto_0

    .line 346
    .end local v8    # "colorSpace":Lcom/itextpdf/kernel/pdf/PdfName;
    :pswitch_2
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceGray:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 347
    .restart local v8    # "colorSpace":Lcom/itextpdf/kernel/pdf/PdfName;
    nop

    .line 354
    :goto_0
    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v9, v8}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 357
    .end local v8    # "colorSpace":Lcom/itextpdf/kernel/pdf/PdfName;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/image/ImageData;->getBpc()I

    move-result v8

    if-eqz v8, :cond_4

    .line 358
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->BitsPerComponent:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v9, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/image/ImageData;->getBpc()I

    move-result v10

    invoke-direct {v9, v10}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v3, v8, v9}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 361
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/image/ImageData;->getFilter()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 362
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v9, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/image/ImageData;->getFilter()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8, v9}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 365
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/image/ImageData;->getColorSpace()I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_6

    .line 366
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v8}, Lcom/itextpdf/kernel/pdf/PdfStream;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 369
    :cond_6
    const/4 v8, 0x0

    .line 370
    .local v8, "additional":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    instance-of v9, v0, Lcom/itextpdf/io/image/PngImageData;

    const/4 v10, 0x1

    if-eqz v9, :cond_a

    .line 371
    move-object v9, v0

    check-cast v9, Lcom/itextpdf/io/image/PngImageData;

    .line 373
    .local v9, "pngImage":Lcom/itextpdf/io/image/PngImageData;
    invoke-virtual {v9}, Lcom/itextpdf/io/image/PngImageData;->isIndexed()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 374
    new-instance v11, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v11}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 375
    .local v11, "colorspace":Lcom/itextpdf/kernel/pdf/PdfArray;
    sget-object v12, Lcom/itextpdf/kernel/pdf/PdfName;->Indexed:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v11, v12}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 376
    invoke-static {v9}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getColorSpaceInfo(Lcom/itextpdf/io/image/PngImageData;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 378
    invoke-virtual {v9}, Lcom/itextpdf/io/image/PngImageData;->getColorPalette()[B

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-virtual {v9}, Lcom/itextpdf/io/image/PngImageData;->getColorPalette()[B

    move-result-object v12

    array-length v12, v12

    if-lez v12, :cond_7

    .line 381
    new-instance v12, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v9}, Lcom/itextpdf/io/image/PngImageData;->getColorPalette()[B

    move-result-object v13

    array-length v13, v13

    div-int/lit8 v13, v13, 0x3

    sub-int/2addr v13, v10

    invoke-direct {v12, v13}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v11, v12}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 384
    :cond_7
    invoke-virtual {v9}, Lcom/itextpdf/io/image/PngImageData;->getColorPalette()[B

    move-result-object v12

    if-eqz v12, :cond_8

    .line 385
    new-instance v12, Lcom/itextpdf/kernel/pdf/PdfString;

    .line 386
    invoke-virtual {v9}, Lcom/itextpdf/io/image/PngImageData;->getColorPalette()[B

    move-result-object v13

    invoke-static {v13, v5}, Lcom/itextpdf/io/font/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v12, v5}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v11, v12}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 389
    :cond_8
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v5, v11}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 390
    .end local v11    # "colorspace":Lcom/itextpdf/kernel/pdf/PdfArray;
    goto :goto_1

    .line 391
    :cond_9
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {v9}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getColorSpaceInfo(Lcom/itextpdf/io/image/PngImageData;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v11

    invoke-virtual {v3, v5, v11}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 394
    .end local v9    # "pngImage":Lcom/itextpdf/io/image/PngImageData;
    :cond_a
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/image/ImageData;->getImageAttributes()Ljava/util/Map;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->createDictionaryFromMap(Lcom/itextpdf/kernel/pdf/PdfStream;Ljava/util/Map;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v5

    .line 396
    .end local v8    # "additional":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .local v5, "additional":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v5, :cond_b

    .line 397
    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->putAll(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 400
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/image/ImageData;->getProfile()Lcom/itextpdf/io/colors/IccProfile;

    move-result-object v8

    .line 401
    .local v8, "iccProfile":Lcom/itextpdf/io/colors/IccProfile;
    if-eqz v8, :cond_13

    .line 402
    invoke-static {v8}, Lcom/itextpdf/kernel/pdf/colorspace/PdfCieBasedCs$IccBased;->getIccProfileStream(Lcom/itextpdf/io/colors/IccProfile;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v9

    .line 403
    .local v9, "iccProfileStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    new-instance v11, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v11}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 404
    .local v11, "iccBasedColorSpace":Lcom/itextpdf/kernel/pdf/PdfArray;
    sget-object v12, Lcom/itextpdf/kernel/pdf/PdfName;->ICCBased:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v11, v12}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 405
    invoke-virtual {v11, v9}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 406
    sget-object v12, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v12}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v12

    .line 407
    .local v12, "colorSpaceObject":Lcom/itextpdf/kernel/pdf/PdfObject;
    const/4 v13, 0x1

    .line 408
    .local v13, "iccProfileShouldBeApplied":Z
    if-eqz v12, :cond_12

    .line 409
    invoke-static {v12}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->makeColorSpace(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object v14

    .line 410
    .local v14, "cs":Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;
    if-nez v14, :cond_c

    .line 411
    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    const-string v15, "Image has incorrect or unsupported color space, that will be overridden by one based on embedded icc profile."

    invoke-interface {v2, v15}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_3

    .line 412
    :cond_c
    instance-of v15, v14, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Indexed;

    if-eqz v15, :cond_10

    .line 413
    move-object v15, v14

    check-cast v15, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Indexed;

    invoke-virtual {v15}, Lcom/itextpdf/kernel/pdf/colorspace/PdfSpecialCs$Indexed;->getBaseCs()Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;

    move-result-object v15

    .line 414
    .local v15, "baseCs":Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;
    if-nez v15, :cond_d

    .line 415
    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    const-string v6, "Image has incorrect or unsupported base color space in indexed color space, it will be overridden by one based on embedded icc profile."

    invoke-interface {v2, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 416
    :cond_d
    invoke-virtual {v15}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getNumberOfComponents()I

    move-result v6

    invoke-virtual {v8}, Lcom/itextpdf/io/colors/IccProfile;->getNumComponents()I

    move-result v10

    if-eq v6, v10, :cond_e

    .line 417
    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    const-string v6, "Image has icc profile with incompatible number of color components compared to base color space in image indexed color space. The icc profile will be ignored."

    invoke-interface {v2, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 418
    const/4 v13, 0x0

    goto :goto_2

    .line 420
    :cond_e
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Alternate:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v15}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    invoke-virtual {v9, v2, v6}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 422
    :goto_2
    if-eqz v13, :cond_f

    .line 423
    move-object v2, v12

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v6, 0x1

    invoke-virtual {v2, v6, v11}, Lcom/itextpdf/kernel/pdf/PdfArray;->set(ILcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 424
    const/4 v2, 0x0

    move v13, v2

    .line 426
    .end local v15    # "baseCs":Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;
    :cond_f
    goto :goto_3

    :cond_10
    invoke-virtual {v14}, Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;->getNumberOfComponents()I

    move-result v6

    invoke-virtual {v8}, Lcom/itextpdf/io/colors/IccProfile;->getNumComponents()I

    move-result v10

    if-eq v6, v10, :cond_11

    .line 427
    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    const-string v6, "Image has icc profile with incompatible number of color components compared to image color space. The icc profile will be ignored."

    invoke-interface {v2, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 428
    const/4 v13, 0x0

    goto :goto_3

    .line 430
    :cond_11
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Alternate:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v9, v2, v12}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 433
    .end local v14    # "cs":Lcom/itextpdf/kernel/pdf/colorspace/PdfColorSpace;
    :cond_12
    :goto_3
    if-eqz v13, :cond_13

    .line 434
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v2, v11}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 438
    .end local v9    # "iccProfileStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    .end local v11    # "iccBasedColorSpace":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v12    # "colorSpaceObject":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v13    # "iccProfileShouldBeApplied":Z
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/image/ImageData;->isMask()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/image/ImageData;->getBpc()I

    move-result v2

    const/4 v6, 0x1

    if-eq v2, v6, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/image/ImageData;->getBpc()I

    move-result v2

    const/16 v6, 0xff

    if-le v2, v6, :cond_15

    .line 439
    :cond_14
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->ImageMask:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfBoolean;->TRUE:Lcom/itextpdf/kernel/pdf/PdfBoolean;

    invoke-virtual {v3, v2, v6}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 442
    :cond_15
    if-eqz v1, :cond_17

    .line 443
    iget-boolean v2, v1, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->softMask:Z

    if-eqz v2, :cond_16

    .line 444
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->SMask:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_4

    .line 445
    :cond_16
    iget-boolean v2, v1, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->mask:Z

    if-eqz v2, :cond_17

    .line 446
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Mask:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 450
    :cond_17
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/image/ImageData;->getImageMask()Lcom/itextpdf/io/image/ImageData;

    move-result-object v2

    .line 451
    .local v2, "mask":Lcom/itextpdf/io/image/ImageData;
    if-eqz v2, :cond_19

    .line 452
    invoke-virtual {v2}, Lcom/itextpdf/io/image/ImageData;->isSoftMask()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 453
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->SMask:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v9, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/image/ImageData;->getImageMask()Lcom/itextpdf/io/image/ImageData;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;-><init>(Lcom/itextpdf/io/image/ImageData;)V

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v9

    invoke-virtual {v3, v6, v9}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_5

    .line 454
    :cond_18
    invoke-virtual {v2}, Lcom/itextpdf/io/image/ImageData;->isMask()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 455
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Mask:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v9, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/image/ImageData;->getImageMask()Lcom/itextpdf/io/image/ImageData;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;-><init>(Lcom/itextpdf/io/image/ImageData;)V

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v9

    invoke-virtual {v3, v6, v9}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 459
    :cond_19
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/image/ImageData;->getDecode()[F

    move-result-object v6

    if-eqz v6, :cond_1a

    .line 460
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Decode:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v9, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/image/ImageData;->getDecode()[F

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v3, v6, v9}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 462
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/image/ImageData;->isMask()Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/image/ImageData;->isInverted()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 463
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Decode:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v9, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_0

    invoke-direct {v9, v10}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v3, v6, v9}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 465
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/image/ImageData;->isInterpolation()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 466
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Interpolate:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfBoolean;->TRUE:Lcom/itextpdf/kernel/pdf/PdfBoolean;

    invoke-virtual {v3, v6, v9}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 469
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/image/ImageData;->getTransparency()[I

    move-result-object v6

    .line 470
    .local v6, "transparency":[I
    if-eqz v6, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/image/ImageData;->isMask()Z

    move-result v9

    if-nez v9, :cond_1e

    if-nez v1, :cond_1e

    .line 471
    new-instance v9, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v9}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 472
    .local v9, "t":Lcom/itextpdf/kernel/pdf/PdfArray;
    array-length v10, v6

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v10, :cond_1d

    aget v12, v6, v11

    .line 473
    .local v12, "transparencyItem":I
    new-instance v13, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v13, v12}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v9, v13}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 472
    .end local v12    # "transparencyItem":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 475
    :cond_1d
    sget-object v10, Lcom/itextpdf/kernel/pdf/PdfName;->Mask:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v10, v9}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 478
    .end local v9    # "t":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_1e
    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->Width:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/image/ImageData;->getWidth()F

    move-result v11

    float-to-double v11, v11

    invoke-direct {v10, v11, v12}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v3, v9, v10}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 479
    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->Height:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/image/ImageData;->getHeight()F

    move-result v11

    float-to-double v11, v11

    invoke-direct {v10, v11, v12}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v3, v9, v10}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 480
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private static getColorSpaceInfo(Lcom/itextpdf/io/image/PngImageData;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 8
    .param p0, "pngImageData"    # Lcom/itextpdf/io/image/PngImageData;

    .line 554
    invoke-virtual {p0}, Lcom/itextpdf/io/image/PngImageData;->getProfile()Lcom/itextpdf/io/colors/IccProfile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 555
    invoke-virtual {p0}, Lcom/itextpdf/io/image/PngImageData;->isGrayscaleImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceGray:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0

    .line 558
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceRGB:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0

    .line 561
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/io/image/PngImageData;->getGamma()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/itextpdf/io/image/PngImageData;->isHasCHRM()Z

    move-result v0

    if-nez v0, :cond_3

    .line 562
    invoke-virtual {p0}, Lcom/itextpdf/io/image/PngImageData;->isGrayscaleImage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 563
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceGray:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0

    .line 565
    :cond_2
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceRGB:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0

    .line 568
    :cond_3
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 569
    .local v0, "array":Lcom/itextpdf/kernel/pdf/PdfArray;
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 570
    .local v2, "map":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {p0}, Lcom/itextpdf/io/image/PngImageData;->isGrayscaleImage()Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_5

    .line 571
    invoke-virtual {p0}, Lcom/itextpdf/io/image/PngImageData;->getGamma()F

    move-result v3

    cmpl-float v1, v3, v1

    if-nez v1, :cond_4

    .line 572
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DeviceGray:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v1

    .line 574
    :cond_4
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->CalGray:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 575
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Gamma:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p0}, Lcom/itextpdf/io/image/PngImageData;->getGamma()F

    move-result v5

    float-to-double v5, v5

    invoke-direct {v3, v5, v6}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v2, v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 576
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->WhitePoint:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([I)V

    invoke-virtual {v2, v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 578
    :cond_5
    new-array v3, v4, [F

    fill-array-data v3, :array_1

    .line 579
    .local v3, "wp":[F
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->CalRGB:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 580
    invoke-virtual {p0}, Lcom/itextpdf/io/image/PngImageData;->getGamma()F

    move-result v5

    .line 581
    .local v5, "gamma":F
    cmpl-float v1, v5, v1

    if-eqz v1, :cond_6

    .line 582
    new-array v1, v4, [F

    .line 583
    .local v1, "gm":[F
    const/4 v4, 0x0

    aput v5, v1, v4

    .line 584
    const/4 v4, 0x1

    aput v5, v1, v4

    .line 585
    const/4 v4, 0x2

    aput v5, v1, v4

    .line 586
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Gamma:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v6, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v2, v4, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 588
    .end local v1    # "gm":[F
    :cond_6
    invoke-virtual {p0}, Lcom/itextpdf/io/image/PngImageData;->isHasCHRM()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 589
    new-instance v1, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject$PngChromaticitiesHelper;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject$PngChromaticitiesHelper;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject$1;)V

    .line 590
    .local v1, "helper":Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject$PngChromaticitiesHelper;
    invoke-virtual {v1, p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject$PngChromaticitiesHelper;->constructMatrix(Lcom/itextpdf/io/image/PngImageData;)V

    .line 591
    iget-object v3, v1, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject$PngChromaticitiesHelper;->wp:[F

    .line 592
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Matrix:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfArray;

    iget-object v7, v1, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject$PngChromaticitiesHelper;->matrix:[F

    invoke-direct {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v2, v4, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 594
    .end local v1    # "helper":Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject$PngChromaticitiesHelper;
    :cond_7
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->WhitePoint:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v4, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v2, v1, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 596
    .end local v3    # "wp":[F
    .end local v5    # "gamma":F
    :goto_0
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 597
    return-object v0

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initHeightField()F
    .locals 2

    .line 317
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Height:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    .line 318
    .local v0, "hNum":Lcom/itextpdf/kernel/pdf/PdfNumber;
    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->height:F

    .line 321
    :cond_0
    iget v1, p0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->height:F

    return v1
.end method

.method private initWidthField()F
    .locals 2

    .line 309
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Width:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    .line 310
    .local v0, "wNum":Lcom/itextpdf/kernel/pdf/PdfNumber;
    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->width:F

    .line 313
    :cond_0
    iget v1, p0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->width:F

    return v1
.end method


# virtual methods
.method public copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;
    .locals 2
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 175
    new-instance v0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    .line 176
    .local v0, "image":Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;
    iget-boolean v1, p0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->mask:Z

    iput-boolean v1, v0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->mask:Z

    .line 177
    iget-boolean v1, p0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->softMask:Z

    iput-boolean v1, v0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->softMask:Z

    .line 178
    return-object v0
.end method

.method public flush()V
    .locals 0

    .line 165
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;->flush()V

    .line 166
    return-void
.end method

.method public getBufferedImage()Ljava/awt/image/BufferedImage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getImageBytes()[B

    move-result-object v0

    .line 189
    .local v0, "img":[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1}, Ljavax/imageio/ImageIO;->read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;

    move-result-object v1

    return-object v1
.end method

.method public getHeight()F
    .locals 1

    .line 153
    iget v0, p0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->height:F

    return v0
.end method

.method public getImageBytes()[B
    .locals 1

    .line 198
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getImageBytes(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public getImageBytes(Z)[B
    .locals 6
    .param p1, "decoded"    # Z

    .line 211
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes(Z)[B

    move-result-object v0

    .line 212
    .local v0, "bytes":[B
    if-eqz p1, :cond_1

    .line 213
    new-instance v1, Ljava/util/HashMap;

    invoke-static {}, Lcom/itextpdf/kernel/pdf/filters/FilterHandlers;->getDefaultFilterHandlers()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 214
    .local v1, "filters":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/filters/IFilterHandler;>;"
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->JBIG2Decode:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/filters/DoNothingFilter;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/filters/DoNothingFilter;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-static {v0, v2, v1}, Lcom/itextpdf/kernel/pdf/PdfReader;->decodeBytes([BLcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Map;)[B

    move-result-object v0

    .line 217
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->identifyImageType()Lcom/itextpdf/io/image/ImageType;

    move-result-object v2

    .line 218
    .local v2, "imageType":Lcom/itextpdf/io/image/ImageType;
    sget-object v3, Lcom/itextpdf/io/image/ImageType;->TIFF:Lcom/itextpdf/io/image/ImageType;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/itextpdf/io/image/ImageType;->PNG:Lcom/itextpdf/io/image/ImageType;

    if-ne v2, v3, :cond_1

    .line 220
    :cond_0
    :try_start_0
    new-instance v3, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;

    invoke-direct {v3, p0}, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;)V

    invoke-virtual {v3, v0}, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->decodeTiffAndPngBytes([B)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 223
    goto :goto_0

    .line 221
    :catch_0
    move-exception v3

    .line 222
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "IO exception in PdfImageXObject"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 226
    .end local v1    # "filters":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/filters/IFilterHandler;>;"
    .end local v2    # "imageType":Lcom/itextpdf/io/image/ImageType;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .line 143
    iget v0, p0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->width:F

    return v0
.end method

.method public identifyImageFileExtension()Ljava/lang/String;
    .locals 3

    .line 278
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->identifyImageType()Lcom/itextpdf/io/image/ImageType;

    move-result-object v0

    .line 279
    .local v0, "bytesType":Lcom/itextpdf/io/image/ImageType;
    sget-object v1, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject$1;->$SwitchMap$com$itextpdf$io$image$ImageType:[I

    invoke-virtual {v0}, Lcom/itextpdf/io/image/ImageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 291
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Should have never happened. This type of image is not allowed for ImageXObject"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 289
    :pswitch_0
    const-string v1, "jbig2"

    return-object v1

    .line 287
    :pswitch_1
    const-string/jumbo v1, "tif"

    return-object v1

    .line 285
    :pswitch_2
    const-string v1, "jp2"

    return-object v1

    .line 283
    :pswitch_3
    const-string v1, "jpg"

    return-object v1

    .line 281
    :pswitch_4
    const-string v1, "png"

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public identifyImageType()Lcom/itextpdf/io/image/ImageType;
    .locals 5

    .line 240
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 241
    .local v0, "filter":Lcom/itextpdf/kernel/pdf/PdfObject;
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 242
    .local v1, "filters":Lcom/itextpdf/kernel/pdf/PdfArray;
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 244
    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v3

    if-ne v3, v2, :cond_1

    .line 246
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 249
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_5

    .line 250
    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 251
    .local v2, "filterName":Lcom/itextpdf/kernel/pdf/PdfName;
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->DCTDecode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 252
    sget-object v4, Lcom/itextpdf/io/image/ImageType;->JPEG:Lcom/itextpdf/io/image/ImageType;

    return-object v4

    .line 253
    :cond_2
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->JBIG2Decode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 254
    sget-object v4, Lcom/itextpdf/io/image/ImageType;->JBIG2:Lcom/itextpdf/io/image/ImageType;

    return-object v4

    .line 255
    :cond_3
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->JPXDecode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 256
    sget-object v4, Lcom/itextpdf/io/image/ImageType;->JPEG2000:Lcom/itextpdf/io/image/ImageType;

    return-object v4

    .line 249
    .end local v2    # "filterName":Lcom/itextpdf/kernel/pdf/PdfName;
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 261
    .end local v3    # "i":I
    :cond_5
    new-instance v2, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;

    invoke-direct {v2, p0}, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;)V

    .line 262
    .local v2, "imageInfo":Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/xobject/ImagePdfBytesInfo;->getPngColorType()I

    move-result v3

    if-gez v3, :cond_6

    .line 263
    sget-object v3, Lcom/itextpdf/io/image/ImageType;->TIFF:Lcom/itextpdf/io/image/ImageType;

    return-object v3

    .line 265
    :cond_6
    sget-object v3, Lcom/itextpdf/io/image/ImageType;->PNG:Lcom/itextpdf/io/image/ImageType;

    return-object v3
.end method

.method public put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;
    .locals 1
    .param p1, "key"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p2, "value"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 304
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 305
    return-object p0
.end method
