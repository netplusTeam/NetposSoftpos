.class public Lcom/itextpdf/kernel/pdf/VersionConforming;
.super Ljava/lang/Object;
.source "VersionConforming.java"


# static fields
.field public static final DEPRECATED_AES256_REVISION:Ljava/lang/String; = "It seems that PDF 1.7 document encrypted with AES256 was updated to PDF 2.0 version and StampingProperties#preserveEncryption flag was set: encryption shall be updated via WriterProperties#setStandardEncryption method. Standard security handler was found with revision 5, which is deprecated and shall not be used in PDF 2.0 documents."

.field public static final DEPRECATED_ENCRYPTION_ALGORITHMS:Ljava/lang/String; = "Encryption algorithms STANDARD_ENCRYPTION_40, STANDARD_ENCRYPTION_128 and ENCRYPTION_AES_128 (see com.itextpdf.kernel.pdf.EncryptionConstants) are deprecated in PDF 2.0. It is highly recommended not to use it."

.field public static final DEPRECATED_NEED_APPEARANCES_IN_ACROFORM:Ljava/lang/String; = "NeedAppearances has been deprecated in PDF 2.0. Appearance streams are required in PDF 2.0."

.field public static final DEPRECATED_XFA_FORMS:Ljava/lang/String; = "XFA is deprecated in PDF 2.0. The XFA form will not be written to the document"

.field private static final logger:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lcom/itextpdf/kernel/pdf/VersionConforming;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/VersionConforming;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static validatePdfVersionForDeprecatedFeatureLogError(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfVersion;Ljava/lang/String;)Z
    .locals 1
    .param p0, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "expectedVersion"    # Lcom/itextpdf/kernel/pdf/PdfVersion;
    .param p2, "deprecatedFeatureLogMessage"    # Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPdfVersion()Lcom/itextpdf/kernel/pdf/PdfVersion;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfVersion;->compareTo(Lcom/itextpdf/kernel/pdf/PdfVersion;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 80
    sget-object v0, Lcom/itextpdf/kernel/pdf/VersionConforming;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x1

    return v0

    .line 83
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static validatePdfVersionForDeprecatedFeatureLogWarn(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfVersion;Ljava/lang/String;)Z
    .locals 1
    .param p0, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "expectedVersion"    # Lcom/itextpdf/kernel/pdf/PdfVersion;
    .param p2, "deprecatedFeatureLogMessage"    # Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPdfVersion()Lcom/itextpdf/kernel/pdf/PdfVersion;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfVersion;->compareTo(Lcom/itextpdf/kernel/pdf/PdfVersion;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 71
    sget-object v0, Lcom/itextpdf/kernel/pdf/VersionConforming;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x1

    return v0

    .line 74
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static validatePdfVersionForDictEntry(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfVersion;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)Z
    .locals 5
    .param p0, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "expectedVersion"    # Lcom/itextpdf/kernel/pdf/PdfVersion;
    .param p2, "entryKey"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p3, "dictType"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 61
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPdfVersion()Lcom/itextpdf/kernel/pdf/PdfVersion;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfVersion;->compareTo(Lcom/itextpdf/kernel/pdf/PdfVersion;)I

    move-result v1

    if-gez v1, :cond_0

    .line 62
    sget-object v1, Lcom/itextpdf/kernel/pdf/VersionConforming;->logger:Lorg/slf4j/Logger;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v0

    const/4 v0, 0x1

    aput-object p3, v2, v0

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPdfVersion()Lcom/itextpdf/kernel/pdf/PdfVersion;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "\"{0}\" entry in the \"{1}\" dictionary is a {2} and higher version feature. It is meaningless for the current {3} version."

    invoke-static {v3, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 63
    return v0

    .line 65
    :cond_0
    return v0
.end method
