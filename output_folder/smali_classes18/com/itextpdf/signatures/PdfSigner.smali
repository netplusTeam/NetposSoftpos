.class public Lcom/itextpdf/signatures/PdfSigner;
.super Ljava/lang/Object;
.source "PdfSigner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/signatures/PdfSigner$ISignatureEvent;,
        Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;
    }
.end annotation


# static fields
.field public static final CERTIFIED_FORM_FILLING:I = 0x2

.field public static final CERTIFIED_FORM_FILLING_AND_ANNOTATIONS:I = 0x3

.field public static final CERTIFIED_NO_CHANGES_ALLOWED:I = 0x1

.field public static final NOT_CERTIFIED:I


# instance fields
.field protected appearance:Lcom/itextpdf/signatures/PdfSignatureAppearance;

.field protected bout:[B

.field protected certificationLevel:I

.field protected closed:Z

.field protected cryptoDictionary:Lcom/itextpdf/signatures/PdfSignature;

.field private digestMethod:Lcom/itextpdf/kernel/pdf/PdfName;

.field protected document:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field protected exclusionLocations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            "Lcom/itextpdf/kernel/pdf/PdfLiteral;",
            ">;"
        }
    .end annotation
.end field

.field protected fieldLock:Lcom/itextpdf/forms/PdfSigFieldLock;

.field protected fieldName:Ljava/lang/String;

.field protected originalOS:Ljava/io/OutputStream;

.field protected preClosed:Z

.field protected raf:Ljava/io/RandomAccessFile;

.field protected range:[J

.field protected signDate:Ljava/util/Calendar;

.field protected signatureEvent:Lcom/itextpdf/signatures/PdfSigner$ISignatureEvent;

.field protected tempFile:Ljava/io/File;

.field protected temporaryOS:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfReader;Ljava/io/OutputStream;Lcom/itextpdf/kernel/pdf/StampingProperties;)V
    .locals 1
    .param p1, "reader"    # Lcom/itextpdf/kernel/pdf/PdfReader;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .param p3, "properties"    # Lcom/itextpdf/kernel/pdf/StampingProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/itextpdf/signatures/PdfSigner;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Ljava/io/OutputStream;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/StampingProperties;)V

    .line 272
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfReader;Ljava/io/OutputStream;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/StampingProperties;)V
    .locals 6
    .param p1, "reader"    # Lcom/itextpdf/kernel/pdf/PdfReader;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "properties"    # Lcom/itextpdf/kernel/pdf/StampingProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/signatures/PdfSigner;->certificationLevel:I

    .line 208
    iput-boolean v0, p0, Lcom/itextpdf/signatures/PdfSigner;->preClosed:Z

    .line 285
    new-instance v1, Lcom/itextpdf/kernel/pdf/StampingProperties;

    invoke-direct {v1, p4}, Lcom/itextpdf/kernel/pdf/StampingProperties;-><init>(Lcom/itextpdf/kernel/pdf/StampingProperties;)V

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/StampingProperties;->preserveEncryption()Lcom/itextpdf/kernel/pdf/StampingProperties;

    move-result-object v1

    .line 286
    .local v1, "localProps":Lcom/itextpdf/kernel/pdf/StampingProperties;
    if-nez p3, :cond_0

    .line 287
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/signatures/PdfSigner;->temporaryOS:Ljava/io/ByteArrayOutputStream;

    .line 288
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v3, p0, Lcom/itextpdf/signatures/PdfSigner;->temporaryOS:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1, v2, v1}, Lcom/itextpdf/signatures/PdfSigner;->initDocument(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/PdfWriter;Lcom/itextpdf/kernel/pdf/StampingProperties;)Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    goto :goto_0

    .line 290
    :cond_0
    invoke-static {p3}, Lcom/itextpdf/io/util/FileUtil;->createTempFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/signatures/PdfSigner;->tempFile:Ljava/io/File;

    .line 291
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v3, p0, Lcom/itextpdf/signatures/PdfSigner;->tempFile:Ljava/io/File;

    invoke-static {v3}, Lcom/itextpdf/io/util/FileUtil;->getFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1, v2, v1}, Lcom/itextpdf/signatures/PdfSigner;->initDocument(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/PdfWriter;Lcom/itextpdf/kernel/pdf/StampingProperties;)Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 294
    :goto_0
    iput-object p2, p0, Lcom/itextpdf/signatures/PdfSigner;->originalOS:Ljava/io/OutputStream;

    .line 295
    invoke-static {}, Lcom/itextpdf/io/util/DateTimeUtil;->getCurrentTimeCalendar()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/signatures/PdfSigner;->signDate:Ljava/util/Calendar;

    .line 296
    invoke-virtual {p0}, Lcom/itextpdf/signatures/PdfSigner;->getNewSigFieldName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/signatures/PdfSigner;->fieldName:Ljava/lang/String;

    .line 297
    new-instance v2, Lcom/itextpdf/signatures/PdfSignatureAppearance;

    iget-object v3, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    new-instance v4, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/itextpdf/signatures/PdfSignatureAppearance;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;I)V

    iput-object v2, p0, Lcom/itextpdf/signatures/PdfSigner;->appearance:Lcom/itextpdf/signatures/PdfSignatureAppearance;

    .line 298
    iget-object v3, p0, Lcom/itextpdf/signatures/PdfSigner;->signDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->setSignDate(Ljava/util/Calendar;)Lcom/itextpdf/signatures/PdfSignatureAppearance;

    .line 300
    iput-boolean v0, p0, Lcom/itextpdf/signatures/PdfSigner;->closed:Z

    .line 301
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfReader;Ljava/io/OutputStream;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "reader"    # Lcom/itextpdf/kernel/pdf/PdfReader;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 258
    invoke-static {p4}, Lcom/itextpdf/signatures/PdfSigner;->initStampingProperties(Z)Lcom/itextpdf/kernel/pdf/StampingProperties;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/itextpdf/signatures/PdfSigner;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Ljava/io/OutputStream;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/StampingProperties;)V

    .line 259
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfReader;Ljava/io/OutputStream;Z)V
    .locals 1
    .param p1, "reader"    # Lcom/itextpdf/kernel/pdf/PdfReader;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .param p3, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 242
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/itextpdf/signatures/PdfSigner;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Ljava/io/OutputStream;Ljava/lang/String;Z)V

    .line 243
    return-void
.end method

.method private getHashAlgorithmNameInCompatibleForPdfForm(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 4
    .param p1, "hashAlgorithm"    # Ljava/lang/String;

    .line 1268
    const/4 v0, 0x0

    .line 1269
    .local v0, "pdfCompatibleName":Lcom/itextpdf/kernel/pdf/PdfName;
    invoke-static {p1}, Lcom/itextpdf/signatures/DigestAlgorithms;->getAllowedDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1270
    .local v1, "hashAlgOid":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1271
    invoke-static {v1}, Lcom/itextpdf/signatures/DigestAlgorithms;->getDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1272
    .local v2, "hashAlgorithmNameInCompatibleForPdfForm":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1273
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v3, v2}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 1276
    .end local v2    # "hashAlgorithmNameInCompatibleForPdfForm":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static initStampingProperties(Z)Lcom/itextpdf/kernel/pdf/StampingProperties;
    .locals 1
    .param p0, "append"    # Z

    .line 1284
    new-instance v0, Lcom/itextpdf/kernel/pdf/StampingProperties;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/StampingProperties;-><init>()V

    .line 1285
    .local v0, "properties":Lcom/itextpdf/kernel/pdf/StampingProperties;
    if-eqz p0, :cond_0

    .line 1286
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/StampingProperties;->useAppendMode()Lcom/itextpdf/kernel/pdf/StampingProperties;

    .line 1288
    :cond_0
    return-object v0
.end method

