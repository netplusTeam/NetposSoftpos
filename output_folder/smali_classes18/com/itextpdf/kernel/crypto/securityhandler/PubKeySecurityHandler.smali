.class public abstract Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;
.super Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;
.source "PubKeySecurityHandler.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final SEED_LENGTH:I = 0x14

.field private static final serialVersionUID:J = -0x548ecbc5789d738cL


# instance fields
.field private recipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/crypto/securityhandler/PublicKeyRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private seed:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 85
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->recipients:Ljava/util/List;

    .line 95
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/itextpdf/kernel/crypto/securityhandler/EncryptionUtils;->generateSeed(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->seed:[B

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->recipients:Ljava/util/List;

    .line 97
    return-void
.end method

.method private addRecipient(Ljava/security/cert/Certificate;I)V
    .locals 2
    .param p1, "cert"    # Ljava/security/cert/Certificate;
    .param p2, "permission"    # I

    .line 205
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->recipients:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/kernel/crypto/securityhandler/PublicKeyRecipient;

    invoke-direct {v1, p1, p2}, Lcom/itextpdf/kernel/crypto/securityhandler/PublicKeyRecipient;-><init>(Ljava/security/cert/Certificate;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    return-void
.end method

.method protected static computeGlobalKeyOnReading(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Ljava/lang/String;Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;ZLjava/lang/String;)[B
    .locals 6
    .param p0, "encryptionDictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p1, "certificateKey"    # Ljava/security/PrivateKey;
    .param p2, "certificate"    # Ljava/security/cert/Certificate;
    .param p3, "certificateKeyProvider"    # Ljava/lang/String;
    .param p4, "externalDecryptionProcess"    # Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;
    .param p5, "encryptMetadata"    # Z
    .param p6, "digestAlgorithm"    # Ljava/lang/String;

    .line 124
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Recipients:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 125
    .local v0, "recipients":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-nez v0, :cond_0

    .line 126
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->CF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->DefaultCryptFilter:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 127
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Recipients:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 128
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 131
    :cond_0
    invoke-static {p1, p2, p3, p4, v0}, Lcom/itextpdf/kernel/crypto/securityhandler/EncryptionUtils;->fetchEnvelopedData(Ljava/security/Key;Ljava/security/cert/Certificate;Ljava/lang/String;Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;Lcom/itextpdf/kernel/pdf/PdfArray;)[B

    move-result-object v1

    .line 137
    .local v1, "envelopedData":[B
    :try_start_0
    invoke-static {p6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 138
    .local v2, "md":Ljava/security/MessageDigest;
    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 139
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 140
    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsString(I)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfString;->getValueBytes()[B

    move-result-object v5

    .line 141
    .local v5, "encodedRecipient":[B
    invoke-virtual {v2, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 139
    .end local v5    # "encodedRecipient":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 143
    .end local v3    # "i":I
    :cond_1
    if-nez p5, :cond_2

    .line 144
    const/4 v3, 0x4

    new-array v3, v3, [B

    const/4 v5, -0x1

    aput-byte v5, v3, v4

    const/4 v4, 0x1

    aput-byte v5, v3, v4

    const/4 v4, 0x2

    aput-byte v5, v3, v4

    const/4 v4, 0x3

    aput-byte v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 146
    :cond_2
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .local v3, "encryptionKey":[B
    nop

    .line 150
    return-object v3

    .line 147
    .end local v2    # "md":Ljava/security/MessageDigest;
    .end local v3    # "encryptionKey":[B
    :catch_0
    move-exception v2

    .line 148
    .local v2, "f":Ljava/lang/Exception;
    new-instance v3, Lcom/itextpdf/kernel/PdfException;

    const-string v4, "Exception occurred with PDF document decryption. One of the possible reasons is wrong password or wrong public key certificate and private key."

    invoke-direct {v3, v4, v2}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private computeRecipientInfo(Ljava/security/cert/X509Certificate;[B)Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;
    .locals 8
    .param p1, "x509certificate"    # Ljava/security/cert/X509Certificate;
    .param p2, "abyte0"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 300
    .local v0, "asn1inputstream":Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v1

    .line 301
    .local v1, "tbscertificatestructure":Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;
    if-eqz v1, :cond_0

    .line 302
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    .line 303
    .local v2, "algorithmidentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v3, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    .line 304
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v4

    .line 305
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V

    .line 306
    .local v3, "issuerandserialnumber":Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;
    invoke-static {p1, p2, v2}, Lcom/itextpdf/kernel/crypto/securityhandler/EncryptionUtils;->cipherBytes(Ljava/security/cert/X509Certificate;[BLorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)[B

    move-result-object v4

    .line 307
    .local v4, "cipheredBytes":[B
    new-instance v5, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v5, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 308
    .local v5, "deroctetstring":Lorg/bouncycastle/asn1/DEROctetString;
    new-instance v6, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

    invoke-direct {v6, v3}, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;-><init>(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V

    .line 309
    .local v6, "recipId":Lorg/bouncycastle/asn1/cms/RecipientIdentifier;
    new-instance v7, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;

    invoke-direct {v7, v6, v2, v5}, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;-><init>(Lorg/bouncycastle/asn1/cms/RecipientIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    return-object v7

    .line 301
    .end local v2    # "algorithmidentifier":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v3    # "issuerandserialnumber":Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;
    .end local v4    # "cipheredBytes":[B
    .end local v5    # "deroctetstring":Lorg/bouncycastle/asn1/DEROctetString;
    .end local v6    # "recipId":Lorg/bouncycastle/asn1/cms/RecipientIdentifier;
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method private createDERForRecipient([BLjava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 8
    .param p1, "in"    # [B
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 285
    invoke-static {p1}, Lcom/itextpdf/kernel/crypto/securityhandler/EncryptionUtils;->calculateDERForRecipientParams([B)Lcom/itextpdf/kernel/crypto/securityhandler/EncryptionUtils$DERForRecipientParams;

    move-result-object v0

    .line 287
    .local v0, "parameters":Lcom/itextpdf/kernel/crypto/securityhandler/EncryptionUtils$DERForRecipientParams;
    iget-object v1, v0, Lcom/itextpdf/kernel/crypto/securityhandler/EncryptionUtils$DERForRecipientParams;->abyte0:[B

    invoke-direct {p0, p2, v1}, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->computeRecipientInfo(Ljava/security/cert/X509Certificate;[B)Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;

    move-result-object v1

    .line 288
    .local v1, "keytransrecipientinfo":Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;
    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v3, v0, Lcom/itextpdf/kernel/crypto/securityhandler/EncryptionUtils$DERForRecipientParams;->abyte1:[B

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 289
    .local v2, "deroctetstring":Lorg/bouncycastle/asn1/DEROctetString;
    new-instance v3, Lorg/bouncycastle/asn1/DERSet;

    new-instance v4, Lorg/bouncycastle/asn1/cms/RecipientInfo;

    invoke-direct {v4, v1}, Lorg/bouncycastle/asn1/cms/RecipientInfo;-><init>(Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;)V

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 290
    .local v3, "derset":Lorg/bouncycastle/asn1/DERSet;
    new-instance v4, Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    sget-object v5, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v6, v0, Lcom/itextpdf/kernel/crypto/securityhandler/EncryptionUtils$DERForRecipientParams;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v4, v5, v6, v2}, Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    .line 292
    .local v4, "encryptedcontentinfo":Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;
    new-instance v5, Lorg/bouncycastle/asn1/cms/EnvelopedData;

    const/4 v6, 0x0

    move-object v7, v6

    check-cast v7, Lorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v5, v6, v3, v4, v6}, Lorg/bouncycastle/asn1/cms/EnvelopedData;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;Lorg/bouncycastle/asn1/ASN1Set;)V

    .line 293
    .local v5, "env":Lorg/bouncycastle/asn1/cms/EnvelopedData;
    new-instance v6, Lorg/bouncycastle/asn1/cms/ContentInfo;

    sget-object v7, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->envelopedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v6, v7, v5}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 294
    .local v6, "contentinfo":Lorg/bouncycastle/asn1/cms/ContentInfo;
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/cms/ContentInfo;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    return-object v7
.end method

.method private getEncodedRecipient(I)[B
    .locals 12
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->recipients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/crypto/securityhandler/PublicKeyRecipient;

    .line 221
    .local v0, "recipient":Lcom/itextpdf/kernel/crypto/securityhandler/PublicKeyRecipient;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/crypto/securityhandler/PublicKeyRecipient;->getCms()[B

    move-result-object v1

    .line 223
    .local v1, "cms":[B
    if-eqz v1, :cond_0

    return-object v1

    .line 225
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/crypto/securityhandler/PublicKeyRecipient;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v2

    .line 227
    .local v2, "certificate":Ljava/security/cert/Certificate;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/crypto/securityhandler/PublicKeyRecipient;->getPermission()I

    move-result v3

    .line 233
    .local v3, "permission":I
    or-int/lit16 v3, v3, -0xf40

    .line 234
    and-int/lit8 v3, v3, -0x4

    .line 235
    add-int/lit8 v3, v3, 0x1

    .line 237
    const/16 v4, 0x18

    new-array v4, v4, [B

    .line 239
    .local v4, "pkcs7input":[B
    int-to-byte v5, v3

    .line 240
    .local v5, "one":B
    shr-int/lit8 v6, v3, 0x8

    int-to-byte v6, v6

    .line 241
    .local v6, "two":B
    shr-int/lit8 v7, v3, 0x10

    int-to-byte v7, v7

    .line 242
    .local v7, "three":B
    shr-int/lit8 v8, v3, 0x18

    int-to-byte v8, v8

    .line 245
    .local v8, "four":B
    iget-object v9, p0, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->seed:[B

    const/4 v10, 0x0

    const/16 v11, 0x14

    invoke-static {v9, v10, v4, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    aput-byte v8, v4, v11

    .line 248
    const/16 v9, 0x15

    aput-byte v7, v4, v9

    .line 249
    const/16 v9, 0x16

    aput-byte v6, v4, v9

    .line 250
    const/16 v9, 0x17

    aput-byte v5, v4, v9

    .line 252
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 253
    .local v9, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {v9}, Lorg/bouncycastle/asn1/ASN1OutputStream;->create(Ljava/io/OutputStream;)Lorg/bouncycastle/asn1/ASN1OutputStream;

    move-result-object v10

    .line 254
    .local v10, "k":Lorg/bouncycastle/asn1/ASN1OutputStream;
    move-object v11, v2

    check-cast v11, Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v4, v11}, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->createDERForRecipient([BLjava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v11

    .line 255
    .local v11, "obj":Lorg/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v10, v11}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    .line 256
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 257
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/crypto/securityhandler/PublicKeyRecipient;->setCms([B)V

    .line 259
    return-object v1
.end method

.method private getEncodedRecipients()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 5

    .line 263
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 265
    .local v0, "EncodedRecipients":Lcom/itextpdf/kernel/pdf/PdfArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->recipients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 267
    :try_start_0
    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->getEncodedRecipient(I)[B

    move-result-object v2

    .line 268
    .local v2, "cms":[B
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfLiteral;

    invoke-static {v2}, Lcom/itextpdf/io/util/StreamUtil;->createEscapedString([B)[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfLiteral;-><init>([B)V

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    nop

    .line 265
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 273
    .end local v2    # "cms":[B
    :catch_0
    move-exception v2

    .line 274
    .local v2, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    .line 276
    goto :goto_1

    .line 269
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 270
    .local v2, "e":Ljava/security/GeneralSecurityException;
    const/4 v0, 0x0

    .line 280
    .end local v1    # "i":I
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    :cond_0
    :goto_1
    return-object v0
.end method

.method private getRecipientsSize()I
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->recipients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private getSeed()[B
    .locals 4

    .line 209
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->seed:[B

    array-length v1, v0

    new-array v1, v1, [B

    .line 210
    .local v1, "clonedSeed":[B
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    return-object v1
.end method


# virtual methods
.method protected addAllRecipients([Ljava/security/cert/Certificate;[I)V
    .locals 3
    .param p1, "certs"    # [Ljava/security/cert/Certificate;
    .param p2, "permissions"    # [I

    .line 154
    if-eqz p1, :cond_0

    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 156
    aget-object v1, p1, v0

    aget v2, p2, v0

    invoke-direct {p0, v1, v2}, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->addRecipient(Ljava/security/cert/Certificate;I)V

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected computeGlobalKey(Ljava/lang/String;Z)[B
    .locals 4
    .param p1, "messageDigestAlgorithm"    # Ljava/lang/String;
    .param p2, "encryptMetadata"    # Z

    .line 104
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 105
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-direct {p0}, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->getSeed()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 106
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-direct {p0}, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->getRecipientsSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 107
    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->getEncodedRecipient(I)[B

    move-result-object v2

    .line 108
    .local v2, "encodedRecipient":[B
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    .end local v1    # "i":I
    .end local v2    # "encodedRecipient":[B
    :cond_0
    if-nez p2, :cond_1

    .line 111
    const/4 v1, 0x4

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, -0x1

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    aput-byte v3, v1, v2

    const/4 v2, 0x2

    aput-byte v3, v1, v2

    const/4 v2, 0x3

    aput-byte v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_1
    nop

    .line 117
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    return-object v1

    .line 113
    .end local v0    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "PdfEncryption exception."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected createRecipientsArray()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 3

    .line 164
    :try_start_0
    invoke-direct {p0}, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->getEncodedRecipients()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .local v0, "recipients":Lcom/itextpdf/kernel/pdf/PdfArray;
    nop

    .line 168
    return-object v0

    .line 165
    .end local v0    # "recipients":Lcom/itextpdf/kernel/pdf/PdfArray;
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "PdfEncryption exception."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected abstract getDigestAlgorithm()Ljava/lang/String;
.end method

.method protected abstract initKey([BI)V
.end method

.method protected initKeyAndFillDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;[Ljava/security/cert/Certificate;[IZZ)V
    .locals 4
    .param p1, "encryptionDictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "certs"    # [Ljava/security/cert/Certificate;
    .param p3, "permissions"    # [I
    .param p4, "encryptMetadata"    # Z
    .param p5, "embeddedFilesOnly"    # Z

    .line 179
    invoke-virtual {p0, p2, p3}, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->addAllRecipients([Ljava/security/cert/Certificate;[I)V

    .line 181
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Length:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsInt(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Integer;

    move-result-object v0

    .line 182
    .local v0, "keyLen":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x28

    .line 184
    .local v1, "keyLength":I
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "digestAlgorithm":Ljava/lang/String;
    invoke-virtual {p0, v2, p4}, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->computeGlobalKey(Ljava/lang/String;Z)[B

    move-result-object v3

    .line 186
    .local v3, "digest":[B
    invoke-virtual {p0, v3, v1}, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->initKey([BI)V

    .line 188
    invoke-virtual {p0, p1, p4, p5}, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->setPubSecSpecificHandlerDicEntries(Lcom/itextpdf/kernel/pdf/PdfDictionary;ZZ)V

    .line 189
    return-void
.end method

.method protected initKeyAndReadDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/security/Key;Ljava/security/cert/Certificate;Ljava/lang/String;Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;Z)V
    .locals 8
    .param p1, "encryptionDictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "certificateKey"    # Ljava/security/Key;
    .param p3, "certificate"    # Ljava/security/cert/Certificate;
    .param p4, "certificateKeyProvider"    # Ljava/lang/String;
    .param p5, "externalDecryptionProcess"    # Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;
    .param p6, "encryptMetadata"    # Z

    .line 194
    invoke-virtual {p0}, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v7

    .line 195
    .local v7, "digestAlgorithm":Ljava/lang/String;
    move-object v1, p2

    check-cast v1, Ljava/security/PrivateKey;

    move-object v0, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move-object v6, v7

    invoke-static/range {v0 .. v6}, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->computeGlobalKeyOnReading(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Ljava/lang/String;Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;ZLjava/lang/String;)[B

    move-result-object v0

    .line 198
    .local v0, "encryptionKey":[B
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Length:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsInt(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Integer;

    move-result-object v1

    .line 199
    .local v1, "keyLen":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_0
    const/16 v2, 0x28

    .line 200
    .local v2, "keyLength":I
    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;->initKey([BI)V

    .line 201
    return-void
.end method

.method protected abstract setPubSecSpecificHandlerDicEntries(Lcom/itextpdf/kernel/pdf/PdfDictionary;ZZ)V
.end method
