.class public Lcom/itextpdf/kernel/pdf/PdfWriter;
.super Lcom/itextpdf/kernel/pdf/PdfOutputStream;
.source "PdfWriter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final endobj:[B

.field private static final obj:[B

.field private static final serialVersionUID:J = -0x5f6ad74cae63355fL


# instance fields
.field private copiedObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            ">;"
        }
    .end annotation
.end field

.field private duplicateStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

.field protected isUserWarnedAboutAcroFormCopying:Z

.field objectStream:Lcom/itextpdf/kernel/pdf/PdfObjectStream;

.field protected properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

.field private smartModeSerializer:Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    const-string v0, " obj\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfWriter;->obj:[B

    .line 72
    const-string v0, "\nendobj\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfWriter;->endobj:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 109
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfWriter;-><init>(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;

    .line 118
    new-instance v0, Lcom/itextpdf/kernel/pdf/WriterProperties;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/WriterProperties;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfWriter;-><init>(Ljava/io/OutputStream;Lcom/itextpdf/kernel/pdf/WriterProperties;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcom/itextpdf/kernel/pdf/WriterProperties;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "properties"    # Lcom/itextpdf/kernel/pdf/WriterProperties;

    .line 122
    invoke-static {p1}, Lcom/itextpdf/io/util/FileUtil;->wrapWithBufferedOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->duplicateStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 83
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->objectStream:Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    .line 90
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->copiedObjects:Ljava/util/Map;

    .line 95
    new-instance v0, Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->smartModeSerializer:Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer;

    .line 123
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    .line 124
    iget-boolean v0, p2, Lcom/itextpdf/kernel/pdf/WriterProperties;->debugMode:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfWriter;->setDebugMode()Lcom/itextpdf/kernel/pdf/PdfWriter;

    .line 127
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 138
    new-instance v0, Lcom/itextpdf/kernel/pdf/WriterProperties;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/WriterProperties;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfWriter;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/WriterProperties;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/WriterProperties;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "properties"    # Lcom/itextpdf/kernel/pdf/WriterProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 151
    invoke-static {p1}, Lcom/itextpdf/io/util/FileUtil;->getBufferedOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/itextpdf/kernel/pdf/PdfWriter;-><init>(Ljava/io/OutputStream;Lcom/itextpdf/kernel/pdf/WriterProperties;)V

    .line 152
    return-void
.end method

.method private static checkTypeOfPdfDictionary(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfName;)Z
    .locals 2
    .param p0, "dictionary"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .param p1, "expectedType"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 544
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getDebugBytes()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 535
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->duplicateStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->flush()V

    .line 537
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->duplicateStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    move-object v1, v0

    check-cast v1, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 539
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private markArrayContentToFlush(Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 2
    .param p1, "array"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 497
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 498
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(IZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfWriter;->markObjectToFlush(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 497
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 500
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private markDictionaryContentToFlush(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 2
    .param p1, "dictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 503
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->values(Z)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 504
    .local v1, "item":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfWriter;->markObjectToFlush(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 505
    .end local v1    # "item":Lcom/itextpdf/kernel/pdf/PdfObject;
    goto :goto_0

    .line 506
    :cond_0
    return-void
.end method

.method private markObjectToFlush(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 5
    .param p1, "pdfObject"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 509
    if-eqz p1, :cond_3

    .line 510
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    .line 511
    .local v0, "indirectReference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    const/16 v1, 0x20

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v2

    if-nez v2, :cond_3

    .line 513
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 516
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 517
    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->checkState(S)Z

    move-result v2

    if-nez v2, :cond_3

    .line 518
    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 520
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v1

    if-ne v1, v2, :cond_2

    .line 521
    move-object v1, p1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfWriter;->markArrayContentToFlush(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    goto :goto_0

    .line 522
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 523
    move-object v1, p1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfWriter;->markDictionaryContentToFlush(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 527
    .end local v0    # "indirectReference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    :cond_3
    :goto_0
    return-void
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

    .line 555
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 556
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->outputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 557
    new-instance v0, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-direct {v0}, Lcom/itextpdf/io/source/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfWriter;->getDebugBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->assignBytes([B)Lcom/itextpdf/io/source/ByteArrayOutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->outputStream:Ljava/io/OutputStream;

    .line 559
    :cond_0
    return-void
.end method

.method private setDebugMode()Lcom/itextpdf/kernel/pdf/PdfWriter;
    .locals 2

    .line 530
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    new-instance v1, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-direct {v1}, Lcom/itextpdf/io/source/ByteArrayOutputStream;-><init>()V

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->duplicateStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 531
    return-object p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 568
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->duplicateStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->outputStream:Ljava/io/OutputStream;

    .line 572
    .local v0, "tempOutputStream":Ljava/io/OutputStream;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->outputStream:Ljava/io/OutputStream;

    .line 573
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 574
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->outputStream:Ljava/io/OutputStream;

    .line 575
    return-void

    .line 569
    .end local v0    # "tempOutputStream":Ljava/io/OutputStream;
    :cond_0
    new-instance v0, Ljava/io/NotSerializableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": debug mode is disabled!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    const-string v0, "Closing of the duplicatedStream failed."

    const-class v1, Lcom/itextpdf/kernel/pdf/PdfWriter;

    :try_start_0
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    :try_start_1
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->duplicateStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    if-eqz v2, :cond_0

    .line 267
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 272
    :cond_0
    goto :goto_0

    .line 269
    :catch_0
    move-exception v2

    .line 270
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 271
    .local v1, "logger":Lorg/slf4j/Logger;
    invoke-interface {v1, v0, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 273
    .end local v1    # "logger":Lorg/slf4j/Logger;
    .end local v2    # "ex":Ljava/lang/Exception;
    nop

    .line 274
    :goto_0
    return-void

    .line 265
    :catchall_0
    move-exception v2

    .line 266
    :try_start_2
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->duplicateStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    if-eqz v3, :cond_1

    .line 267
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->duplicateStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 272
    :cond_1
    goto :goto_1

    .line 269
    :catch_1
    move-exception v3

    .line 270
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 271
    .restart local v1    # "logger":Lorg/slf4j/Logger;
    invoke-interface {v1, v0, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 273
    .end local v1    # "logger":Lorg/slf4j/Logger;
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_1
    throw v2
.end method

.method protected copyObject(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 6
    .param p1, "obj"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .param p2, "documentTo"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p3, "allowDuplicating"    # Z

    .line 347
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    if-eqz v0, :cond_0

    .line 348
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    .line 349
    :cond_0
    if-nez p1, :cond_1

    .line 350
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfNull;->PDF_NULL:Lcom/itextpdf/kernel/pdf/PdfNull;

    .line 352
    :cond_1
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Catalog:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfWriter;->checkTypeOfPdfDictionary(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 353
    const-class v0, Lcom/itextpdf/kernel/pdf/PdfReader;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 354
    .local v0, "logger":Lorg/slf4j/Logger;
    const-string v1, "Make copy of Catalog dictionary is forbidden."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 355
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfNull;->PDF_NULL:Lcom/itextpdf/kernel/pdf/PdfNull;

    .line 358
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    .line 359
    .local v0, "indirectReference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    if-nez p3, :cond_3

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 361
    .local v1, "tryToFindDuplicate":Z
    :goto_0
    if-eqz v1, :cond_4

    .line 362
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->copiedObjects:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 363
    .local v2, "copiedIndirectReference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    if-eqz v2, :cond_4

    .line 364
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    return-object v3

    .line 368
    .end local v2    # "copiedIndirectReference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    :cond_4
    const/4 v2, 0x0

    .line 369
    .local v2, "serializedContent":Lcom/itextpdf/kernel/pdf/SerializedObjectContent;
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    iget-boolean v3, v3, Lcom/itextpdf/kernel/pdf/WriterProperties;->smartMode:Z

    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Page:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {p1, v3}, Lcom/itextpdf/kernel/pdf/PdfWriter;->checkTypeOfPdfDictionary(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 370
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->smartModeSerializer:Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer;

    invoke-virtual {v3, p1}, Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer;->serializeObject(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/SerializedObjectContent;

    move-result-object v2

    .line 371
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->smartModeSerializer:Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer;

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer;->getSavedSerializedObject(Lcom/itextpdf/kernel/pdf/SerializedObjectContent;)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v3

    .line 372
    .local v3, "objectRef":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    if-eqz v3, :cond_5

    .line 373
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->copiedObjects:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    iget-object v4, v3, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->refersTo:Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object v4

    .line 378
    .end local v3    # "objectRef":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    :cond_5
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->newInstance()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    .line 379
    .local v3, "newObject":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v0, :cond_7

    .line 380
    invoke-virtual {v3, p2}, Lcom/itextpdf/kernel/pdf/PdfObject;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v4

    .line 381
    .local v4, "indRef":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    if-eqz v2, :cond_6

    .line 382
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->smartModeSerializer:Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer;

    invoke-virtual {v5, v2, v4}, Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer;->saveSerializedObject(Lcom/itextpdf/kernel/pdf/SerializedObjectContent;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V

    .line 384
    :cond_6
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->copiedObjects:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    .end local v4    # "indRef":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    :cond_7
    invoke-virtual {v3, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfObject;->copyContent(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 388
    return-object v3
.end method

.method flushCopiedObjects(J)V
    .locals 6
    .param p1, "docId"    # J

    .line 481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 482
    .local v0, "remove":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->copiedObjects:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 483
    .local v2, "copiedObject":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v3

    .line 484
    .local v3, "document":Lcom/itextpdf/kernel/pdf/PdfDocument;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 485
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    iget-object v4, v4, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->refersTo:Lcom/itextpdf/kernel/pdf/PdfObject;

    if-eqz v4, :cond_0

    .line 486
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    iget-object v4, v4, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->refersTo:Lcom/itextpdf/kernel/pdf/PdfObject;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfObject;->flush()V

    .line 487
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    .end local v2    # "copiedObject":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    .end local v3    # "document":Lcom/itextpdf/kernel/pdf/PdfDocument;
    :cond_0
    goto :goto_0

    .line 491
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 492
    .local v2, "ird":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->copiedObjects:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    .end local v2    # "ird":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    goto :goto_1

    .line 494
    :cond_2
    return-void
.end method

.method protected flushModifiedWaitingObjects(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            ">;)V"
        }
    .end annotation

    .line 454
    .local p1, "forbiddenToFlush":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v0

    .line 455
    .local v0, "xref":Lcom/itextpdf/kernel/pdf/PdfXrefTable;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 456
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->get(I)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    .line 457
    .local v2, "indirectReference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->isFree()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 458
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v3

    .line 459
    .local v3, "isModified":Z
    if-eqz v3, :cond_0

    .line 460
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    .line 461
    .local v4, "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v4, :cond_0

    .line 462
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->objectStream:Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 463
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfObject;->flush()V

    .line 455
    .end local v2    # "indirectReference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .end local v3    # "isModified":Z
    .end local v4    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 469
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->objectStream:Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->getSize()I

    move-result v1

    if-lez v1, :cond_2

    .line 470
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->objectStream:Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->flush()V

    .line 471
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->objectStream:Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    .line 473
    :cond_2
    return-void
.end method

.method protected flushObject(Lcom/itextpdf/kernel/pdf/PdfObject;Z)V
    .locals 3
    .param p1, "pdfObject"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .param p2, "canBeInObjStm"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    .line 313
    .local v0, "indirectReference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfWriter;->isFullCompression()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfWriter;->getObjectStream()Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    move-result-object v1

    .line 315
    .local v1, "objectStream":Lcom/itextpdf/kernel/pdf/PdfObjectStream;
    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->addObject(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 316
    .end local v1    # "objectStream":Lcom/itextpdf/kernel/pdf/PdfObjectStream;
    goto :goto_0

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfWriter;->getCurrentPos()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setOffset(J)V

    .line 318
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfWriter;->writeToBody(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 320
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->clearState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 321
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 341
    :pswitch_1
    move-object v1, p1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfWriter;->markObjectToFlush(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_1

    .line 336
    :pswitch_2
    move-object v1, p1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 337
    .local v1, "dictionary":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfWriter;->markDictionaryContentToFlush(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 338
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->releaseContent()V

    .line 339
    goto :goto_1

    .line 327
    .end local v1    # "dictionary":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :pswitch_3
    move-object v1, p1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;->content:[B

    .line 328
    goto :goto_1

    .line 330
    :pswitch_4
    move-object v1, p1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 331
    .local v1, "array":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfWriter;->markArrayContentToFlush(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 332
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->releaseContent()V

    .line 333
    nop

    .line 343
    .end local v1    # "array":Lcom/itextpdf/kernel/pdf/PdfArray;
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected flushWaitingObjects(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            ">;)V"
        }
    .end annotation

    .line 424
    .local p1, "forbiddenToFlush":Ljava/util/Set;, "Ljava/util/Set<Lcom/itextpdf/kernel/pdf/PdfIndirectReference;>;"
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    move-result-object v0

    .line 425
    .local v0, "xref":Lcom/itextpdf/kernel/pdf/PdfXrefTable;
    const/4 v1, 0x1

    .line 426
    .local v1, "needFlush":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 427
    const/4 v1, 0x0

    .line 428
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 429
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->get(I)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v3

    .line 430
    .local v3, "indirectReference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->isFree()Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x20

    .line 431
    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 432
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 433
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    .line 434
    .local v4, "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v4, :cond_0

    .line 435
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfObject;->flush()V

    .line 436
    const/4 v1, 0x1

    .line 428
    .end local v3    # "indirectReference":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .end local v4    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2    # "i":I
    :cond_1
    goto :goto_0

    .line 441
    :cond_2
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->objectStream:Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->getSize()I

    move-result v2

    if-lez v2, :cond_3

    .line 442
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->objectStream:Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->flush()V

    .line 443
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->objectStream:Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    .line 445
    :cond_3
    return-void
.end method

.method public getCompressionLevel()I
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    iget v0, v0, Lcom/itextpdf/kernel/pdf/WriterProperties;->compressionLevel:I

    return v0
.end method

.method getObjectStream()Lcom/itextpdf/kernel/pdf/PdfObjectStream;
    .locals 2

    .line 282
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfWriter;->isFullCompression()Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    const/4 v0, 0x0

    return-object v0

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->objectStream:Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    if-nez v0, :cond_1

    .line 285
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->objectStream:Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    goto :goto_0

    .line 286
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->getSize()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 287
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->objectStream:Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;->flush()V

    .line 288
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->objectStream:Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfObjectStream;-><init>(Lcom/itextpdf/kernel/pdf/PdfObjectStream;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->objectStream:Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    .line 290
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->objectStream:Lcom/itextpdf/kernel/pdf/PdfObjectStream;

    return-object v0
.end method

.method protected initCryptoIfSpecified(Lcom/itextpdf/kernel/pdf/PdfVersion;)V
    .locals 9
    .param p1, "version"    # Lcom/itextpdf/kernel/pdf/PdfVersion;

    .line 294
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/WriterProperties;->encryptionProperties:Lcom/itextpdf/kernel/pdf/EncryptionProperties;

    .line 295
    .local v0, "encryptProps":Lcom/itextpdf/kernel/pdf/EncryptionProperties;
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/WriterProperties;->isStandardEncryptionUsed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfEncryption;

    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->userPassword:[B

    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->ownerPassword:[B

    iget v5, v0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->standardEncryptPermissions:I

    iget v6, v0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->encryptionAlgorithm:I

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 297
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getOriginalDocumentId()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v7

    move-object v2, v1

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/itextpdf/kernel/pdf/PdfEncryption;-><init>([B[BII[BLcom/itextpdf/kernel/pdf/PdfVersion;)V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    goto :goto_0

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/WriterProperties;->isPublicKeyEncryptionUsed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 299
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfEncryption;

    iget-object v2, v0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->publicCertificates:[Ljava/security/cert/Certificate;

    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->publicKeyEncryptPermissions:[I

    iget v4, v0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->encryptionAlgorithm:I

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/itextpdf/kernel/pdf/PdfEncryption;-><init>([Ljava/security/cert/Certificate;[IILcom/itextpdf/kernel/pdf/PdfVersion;)V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    .line 302
    :cond_1
    :goto_0
    return-void
.end method

.method public isFullCompression()Z
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/WriterProperties;->isFullCompression:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/WriterProperties;->isFullCompression:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCompressionLevel(I)Lcom/itextpdf/kernel/pdf/PdfWriter;
    .locals 1
    .param p1, "compressionLevel"    # I

    .line 181
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/WriterProperties;->setCompressionLevel(I)Lcom/itextpdf/kernel/pdf/WriterProperties;

    .line 182
    return-object p0
.end method

.method public setSmartMode(Z)Lcom/itextpdf/kernel/pdf/PdfWriter;
    .locals 1
    .param p1, "smartMode"    # Z

    .line 198
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    iput-boolean p1, v0, Lcom/itextpdf/kernel/pdf/WriterProperties;->smartMode:Z

    .line 199
    return-object p0
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    invoke-super {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(I)V

    .line 213
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->duplicateStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(I)V

    .line 216
    :cond_0
    return-void
.end method

.method public write([B)V
    .locals 1
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    invoke-super {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write([B)V

    .line 229
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->duplicateStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write([B)V

    .line 232
    :cond_0
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    invoke-super {p0, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write([BII)V

    .line 247
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->duplicateStream:Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write([BII)V

    .line 250
    :cond_0
    return-void
.end method

.method protected writeHeader()V
    .locals 2

    .line 412
    const/16 v0, 0x25

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfWriter;->writeByte(I)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 413
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPdfVersion()Lcom/itextpdf/kernel/pdf/PdfVersion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfVersion;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeString(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 414
    const-string v1, "\n%\u00e2\u00e3\u00cf\u00d3\n"

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeString(Ljava/lang/String;)Ljava/io/OutputStream;

    .line 415
    return-void
.end method

.method protected writeToBody(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 3
    .param p1, "pdfObj"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfWriter;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->setHashKeyForNextObject(II)V

    .line 401
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfWriter;->writeInteger(I)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 402
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 403
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getGenNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeInteger(I)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfWriter;->obj:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    .line 404
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfWriter;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 405
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfWriter;->endobj:[B

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfWriter;->writeBytes([B)Ljava/io/OutputStream;

    .line 406
    return-void
.end method
