.class public final Lcom/itextpdf/kernel/pdf/PdfEncryptor;
.super Ljava/lang/Object;
.source "PdfEncryptor.java"


# instance fields
.field private metaInfo:Lcom/itextpdf/kernel/counter/event/IMetaInfo;

.field private properties:Lcom/itextpdf/kernel/pdf/EncryptionProperties;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public static encrypt(Lcom/itextpdf/kernel/pdf/PdfReader;Ljava/io/OutputStream;Lcom/itextpdf/kernel/pdf/EncryptionProperties;)V
    .locals 1
    .param p0, "reader"    # Lcom/itextpdf/kernel/pdf/PdfReader;
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "properties"    # Lcom/itextpdf/kernel/pdf/EncryptionProperties;

    .line 91
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/itextpdf/kernel/pdf/PdfEncryptor;->encrypt(Lcom/itextpdf/kernel/pdf/PdfReader;Ljava/io/OutputStream;Lcom/itextpdf/kernel/pdf/EncryptionProperties;Ljava/util/Map;)V

    .line 92
    return-void
.end method

.method public static encrypt(Lcom/itextpdf/kernel/pdf/PdfReader;Ljava/io/OutputStream;Lcom/itextpdf/kernel/pdf/EncryptionProperties;Ljava/util/Map;)V
    .locals 1
    .param p0, "reader"    # Lcom/itextpdf/kernel/pdf/PdfReader;
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "properties"    # Lcom/itextpdf/kernel/pdf/EncryptionProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfReader;",
            "Ljava/io/OutputStream;",
            "Lcom/itextpdf/kernel/pdf/EncryptionProperties;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 80
    .local p3, "newInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfEncryptor;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfEncryptor;-><init>()V

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfEncryptor;->setEncryptionProperties(Lcom/itextpdf/kernel/pdf/EncryptionProperties;)Lcom/itextpdf/kernel/pdf/PdfEncryptor;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p3}, Lcom/itextpdf/kernel/pdf/PdfEncryptor;->encrypt(Lcom/itextpdf/kernel/pdf/PdfReader;Ljava/io/OutputStream;Ljava/util/Map;)V

    .line 81
    return-void
.end method