.method private isDocumentPdf2()Z
    .locals 2

    .line 1280
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPdfVersion()Lcom/itextpdf/kernel/pdf/PdfVersion;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_2_0:Lcom/itextpdf/kernel/pdf/PdfVersion;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfVersion;->compareTo(Lcom/itextpdf/kernel/pdf/PdfVersion;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setDigestParamToSigRefIfNeeded(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 3
    .param p1, "reference"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 1246
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPdfVersion()Lcom/itextpdf/kernel/pdf/PdfVersion;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_1_6:Lcom/itextpdf/kernel/pdf/PdfVersion;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfVersion;->compareTo(Lcom/itextpdf/kernel/pdf/PdfVersion;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1250
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DigestValue:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfString;

    const-string v2, "aa"

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1251
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 1252
    .local v0, "loc":Lcom/itextpdf/kernel/pdf/PdfArray;
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 1253
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 1254
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DigestLocation:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1255
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DigestMethod:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->MD5:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .end local v0    # "loc":Lcom/itextpdf/kernel/pdf/PdfArray;
    goto :goto_0

    .line 1257
    :cond_0
    invoke-direct {p0}, Lcom/itextpdf/signatures/PdfSigner;->isDocumentPdf2()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1258
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->digestMethod:Lcom/itextpdf/kernel/pdf/PdfName;

    if-eqz v0, :cond_1

    .line 1259
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DigestMethod:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSigner;->digestMethod:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_1

    .line 1261
    :cond_1
    const-class v0, Lcom/itextpdf/signatures/PdfSigner;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 1262
    .local v0, "logger":Lorg/slf4j/Logger;
    const-string v1, "Unknown digest method. Valid values are MD5, SHA1 SHA256, SHA384, SHA512 and RIPEMD160."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 1257
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :cond_2
    :goto_0
    nop

    .line 1265
    :goto_1
    return-void
.end method

.method public static signDeferred(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/lang/String;Ljava/io/OutputStream;Lcom/itextpdf/signatures/IExternalSignatureContainer;)V
    .locals 22
    .param p0, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "outs"    # Ljava/io/OutputStream;
    .param p3, "externalSignatureContainer"    # Lcom/itextpdf/signatures/IExternalSignatureContainer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 780
    move-object/from16 v0, p1

    new-instance v1, Lcom/itextpdf/signatures/SignatureUtil;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Lcom/itextpdf/signatures/SignatureUtil;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 781
    .local v1, "signatureUtil":Lcom/itextpdf/signatures/SignatureUtil;
    invoke-virtual {v1, v0}, Lcom/itextpdf/signatures/SignatureUtil;->getSignature(Ljava/lang/String;)Lcom/itextpdf/signatures/PdfSignature;

    move-result-object v3

    .line 782
    .local v3, "signature":Lcom/itextpdf/signatures/PdfSignature;
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_6

    .line 785
    invoke-virtual {v1, v0}, Lcom/itextpdf/signatures/SignatureUtil;->signatureCoversWholeDocument(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 789
    invoke-virtual {v3}, Lcom/itextpdf/signatures/PdfSignature;->getByteRange()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v6

    .line 790
    .local v6, "b":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->toLongArray()[J

    move-result-object v7

    .line 792
    .local v7, "gaps":[J
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_4

    aget-wide v8, v7, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_4

    .line 796
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfReader;->getSafeFile()Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->createSourceView()Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v8

    .line 797
    .local v8, "readerSource":Lcom/itextpdf/io/source/IRandomAccessSource;
    new-instance v9, Lcom/itextpdf/io/source/RASInputStream;

    new-instance v10, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v10}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    invoke-virtual {v10, v8, v7}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createRanged(Lcom/itextpdf/io/source/IRandomAccessSource;[J)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/itextpdf/io/source/RASInputStream;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    move-object v15, v9

    .line 798
    .local v15, "rg":Ljava/io/InputStream;
    move-object/from16 v14, p3

    invoke-interface {v14, v15}, Lcom/itextpdf/signatures/IExternalSignatureContainer;->sign(Ljava/io/InputStream;)[B

    move-result-object v12

    .line 799
    .local v12, "signedContent":[B
    const/16 v16, 0x2

    aget-wide v9, v7, v16

    aget-wide v17, v7, v5

    sub-long v9, v9, v17

    long-to-int v9, v9

    add-int/lit8 v9, v9, -0x2

    .line 800
    .local v9, "spaceAvailable":I
    and-int/lit8 v10, v9, 0x1

    if-nez v10, :cond_3

    .line 803
    div-int/lit8 v13, v9, 0x2

    .line 804
    .end local v9    # "spaceAvailable":I
    .local v13, "spaceAvailable":I
    array-length v9, v12

    if-lt v13, v9, :cond_2

    .line 807
    const-wide/16 v10, 0x0

    aget-wide v17, v7, v5

    const-wide/16 v19, 0x1

    add-long v17, v17, v19

    move-object v9, v8

    move-object v5, v12

    move/from16 v21, v13

    .end local v12    # "signedContent":[B
    .end local v13    # "spaceAvailable":I
    .local v5, "signedContent":[B
    .local v21, "spaceAvailable":I
    move-wide/from16 v12, v17

    move-object/from16 v14, p2

    invoke-static/range {v9 .. v14}, Lcom/itextpdf/io/util/StreamUtil;->copyBytes(Lcom/itextpdf/io/source/IRandomAccessSource;JJLjava/io/OutputStream;)V

    .line 808
    new-instance v9, Lcom/itextpdf/io/source/ByteBuffer;

    mul-int/lit8 v13, v21, 0x2

    invoke-direct {v9, v13}, Lcom/itextpdf/io/source/ByteBuffer;-><init>(I)V

    move-object v14, v9

    .line 809
    .local v14, "bb":Lcom/itextpdf/io/source/ByteBuffer;
    array-length v9, v5

    :goto_0
    if-ge v4, v9, :cond_0

    aget-byte v10, v5, v4

    .line 810
    .local v10, "bi":B
    invoke-virtual {v14, v10}, Lcom/itextpdf/io/source/ByteBuffer;->appendHex(B)Lcom/itextpdf/io/source/ByteBuffer;

    .line 809
    .end local v10    # "bi":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 812
    :cond_0
    array-length v4, v5

    sub-int v13, v21, v4

    mul-int/lit8 v4, v13, 0x2

    .line 813
    .local v4, "remain":I
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_1
    if-ge v9, v4, :cond_1

    .line 814
    const/16 v10, 0x30

    invoke-virtual {v14, v10}, Lcom/itextpdf/io/source/ByteBuffer;->append(B)Lcom/itextpdf/io/source/ByteBuffer;

    .line 813
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 816
    .end local v9    # "k":I
    :cond_1
    invoke-virtual {v14}, Lcom/itextpdf/io/source/ByteBuffer;->toByteArray()[B

    move-result-object v12

    .line 817
    .local v12, "bbArr":[B
    move-object/from16 v13, p2

    invoke-virtual {v13, v12}, Ljava/io/OutputStream;->write([B)V

    .line 818
    aget-wide v9, v7, v16

    sub-long v10, v9, v19

    const/4 v9, 0x3

    aget-wide v16, v7, v9

    add-long v16, v16, v19

    move-object v9, v8

    move-object/from16 v18, v12

    .end local v12    # "bbArr":[B
    .local v18, "bbArr":[B
    move-wide/from16 v12, v16

    move-object/from16 v16, v14

    .end local v14    # "bb":Lcom/itextpdf/io/source/ByteBuffer;
    .local v16, "bb":Lcom/itextpdf/io/source/ByteBuffer;
    move-object/from16 v14, p2

    invoke-static/range {v9 .. v14}, Lcom/itextpdf/io/util/StreamUtil;->copyBytes(Lcom/itextpdf/io/source/IRandomAccessSource;JJLjava/io/OutputStream;)V

    .line 819
    return-void

    .line 805
    .end local v4    # "remain":I
    .end local v5    # "signedContent":[B
    .end local v16    # "bb":Lcom/itextpdf/io/source/ByteBuffer;
    .end local v18    # "bbArr":[B
    .end local v21    # "spaceAvailable":I
    .local v12, "signedContent":[B
    .restart local v13    # "spaceAvailable":I
    :cond_2
    new-instance v4, Lcom/itextpdf/kernel/PdfException;

    const-string v9, "Available space is not enough for signature."

    invoke-direct {v4, v9}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 801
    .end local v13    # "spaceAvailable":I
    .local v9, "spaceAvailable":I
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v10, "Gap is not a multiple of 2"

    invoke-direct {v4, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 793
    .end local v8    # "readerSource":Lcom/itextpdf/io/source/IRandomAccessSource;
    .end local v9    # "spaceAvailable":I
    .end local v12    # "signedContent":[B
    .end local v15    # "rg":Ljava/io/InputStream;
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Single exclusion space supported"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 786
    .end local v6    # "b":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v7    # "gaps":[J
    :cond_5
    new-instance v6, Lcom/itextpdf/kernel/PdfException;

    const-string v7, "Signature with name {0} is not the last. It doesn\'t cover the whole document."

    invoke-direct {v6, v7}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v4

    invoke-virtual {v6, v5}, Lcom/itextpdf/kernel/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;

    move-result-object v4

    throw v4

    .line 783
    :cond_6
    new-instance v6, Lcom/itextpdf/kernel/PdfException;

    const-string v7, "There is no field in the document with such name: {0}."

    invoke-direct {v6, v7}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v4

    invoke-virtual {v6, v5}, Lcom/itextpdf/kernel/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;

    move-result-object v4

    throw v4
.end method


# virtual methods
.method protected addDeveloperExtension(Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;)V
    .locals 1
    .param p1, "extension"    # Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;

    .line 847
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->addDeveloperExtension(Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;)V

    .line 848
    return-void
.end method

.method protected addDocMDP(Lcom/itextpdf/signatures/PdfSignature;)V
    .locals 5
    .param p1, "crypto"    # Lcom/itextpdf/signatures/PdfSignature;

    .line 1136
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 1137
    .local v0, "reference":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 1138
    .local v1, "transformParams":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    iget v4, p0, Lcom/itextpdf/signatures/PdfSigner;->certificationLevel:I

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1139
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v4, "1.2"

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1140
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->TransformParams:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1141
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->TransformMethod:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->DocMDP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1142
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->SigRef:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1143
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->TransformParams:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1144
    invoke-direct {p0, v0}, Lcom/itextpdf/signatures/PdfSigner;->setDigestParamToSigRefIfNeeded(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 1145
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Data:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v3, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getTrailer()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Root:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1146
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 1147
    .local v2, "types":Lcom/itextpdf/kernel/pdf/PdfArray;
    invoke-virtual {v2, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 1148
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Reference:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v3, v2}, Lcom/itextpdf/signatures/PdfSignature;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/signatures/PdfSignature;

    .line 1149
    return-void
.end method

.method protected addFieldMDP(Lcom/itextpdf/signatures/PdfSignature;Lcom/itextpdf/forms/PdfSigFieldLock;)V
    .locals 5
    .param p1, "crypto"    # Lcom/itextpdf/signatures/PdfSignature;
    .param p2, "fieldLock"    # Lcom/itextpdf/forms/PdfSigFieldLock;

    .line 1159
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 1160
    .local v0, "reference":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 1161
    .local v1, "transformParams":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {p2}, Lcom/itextpdf/forms/PdfSigFieldLock;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->putAll(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 1162
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->TransformParams:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1163
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v4, "1.2"

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1164
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->TransformMethod:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->FieldMDP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1165
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->SigRef:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1166
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->TransformParams:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1167
    invoke-direct {p0, v0}, Lcom/itextpdf/signatures/PdfSigner;->setDigestParamToSigRefIfNeeded(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 1168
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Data:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v3, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getTrailer()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Root:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1169
    invoke-virtual {p1}, Lcom/itextpdf/signatures/PdfSignature;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Reference:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    .line 1170
    .local v2, "types":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-nez v2, :cond_0

    .line 1171
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    move-object v2, v3

    .line 1172
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Reference:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v3, v2}, Lcom/itextpdf/signatures/PdfSignature;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/signatures/PdfSignature;

    .line 1175
    :cond_0
    invoke-virtual {v2, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 1176
    return-void
.end method

.method protected close(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 11
    .param p1, "update"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1061
    :try_start_0
    iget-boolean v0, p0, Lcom/itextpdf/signatures/PdfSigner;->preClosed:Z

    if-eqz v0, :cond_a

    .line 1063
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1064
    .local v0, "bous":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1066
    .local v1, "os":Lcom/itextpdf/kernel/pdf/PdfOutputStream;
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 1067
    .local v3, "key":Lcom/itextpdf/kernel/pdf/PdfName;
    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    .line 1068
    .local v5, "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    iget-object v6, p0, Lcom/itextpdf/signatures/PdfSigner;->exclusionLocations:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfLiteral;

    .line 1069
    .local v6, "lit":Lcom/itextpdf/kernel/pdf/PdfLiteral;
    if-eqz v6, :cond_2

    .line 1071
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1072
    invoke-virtual {v1, v5}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1073
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfLiteral;->getBytesCount()I

    move-result v8

    if-gt v7, v8, :cond_1

    .line 1075
    iget-object v7, p0, Lcom/itextpdf/signatures/PdfSigner;->tempFile:Ljava/io/File;

    if-nez v7, :cond_0

    .line 1076
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    iget-object v8, p0, Lcom/itextpdf/signatures/PdfSigner;->bout:[B

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfLiteral;->getPosition()J

    move-result-wide v9

    long-to-int v9, v9

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    invoke-static {v7, v4, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 1078
    :cond_0
    iget-object v7, p0, Lcom/itextpdf/signatures/PdfSigner;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfLiteral;->getPosition()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1079
    iget-object v7, p0, Lcom/itextpdf/signatures/PdfSigner;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    invoke-virtual {v7, v8, v4, v9}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 1081
    .end local v3    # "key":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local v5    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v6    # "lit":Lcom/itextpdf/kernel/pdf/PdfLiteral;
    :goto_1
    goto :goto_0

    .line 1074
    .restart local v3    # "key":Lcom/itextpdf/kernel/pdf/PdfName;
    .restart local v5    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .restart local v6    # "lit":Lcom/itextpdf/kernel/pdf/PdfLiteral;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "The key is too big"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "update":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    throw v2

    .line 1070
    .restart local p1    # "update":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "The key didn\'t reserve space in preclose"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "update":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    throw v2

    .line 1082
    .end local v3    # "key":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local v5    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v6    # "lit":Lcom/itextpdf/kernel/pdf/PdfLiteral;
    .restart local p1    # "update":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_3
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->size()I

    move-result v2

    iget-object v3, p0, Lcom/itextpdf/signatures/PdfSigner;->exclusionLocations:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-ne v2, v3, :cond_9

    .line 1084
    iget-object v2, p0, Lcom/itextpdf/signatures/PdfSigner;->tempFile:Ljava/io/File;

    if-nez v2, :cond_4

    .line 1085
    iget-object v2, p0, Lcom/itextpdf/signatures/PdfSigner;->originalOS:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/itextpdf/signatures/PdfSigner;->bout:[B

    array-length v5, v3

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_3

    .line 1087
    :cond_4
    iget-object v2, p0, Lcom/itextpdf/signatures/PdfSigner;->originalOS:Ljava/io/OutputStream;

    if-eqz v2, :cond_6

    .line 1088
    iget-object v2, p0, Lcom/itextpdf/signatures/PdfSigner;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1089
    iget-object v2, p0, Lcom/itextpdf/signatures/PdfSigner;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    .line 1090
    .local v2, "length":J
    const/16 v7, 0x2000

    new-array v7, v7, [B

    .line 1091
    .local v7, "buf":[B
    :goto_2
    cmp-long v8, v2, v5

    if-lez v8, :cond_6

    .line 1092
    iget-object v8, p0, Lcom/itextpdf/signatures/PdfSigner;->raf:Ljava/io/RandomAccessFile;

    array-length v9, v7

    int-to-long v9, v9

    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v9, v9

    invoke-virtual {v8, v7, v4, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v8

    .line 1093
    .local v8, "r":I
    if-ltz v8, :cond_5

    .line 1095
    iget-object v9, p0, Lcom/itextpdf/signatures/PdfSigner;->originalOS:Ljava/io/OutputStream;

    invoke-virtual {v9, v7, v4, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 1096
    int-to-long v9, v8

    sub-long/2addr v2, v9

    .line 1097
    .end local v8    # "r":I
    goto :goto_2

    .line 1094
    .restart local v8    # "r":I
    :cond_5
    new-instance v4, Ljava/io/EOFException;

    const-string/jumbo v5, "unexpected eof"

    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .end local p1    # "update":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1101
    .end local v0    # "bous":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "os":Lcom/itextpdf/kernel/pdf/PdfOutputStream;
    .end local v2    # "length":J
    .end local v7    # "buf":[B
    .end local v8    # "r":I
    .restart local p1    # "update":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->tempFile:Ljava/io/File;

    if-eqz v0, :cond_7

    .line 1102
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1104
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->originalOS:Ljava/io/OutputStream;

    if-eqz v0, :cond_7

    .line 1105
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1109
    :cond_7
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->originalOS:Ljava/io/OutputStream;

    if-eqz v0, :cond_8

    .line 1111
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 1112
    :catch_0
    move-exception v0

    .line 1116
    :cond_8
    :goto_4
    return-void

    .line 1083
    .restart local v0    # "bous":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "os":Lcom/itextpdf/kernel/pdf/PdfOutputStream;
    :cond_9
    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The update dictionary has less keys than required"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "update":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    throw v2

    .line 1062
    .end local v0    # "bous":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "os":Lcom/itextpdf/kernel/pdf/PdfOutputStream;
    .restart local p1    # "update":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_a
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Document must be preClosed."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    .end local p1    # "update":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1101
    .restart local p1    # "update":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSigner;->tempFile:Ljava/io/File;

    if-eqz v1, :cond_b

    .line 1102
    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSigner;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 1104
    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSigner;->originalOS:Ljava/io/OutputStream;

    if-eqz v1, :cond_b

    .line 1105
    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSigner;->tempFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1109
    :cond_b
    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSigner;->originalOS:Ljava/io/OutputStream;

    if-eqz v1, :cond_c

    .line 1111
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1113
    goto :goto_5

    .line 1112
    :catch_1
    move-exception v1

    .line 1115
    :cond_c
    :goto_5
    throw v0
.end method

.method protected documentContainsCertificationOrApprovalSignatures()Z
    .locals 11

    .line 1179
    const/4 v0, 0x0

    .line 1181
    .local v0, "containsCertificationOrApprovalSignature":Z
    const/4 v1, 0x0

    .line 1182
    .local v1, "urSignature":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    iget-object v2, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Perms:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    .line 1183
    .local v2, "catalogPerms":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v2, :cond_0

    .line 1184
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->UR3:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 1187
    :cond_0
    iget-object v3, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/itextpdf/forms/PdfAcroForm;->getAcroForm(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object v3

    .line 1188
    .local v3, "acroForm":Lcom/itextpdf/forms/PdfAcroForm;
    if-eqz v3, :cond_6

    .line 1189
    invoke-virtual {v3}, Lcom/itextpdf/forms/PdfAcroForm;->getFormFields()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1190
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/forms/fields/PdfFormField;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/forms/fields/PdfFormField;

    invoke-virtual {v6}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 1191
    .local v6, "fieldDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Sig:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->FT:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1192
    goto :goto_0

    .line 1193
    :cond_2
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v7

    .line 1194
    .local v7, "sigDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-nez v7, :cond_3

    .line 1195
    goto :goto_0

    .line 1196
    :cond_3
    new-instance v8, Lcom/itextpdf/signatures/PdfSignature;

    invoke-direct {v8, v7}, Lcom/itextpdf/signatures/PdfSignature;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 1197
    .local v8, "pdfSignature":Lcom/itextpdf/signatures/PdfSignature;
    invoke-virtual {v8}, Lcom/itextpdf/signatures/PdfSignature;->getContents()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v8}, Lcom/itextpdf/signatures/PdfSignature;->getByteRange()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v9

    if-nez v9, :cond_4

    .line 1198
    goto :goto_0

    .line 1201
    :cond_4
    invoke-virtual {v8}, Lcom/itextpdf/signatures/PdfSignature;->getType()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v9

    sget-object v10, Lcom/itextpdf/kernel/pdf/PdfName;->DocTimeStamp:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v9, v10}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    if-eq v7, v1, :cond_5

    .line 1202
    const/4 v0, 0x1

    .line 1203
    goto :goto_1

    .line 1205
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/forms/fields/PdfFormField;>;"
    .end local v6    # "fieldDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v7    # "sigDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v8    # "pdfSignature":Lcom/itextpdf/signatures/PdfSignature;
    :cond_5
    goto :goto_0

    .line 1207
    :cond_6
    :goto_1
    return v0
.end method

.method public getCertificationLevel()I
    .locals 1

    .line 360
    iget v0, p0, Lcom/itextpdf/signatures/PdfSigner;->certificationLevel:I

    return v0
.end method

.method public getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    return-object v0
.end method

.method public getFieldLockDict()Lcom/itextpdf/forms/PdfSigFieldLock;
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->fieldLock:Lcom/itextpdf/forms/PdfSigFieldLock;

    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public getNewSigFieldName()Ljava/lang/String;
    .locals 4

    .line 421
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/itextpdf/forms/PdfAcroForm;->getAcroForm(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object v0

    .line 422
    .local v0, "acroForm":Lcom/itextpdf/forms/PdfAcroForm;
    const-string v1, "Signature"

    .line 423
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x1

    .line 425
    .local v2, "step":I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/forms/PdfAcroForm;->getField(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 426
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 429
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected getRangeStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1044
    new-instance v0, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v0}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    .line 1045
    .local v0, "fac":Lcom/itextpdf/io/source/RandomAccessSourceFactory;
    new-instance v1, Lcom/itextpdf/io/source/RASInputStream;

    invoke-virtual {p0}, Lcom/itextpdf/signatures/PdfSigner;->getUnderlyingSource()Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v2

    iget-object v3, p0, Lcom/itextpdf/signatures/PdfSigner;->range:[J

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createRanged(Lcom/itextpdf/io/source/IRandomAccessSource;[J)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/io/source/RASInputStream;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    return-object v1
.end method

.method public getSignDate()Ljava/util/Calendar;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->signDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getSignatureAppearance()Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->appearance:Lcom/itextpdf/signatures/PdfSignatureAppearance;

    return-object v0
.end method

.method public getSignatureDictionary()Lcom/itextpdf/signatures/PdfSignature;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->cryptoDictionary:Lcom/itextpdf/signatures/PdfSignature;

    return-object v0
.end method

.method public getSignatureEvent()Lcom/itextpdf/signatures/PdfSigner$ISignatureEvent;
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->signatureEvent:Lcom/itextpdf/signatures/PdfSigner$ISignatureEvent;

    return-object v0
.end method

.method protected getUnderlyingSource()Lcom/itextpdf/io/source/IRandomAccessSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1125
    new-instance v0, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v0}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    .line 1126
    .local v0, "fac":Lcom/itextpdf/io/source/RandomAccessSourceFactory;
    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSigner;->raf:Ljava/io/RandomAccessFile;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSigner;->bout:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource([B)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource(Ljava/io/RandomAccessFile;)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method protected getWidgetPageNumber(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;)I
    .locals 5
    .param p1, "widget"    # Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    .line 1227
    const/4 v0, 0x0

    .line 1228
    .local v0, "pageNumber":I
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 1229
    .local v1, "pageDict":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v1, :cond_0

    .line 1230
    iget-object v2, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPageNumber(Lcom/itextpdf/kernel/pdf/PdfDictionary;)I

    move-result v0

    goto :goto_1

    .line 1232
    :cond_0
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v3

    if-gt v2, v3, :cond_2

    .line 1233
    iget-object v3, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v3

    .line 1234
    .local v3, "page":Lcom/itextpdf/kernel/pdf/PdfPage;
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfPage;->isFlushed()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1235
    invoke-virtual {v3, p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->containsAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1236
    move v0, v2

    .line 1237
    goto :goto_1

    .line 1232
    .end local v3    # "page":Lcom/itextpdf/kernel/pdf/PdfPage;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1242
    .end local v2    # "i":I
    :cond_2
    :goto_1
    return v0
.end method

.method protected getWidgetRectangle(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1
    .param p1, "widget"    # Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    .line 1217
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->getRectangle()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->toRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method protected initDocument(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/PdfWriter;Lcom/itextpdf/kernel/pdf/StampingProperties;)Lcom/itextpdf/kernel/pdf/PdfDocument;
    .locals 2
    .param p1, "reader"    # Lcom/itextpdf/kernel/pdf/PdfReader;
    .param p2, "writer"    # Lcom/itextpdf/kernel/pdf/PdfWriter;
    .param p3, "properties"    # Lcom/itextpdf/kernel/pdf/StampingProperties;

    .line 304
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfReader;->getPdfAConformanceLevel()Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    move-result-object v0

    .line 305
    .local v0, "conformanceLevel":Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;
    if-nez v0, :cond_0

    .line 306
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v1, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/PdfWriter;Lcom/itextpdf/kernel/pdf/StampingProperties;)V

    return-object v1

    .line 308
    :cond_0
    new-instance v1, Lcom/itextpdf/pdfa/PdfADocument;

    invoke-direct {v1, p1, p2, p3}, Lcom/itextpdf/pdfa/PdfADocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/PdfWriter;Lcom/itextpdf/kernel/pdf/StampingProperties;)V

    return-object v1
.end method

.method protected isPreClosed()Z
    .locals 1

    .line 856
    iget-boolean v0, p0, Lcom/itextpdf/signatures/PdfSigner;->preClosed:Z

    return v0
.end method

.method protected preClose(Ljava/util/Map;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 872
    .local p1, "exclusionSizes":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/kernel/pdf/PdfName;Ljava/lang/Integer;>;"
    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/itextpdf/signatures/PdfSigner;->preClosed:Z

    if-nez v0, :cond_11

    .line 875
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/itextpdf/signatures/PdfSigner;->preClosed:Z

    .line 876
    iget-object v2, v1, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-static {v2, v0}, Lcom/itextpdf/forms/PdfAcroForm;->getAcroForm(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object v2

    .line 877
    .local v2, "acroForm":Lcom/itextpdf/forms/PdfAcroForm;
    new-instance v3, Lcom/itextpdf/signatures/SignatureUtil;

    iget-object v4, v1, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v3, v4}, Lcom/itextpdf/signatures/SignatureUtil;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 878
    .local v3, "sgnUtil":Lcom/itextpdf/signatures/SignatureUtil;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/signatures/PdfSigner;->getFieldName()Ljava/lang/String;

    move-result-object v4

    .line 879
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lcom/itextpdf/signatures/SignatureUtil;->doesSignatureFieldExist(Ljava/lang/String;)Z

    move-result v5

    .line 880
    .local v5, "fieldExist":Z
    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Lcom/itextpdf/forms/PdfAcroForm;->setSignatureFlags(I)Lcom/itextpdf/forms/PdfAcroForm;

    .line 881
    const/4 v6, 0x0

    .line 883
    .local v6, "fieldLock":Lcom/itextpdf/forms/PdfSigFieldLock;
    iget-object v7, v1, Lcom/itextpdf/signatures/PdfSigner;->cryptoDictionary:Lcom/itextpdf/signatures/PdfSignature;

    if-eqz v7, :cond_10

    .line 887
    invoke-virtual {v7}, Lcom/itextpdf/signatures/PdfSignature;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-object v8, v1, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 889
    if-eqz v5, :cond_2

    .line 890
    iget-object v7, v1, Lcom/itextpdf/signatures/PdfSigner;->fieldName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/itextpdf/forms/PdfAcroForm;->getField(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/forms/fields/PdfSignatureFormField;

    .line 891
    .local v7, "sigField":Lcom/itextpdf/forms/fields/PdfSignatureFormField;
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v9, v1, Lcom/itextpdf/signatures/PdfSigner;->cryptoDictionary:Lcom/itextpdf/signatures/PdfSignature;

    invoke-virtual {v9}, Lcom/itextpdf/signatures/PdfSignature;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/itextpdf/forms/fields/PdfSignatureFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 893
    invoke-virtual {v7}, Lcom/itextpdf/forms/fields/PdfSignatureFormField;->getSigFieldLockDictionary()Lcom/itextpdf/forms/PdfSigFieldLock;

    move-result-object v6

    .line 895
    if-nez v6, :cond_0

    iget-object v8, v1, Lcom/itextpdf/signatures/PdfSigner;->fieldLock:Lcom/itextpdf/forms/PdfSigFieldLock;

    if-eqz v8, :cond_0

    .line 896
    invoke-virtual {v8}, Lcom/itextpdf/forms/PdfSigFieldLock;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-object v9, v1, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v8, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 897
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Lock:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v9, v1, Lcom/itextpdf/signatures/PdfSigner;->fieldLock:Lcom/itextpdf/forms/PdfSigFieldLock;

    invoke-virtual {v9}, Lcom/itextpdf/forms/PdfSigFieldLock;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/itextpdf/forms/fields/PdfSignatureFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 898
    iget-object v6, v1, Lcom/itextpdf/signatures/PdfSigner;->fieldLock:Lcom/itextpdf/forms/PdfSigFieldLock;

    .line 901
    :cond_0
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v9, v1, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    iget-object v10, v1, Lcom/itextpdf/signatures/PdfSigner;->appearance:Lcom/itextpdf/signatures/PdfSignatureAppearance;

    invoke-virtual {v10}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->getPageNumber()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/itextpdf/forms/fields/PdfSignatureFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 902
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v9, v1, Lcom/itextpdf/signatures/PdfSigner;->cryptoDictionary:Lcom/itextpdf/signatures/PdfSignature;

    invoke-virtual {v9}, Lcom/itextpdf/signatures/PdfSignature;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/itextpdf/forms/fields/PdfSignatureFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 903
    invoke-virtual {v7}, Lcom/itextpdf/forms/fields/PdfSignatureFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v8, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v8

    .line 904
    .local v8, "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    const/4 v9, 0x0

    .line 906
    .local v9, "flags":I
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfObject;->isNumber()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 907
    move-object v10, v8

    check-cast v10, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v9

    .line 910
    :cond_1
    or-int/lit16 v9, v9, 0x80

    .line 911
    sget-object v10, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v11, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v11, v9}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v7, v10, v11}, Lcom/itextpdf/forms/fields/PdfSignatureFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 912
    new-instance v10, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v10}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 913
    .local v10, "ap":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v11, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v12, v1, Lcom/itextpdf/signatures/PdfSigner;->appearance:Lcom/itextpdf/signatures/PdfSignatureAppearance;

    invoke-virtual {v12}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->getAppearance()Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 914
    sget-object v11, Lcom/itextpdf/kernel/pdf/PdfName;->AP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v11, v10}, Lcom/itextpdf/forms/fields/PdfSignatureFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 915
    invoke-virtual {v7}, Lcom/itextpdf/forms/fields/PdfSignatureFormField;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 916
    .end local v7    # "sigField":Lcom/itextpdf/forms/fields/PdfSignatureFormField;
    .end local v8    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v9    # "flags":I
    .end local v10    # "ap":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    goto/16 :goto_0

    .line 917
    :cond_2
    new-instance v7, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    iget-object v8, v1, Lcom/itextpdf/signatures/PdfSigner;->appearance:Lcom/itextpdf/signatures/PdfSignatureAppearance;

    invoke-virtual {v8}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->getPageRect()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 918
    .local v7, "widget":Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;
    const/16 v8, 0x84

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setFlags(I)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 920
    iget-object v8, v1, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-static {v8}, Lcom/itextpdf/forms/fields/PdfFormField;->createSignature(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/forms/fields/PdfSignatureFormField;

    move-result-object v8

    .line 921
    .local v8, "sigField":Lcom/itextpdf/forms/fields/PdfSignatureFormField;
    invoke-virtual {v8, v4}, Lcom/itextpdf/forms/fields/PdfSignatureFormField;->setFieldName(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 922
    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v10, v1, Lcom/itextpdf/signatures/PdfSigner;->cryptoDictionary:Lcom/itextpdf/signatures/PdfSignature;

    invoke-virtual {v10}, Lcom/itextpdf/signatures/PdfSignature;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/forms/fields/PdfSignatureFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 923
    invoke-virtual {v8, v7}, Lcom/itextpdf/forms/fields/PdfSignatureFormField;->addKid(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 925
    iget-object v9, v1, Lcom/itextpdf/signatures/PdfSigner;->fieldLock:Lcom/itextpdf/forms/PdfSigFieldLock;

    if-eqz v9, :cond_3

    .line 926
    invoke-virtual {v9}, Lcom/itextpdf/forms/PdfSigFieldLock;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-object v10, v1, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v9, v10}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 927
    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->Lock:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v10, v1, Lcom/itextpdf/signatures/PdfSigner;->fieldLock:Lcom/itextpdf/forms/PdfSigFieldLock;

    invoke-virtual {v10}, Lcom/itextpdf/forms/PdfSigFieldLock;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/forms/fields/PdfSignatureFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 928
    iget-object v6, v1, Lcom/itextpdf/signatures/PdfSigner;->fieldLock:Lcom/itextpdf/forms/PdfSigFieldLock;

    .line 931
    :cond_3
    iget-object v9, v1, Lcom/itextpdf/signatures/PdfSigner;->appearance:Lcom/itextpdf/signatures/PdfSignatureAppearance;

    invoke-virtual {v9}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->getPageNumber()I

    move-result v9

    .line 932
    .local v9, "pagen":I
    iget-object v10, v1, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v10, v9}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setPage(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 933
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->getAppearanceDictionary()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v10

    .line 935
    .restart local v10    # "ap":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-nez v10, :cond_4

    .line 936
    new-instance v11, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v11}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    move-object v10, v11

    .line 937
    sget-object v11, Lcom/itextpdf/kernel/pdf/PdfName;->AP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v11, v10}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 940
    :cond_4
    sget-object v11, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v12, v1, Lcom/itextpdf/signatures/PdfSigner;->appearance:Lcom/itextpdf/signatures/PdfSignatureAppearance;

    invoke-virtual {v12}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->getAppearance()Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 941
    iget-object v11, v1, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v11, v9}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v11

    invoke-virtual {v2, v8, v11}, Lcom/itextpdf/forms/PdfAcroForm;->addField(Lcom/itextpdf/forms/fields/PdfFormField;Lcom/itextpdf/kernel/pdf/PdfPage;)V

    .line 943
    invoke-virtual {v2}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isIndirect()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 944
    invoke-virtual {v2}, Lcom/itextpdf/forms/PdfAcroForm;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    goto :goto_0

    .line 948
    :cond_5
    iget-object v11, v1, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v11

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 952
    .end local v7    # "widget":Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;
    .end local v8    # "sigField":Lcom/itextpdf/forms/fields/PdfSignatureFormField;
    .end local v9    # "pagen":I
    .end local v10    # "ap":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :goto_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v1, Lcom/itextpdf/signatures/PdfSigner;->exclusionLocations:Ljava/util/Map;

    .line 954
    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfLiteral;

    const/16 v8, 0x50

    invoke-direct {v7, v8}, Lcom/itextpdf/kernel/pdf/PdfLiteral;-><init>(I)V

    .line 955
    .local v7, "lit":Lcom/itextpdf/kernel/pdf/PdfLiteral;
    iget-object v8, v1, Lcom/itextpdf/signatures/PdfSigner;->exclusionLocations:Ljava/util/Map;

    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->ByteRange:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    iget-object v8, v1, Lcom/itextpdf/signatures/PdfSigner;->cryptoDictionary:Lcom/itextpdf/signatures/PdfSignature;

    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->ByteRange:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v8, v9, v7}, Lcom/itextpdf/signatures/PdfSignature;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/signatures/PdfSignature;

    .line 957
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 958
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/itextpdf/kernel/pdf/PdfName;Ljava/lang/Integer;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 959
    .local v10, "key":Lcom/itextpdf/kernel/pdf/PdfName;
    new-instance v11, Lcom/itextpdf/kernel/pdf/PdfLiteral;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {v11, v12}, Lcom/itextpdf/kernel/pdf/PdfLiteral;-><init>(I)V

    move-object v7, v11

    .line 960
    iget-object v11, v1, Lcom/itextpdf/signatures/PdfSigner;->exclusionLocations:Ljava/util/Map;

    invoke-interface {v11, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    iget-object v11, v1, Lcom/itextpdf/signatures/PdfSigner;->cryptoDictionary:Lcom/itextpdf/signatures/PdfSignature;

    invoke-virtual {v11, v10, v7}, Lcom/itextpdf/signatures/PdfSignature;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/signatures/PdfSignature;

    .line 962
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/itextpdf/kernel/pdf/PdfName;Ljava/lang/Integer;>;"
    .end local v10    # "key":Lcom/itextpdf/kernel/pdf/PdfName;
    goto :goto_1

    .line 963
    :cond_6
    iget v8, v1, Lcom/itextpdf/signatures/PdfSigner;->certificationLevel:I

    if-lez v8, :cond_7

    .line 964
    iget-object v8, v1, Lcom/itextpdf/signatures/PdfSigner;->cryptoDictionary:Lcom/itextpdf/signatures/PdfSignature;

    invoke-virtual {v1, v8}, Lcom/itextpdf/signatures/PdfSigner;->addDocMDP(Lcom/itextpdf/signatures/PdfSignature;)V

    .line 966
    :cond_7
    if-eqz v6, :cond_8

    .line 967
    iget-object v8, v1, Lcom/itextpdf/signatures/PdfSigner;->cryptoDictionary:Lcom/itextpdf/signatures/PdfSignature;

    invoke-virtual {v1, v8, v6}, Lcom/itextpdf/signatures/PdfSigner;->addFieldMDP(Lcom/itextpdf/signatures/PdfSignature;Lcom/itextpdf/forms/PdfSigFieldLock;)V

    .line 969
    :cond_8
    iget-object v8, v1, Lcom/itextpdf/signatures/PdfSigner;->signatureEvent:Lcom/itextpdf/signatures/PdfSigner$ISignatureEvent;

    if-eqz v8, :cond_9

    .line 970
    iget-object v9, v1, Lcom/itextpdf/signatures/PdfSigner;->cryptoDictionary:Lcom/itextpdf/signatures/PdfSignature;

    invoke-interface {v8, v9}, Lcom/itextpdf/signatures/PdfSigner$ISignatureEvent;->getSignatureDictionary(Lcom/itextpdf/signatures/PdfSignature;)V

    .line 973
    :cond_9
    iget v8, v1, Lcom/itextpdf/signatures/PdfSigner;->certificationLevel:I

    if-lez v8, :cond_a

    .line 975
    new-instance v8, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 976
    .local v8, "docmdp":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->DocMDP:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v10, v1, Lcom/itextpdf/signatures/PdfSigner;->cryptoDictionary:Lcom/itextpdf/signatures/PdfSignature;

    invoke-virtual {v10}, Lcom/itextpdf/signatures/PdfSignature;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 977
    iget-object v9, v1, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v9

    sget-object v10, Lcom/itextpdf/kernel/pdf/PdfName;->Perms:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v9, v10, v8}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfCatalog;

    .line 978
    iget-object v9, v1, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 980
    .end local v8    # "docmdp":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_a
    iget-object v8, v1, Lcom/itextpdf/signatures/PdfSigner;->cryptoDictionary:Lcom/itextpdf/signatures/PdfSignature;

    invoke-virtual {v8}, Lcom/itextpdf/signatures/PdfSignature;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->flush(Z)V

    .line 981
    iget-object v8, v1, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V

    .line 983
    iget-object v8, v1, Lcom/itextpdf/signatures/PdfSigner;->exclusionLocations:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    new-array v8, v8, [J

    iput-object v8, v1, Lcom/itextpdf/signatures/PdfSigner;->range:[J

    .line 984
    iget-object v8, v1, Lcom/itextpdf/signatures/PdfSigner;->exclusionLocations:Ljava/util/Map;

    sget-object v10, Lcom/itextpdf/kernel/pdf/PdfName;->ByteRange:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/PdfLiteral;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfLiteral;->getPosition()J

    move-result-wide v10

    .line 985
    .local v10, "byteRangePosition":J
    iget-object v8, v1, Lcom/itextpdf/signatures/PdfSigner;->exclusionLocations:Ljava/util/Map;

    sget-object v12, Lcom/itextpdf/kernel/pdf/PdfName;->ByteRange:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v8, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    const/4 v8, 0x1

    .line 987
    .local v8, "idx":I
    iget-object v12, v1, Lcom/itextpdf/signatures/PdfSigner;->exclusionLocations:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/itextpdf/kernel/pdf/PdfLiteral;

    .line 988
    .local v13, "lit1":Lcom/itextpdf/kernel/pdf/PdfLiteral;
    invoke-virtual {v13}, Lcom/itextpdf/kernel/pdf/PdfLiteral;->getPosition()J

    move-result-wide v14

    .line 989
    .local v14, "n":J
    iget-object v9, v1, Lcom/itextpdf/signatures/PdfSigner;->range:[J

    add-int/lit8 v16, v8, 0x1

    .end local v8    # "idx":I
    .local v16, "idx":I
    aput-wide v14, v9, v8

    .line 990
    add-int/lit8 v8, v16, 0x1

    .end local v16    # "idx":I
    .restart local v8    # "idx":I
    invoke-virtual {v13}, Lcom/itextpdf/kernel/pdf/PdfLiteral;->getBytesCount()I

    move-result v0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    .end local v2    # "acroForm":Lcom/itextpdf/forms/PdfAcroForm;
    .end local v3    # "sgnUtil":Lcom/itextpdf/signatures/SignatureUtil;
    .local v18, "acroForm":Lcom/itextpdf/forms/PdfAcroForm;
    .local v19, "sgnUtil":Lcom/itextpdf/signatures/SignatureUtil;
    int-to-long v2, v0

    add-long/2addr v2, v14

    aput-wide v2, v9, v16

    .line 991
    .end local v13    # "lit1":Lcom/itextpdf/kernel/pdf/PdfLiteral;
    .end local v14    # "n":J
    move-object/from16 v2, v18

    move-object/from16 v3, v19

    const/4 v0, 0x1

    const/4 v9, 0x0

    goto :goto_2

    .line 992
    .end local v18    # "acroForm":Lcom/itextpdf/forms/PdfAcroForm;
    .end local v19    # "sgnUtil":Lcom/itextpdf/signatures/SignatureUtil;
    .restart local v2    # "acroForm":Lcom/itextpdf/forms/PdfAcroForm;
    .restart local v3    # "sgnUtil":Lcom/itextpdf/signatures/SignatureUtil;
    :cond_b
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    .end local v2    # "acroForm":Lcom/itextpdf/forms/PdfAcroForm;
    .end local v3    # "sgnUtil":Lcom/itextpdf/signatures/SignatureUtil;
    .restart local v18    # "acroForm":Lcom/itextpdf/forms/PdfAcroForm;
    .restart local v19    # "sgnUtil":Lcom/itextpdf/signatures/SignatureUtil;
    iget-object v0, v1, Lcom/itextpdf/signatures/PdfSigner;->range:[J

    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v0, v3, v2}, Ljava/util/Arrays;->sort([JII)V

    .line 993
    const/4 v0, 0x3

    .local v0, "k":I
    :goto_3
    iget-object v2, v1, Lcom/itextpdf/signatures/PdfSigner;->range:[J

    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    if-ge v0, v3, :cond_c

    .line 994
    aget-wide v12, v2, v0

    add-int/lit8 v3, v0, -0x1

    aget-wide v14, v2, v3

    sub-long/2addr v12, v14

    aput-wide v12, v2, v0

    .line 993
    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    .line 996
    .end local v0    # "k":I
    :cond_c
    iget-object v0, v1, Lcom/itextpdf/signatures/PdfSigner;->tempFile:Ljava/io/File;

    const/16 v2, 0x20

    const/16 v3, 0x5d

    const/16 v9, 0x5b

    if-nez v0, :cond_e

    .line 997
    iget-object v0, v1, Lcom/itextpdf/signatures/PdfSigner;->temporaryOS:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v1, Lcom/itextpdf/signatures/PdfSigner;->bout:[B

    .line 998
    iget-object v12, v1, Lcom/itextpdf/signatures/PdfSigner;->range:[J

    array-length v13, v12

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    array-length v0, v0

    int-to-long v14, v0

    array-length v0, v12

    add-int/lit8 v0, v0, -0x2

    aget-wide v16, v12, v0

    sub-long v14, v14, v16

    aput-wide v14, v12, v13

    .line 999
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1000
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v12, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-direct {v12, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1001
    .local v12, "os":Lcom/itextpdf/kernel/pdf/PdfOutputStream;
    invoke-virtual {v12, v9}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(I)V

    .line 1002
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_4
    iget-object v13, v1, Lcom/itextpdf/signatures/PdfSigner;->range:[J

    array-length v14, v13

    if-ge v9, v14, :cond_d

    .line 1003
    aget-wide v13, v13, v9

    invoke-virtual {v12, v13, v14}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeLong(J)Ljava/io/OutputStream;

    move-result-object v13

    check-cast v13, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v13, v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(I)V

    .line 1002
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1005
    .end local v9    # "k":I
    :cond_d
    invoke-virtual {v12, v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(I)V

    .line 1006
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iget-object v3, v1, Lcom/itextpdf/signatures/PdfSigner;->bout:[B

    long-to-int v9, v10

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v2, v14, v3, v9, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1007
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "os":Lcom/itextpdf/kernel/pdf/PdfOutputStream;
    goto :goto_6

    .line 1009
    :cond_e
    :try_start_0
    invoke-static {v0}, Lcom/itextpdf/io/util/FileUtil;->getRandomAccessFile(Ljava/io/File;)Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, v1, Lcom/itextpdf/signatures/PdfSigner;->raf:Ljava/io/RandomAccessFile;

    .line 1010
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    .line 1011
    .local v12, "len":J
    iget-object v0, v1, Lcom/itextpdf/signatures/PdfSigner;->range:[J

    array-length v14, v0

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    array-length v15, v0

    add-int/lit8 v15, v15, -0x2

    aget-wide v16, v0, v15

    sub-long v16, v12, v16

    aput-wide v16, v0, v14

    .line 1012
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1013
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v14, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-direct {v14, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1014
    .local v14, "os":Lcom/itextpdf/kernel/pdf/PdfOutputStream;
    invoke-virtual {v14, v9}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(I)V

    .line 1015
    const/4 v9, 0x0

    .restart local v9    # "k":I
    :goto_5
    iget-object v15, v1, Lcom/itextpdf/signatures/PdfSigner;->range:[J

    array-length v3, v15

    if-ge v9, v3, :cond_f

    .line 1016
    aget-wide v2, v15, v9

    invoke-virtual {v14, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeLong(J)Ljava/io/OutputStream;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(I)V

    .line 1015
    add-int/lit8 v9, v9, 0x1

    move v2, v3

    const/16 v3, 0x5d

    goto :goto_5

    .line 1018
    .end local v9    # "k":I
    :cond_f
    const/16 v2, 0x5d

    invoke-virtual {v14, v2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(I)V

    .line 1019
    iget-object v2, v1, Lcom/itextpdf/signatures/PdfSigner;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1020
    iget-object v2, v1, Lcom/itextpdf/signatures/PdfSigner;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    const/4 v15, 0x0

    invoke-virtual {v2, v3, v15, v9}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1031
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "len":J
    .end local v14    # "os":Lcom/itextpdf/kernel/pdf/PdfOutputStream;
    nop

    .line 1033
    :goto_6
    return-void

    .line 1021
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1023
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v0, v1, Lcom/itextpdf/signatures/PdfSigner;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1025
    goto :goto_7

    .line 1024
    :catch_1
    move-exception v0

    .line 1027
    :goto_7
    :try_start_2
    iget-object v0, v1, Lcom/itextpdf/signatures/PdfSigner;->tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1029
    goto :goto_8

    .line 1028
    :catch_2
    move-exception v0

    .line 1030
    :goto_8
    throw v2

    .line 884
    .end local v7    # "lit":Lcom/itextpdf/kernel/pdf/PdfLiteral;
    .end local v8    # "idx":I
    .end local v10    # "byteRangePosition":J
    .end local v18    # "acroForm":Lcom/itextpdf/forms/PdfAcroForm;
    .end local v19    # "sgnUtil":Lcom/itextpdf/signatures/SignatureUtil;
    .local v2, "acroForm":Lcom/itextpdf/forms/PdfAcroForm;
    .restart local v3    # "sgnUtil":Lcom/itextpdf/signatures/SignatureUtil;
    :cond_10
    move-object/from16 v18, v2

    .end local v2    # "acroForm":Lcom/itextpdf/forms/PdfAcroForm;
    .restart local v18    # "acroForm":Lcom/itextpdf/forms/PdfAcroForm;
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "No crypto dictionary defined."

    invoke-direct {v0, v2}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 873
    .end local v3    # "sgnUtil":Lcom/itextpdf/signatures/SignatureUtil;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "fieldExist":Z
    .end local v6    # "fieldLock":Lcom/itextpdf/forms/PdfSigFieldLock;
    .end local v18    # "acroForm":Lcom/itextpdf/forms/PdfAcroForm;
    :cond_11
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "Document has been already pre closed."

    invoke-direct {v0, v2}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected processCrl(Ljava/security/cert/Certificate;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 5
    .param p1, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/signatures/ICrlClient;",
            ">;)",
            "Ljava/util/Collection<",
            "[B>;"
        }
    .end annotation

    .line 829
    .local p2, "crlList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/itextpdf/signatures/ICrlClient;>;"
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 830
    return-object v0

    .line 831
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 832
    .local v1, "crlBytes":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/signatures/ICrlClient;

    .line 833
    .local v3, "cc":Lcom/itextpdf/signatures/ICrlClient;
    if-nez v3, :cond_1

    .line 834
    goto :goto_0

    .line 835
    :cond_1
    move-object v4, p1

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-interface {v3, v4, v0}, Lcom/itextpdf/signatures/ICrlClient;->getEncoded(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v4

    .line 836
    .local v4, "b":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    if-nez v4, :cond_2

    .line 837
    goto :goto_0

    .line 838
    :cond_2
    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 839
    .end local v3    # "cc":Lcom/itextpdf/signatures/ICrlClient;
    .end local v4    # "b":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    goto :goto_0

    .line 840
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 841
    return-object v0

    .line 843
    :cond_4
    return-object v1
.end method

.method public setCertificationLevel(I)V
    .locals 0
    .param p1, "certificationLevel"    # I

    .line 375
    iput p1, p0, Lcom/itextpdf/signatures/PdfSigner;->certificationLevel:I

    .line 376
    return-void
.end method

.method protected setDocument(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 0
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 486
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 487
    return-void
.end method

.method public setFieldLockDict(Lcom/itextpdf/forms/PdfSigFieldLock;)V
    .locals 0
    .param p1, "fieldLock"    # Lcom/itextpdf/forms/PdfSigFieldLock;

    .line 516
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->fieldLock:Lcom/itextpdf/forms/PdfSigFieldLock;

    .line 517
    return-void
.end method

.method public setFieldName(Ljava/lang/String;)V
    .locals 6
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 439
    if-eqz p1, :cond_4

    .line 440
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_3

    .line 444
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/itextpdf/forms/PdfAcroForm;->getAcroForm(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object v0

    .line 446
    .local v0, "acroForm":Lcom/itextpdf/forms/PdfAcroForm;
    invoke-virtual {v0, p1}, Lcom/itextpdf/forms/PdfAcroForm;->getField(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 447
    invoke-virtual {v0, p1}, Lcom/itextpdf/forms/PdfAcroForm;->getField(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v1

    .line 449
    .local v1, "field":Lcom/itextpdf/forms/fields/PdfFormField;
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Sig:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1}, Lcom/itextpdf/forms/fields/PdfFormField;->getFormType()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 453
    invoke-virtual {v1}, Lcom/itextpdf/forms/fields/PdfFormField;->getValue()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    if-nez v2, :cond_0

    .line 457
    iget-object v2, p0, Lcom/itextpdf/signatures/PdfSigner;->appearance:Lcom/itextpdf/signatures/PdfSignatureAppearance;

    invoke-virtual {v2, p1}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->setFieldName(Ljava/lang/String;)Lcom/itextpdf/signatures/PdfSignatureAppearance;

    .line 459
    invoke-virtual {v1}, Lcom/itextpdf/forms/fields/PdfFormField;->getWidgets()Ljava/util/List;

    move-result-object v2

    .line 460
    .local v2, "widgets":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 461
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    .line 462
    .local v3, "widget":Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;
    iget-object v4, p0, Lcom/itextpdf/signatures/PdfSigner;->appearance:Lcom/itextpdf/signatures/PdfSignatureAppearance;

    invoke-virtual {p0, v3}, Lcom/itextpdf/signatures/PdfSigner;->getWidgetRectangle(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->setPageRect(Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/signatures/PdfSignatureAppearance;

    .line 463
    iget-object v4, p0, Lcom/itextpdf/signatures/PdfSigner;->appearance:Lcom/itextpdf/signatures/PdfSignatureAppearance;

    invoke-virtual {p0, v3}, Lcom/itextpdf/signatures/PdfSigner;->getWidgetPageNumber(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->setPageNumber(I)Lcom/itextpdf/signatures/PdfSignatureAppearance;

    goto :goto_0

    .line 454
    .end local v2    # "widgets":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;>;"
    .end local v3    # "widget":Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Field has been already signed."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 450
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Field type is not a signature field type."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 467
    .end local v1    # "field":Lcom/itextpdf/forms/fields/PdfFormField;
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->fieldName:Ljava/lang/String;

    goto :goto_1

    .line 441
    .end local v0    # "acroForm":Lcom/itextpdf/forms/PdfAcroForm;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field names cannot contain a dot."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :cond_4
    :goto_1
    return-void
.end method

.method public setOriginalOutputStream(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "originalOS"    # Ljava/io/OutputStream;

    .line 495
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->originalOS:Ljava/io/OutputStream;

    .line 496
    return-void
.end method

.method public setSignDate(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "signDate"    # Ljava/util/Calendar;

    .line 327
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->signDate:Ljava/util/Calendar;

    .line 328
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->appearance:Lcom/itextpdf/signatures/PdfSignatureAppearance;

    invoke-virtual {v0, p1}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->setSignDate(Ljava/util/Calendar;)Lcom/itextpdf/signatures/PdfSignatureAppearance;

    .line 329
    return-void
.end method

.method public setSignatureEvent(Lcom/itextpdf/signatures/PdfSigner$ISignatureEvent;)V
    .locals 0
    .param p1, "signatureEvent"    # Lcom/itextpdf/signatures/PdfSigner$ISignatureEvent;

    .line 412
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->signatureEvent:Lcom/itextpdf/signatures/PdfSigner$ISignatureEvent;

    .line 413
    return-void
.end method

.method public signDetached(Lcom/itextpdf/signatures/IExternalDigest;Lcom/itextpdf/signatures/IExternalSignature;[Ljava/security/cert/Certificate;Ljava/util/Collection;Lcom/itextpdf/signatures/IOcspClient;Lcom/itextpdf/signatures/ITSAClient;ILcom/itextpdf/signatures/PdfSigner$CryptoStandard;)V
    .locals 10
    .param p1, "externalDigest"    # Lcom/itextpdf/signatures/IExternalDigest;
    .param p2, "externalSignature"    # Lcom/itextpdf/signatures/IExternalSignature;
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .param p5, "ocspClient"    # Lcom/itextpdf/signatures/IOcspClient;
    .param p6, "tsaClient"    # Lcom/itextpdf/signatures/ITSAClient;
    .param p7, "estimatedSize"    # I
    .param p8, "sigtype"    # Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/signatures/IExternalDigest;",
            "Lcom/itextpdf/signatures/IExternalSignature;",
            "[",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/signatures/ICrlClient;",
            ">;",
            "Lcom/itextpdf/signatures/IOcspClient;",
            "Lcom/itextpdf/signatures/ITSAClient;",
            "I",
            "Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 538
    .local p4, "crlList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/itextpdf/signatures/ICrlClient;>;"
    const/4 v9, 0x0

    move-object v0, v9

    check-cast v0, Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/itextpdf/signatures/PdfSigner;->signDetached(Lcom/itextpdf/signatures/IExternalDigest;Lcom/itextpdf/signatures/IExternalSignature;[Ljava/security/cert/Certificate;Ljava/util/Collection;Lcom/itextpdf/signatures/IOcspClient;Lcom/itextpdf/signatures/ITSAClient;ILcom/itextpdf/signatures/PdfSigner$CryptoStandard;Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;)V

    .line 539
    return-void
.end method

.method public signDetached(Lcom/itextpdf/signatures/IExternalDigest;Lcom/itextpdf/signatures/IExternalSignature;[Ljava/security/cert/Certificate;Ljava/util/Collection;Lcom/itextpdf/signatures/IOcspClient;Lcom/itextpdf/signatures/ITSAClient;ILcom/itextpdf/signatures/PdfSigner$CryptoStandard;Lcom/itextpdf/signatures/SignaturePolicyInfo;)V
    .locals 10
    .param p1, "externalDigest"    # Lcom/itextpdf/signatures/IExternalDigest;
    .param p2, "externalSignature"    # Lcom/itextpdf/signatures/IExternalSignature;
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .param p5, "ocspClient"    # Lcom/itextpdf/signatures/IOcspClient;
    .param p6, "tsaClient"    # Lcom/itextpdf/signatures/ITSAClient;
    .param p7, "estimatedSize"    # I
    .param p8, "sigtype"    # Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;
    .param p9, "signaturePolicy"    # Lcom/itextpdf/signatures/SignaturePolicyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/signatures/IExternalDigest;",
            "Lcom/itextpdf/signatures/IExternalSignature;",
            "[",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/signatures/ICrlClient;",
            ">;",
            "Lcom/itextpdf/signatures/IOcspClient;",
            "Lcom/itextpdf/signatures/ITSAClient;",
            "I",
            "Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;",
            "Lcom/itextpdf/signatures/SignaturePolicyInfo;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 561
    .local p4, "crlList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/itextpdf/signatures/ICrlClient;>;"
    invoke-virtual/range {p9 .. p9}, Lcom/itextpdf/signatures/SignaturePolicyInfo;->toSignaturePolicyIdentifier()Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/itextpdf/signatures/PdfSigner;->signDetached(Lcom/itextpdf/signatures/IExternalDigest;Lcom/itextpdf/signatures/IExternalSignature;[Ljava/security/cert/Certificate;Ljava/util/Collection;Lcom/itextpdf/signatures/IOcspClient;Lcom/itextpdf/signatures/ITSAClient;ILcom/itextpdf/signatures/PdfSigner$CryptoStandard;Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;)V

    .line 562
    return-void
.end method

.method public signDetached(Lcom/itextpdf/signatures/IExternalDigest;Lcom/itextpdf/signatures/IExternalSignature;[Ljava/security/cert/Certificate;Ljava/util/Collection;Lcom/itextpdf/signatures/IOcspClient;Lcom/itextpdf/signatures/ITSAClient;ILcom/itextpdf/signatures/PdfSigner$CryptoStandard;Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;)V
    .locals 25
    .param p1, "externalDigest"    # Lcom/itextpdf/signatures/IExternalDigest;
    .param p2, "externalSignature"    # Lcom/itextpdf/signatures/IExternalSignature;
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .param p5, "ocspClient"    # Lcom/itextpdf/signatures/IOcspClient;
    .param p6, "tsaClient"    # Lcom/itextpdf/signatures/ITSAClient;
    .param p7, "estimatedSize"    # I
    .param p8, "sigtype"    # Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;
    .param p9, "signaturePolicy"    # Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/signatures/IExternalDigest;",
            "Lcom/itextpdf/signatures/IExternalSignature;",
            "[",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/signatures/ICrlClient;",
            ">;",
            "Lcom/itextpdf/signatures/IOcspClient;",
            "Lcom/itextpdf/signatures/ITSAClient;",
            "I",
            "Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;",
            "Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 584
    .local p4, "crlList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/itextpdf/signatures/ICrlClient;>;"
    move-object/from16 v0, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    iget-boolean v1, v0, Lcom/itextpdf/signatures/PdfSigner;->closed:Z

    if-nez v1, :cond_e

    .line 588
    iget v1, v0, Lcom/itextpdf/signatures/PdfSigner;->certificationLevel:I

    if-lez v1, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/signatures/PdfSigner;->isDocumentPdf2()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 589
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/signatures/PdfSigner;->documentContainsCertificationOrApprovalSignatures()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 590
    :cond_0
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "Certification signature creation failed. Document shall not contain any certification or approval signatures before signing with certification signature."

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 594
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 595
    .local v1, "crlBytes":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    const/4 v2, 0x0

    move-object v12, v1

    move v13, v2

    .line 596
    .end local v1    # "crlBytes":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    .local v12, "crlBytes":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    .local v13, "i":I
    :goto_1
    if-nez v12, :cond_2

    array-length v1, v8

    if-ge v13, v1, :cond_2

    .line 597
    add-int/lit8 v2, v13, 0x1

    .end local v13    # "i":I
    .local v2, "i":I
    aget-object v1, v8, v13

    move-object/from16 v14, p4

    invoke-virtual {v0, v1, v14}, Lcom/itextpdf/signatures/PdfSigner;->processCrl(Ljava/security/cert/Certificate;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v12

    move v13, v2

    goto :goto_1

    .line 596
    .end local v2    # "i":I
    .restart local v13    # "i":I
    :cond_2
    move-object/from16 v14, p4

    .line 598
    if-nez p7, :cond_6

    .line 599
    const/16 v1, 0x2000

    .line 600
    .end local p7    # "estimatedSize":I
    .local v1, "estimatedSize":I
    if-eqz v12, :cond_3

    .line 601
    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 602
    .local v3, "element":[B
    array-length v4, v3

    add-int/lit8 v4, v4, 0xa

    add-int/2addr v1, v4

    .line 603
    .end local v3    # "element":[B
    goto :goto_2

    .line 605
    :cond_3
    if-eqz v9, :cond_4

    .line 606
    add-int/lit16 v1, v1, 0x1060

    .line 607
    :cond_4
    if-eqz p6, :cond_5

    .line 608
    add-int/lit16 v1, v1, 0x1060

    move v15, v1

    goto :goto_3

    .line 607
    :cond_5
    move v15, v1

    goto :goto_3

    .line 598
    .end local v1    # "estimatedSize":I
    .restart local p7    # "estimatedSize":I
    :cond_6
    move/from16 v15, p7

    .line 610
    .end local p7    # "estimatedSize":I
    .local v15, "estimatedSize":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/signatures/PdfSigner;->getSignatureAppearance()Lcom/itextpdf/signatures/PdfSignatureAppearance;

    move-result-object v7

    .line 611
    .local v7, "appearance":Lcom/itextpdf/signatures/PdfSignatureAppearance;
    const/4 v6, 0x0

    aget-object v1, v8, v6

    invoke-virtual {v7, v1}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->setCertificate(Ljava/security/cert/Certificate;)Lcom/itextpdf/signatures/PdfSignatureAppearance;

    .line 612
    sget-object v1, Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;->CADES:Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;

    if-ne v10, v1, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/signatures/PdfSigner;->isDocumentPdf2()Z

    move-result v1

    if-nez v1, :cond_7

    .line 613
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;->ESIC_1_7_EXTENSIONLEVEL2:Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;

    invoke-virtual {v0, v1}, Lcom/itextpdf/signatures/PdfSigner;->addDeveloperExtension(Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;)V

    .line 615
    :cond_7
    invoke-interface/range {p2 .. p2}, Lcom/itextpdf/signatures/IExternalSignature;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v5

    .line 616
    .local v5, "hashAlgorithm":Ljava/lang/String;
    new-instance v1, Lcom/itextpdf/signatures/PdfSignature;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Adobe_PPKLite:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;->CADES:Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;

    if-ne v10, v3, :cond_8

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->ETSI_CAdES_DETACHED:Lcom/itextpdf/kernel/pdf/PdfName;

    goto :goto_4

    :cond_8
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Adbe_pkcs7_detached:Lcom/itextpdf/kernel/pdf/PdfName;

    :goto_4
    invoke-direct {v1, v2, v3}, Lcom/itextpdf/signatures/PdfSignature;-><init>(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)V

    move-object v4, v1

    .line 617
    .local v4, "dic":Lcom/itextpdf/signatures/PdfSignature;
    invoke-virtual {v7}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/itextpdf/signatures/PdfSignature;->setReason(Ljava/lang/String;)V

    .line 618
    invoke-virtual {v7}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/itextpdf/signatures/PdfSignature;->setLocation(Ljava/lang/String;)V

    .line 619
    invoke-virtual {v7}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->getSignatureCreator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/itextpdf/signatures/PdfSignature;->setSignatureCreator(Ljava/lang/String;)V

    .line 620
    invoke-virtual {v7}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->getContact()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/itextpdf/signatures/PdfSignature;->setContact(Ljava/lang/String;)V

    .line 621
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDate;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/signatures/PdfSigner;->getSignDate()Ljava/util/Calendar;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDate;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {v4, v1}, Lcom/itextpdf/signatures/PdfSignature;->setDate(Lcom/itextpdf/kernel/pdf/PdfDate;)V

    .line 622
    iput-object v4, v0, Lcom/itextpdf/signatures/PdfSigner;->cryptoDictionary:Lcom/itextpdf/signatures/PdfSignature;

    .line 623
    invoke-direct {v0, v5}, Lcom/itextpdf/signatures/PdfSigner;->getHashAlgorithmNameInCompatibleForPdfForm(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    iput-object v1, v0, Lcom/itextpdf/signatures/PdfSigner;->digestMethod:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 625
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v3, v1

    .line 626
    .local v3, "exc":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/kernel/pdf/PdfName;Ljava/lang/Integer;>;"
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Contents:Lcom/itextpdf/kernel/pdf/PdfName;

    mul-int/lit8 v2, v15, 0x2

    add-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    invoke-virtual {v0, v3}, Lcom/itextpdf/signatures/PdfSigner;->preClose(Ljava/util/Map;)V

    .line 629
    new-instance v16, Lcom/itextpdf/signatures/PdfPKCS7;

    const/4 v2, 0x0

    move-object v1, v2

    check-cast v1, Ljava/security/PrivateKey;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v1, v16

    move-object/from16 v19, v3

    .end local v3    # "exc":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/kernel/pdf/PdfName;Ljava/lang/Integer;>;"
    .local v19, "exc":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/kernel/pdf/PdfName;Ljava/lang/Integer;>;"
    move-object/from16 v3, p3

    move-object/from16 v20, v4

    .end local v4    # "dic":Lcom/itextpdf/signatures/PdfSignature;
    .local v20, "dic":Lcom/itextpdf/signatures/PdfSignature;
    move-object v4, v5

    move-object/from16 v21, v5

    .end local v5    # "hashAlgorithm":Ljava/lang/String;
    .local v21, "hashAlgorithm":Ljava/lang/String;
    move-object/from16 v5, v17

    move-object/from16 v6, p1

    move-object/from16 v17, v7

    .end local v7    # "appearance":Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .local v17, "appearance":Lcom/itextpdf/signatures/PdfSignatureAppearance;
    move/from16 v7, v18

    invoke-direct/range {v1 .. v7}, Lcom/itextpdf/signatures/PdfPKCS7;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/signatures/IExternalDigest;Z)V

    move-object/from16 v7, v16

    .line 630
    .local v7, "sgn":Lcom/itextpdf/signatures/PdfPKCS7;
    if-eqz v11, :cond_9

    .line 631
    invoke-virtual {v7, v11}, Lcom/itextpdf/signatures/PdfPKCS7;->setSignaturePolicy(Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;)V

    .line 633
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/signatures/PdfSigner;->getRangeStream()Ljava/io/InputStream;

    move-result-object v6

    .line 634
    .local v6, "data":Ljava/io/InputStream;
    move-object/from16 v5, p1

    move-object/from16 v4, v21

    .end local v21    # "hashAlgorithm":Ljava/lang/String;
    .local v4, "hashAlgorithm":Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/itextpdf/signatures/SignUtils;->getMessageDigest(Ljava/lang/String;Lcom/itextpdf/signatures/IExternalDigest;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/itextpdf/signatures/DigestAlgorithms;->digest(Ljava/io/InputStream;Ljava/security/MessageDigest;)[B

    move-result-object v3

    .line 635
    .local v3, "hash":[B
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v1

    .line 636
    .local v2, "ocspList":Ljava/util/List;, "Ljava/util/List<[B>;"
    array-length v1, v8

    .end local v4    # "hashAlgorithm":Ljava/lang/String;
    .restart local v21    # "hashAlgorithm":Ljava/lang/String;
    const/4 v4, 0x1

    if-le v1, v4, :cond_c

    if-eqz v9, :cond_c

    .line 637
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_5
    array-length v5, v8

    sub-int/2addr v5, v4

    if-ge v1, v5, :cond_b

    .line 638
    aget-object v5, v8, v1

    check-cast v5, Ljava/security/cert/X509Certificate;

    add-int/lit8 v16, v1, 0x1

    aget-object v16, v8, v16

    move-object/from16 v4, v16

    check-cast v4, Ljava/security/cert/X509Certificate;

    move-object/from16 v16, v6

    const/4 v6, 0x0

    .end local v6    # "data":Ljava/io/InputStream;
    .local v16, "data":Ljava/io/InputStream;
    invoke-interface {v9, v5, v4, v6}, Lcom/itextpdf/signatures/IOcspClient;->getEncoded(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    move-result-object v4

    .line 639
    .local v4, "ocsp":[B
    if-eqz v4, :cond_a

    .line 640
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    .end local v4    # "ocsp":[B
    :cond_a
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v5, p1

    move-object/from16 v6, v16

    const/4 v4, 0x1

    goto :goto_5

    .end local v16    # "data":Ljava/io/InputStream;
    .restart local v6    # "data":Ljava/io/InputStream;
    :cond_b
    move-object/from16 v16, v6

    .end local v6    # "data":Ljava/io/InputStream;
    .restart local v16    # "data":Ljava/io/InputStream;
    goto :goto_6

    .line 636
    .end local v1    # "j":I
    .end local v16    # "data":Ljava/io/InputStream;
    .restart local v6    # "data":Ljava/io/InputStream;
    :cond_c
    move-object/from16 v16, v6

    .line 644
    .end local v6    # "data":Ljava/io/InputStream;
    .restart local v16    # "data":Ljava/io/InputStream;
    :goto_6
    invoke-virtual {v7, v3, v10, v2, v12}, Lcom/itextpdf/signatures/PdfPKCS7;->getAuthenticatedAttributeBytes([BLcom/itextpdf/signatures/PdfSigner$CryptoStandard;Ljava/util/Collection;Ljava/util/Collection;)[B

    move-result-object v6

    .line 645
    .local v6, "sh":[B
    move-object/from16 v5, p2

    invoke-interface {v5, v6}, Lcom/itextpdf/signatures/IExternalSignature;->sign([B)[B

    move-result-object v4

    .line 646
    .local v4, "extSignature":[B
    invoke-interface/range {p2 .. p2}, Lcom/itextpdf/signatures/IExternalSignature;->getEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v22, v2

    const/4 v2, 0x0

    .end local v2    # "ocspList":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v22, "ocspList":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-virtual {v7, v4, v2, v1}, Lcom/itextpdf/signatures/PdfPKCS7;->setExternalDigest([B[BLjava/lang/String;)V

    .line 648
    move-object v1, v7

    move-object v2, v3

    move-object/from16 v23, v3

    .end local v3    # "hash":[B
    .local v23, "hash":[B
    move-object/from16 v3, p8

    move-object/from16 p7, v7

    move-object/from16 v18, v21

    const/4 v7, 0x1

    move-object/from16 v21, v4

    .end local v4    # "extSignature":[B
    .end local v7    # "sgn":Lcom/itextpdf/signatures/PdfPKCS7;
    .local v18, "hashAlgorithm":Ljava/lang/String;
    .local v21, "extSignature":[B
    .local p7, "sgn":Lcom/itextpdf/signatures/PdfPKCS7;
    move-object/from16 v4, p6

    move-object/from16 v5, v22

    move-object/from16 v24, v6

    .end local v6    # "sh":[B
    .local v24, "sh":[B
    move-object v6, v12

    invoke-virtual/range {v1 .. v6}, Lcom/itextpdf/signatures/PdfPKCS7;->getEncodedPKCS7([BLcom/itextpdf/signatures/PdfSigner$CryptoStandard;Lcom/itextpdf/signatures/ITSAClient;Ljava/util/Collection;Ljava/util/Collection;)[B

    move-result-object v1

    .line 650
    .local v1, "encodedSig":[B
    array-length v2, v1

    if-lt v15, v2, :cond_d

    .line 653
    new-array v2, v15, [B

    .line 654
    .local v2, "paddedSig":[B
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 656
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 657
    .local v3, "dic2":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Contents:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {v5, v2}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>([B)V

    invoke-virtual {v5, v7}, Lcom/itextpdf/kernel/pdf/PdfString;->setHexWriting(Z)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 658
    invoke-virtual {v0, v3}, Lcom/itextpdf/signatures/PdfSigner;->close(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 660
    iput-boolean v7, v0, Lcom/itextpdf/signatures/PdfSigner;->closed:Z

    .line 661
    return-void

    .line 651
    .end local v2    # "paddedSig":[B
    .end local v3    # "dic2":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_d
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Not enough space"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 585
    .end local v1    # "encodedSig":[B
    .end local v12    # "crlBytes":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    .end local v13    # "i":I
    .end local v15    # "estimatedSize":I
    .end local v16    # "data":Ljava/io/InputStream;
    .end local v17    # "appearance":Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .end local v18    # "hashAlgorithm":Ljava/lang/String;
    .end local v19    # "exc":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/kernel/pdf/PdfName;Ljava/lang/Integer;>;"
    .end local v20    # "dic":Lcom/itextpdf/signatures/PdfSignature;
    .end local v21    # "extSignature":[B
    .end local v22    # "ocspList":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v23    # "hash":[B
    .end local v24    # "sh":[B
    .local p7, "estimatedSize":I
    :cond_e
    move-object/from16 v14, p4

    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "This instance of PdfSigner has been already closed."

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public signExternalContainer(Lcom/itextpdf/signatures/IExternalSignatureContainer;I)V
    .locals 10
    .param p1, "externalSignatureContainer"    # Lcom/itextpdf/signatures/IExternalSignatureContainer;
    .param p2, "estimatedSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 676
    iget-boolean v0, p0, Lcom/itextpdf/signatures/PdfSigner;->closed:Z

    if-nez v0, :cond_1

    .line 680
    new-instance v0, Lcom/itextpdf/signatures/PdfSignature;

    invoke-direct {v0}, Lcom/itextpdf/signatures/PdfSignature;-><init>()V

    .line 681
    .local v0, "dic":Lcom/itextpdf/signatures/PdfSignature;
    invoke-virtual {p0}, Lcom/itextpdf/signatures/PdfSigner;->getSignatureAppearance()Lcom/itextpdf/signatures/PdfSignatureAppearance;

    move-result-object v1

    .line 682
    .local v1, "appearance":Lcom/itextpdf/signatures/PdfSignatureAppearance;
    invoke-virtual {v1}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/signatures/PdfSignature;->setReason(Ljava/lang/String;)V

    .line 683
    invoke-virtual {v1}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/signatures/PdfSignature;->setLocation(Ljava/lang/String;)V

    .line 684
    invoke-virtual {v1}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->getSignatureCreator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/signatures/PdfSignature;->setSignatureCreator(Ljava/lang/String;)V

    .line 685
    invoke-virtual {v1}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->getContact()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/signatures/PdfSignature;->setContact(Ljava/lang/String;)V

    .line 686
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfDate;

    invoke-virtual {p0}, Lcom/itextpdf/signatures/PdfSigner;->getSignDate()Ljava/util/Calendar;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDate;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {v0, v2}, Lcom/itextpdf/signatures/PdfSignature;->setDate(Lcom/itextpdf/kernel/pdf/PdfDate;)V

    .line 687
    invoke-virtual {v0}, Lcom/itextpdf/signatures/PdfSignature;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-interface {p1, v2}, Lcom/itextpdf/signatures/IExternalSignatureContainer;->modifySigningDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 688
    iput-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->cryptoDictionary:Lcom/itextpdf/signatures/PdfSignature;

    .line 690
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 691
    .local v2, "exc":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/kernel/pdf/PdfName;Ljava/lang/Integer;>;"
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Contents:Lcom/itextpdf/kernel/pdf/PdfName;

    mul-int/lit8 v4, p2, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    invoke-virtual {p0, v2}, Lcom/itextpdf/signatures/PdfSigner;->preClose(Ljava/util/Map;)V

    .line 694
    invoke-virtual {p0}, Lcom/itextpdf/signatures/PdfSigner;->getRangeStream()Ljava/io/InputStream;

    move-result-object v3

    .line 695
    .local v3, "data":Ljava/io/InputStream;
    invoke-interface {p1, v3}, Lcom/itextpdf/signatures/IExternalSignatureContainer;->sign(Ljava/io/InputStream;)[B

    move-result-object v4

    .line 697
    .local v4, "encodedSig":[B
    array-length v5, v4

    if-lt p2, v5, :cond_0

    .line 700
    new-array v5, p2, [B

    .line 701
    .local v5, "paddedSig":[B
    array-length v6, v4

    const/4 v7, 0x0

    invoke-static {v4, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 703
    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 704
    .local v6, "dic2":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Contents:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v8, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {v8, v5}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>([B)V

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/itextpdf/kernel/pdf/PdfString;->setHexWriting(Z)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 705
    invoke-virtual {p0, v6}, Lcom/itextpdf/signatures/PdfSigner;->close(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 707
    iput-boolean v9, p0, Lcom/itextpdf/signatures/PdfSigner;->closed:Z

    .line 708
    return-void

    .line 698
    .end local v5    # "paddedSig":[B
    .end local v6    # "dic2":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_0
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Not enough space"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 677
    .end local v0    # "dic":Lcom/itextpdf/signatures/PdfSignature;
    .end local v1    # "appearance":Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .end local v2    # "exc":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/kernel/pdf/PdfName;Ljava/lang/Integer;>;"
    .end local v3    # "data":Ljava/io/InputStream;
    .end local v4    # "encodedSig":[B
    :cond_1
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "This instance of PdfSigner has been already closed."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timestamp(Lcom/itextpdf/signatures/ITSAClient;Ljava/lang/String;)V
    .locals 17
    .param p1, "tsa"    # Lcom/itextpdf/signatures/ITSAClient;
    .param p2, "signatureName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 723
    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/itextpdf/signatures/PdfSigner;->closed:Z

    if-nez v0, :cond_3

    .line 727
    invoke-interface/range {p1 .. p1}, Lcom/itextpdf/signatures/ITSAClient;->getTokenSizeEstimate()I

    move-result v2

    .line 728
    .local v2, "contentEstimated":I
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/signatures/PdfSigner;->isDocumentPdf2()Z

    move-result v0

    if-nez v0, :cond_0

    .line 729
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;->ESIC_1_7_EXTENSIONLEVEL5:Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;

    invoke-virtual {v1, v0}, Lcom/itextpdf/signatures/PdfSigner;->addDeveloperExtension(Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;)V

    .line 731
    :cond_0
    move-object/from16 v3, p2

    invoke-virtual {v1, v3}, Lcom/itextpdf/signatures/PdfSigner;->setFieldName(Ljava/lang/String;)V

    .line 733
    new-instance v0, Lcom/itextpdf/signatures/PdfSignature;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Adobe_PPKLite:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->ETSI_RFC3161:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v0, v4, v5}, Lcom/itextpdf/signatures/PdfSignature;-><init>(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)V

    move-object v4, v0

    .line 734
    .local v4, "dic":Lcom/itextpdf/signatures/PdfSignature;
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->DocTimeStamp:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v0, v5}, Lcom/itextpdf/signatures/PdfSignature;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/signatures/PdfSignature;

    .line 735
    iput-object v4, v1, Lcom/itextpdf/signatures/PdfSigner;->cryptoDictionary:Lcom/itextpdf/signatures/PdfSignature;

    .line 737
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v5, v0

    .line 738
    .local v5, "exc":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/kernel/pdf/PdfName;Ljava/lang/Integer;>;"
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Contents:Lcom/itextpdf/kernel/pdf/PdfName;

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    invoke-virtual {v1, v5}, Lcom/itextpdf/signatures/PdfSigner;->preClose(Ljava/util/Map;)V

    .line 740
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/signatures/PdfSigner;->getRangeStream()Ljava/io/InputStream;

    move-result-object v6

    .line 741
    .local v6, "data":Ljava/io/InputStream;
    invoke-interface/range {p1 .. p1}, Lcom/itextpdf/signatures/ITSAClient;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v7

    .line 742
    .local v7, "messageDigest":Ljava/security/MessageDigest;
    const/16 v0, 0x1000

    new-array v8, v0, [B

    .line 744
    .local v8, "buf":[B
    :goto_0
    invoke-virtual {v6, v8}, Ljava/io/InputStream;->read([B)I

    move-result v0

    move v9, v0

    .local v9, "n":I
    const/4 v10, 0x0

    if-lez v0, :cond_1

    .line 745
    invoke-virtual {v7, v8, v10, v9}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 747
    :cond_1
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v11

    .line 750
    .local v11, "tsImprint":[B
    move-object/from16 v12, p1

    :try_start_0
    invoke-interface {v12, v11}, Lcom/itextpdf/signatures/ITSAClient;->getTimeStampToken([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    .local v0, "tsToken":[B
    nop

    .line 755
    add-int/lit8 v13, v2, 0x2

    array-length v14, v0

    if-lt v13, v14, :cond_2

    .line 758
    new-array v13, v2, [B

    .line 759
    .local v13, "paddedSig":[B
    array-length v14, v0

    invoke-static {v0, v10, v13, v10, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 761
    new-instance v10, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v10}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 762
    .local v10, "dic2":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v14, Lcom/itextpdf/kernel/pdf/PdfName;->Contents:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v15, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {v15, v13}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>([B)V

    move-object/from16 v16, v0

    .end local v0    # "tsToken":[B
    .local v16, "tsToken":[B
    const/4 v0, 0x1

    invoke-virtual {v15, v0}, Lcom/itextpdf/kernel/pdf/PdfString;->setHexWriting(Z)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 763
    invoke-virtual {v1, v10}, Lcom/itextpdf/signatures/PdfSigner;->close(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 765
    iput-boolean v0, v1, Lcom/itextpdf/signatures/PdfSigner;->closed:Z

    .line 766
    return-void

    .line 756
    .end local v10    # "dic2":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v13    # "paddedSig":[B
    .end local v16    # "tsToken":[B
    .restart local v0    # "tsToken":[B
    :cond_2
    move-object/from16 v16, v0

    .end local v0    # "tsToken":[B
    .restart local v16    # "tsToken":[B
    new-instance v0, Ljava/io/IOException;

    const-string v10, "Not enough space"

    invoke-direct {v0, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 751
    .end local v16    # "tsToken":[B
    :catch_0
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 752
    .local v0, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/security/GeneralSecurityException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v13, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 724
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "contentEstimated":I
    .end local v4    # "dic":Lcom/itextpdf/signatures/PdfSignature;
    .end local v5    # "exc":Ljava/util/Map;, "Ljava/util/Map<Lcom/itextpdf/kernel/pdf/PdfName;Ljava/lang/Integer;>;"
    .end local v6    # "data":Ljava/io/InputStream;
    .end local v7    # "messageDigest":Ljava/security/MessageDigest;
    .end local v8    # "buf":[B
    .end local v9    # "n":I
    .end local v11    # "tsImprint":[B
    :cond_3
    move-object/from16 v12, p1

    move-object/from16 v3, p2

    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "This instance of PdfSigner has been already closed."

    invoke-direct {v0, v2}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
