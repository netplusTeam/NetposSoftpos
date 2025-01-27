.class public Lcom/itextpdf/signatures/SignatureUtil;
.super Ljava/lang/Object;
.source "SignatureUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;,
        Lcom/itextpdf/signatures/SignatureUtil$SorterComparator;
    }
.end annotation


# instance fields
.field private acroForm:Lcom/itextpdf/forms/PdfAcroForm;

.field private document:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field private orderedSignatureNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sigNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field private totalRevisions:I


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/itextpdf/signatures/SignatureUtil;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 114
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/itextpdf/forms/PdfAcroForm;->getAcroForm(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/signatures/SignatureUtil;->acroForm:Lcom/itextpdf/forms/PdfAcroForm;

    .line 115
    return-void
.end method

.method public static asLongArray(Lcom/itextpdf/kernel/pdf/PdfArray;)[J
    .locals 4
    .param p0, "pdfArray"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 96
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 98
    .local v0, "rslt":[J
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 99
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    .end local v1    # "k":I
    :cond_0
    return-object v0
.end method

.method private populateSignatureNames()V
    .locals 15

    .line 387
    iget-object v0, p0, Lcom/itextpdf/signatures/SignatureUtil;->acroForm:Lcom/itextpdf/forms/PdfAcroForm;

    if-nez v0, :cond_0

    .line 388
    return-void

    .line 391
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v0, "sorter":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/itextpdf/signatures/SignatureUtil;->acroForm:Lcom/itextpdf/forms/PdfAcroForm;

    invoke-virtual {v1}, Lcom/itextpdf/forms/PdfAcroForm;->getFormFields()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 393
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/forms/fields/PdfFormField;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/forms/fields/PdfFormField;

    .line 394
    .local v5, "field":Lcom/itextpdf/forms/fields/PdfFormField;
    invoke-virtual {v5}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 395
    .local v6, "merged":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Sig:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->FT:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 396
    goto :goto_0

    .line 397
    :cond_1
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v7

    .line 398
    .local v7, "v":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-nez v7, :cond_2

    .line 399
    goto :goto_0

    .line 400
    :cond_2
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Contents:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v8

    .line 401
    .local v8, "contents":Lcom/itextpdf/kernel/pdf/PdfString;
    if-nez v8, :cond_3

    .line 402
    goto :goto_0

    .line 404
    :cond_3
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfString;->markAsUnencryptedObject()V

    .line 406
    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->ByteRange:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v9

    .line 407
    .local v9, "ro":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-nez v9, :cond_4

    .line 408
    goto :goto_0

    .line 409
    :cond_4
    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v10

    .line 410
    .local v10, "rangeSize":I
    const/4 v11, 0x2

    if-ge v10, v11, :cond_5

    .line 411
    goto :goto_0

    .line 412
    :cond_5
    add-int/lit8 v12, v10, -0x1

    invoke-virtual {v9, v12}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v12

    add-int/lit8 v13, v10, -0x2

    invoke-virtual {v9, v13}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v13

    invoke-virtual {v13}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v13

    add-int/2addr v12, v13

    .line 413
    .local v12, "length":I
    new-array v13, v11, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v13, v3

    new-array v11, v11, [I

    aput v12, v11, v3

    aput v3, v11, v4

    aput-object v11, v13, v4

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/forms/fields/PdfFormField;>;"
    .end local v5    # "field":Lcom/itextpdf/forms/fields/PdfFormField;
    .end local v6    # "merged":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v7    # "v":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v8    # "contents":Lcom/itextpdf/kernel/pdf/PdfString;
    .end local v9    # "ro":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v10    # "rangeSize":I
    .end local v12    # "length":I
    goto :goto_0

    .line 415
    :cond_6
    new-instance v1, Lcom/itextpdf/signatures/SignatureUtil$SorterComparator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/itextpdf/signatures/SignatureUtil$SorterComparator;-><init>(Lcom/itextpdf/signatures/SignatureUtil$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 416
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 418
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    aget-object v1, v1, v4

    check-cast v1, [I

    check-cast v1, [I

    aget v1, v1, v3

    int-to-long v1, v1

    iget-object v5, p0, Lcom/itextpdf/signatures/SignatureUtil;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfReader;->getFileLength()J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-nez v1, :cond_7

    .line 419
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/itextpdf/signatures/SignatureUtil;->totalRevisions:I

    goto :goto_1

    .line 421
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v4

    iput v1, p0, Lcom/itextpdf/signatures/SignatureUtil;->totalRevisions:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :goto_1
    goto :goto_2

    .line 422
    :catch_0
    move-exception v1

    .line 424
    :goto_2
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 425
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 426
    .local v2, "objs":[Ljava/lang/Object;
    aget-object v5, v2, v3

    check-cast v5, Ljava/lang/String;

    .line 427
    .local v5, "name":Ljava/lang/String;
    aget-object v6, v2, v4

    check-cast v6, [I

    check-cast v6, [I

    .line 428
    .local v6, "p":[I
    add-int/lit8 v7, v1, 0x1

    aput v7, v6, v4

    .line 429
    iget-object v7, p0, Lcom/itextpdf/signatures/SignatureUtil;->sigNames:Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    iget-object v7, p0, Lcom/itextpdf/signatures/SignatureUtil;->orderedSignatureNames:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    .end local v2    # "objs":[Ljava/lang/Object;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "p":[I
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 433
    .end local v1    # "k":I
    :cond_8
    return-void
.end method

.method private updateByteRange(Lcom/itextpdf/signatures/PdfPKCS7;Lcom/itextpdf/signatures/PdfSignature;)V
    .locals 7
    .param p1, "pkcs7"    # Lcom/itextpdf/signatures/PdfPKCS7;
    .param p2, "signature"    # Lcom/itextpdf/signatures/PdfSignature;

    .line 257
    invoke-virtual {p2}, Lcom/itextpdf/signatures/PdfSignature;->getByteRange()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 258
    .local v0, "b":Lcom/itextpdf/kernel/pdf/PdfArray;
    iget-object v1, p0, Lcom/itextpdf/signatures/SignatureUtil;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfReader;->getSafeFile()Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    move-result-object v1

    .line 259
    .local v1, "rf":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    const/4 v2, 0x0

    .line 261
    .local v2, "rg":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Lcom/itextpdf/io/source/RASInputStream;

    new-instance v4, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v4}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->createSourceView()Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v5

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->toLongArray()[J

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createRanged(Lcom/itextpdf/io/source/IRandomAccessSource;[J)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/io/source/RASInputStream;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    move-object v2, v3

    .line 262
    const/16 v3, 0x2000

    new-array v3, v3, [B

    .line 264
    .local v3, "buf":[B
    :goto_0
    array-length v4, v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    move v6, v4

    .local v6, "rd":I
    if-lez v4, :cond_0

    .line 265
    invoke-virtual {p1, v3, v5, v6}, Lcom/itextpdf/signatures/PdfPKCS7;->update([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 271
    .end local v3    # "buf":[B
    .end local v6    # "rd":I
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 275
    nop

    .line 277
    return-void

    .line 272
    :catch_0
    move-exception v3

    .line 274
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lcom/itextpdf/kernel/PdfException;

    invoke-direct {v4, v3}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 270
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 267
    :catch_1
    move-exception v3

    .line 268
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Lcom/itextpdf/kernel/PdfException;

    invoke-direct {v4, v3}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "b":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v1    # "rf":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .end local v2    # "rg":Ljava/io/InputStream;
    .end local p1    # "pkcs7":Lcom/itextpdf/signatures/PdfPKCS7;
    .end local p2    # "signature":Lcom/itextpdf/signatures/PdfSignature;
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 271
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "b":Lcom/itextpdf/kernel/pdf/PdfArray;
    .restart local v1    # "rf":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .restart local v2    # "rg":Ljava/io/InputStream;
    .restart local p1    # "pkcs7":Lcom/itextpdf/signatures/PdfPKCS7;
    .restart local p2    # "signature":Lcom/itextpdf/signatures/PdfSignature;
    :goto_1
    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 272
    :catch_2
    move-exception v3

    .line 274
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lcom/itextpdf/kernel/PdfException;

    invoke-direct {v4, v3}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 275
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    nop

    .line 276
    throw v3
.end method


# virtual methods
.method public doesSignatureFieldExist(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 383
    invoke-virtual {p0}, Lcom/itextpdf/signatures/SignatureUtil;->getBlankSignatureNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/signatures/SignatureUtil;->getSignatureNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

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
.end method

.method public extractRevision(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 10
    .param p1, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    invoke-virtual {p0}, Lcom/itextpdf/signatures/SignatureUtil;->getSignatureNames()Ljava/util/List;

    .line 347
    iget-object v0, p0, Lcom/itextpdf/signatures/SignatureUtil;->sigNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    const/4 v0, 0x0

    return-object v0

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/signatures/SignatureUtil;->sigNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 350
    .local v0, "length":I
    iget-object v1, p0, Lcom/itextpdf/signatures/SignatureUtil;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfReader;->getSafeFile()Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    move-result-object v1

    .line 351
    .local v1, "raf":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    new-instance v2, Lcom/itextpdf/io/source/RASInputStream;

    new-instance v9, Lcom/itextpdf/io/source/WindowRandomAccessSource;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->createSourceView()Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v4

    const-wide/16 v5, 0x0

    int-to-long v7, v0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/itextpdf/io/source/WindowRandomAccessSource;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;JJ)V

    invoke-direct {v2, v9}, Lcom/itextpdf/io/source/RASInputStream;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    return-object v2
.end method

.method public getBlankSignatureNames()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 300
    invoke-virtual {p0}, Lcom/itextpdf/signatures/SignatureUtil;->getSignatureNames()Ljava/util/List;

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v0, "sigs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/itextpdf/signatures/SignatureUtil;->acroForm:Lcom/itextpdf/forms/PdfAcroForm;

    if-eqz v1, :cond_2

    .line 303
    invoke-virtual {v1}, Lcom/itextpdf/forms/PdfAcroForm;->getFormFields()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 304
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/forms/fields/PdfFormField;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/forms/fields/PdfFormField;

    .line 305
    .local v3, "field":Lcom/itextpdf/forms/fields/PdfFormField;
    invoke-virtual {v3}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 306
    .local v4, "merged":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Sig:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->FT:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 307
    goto :goto_0

    .line 308
    :cond_0
    iget-object v5, p0, Lcom/itextpdf/signatures/SignatureUtil;->sigNames:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 309
    goto :goto_0

    .line 310
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/forms/fields/PdfFormField;>;"
    .end local v3    # "field":Lcom/itextpdf/forms/fields/PdfFormField;
    .end local v4    # "merged":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    goto :goto_0

    .line 313
    :cond_2
    return-object v0
.end method

.method public getRevision(Ljava/lang/String;)I
    .locals 2
    .param p1, "field"    # Ljava/lang/String;

    .line 322
    invoke-virtual {p0}, Lcom/itextpdf/signatures/SignatureUtil;->getSignatureNames()Ljava/util/List;

    .line 323
    invoke-virtual {p0, p1}, Lcom/itextpdf/signatures/SignatureUtil;->getTranslatedFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 324
    iget-object v0, p0, Lcom/itextpdf/signatures/SignatureUtil;->sigNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    const/4 v0, 0x0

    return v0

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/signatures/SignatureUtil;->sigNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getSignature(Ljava/lang/String;)Lcom/itextpdf/signatures/PdfSignature;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 235
    invoke-virtual {p0, p1}, Lcom/itextpdf/signatures/SignatureUtil;->getSignatureDictionary(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 236
    .local v0, "sigDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v0, :cond_0

    new-instance v1, Lcom/itextpdf/signatures/PdfSignature;

    invoke-direct {v1, v0}, Lcom/itextpdf/signatures/PdfSignature;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getSignatureDictionary(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 247
    invoke-virtual {p0}, Lcom/itextpdf/signatures/SignatureUtil;->getSignatureNames()Ljava/util/List;

    .line 248
    iget-object v0, p0, Lcom/itextpdf/signatures/SignatureUtil;->acroForm:Lcom/itextpdf/forms/PdfAcroForm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/signatures/SignatureUtil;->sigNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/signatures/SignatureUtil;->acroForm:Lcom/itextpdf/forms/PdfAcroForm;

    invoke-virtual {v0, p1}, Lcom/itextpdf/forms/PdfAcroForm;->getField(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v0

    .line 251
    .local v0, "field":Lcom/itextpdf/forms/fields/PdfFormField;
    invoke-virtual {v0}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 252
    .local v1, "merged":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    return-object v2

    .line 249
    .end local v0    # "field":Lcom/itextpdf/forms/fields/PdfFormField;
    .end local v1    # "merged":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignatureNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/itextpdf/signatures/SignatureUtil;->sigNames:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/signatures/SignatureUtil;->orderedSignatureNames:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 287
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/signatures/SignatureUtil;->sigNames:Ljava/util/Map;

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/signatures/SignatureUtil;->orderedSignatureNames:Ljava/util/List;

    .line 289
    invoke-direct {p0}, Lcom/itextpdf/signatures/SignatureUtil;->populateSignatureNames()V

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/signatures/SignatureUtil;->orderedSignatureNames:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getTotalRevisions()I
    .locals 1

    .line 317
    invoke-virtual {p0}, Lcom/itextpdf/signatures/SignatureUtil;->getSignatureNames()Ljava/util/List;

    .line 318
    iget v0, p0, Lcom/itextpdf/signatures/SignatureUtil;->totalRevisions:I

    return v0
.end method

.method public getTranslatedFieldName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 330
    iget-object v0, p0, Lcom/itextpdf/signatures/SignatureUtil;->acroForm:Lcom/itextpdf/forms/PdfAcroForm;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/forms/PdfAcroForm;->getXfaForm()Lcom/itextpdf/forms/xfa/XfaForm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/forms/xfa/XfaForm;->isXfaPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/itextpdf/signatures/SignatureUtil;->acroForm:Lcom/itextpdf/forms/PdfAcroForm;

    invoke-virtual {v0}, Lcom/itextpdf/forms/PdfAcroForm;->getXfaForm()Lcom/itextpdf/forms/xfa/XfaForm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/forms/xfa/XfaForm;->findFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "namex":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 333
    move-object p1, v0

    .line 335
    .end local v0    # "namex":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public readSignatureData(Ljava/lang/String;)Lcom/itextpdf/signatures/PdfPKCS7;
    .locals 1
    .param p1, "signatureFieldName"    # Ljava/lang/String;

    .line 181
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/signatures/SignatureUtil;->readSignatureData(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/signatures/PdfPKCS7;

    move-result-object v0

    return-object v0
.end method

.method public readSignatureData(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/signatures/PdfPKCS7;
    .locals 8
    .param p1, "signatureFieldName"    # Ljava/lang/String;
    .param p2, "securityProvider"    # Ljava/lang/String;

    .line 202
    invoke-virtual {p0, p1}, Lcom/itextpdf/signatures/SignatureUtil;->getSignature(Ljava/lang/String;)Lcom/itextpdf/signatures/PdfSignature;

    move-result-object v0

    .line 203
    .local v0, "signature":Lcom/itextpdf/signatures/PdfSignature;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 204
    return-object v1

    .line 206
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/itextpdf/signatures/PdfSignature;->getSubFilter()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    .line 207
    .local v2, "sub":Lcom/itextpdf/kernel/pdf/PdfName;
    invoke-virtual {v0}, Lcom/itextpdf/signatures/PdfSignature;->getContents()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v3

    .line 208
    .local v3, "contents":Lcom/itextpdf/kernel/pdf/PdfString;
    const/4 v4, 0x0

    .line 209
    .local v4, "pk":Lcom/itextpdf/signatures/PdfPKCS7;
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Adbe_x509_rsa_sha1:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 210
    invoke-virtual {v0}, Lcom/itextpdf/signatures/PdfSignature;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Cert:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v5

    .line 211
    .local v5, "cert":Lcom/itextpdf/kernel/pdf/PdfString;
    if-nez v5, :cond_1

    .line 212
    invoke-virtual {v0}, Lcom/itextpdf/signatures/PdfSignature;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Cert:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsString(I)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v6

    move-object v5, v6

    .line 213
    :cond_1
    new-instance v6, Lcom/itextpdf/signatures/PdfPKCS7;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/itextpdf/io/font/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfString;->getValueBytes()[B

    move-result-object v7

    invoke-direct {v6, v1, v7, p2}, Lcom/itextpdf/signatures/PdfPKCS7;-><init>([B[BLjava/lang/String;)V

    move-object v1, v6

    .line 214
    .end local v4    # "pk":Lcom/itextpdf/signatures/PdfPKCS7;
    .end local v5    # "cert":Lcom/itextpdf/kernel/pdf/PdfString;
    .local v1, "pk":Lcom/itextpdf/signatures/PdfPKCS7;
    goto :goto_0

    .line 215
    .end local v1    # "pk":Lcom/itextpdf/signatures/PdfPKCS7;
    .restart local v4    # "pk":Lcom/itextpdf/signatures/PdfPKCS7;
    :cond_2
    new-instance v5, Lcom/itextpdf/signatures/PdfPKCS7;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/itextpdf/io/font/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v5, v1, v2, p2}, Lcom/itextpdf/signatures/PdfPKCS7;-><init>([BLcom/itextpdf/kernel/pdf/PdfName;Ljava/lang/String;)V

    move-object v1, v5

    .line 216
    .end local v4    # "pk":Lcom/itextpdf/signatures/PdfPKCS7;
    .restart local v1    # "pk":Lcom/itextpdf/signatures/PdfPKCS7;
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/itextpdf/signatures/SignatureUtil;->updateByteRange(Lcom/itextpdf/signatures/PdfPKCS7;Lcom/itextpdf/signatures/PdfSignature;)V

    .line 217
    invoke-virtual {v0}, Lcom/itextpdf/signatures/PdfSignature;->getDate()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v4

    .line 218
    .local v4, "date":Lcom/itextpdf/kernel/pdf/PdfString;
    if-eqz v4, :cond_3

    .line 219
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/itextpdf/kernel/pdf/PdfDate;->decode(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/itextpdf/signatures/PdfPKCS7;->setSignDate(Ljava/util/Calendar;)V

    .line 220
    :cond_3
    invoke-virtual {v0}, Lcom/itextpdf/signatures/PdfSignature;->getName()Ljava/lang/String;

    move-result-object v5

    .line 221
    .local v5, "signName":Ljava/lang/String;
    invoke-virtual {v1, v5}, Lcom/itextpdf/signatures/PdfPKCS7;->setSignName(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0}, Lcom/itextpdf/signatures/PdfSignature;->getReason()Ljava/lang/String;

    move-result-object v6

    .line 223
    .local v6, "reason":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 224
    invoke-virtual {v1, v6}, Lcom/itextpdf/signatures/PdfPKCS7;->setReason(Ljava/lang/String;)V

    .line 225
    :cond_4
    invoke-virtual {v0}, Lcom/itextpdf/signatures/PdfSignature;->getLocation()Ljava/lang/String;

    move-result-object v7

    .line 226
    .local v7, "location":Ljava/lang/String;
    if-eqz v7, :cond_5

    .line 227
    invoke-virtual {v1, v7}, Lcom/itextpdf/signatures/PdfPKCS7;->setLocation(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :cond_5
    return-object v1

    .line 229
    .end local v1    # "pk":Lcom/itextpdf/signatures/PdfPKCS7;
    .end local v2    # "sub":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local v3    # "contents":Lcom/itextpdf/kernel/pdf/PdfString;
    .end local v4    # "date":Lcom/itextpdf/kernel/pdf/PdfString;
    .end local v5    # "signName":Ljava/lang/String;
    .end local v6    # "reason":Ljava/lang/String;
    .end local v7    # "location":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/itextpdf/kernel/PdfException;

    invoke-direct {v2, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public signatureCoversWholeDocument(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 365
    invoke-virtual {p0}, Lcom/itextpdf/signatures/SignatureUtil;->getSignatureNames()Ljava/util/List;

    .line 366
    iget-object v0, p0, Lcom/itextpdf/signatures/SignatureUtil;->sigNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    const/4 v0, 0x0

    return v0

    .line 369
    :cond_0
    :try_start_0
    new-instance v0, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;

    iget-object v1, p0, Lcom/itextpdf/signatures/SignatureUtil;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfReader;->getSafeFile()Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->createSourceView()Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    .line 370
    .local v0, "signatureReader":Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;
    iget-object v1, p0, Lcom/itextpdf/signatures/SignatureUtil;->acroForm:Lcom/itextpdf/forms/PdfAcroForm;

    invoke-virtual {v1, p1}, Lcom/itextpdf/forms/PdfAcroForm;->getField(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;->checkWhetherSignatureCoversWholeDocument(Lcom/itextpdf/forms/fields/PdfFormField;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 371
    .end local v0    # "signatureReader":Lcom/itextpdf/signatures/SignatureUtil$ContentsChecker;
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public verifySignature(Ljava/lang/String;)Lcom/itextpdf/signatures/PdfPKCS7;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/signatures/SignatureUtil;->readSignatureData(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/signatures/PdfPKCS7;

    move-result-object v0

    return-object v0
.end method

.method public verifySignature(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/signatures/PdfPKCS7;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/signatures/SignatureUtil;->readSignatureData(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/signatures/PdfPKCS7;

    move-result-object v0

    return-object v0
.end method
