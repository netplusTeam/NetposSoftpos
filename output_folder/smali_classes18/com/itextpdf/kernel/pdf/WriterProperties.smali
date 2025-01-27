.class public Lcom/itextpdf/kernel/pdf/WriterProperties;
.super Ljava/lang/Object;
.source "WriterProperties.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x78a0c6d8aaaaac1cL


# instance fields
.field protected addUAXmpMetadata:Z

.field protected addXmpMetadata:Z

.field protected compressionLevel:I

.field protected debugMode:Z

.field protected encryptionProperties:Lcom/itextpdf/kernel/pdf/EncryptionProperties;

.field protected initialDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

.field protected isFullCompression:Ljava/lang/Boolean;

.field protected modifiedDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

.field protected pdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

.field protected smartMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->smartMode:Z

    .line 82
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->debugMode:Z

    .line 83
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->addUAXmpMetadata:Z

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->compressionLevel:I

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->isFullCompression:Ljava/lang/Boolean;

    .line 86
    new-instance v0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/EncryptionProperties;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->encryptionProperties:Lcom/itextpdf/kernel/pdf/EncryptionProperties;

    .line 87
    return-void
.end method


# virtual methods
.method public addUAXmpMetadata()Lcom/itextpdf/kernel/pdf/WriterProperties;
    .locals 1

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->addUAXmpMetadata:Z

    .line 277
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/WriterProperties;->addXmpMetadata()Lcom/itextpdf/kernel/pdf/WriterProperties;

    move-result-object v0

    return-object v0
.end method

.method public addXmpMetadata()Lcom/itextpdf/kernel/pdf/WriterProperties;
    .locals 1

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->addXmpMetadata:Z

    .line 124
    return-object p0
.end method

.method isPublicKeyEncryptionUsed()Z
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->encryptionProperties:Lcom/itextpdf/kernel/pdf/EncryptionProperties;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->isPublicKeyEncryptionUsed()Z

    move-result v0

    return v0
.end method

.method isStandardEncryptionUsed()Z
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->encryptionProperties:Lcom/itextpdf/kernel/pdf/EncryptionProperties;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->isStandardEncryptionUsed()Z

    move-result v0

    return v0
.end method

.method public setCompressionLevel(I)Lcom/itextpdf/kernel/pdf/WriterProperties;
    .locals 0
    .param p1, "compressionLevel"    # I

    .line 135
    iput p1, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->compressionLevel:I

    .line 136
    return-object p0
.end method

.method public setFullCompressionMode(Z)Lcom/itextpdf/kernel/pdf/WriterProperties;
    .locals 1
    .param p1, "fullCompressionMode"    # Z

    .line 147
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->isFullCompression:Ljava/lang/Boolean;

    .line 148
    return-object p0
.end method

.method public setInitialDocumentId(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/kernel/pdf/WriterProperties;
    .locals 0
    .param p1, "initialDocumentId"    # Lcom/itextpdf/kernel/pdf/PdfString;

    .line 239
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->initialDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    .line 240
    return-object p0
.end method

.method public setModifiedDocumentId(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/kernel/pdf/WriterProperties;
    .locals 0
    .param p1, "modifiedDocumentId"    # Lcom/itextpdf/kernel/pdf/PdfString;

    .line 252
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->modifiedDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    .line 253
    return-object p0
.end method

.method public setPdfVersion(Lcom/itextpdf/kernel/pdf/PdfVersion;)Lcom/itextpdf/kernel/pdf/WriterProperties;
    .locals 0
    .param p1, "version"    # Lcom/itextpdf/kernel/pdf/PdfVersion;

    .line 96
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->pdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

    .line 97
    return-object p0
.end method

.method public setPublicKeyEncryption([Ljava/security/cert/Certificate;[II)Lcom/itextpdf/kernel/pdf/WriterProperties;
    .locals 1
    .param p1, "certs"    # [Ljava/security/cert/Certificate;
    .param p2, "permissions"    # [I
    .param p3, "encryptionAlgorithm"    # I

    .line 223
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->encryptionProperties:Lcom/itextpdf/kernel/pdf/EncryptionProperties;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->setPublicKeyEncryption([Ljava/security/cert/Certificate;[II)Lcom/itextpdf/kernel/pdf/EncryptionProperties;

    .line 224
    return-object p0
.end method

.method public setStandardEncryption([B[BII)Lcom/itextpdf/kernel/pdf/WriterProperties;
    .locals 1
    .param p1, "userPassword"    # [B
    .param p2, "ownerPassword"    # [B
    .param p3, "permissions"    # I
    .param p4, "encryptionAlgorithm"    # I

    .line 186
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->encryptionProperties:Lcom/itextpdf/kernel/pdf/EncryptionProperties;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->setStandardEncryption([B[BII)Lcom/itextpdf/kernel/pdf/EncryptionProperties;

    .line 187
    return-object p0
.end method

.method public useDebugMode()Lcom/itextpdf/kernel/pdf/WriterProperties;
    .locals 1

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->debugMode:Z

    .line 264
    return-object p0
.end method

.method public useSmartMode()Lcom/itextpdf/kernel/pdf/WriterProperties;
    .locals 1

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->smartMode:Z

    .line 113
    return-object p0
.end method