.method public static getContent(Lorg/bouncycastle/cms/RecipientInformation;Ljava/security/PrivateKey;Ljava/lang/String;)[B
    .locals 2
    .param p0, "recipientInfo"    # Lorg/bouncycastle/cms/RecipientInformation;
    .param p1, "certificateKey"    # Ljava/security/PrivateKey;
    .param p2, "certificateKeyProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 207
    new-instance v0, Lorg/bouncycastle/cms/jcajce/JceKeyTransEnvelopedRecipient;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cms/jcajce/JceKeyTransEnvelopedRecipient;-><init>(Ljava/security/PrivateKey;)V

    invoke-virtual {v0, p2}, Lorg/bouncycastle/cms/jcajce/JceKeyTransEnvelopedRecipient;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;

    move-result-object v0

    .line 208
    .local v0, "jceKeyTransRecipient":Lorg/bouncycastle/cms/Recipient;
    invoke-virtual {p0, v0}, Lorg/bouncycastle/cms/RecipientInformation;->getContent(Lorg/bouncycastle/cms/Recipient;)[B

    move-result-object v1

    return-object v1
.end method

.method public static getPermissionsVerbose(I)Ljava/lang/String;
    .locals 3
    .param p0, "permissions"    # I

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Allowed:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "buf":Ljava/lang/StringBuilder;
    and-int/lit16 v1, p0, 0x804

    const/16 v2, 0x804

    if-ne v1, v2, :cond_0

    const-string v1, " Printing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_0
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 104
    const-string v1, " Modify contents"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :cond_1
    and-int/lit8 v1, p0, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    const-string v1, " Copy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_2
    and-int/lit8 v1, p0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_3

    .line 107
    const-string v1, " Modify annotations"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_3
    and-int/lit16 v1, p0, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_4

    const-string v1, " Fill in"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_4
    and-int/lit16 v1, p0, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_5

    .line 110
    const-string v1, " Screen readers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_5
    and-int/lit16 v1, p0, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_6

    const-string v1, " Assembly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_6
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_7

    .line 113
    const-string v1, " Degraded printing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isAssemblyAllowed(I)Z
    .locals 2
    .param p0, "permissions"    # I

    .line 184
    and-int/lit16 v0, p0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCopyAllowed(I)Z
    .locals 2
    .param p0, "permissions"    # I

    .line 144
    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDegradedPrintingAllowed(I)Z
    .locals 2
    .param p0, "permissions"    # I

    .line 194
    and-int/lit8 v0, p0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFillInAllowed(I)Z
    .locals 2
    .param p0, "permissions"    # I

    .line 164
    and-int/lit16 v0, p0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isModifyAnnotationsAllowed(I)Z
    .locals 2
    .param p0, "permissions"    # I

    .line 154
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isModifyContentsAllowed(I)Z
    .locals 2
    .param p0, "permissions"    # I

    .line 134
    and-int/lit8 v0, p0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPrintingAllowed(I)Z
    .locals 2
    .param p0, "permissions"    # I

    .line 124
    and-int/lit16 v0, p0, 0x804

    const/16 v1, 0x804

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isScreenReadersAllowed(I)Z
    .locals 2
    .param p0, "permissions"    # I

    .line 174
    and-int/lit16 v0, p0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public encrypt(Lcom/itextpdf/kernel/pdf/PdfReader;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "reader"    # Lcom/itextpdf/kernel/pdf/PdfReader;
    .param p2, "os"    # Ljava/io/OutputStream;

    .line 259
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/kernel/pdf/PdfEncryptor;->encrypt(Lcom/itextpdf/kernel/pdf/PdfReader;Ljava/io/OutputStream;Ljava/util/Map;)V

    .line 260
    return-void
.end method

.method public encrypt(Lcom/itextpdf/kernel/pdf/PdfReader;Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 5
    .param p1, "reader"    # Lcom/itextpdf/kernel/pdf/PdfReader;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfReader;",
            "Ljava/io/OutputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 242
    .local p3, "newInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/itextpdf/kernel/pdf/WriterProperties;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/WriterProperties;-><init>()V

    .line 243
    .local v0, "writerProperties":Lcom/itextpdf/kernel/pdf/WriterProperties;
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfEncryptor;->properties:Lcom/itextpdf/kernel/pdf/EncryptionProperties;

    iput-object v1, v0, Lcom/itextpdf/kernel/pdf/WriterProperties;->encryptionProperties:Lcom/itextpdf/kernel/pdf/EncryptionProperties;

    .line 244
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfWriter;

    invoke-direct {v1, p2, v0}, Lcom/itextpdf/kernel/pdf/PdfWriter;-><init>(Ljava/io/OutputStream;Lcom/itextpdf/kernel/pdf/WriterProperties;)V

    .line 245
    .local v1, "writer":Lcom/itextpdf/kernel/pdf/PdfWriter;
    new-instance v2, Lcom/itextpdf/kernel/pdf/StampingProperties;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/StampingProperties;-><init>()V

    .line 246
    .local v2, "stampingProperties":Lcom/itextpdf/kernel/pdf/StampingProperties;
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfEncryptor;->metaInfo:Lcom/itextpdf/kernel/counter/event/IMetaInfo;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/StampingProperties;->setEventCountingMetaInfo(Lcom/itextpdf/kernel/counter/event/IMetaInfo;)Lcom/itextpdf/kernel/pdf/DocumentProperties;

    .line 247
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v3, p1, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/PdfWriter;Lcom/itextpdf/kernel/pdf/StampingProperties;)V

    .line 248
    .local v3, "document":Lcom/itextpdf/kernel/pdf/PdfDocument;
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentInfo()Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->setMoreInfo(Ljava/util/Map;)V

    .line 249
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V

    .line 250
    return-void
.end method

.method public setEncryptionProperties(Lcom/itextpdf/kernel/pdf/EncryptionProperties;)Lcom/itextpdf/kernel/pdf/PdfEncryptor;
    .locals 0
    .param p1, "properties"    # Lcom/itextpdf/kernel/pdf/EncryptionProperties;

    .line 228
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfEncryptor;->properties:Lcom/itextpdf/kernel/pdf/EncryptionProperties;

    .line 229
    return-object p0
.end method

.method public setEventCountingMetaInfo(Lcom/itextpdf/kernel/counter/event/IMetaInfo;)Lcom/itextpdf/kernel/pdf/PdfEncryptor;
    .locals 0
    .param p1, "metaInfo"    # Lcom/itextpdf/kernel/counter/event/IMetaInfo;

    .line 218
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfEncryptor;->metaInfo:Lcom/itextpdf/kernel/counter/event/IMetaInfo;

    .line 219
    return-object p0
.end method
