.class public Lcom/itextpdf/signatures/PdfPKCS7;
.super Ljava/lang/Object;
.source "PdfPKCS7.java"


# instance fields
.field private basicResp:Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

.field private certs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private crls:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation
.end field

.field private digest:[B

.field private digestAlgorithmOid:Ljava/lang/String;

.field private digestAttr:[B

.field private digestEncryptionAlgorithmOid:Ljava/lang/String;

.field private digestalgos:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private encContDigest:Ljava/security/MessageDigest;

.field private externalDigest:[B

.field private externalRsaData:[B

.field private filterSubtype:Lcom/itextpdf/kernel/pdf/PdfName;

.field private interfaceDigest:Lcom/itextpdf/signatures/IExternalDigest;

.field private isCades:Z

.field private isTsp:Z

.field private location:Ljava/lang/String;

.field private messageDigest:Ljava/security/MessageDigest;

.field private provider:Ljava/lang/String;

.field private reason:Ljava/lang/String;

.field private rsaData:[B

.field private sig:Ljava/security/Signature;

.field private sigAttr:[B

.field private sigAttrDer:[B

.field private signCert:Ljava/security/cert/X509Certificate;

.field private signCerts:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private signDate:Ljava/util/Calendar;

.field private signName:Ljava/lang/String;

.field private signaturePolicyIdentifier:Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;

.field private signerversion:I

.field private timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

.field private verified:Z

.field private verifyResult:Z

.field private version:I


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/signatures/IExternalDigest;Z)V
    .locals 6
    .param p1, "privKey"    # Ljava/security/PrivateKey;
    .param p2, "certChain"    # [Ljava/security/cert/Certificate;
    .param p3, "hashAlgorithm"    # Ljava/lang/String;
    .param p4, "provider"    # Ljava/lang/String;
    .param p5, "interfaceDigest"    # Lcom/itextpdf/signatures/IExternalDigest;
    .param p6, "hasRSAdata"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    const/4 v0, 0x1

    iput v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->version:I

    .line 567
    iput v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signerversion:I

    .line 166
    iput-object p4, p0, Lcom/itextpdf/signatures/PdfPKCS7;->provider:Ljava/lang/String;

    .line 167
    iput-object p5, p0, Lcom/itextpdf/signatures/PdfPKCS7;->interfaceDigest:Lcom/itextpdf/signatures/IExternalDigest;

    .line 169
    invoke-static {p3}, Lcom/itextpdf/signatures/DigestAlgorithms;->getAllowedDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestAlgorithmOid:Ljava/lang/String;

    .line 170
    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 174
    aget-object v1, p2, v2

    check-cast v1, Ljava/security/cert/X509Certificate;

    iput-object v1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->certs:Ljava/util/Collection;

    .line 176
    array-length v1, p2

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p2, v3

    .line 177
    .local v4, "element":Ljava/security/cert/Certificate;
    iget-object v5, p0, Lcom/itextpdf/signatures/PdfPKCS7;->certs:Ljava/util/Collection;

    invoke-interface {v5, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 176
    .end local v4    # "element":Ljava/security/cert/Certificate;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 181
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestalgos:Ljava/util/Set;

    .line 182
    iget-object v3, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestAlgorithmOid:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 185
    if-eqz p1, :cond_3

    .line 186
    invoke-static {p1}, Lcom/itextpdf/signatures/SignUtils;->getPrivateKeyAlgorithm(Ljava/security/PrivateKey;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestEncryptionAlgorithmOid:Ljava/lang/String;

    .line 187
    const-string v3, "RSA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    const-string v0, "1.2.840.113549.1.1.1"

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestEncryptionAlgorithmOid:Ljava/lang/String;

    goto :goto_1

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestEncryptionAlgorithmOid:Ljava/lang/String;

    const-string v3, "DSA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 190
    const-string v0, "1.2.840.10040.4.1"

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestEncryptionAlgorithmOid:Ljava/lang/String;

    goto :goto_1

    .line 192
    :cond_2
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v3, "Unknown key algorithm: {0}."

    invoke-direct {v1, v3}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestEncryptionAlgorithmOid:Ljava/lang/String;

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;

    move-result-object v0

    throw v0

    .line 197
    :cond_3
    :goto_1
    if-eqz p6, :cond_4

    .line 198
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->rsaData:[B

    .line 199
    invoke-virtual {p0}, Lcom/itextpdf/signatures/PdfPKCS7;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/itextpdf/signatures/DigestAlgorithms;->getMessageDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->messageDigest:Ljava/security/MessageDigest;

    .line 203
    :cond_4
    if-eqz p1, :cond_5

    .line 204
    invoke-direct {p0, p1}, Lcom/itextpdf/signatures/PdfPKCS7;->initSignature(Ljava/security/PrivateKey;)Ljava/security/Signature;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->sig:Ljava/security/Signature;

    .line 206
    :cond_5
    return-void

    .line 171
    :cond_6
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v3, "Unknown hash algorithm: {0}."

    invoke-direct {v1, v3}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p3, v0, v2

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;

    move-result-object v0

    throw v0
.end method

.method public constructor <init>([BLcom/itextpdf/kernel/pdf/PdfName;Ljava/lang/String;)V
    .locals 35
    .param p1, "contentsKey"    # [B
    .param p2, "filterSubtype"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .param p3, "provider"    # Ljava/lang/String;

    .line 248
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 562
    const/4 v0, 0x1

    iput v0, v1, Lcom/itextpdf/signatures/PdfPKCS7;->version:I

    .line 567
    iput v0, v1, Lcom/itextpdf/signatures/PdfPKCS7;->signerversion:I

    .line 249
    iput-object v2, v1, Lcom/itextpdf/signatures/PdfPKCS7;->filterSubtype:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 250
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->ETSI_RFC3161:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/itextpdf/signatures/PdfPKCS7;->isTsp:Z

    .line 251
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->ETSI_CAdES_DETACHED:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/itextpdf/signatures/PdfPKCS7;->isCades:Z

    .line 253
    :try_start_0
    iput-object v3, v1, Lcom/itextpdf/signatures/PdfPKCS7;->provider:Ljava/lang/String;

    .line 254
    new-instance v4, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    move-object/from16 v6, p1

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 262
    .local v4, "din":Lorg/bouncycastle/asn1/ASN1InputStream;
    :try_start_1
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 265
    .local v5, "pkcs":Lorg/bouncycastle/asn1/ASN1Primitive;
    nop

    .line 266
    :try_start_2
    instance-of v7, v5, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v7, :cond_1d

    .line 269
    move-object v7, v5

    check-cast v7, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 270
    .local v7, "signedData":Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 271
    .local v9, "objId":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v10

    const-string v11, "1.2.840.113549.1.7.2"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 273
    invoke-virtual {v7, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    check-cast v10, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v10}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v10

    check-cast v10, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 282
    .local v10, "content":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v10, v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    check-cast v11, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    iput v11, v1, Lcom/itextpdf/signatures/PdfPKCS7;->version:I

    .line 285
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    iput-object v11, v1, Lcom/itextpdf/signatures/PdfPKCS7;->digestalgos:Ljava/util/Set;

    .line 286
    invoke-virtual {v10, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    check-cast v11, Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v11

    .line 287
    .local v11, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v11}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 288
    invoke-interface {v11}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 289
    .local v12, "s":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v12, v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v13

    check-cast v13, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 290
    .local v13, "o":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    iget-object v14, v1, Lcom/itextpdf/signatures/PdfPKCS7;->digestalgos:Ljava/util/Set;

    invoke-virtual {v13}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 291
    nop

    .end local v12    # "s":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v13    # "o":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    goto :goto_0

    .line 294
    :cond_0
    const/4 v12, 0x2

    invoke-virtual {v10, v12}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v13

    check-cast v13, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 295
    .local v13, "rsaData":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v13}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v14

    if-le v14, v0, :cond_1

    .line 296
    invoke-virtual {v13, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v14

    check-cast v14, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v14}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v14

    check-cast v14, Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 297
    .local v14, "rsaDataContent":Lorg/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v14}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v15

    iput-object v15, v1, Lcom/itextpdf/signatures/PdfPKCS7;->rsaData:[B

    .line 300
    .end local v14    # "rsaDataContent":Lorg/bouncycastle/asn1/ASN1OctetString;
    :cond_1
    const/4 v14, 0x3

    .line 301
    .local v14, "next":I
    :goto_1
    invoke-virtual {v10, v14}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v15

    instance-of v15, v15, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v15, :cond_2

    .line 302
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 309
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/itextpdf/signatures/SignUtils;->readAllCerts([B)Ljava/util/Collection;

    move-result-object v15

    iput-object v15, v1, Lcom/itextpdf/signatures/PdfPKCS7;->certs:Ljava/util/Collection;

    .line 344
    invoke-virtual {v10, v14}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v15

    check-cast v15, Lorg/bouncycastle/asn1/ASN1Set;

    .line 345
    .local v15, "signerInfos":Lorg/bouncycastle/asn1/ASN1Set;
    invoke-virtual {v15}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v12

    if-ne v12, v0, :cond_1b

    .line 347
    invoke-virtual {v15, v8}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v12

    check-cast v12, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 354
    .local v12, "signerInfo":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v12, v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v17

    check-cast v17, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    iput v8, v1, Lcom/itextpdf/signatures/PdfPKCS7;->signerversion:I

    .line 356
    invoke-virtual {v12, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 357
    .local v8, "issuerAndSerialNumber":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-static {v8}, Lcom/itextpdf/signatures/SignUtils;->getIssuerX509Name(Lorg/bouncycastle/asn1/ASN1Sequence;)Lorg/bouncycastle/jce/X509Principal;

    move-result-object v17

    move-object/from16 v19, v17

    .line 358
    .local v19, "issuer":Lorg/bouncycastle/jce/X509Principal;
    invoke-virtual {v8, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v17

    check-cast v17, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v20, v17

    .line 359
    .local v20, "serialNumber":Ljava/math/BigInteger;
    iget-object v0, v1, Lcom/itextpdf/signatures/PdfPKCS7;->certs:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    .line 360
    .local v21, "element":Ljava/lang/Object;
    move-object/from16 v22, v21

    check-cast v22, Ljava/security/cert/X509Certificate;

    move-object/from16 v23, v22

    .line 361
    .local v23, "cert":Ljava/security/cert/X509Certificate;
    move-object/from16 v22, v0

    invoke-virtual/range {v23 .. v23}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v0

    move-object/from16 v2, v19

    .end local v19    # "issuer":Lorg/bouncycastle/jce/X509Principal;
    .local v2, "issuer":Lorg/bouncycastle/jce/X509Principal;
    invoke-interface {v0, v2}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual/range {v23 .. v23}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    move-object/from16 v19, v4

    move-object/from16 v4, v20

    .end local v20    # "serialNumber":Ljava/math/BigInteger;
    .local v4, "serialNumber":Ljava/math/BigInteger;
    .local v19, "din":Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 362
    move-object/from16 v0, v23

    .end local v23    # "cert":Ljava/security/cert/X509Certificate;
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    iput-object v0, v1, Lcom/itextpdf/signatures/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    .line 363
    goto :goto_4

    .line 361
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v23    # "cert":Ljava/security/cert/X509Certificate;
    :cond_3
    move-object/from16 v0, v23

    .end local v23    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    goto :goto_3

    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v19    # "din":Lorg/bouncycastle/asn1/ASN1InputStream;
    .local v4, "din":Lorg/bouncycastle/asn1/ASN1InputStream;
    .restart local v20    # "serialNumber":Ljava/math/BigInteger;
    .restart local v23    # "cert":Ljava/security/cert/X509Certificate;
    :cond_4
    move-object/from16 v19, v4

    move-object/from16 v4, v20

    move-object/from16 v0, v23

    .line 365
    .end local v20    # "serialNumber":Ljava/math/BigInteger;
    .end local v21    # "element":Ljava/lang/Object;
    .end local v23    # "cert":Ljava/security/cert/X509Certificate;
    .local v4, "serialNumber":Ljava/math/BigInteger;
    .restart local v19    # "din":Lorg/bouncycastle/asn1/ASN1InputStream;
    :goto_3
    move-object/from16 v20, v4

    move-object/from16 v4, v19

    move-object/from16 v0, v22

    move-object/from16 v19, v2

    move-object/from16 v2, p2

    goto :goto_2

    .line 359
    .end local v2    # "issuer":Lorg/bouncycastle/jce/X509Principal;
    .local v4, "din":Lorg/bouncycastle/asn1/ASN1InputStream;
    .local v19, "issuer":Lorg/bouncycastle/jce/X509Principal;
    .restart local v20    # "serialNumber":Ljava/math/BigInteger;
    :cond_5
    move-object/from16 v2, v19

    move-object/from16 v19, v4

    move-object/from16 v4, v20

    .line 366
    .end local v20    # "serialNumber":Ljava/math/BigInteger;
    .restart local v2    # "issuer":Lorg/bouncycastle/jce/X509Principal;
    .local v4, "serialNumber":Ljava/math/BigInteger;
    .local v19, "din":Lorg/bouncycastle/asn1/ASN1InputStream;
    :goto_4
    iget-object v0, v1, Lcom/itextpdf/signatures/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_1a

    .line 370
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/signatures/PdfPKCS7;->signCertificateChain()V

    .line 371
    const/4 v0, 0x2

    invoke-virtual {v12, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v16, v5

    const/4 v5, 0x0

    .end local v5    # "pkcs":Lorg/bouncycastle/asn1/ASN1Primitive;
    .local v16, "pkcs":Lorg/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/itextpdf/signatures/PdfPKCS7;->digestAlgorithmOid:Ljava/lang/String;

    .line 372
    const/4 v0, 0x3

    .line 373
    .end local v14    # "next":I
    .local v0, "next":I
    const/4 v5, 0x0

    .line 374
    .local v5, "foundCades":Z
    invoke-virtual {v12, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v14

    instance-of v14, v14, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v14, :cond_11

    .line 375
    invoke-virtual {v12, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v14

    check-cast v14, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 376
    .local v14, "tagsig":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    move/from16 v20, v5

    const/4 v5, 0x0

    .end local v5    # "foundCades":Z
    .local v20, "foundCades":Z
    invoke-static {v14, v5}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v21

    move-object/from16 v5, v21

    .line 377
    .local v5, "sseq":Lorg/bouncycastle/asn1/ASN1Set;
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Set;->getEncoded()[B

    move-result-object v6

    iput-object v6, v1, Lcom/itextpdf/signatures/PdfPKCS7;->sigAttr:[B

    .line 379
    const-string v6, "DER"

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1Set;->getEncoded(Ljava/lang/String;)[B

    move-result-object v6

    iput-object v6, v1, Lcom/itextpdf/signatures/PdfPKCS7;->sigAttrDer:[B

    .line 381
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_5
    move-object/from16 v21, v8

    .end local v8    # "issuerAndSerialNumber":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v21, "issuerAndSerialNumber":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v8

    if-ge v6, v8, :cond_f

    .line 382
    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 383
    .local v8, "seq2":Lorg/bouncycastle/asn1/ASN1Sequence;
    move-object/from16 v22, v5

    const/4 v5, 0x0

    .end local v5    # "sseq":Lorg/bouncycastle/asn1/ASN1Set;
    .local v22, "sseq":Lorg/bouncycastle/asn1/ASN1Set;
    invoke-virtual {v8, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v23

    check-cast v23, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v23 .. v23}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    .line 384
    .local v5, "idSeq2":Ljava/lang/String;
    move-object/from16 v23, v9

    .end local v9    # "objId":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v23, "objId":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    const-string v9, "1.2.840.113549.1.9.4"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 385
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v24

    check-cast v24, Lorg/bouncycastle/asn1/ASN1Set;

    move-object/from16 v9, v24

    .line 386
    .local v9, "set":Lorg/bouncycastle/asn1/ASN1Set;
    move-object/from16 v24, v10

    const/4 v10, 0x0

    .end local v10    # "content":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v24, "content":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v9, v10}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v25

    check-cast v25, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual/range {v25 .. v25}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v10

    iput-object v10, v1, Lcom/itextpdf/signatures/PdfPKCS7;->digestAttr:[B

    .line 387
    .end local v9    # "set":Lorg/bouncycastle/asn1/ASN1Set;
    move-object/from16 v25, v11

    move-object/from16 v28, v13

    goto/16 :goto_8

    .end local v24    # "content":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v10    # "content":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_6
    move-object/from16 v24, v10

    .end local v10    # "content":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v24    # "content":Lorg/bouncycastle/asn1/ASN1Sequence;
    const-string v9, "1.2.840.113583.1.1.8"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 388
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    check-cast v10, Lorg/bouncycastle/asn1/ASN1Set;

    move-object v9, v10

    .line 389
    .local v9, "setout":Lorg/bouncycastle/asn1/ASN1Set;
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v25

    check-cast v25, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v10, v25

    .line 390
    .local v10, "seqout":Lorg/bouncycastle/asn1/ASN1Sequence;
    const/16 v25, 0x0

    move-object/from16 v26, v9

    move/from16 v9, v25

    .local v9, "j":I
    .local v26, "setout":Lorg/bouncycastle/asn1/ASN1Set;
    :goto_6
    move-object/from16 v25, v11

    .end local v11    # "e":Ljava/util/Enumeration;
    .local v25, "e":Ljava/util/Enumeration;
    invoke-virtual {v10}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v11

    if-ge v9, v11, :cond_9

    .line 391
    invoke-virtual {v10, v9}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    check-cast v11, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 392
    .local v11, "tg":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v27

    if-nez v27, :cond_7

    .line 393
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v27

    check-cast v27, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v28, v27

    .line 394
    .local v28, "seqin":Lorg/bouncycastle/asn1/ASN1Sequence;
    move-object/from16 v27, v10

    move-object/from16 v10, v28

    .end local v28    # "seqin":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v10, "seqin":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v27, "seqout":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-direct {v1, v10}, Lcom/itextpdf/signatures/PdfPKCS7;->findCRL(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_7

    .line 392
    .end local v27    # "seqout":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v10, "seqout":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_7
    move-object/from16 v27, v10

    .line 396
    .end local v10    # "seqout":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v27    # "seqout":Lorg/bouncycastle/asn1/ASN1Sequence;
    :goto_7
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v10

    move-object/from16 v28, v13

    const/4 v13, 0x1

    .end local v13    # "rsaData":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v28, "rsaData":Lorg/bouncycastle/asn1/ASN1Sequence;
    if-ne v10, v13, :cond_8

    .line 397
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v10

    check-cast v10, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 398
    .local v10, "seqin":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-direct {v1, v10}, Lcom/itextpdf/signatures/PdfPKCS7;->findOcsp(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 390
    .end local v10    # "seqin":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v11    # "tg":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_8
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v11, v25

    move-object/from16 v10, v27

    move-object/from16 v13, v28

    goto :goto_6

    .end local v27    # "seqout":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v28    # "rsaData":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v10, "seqout":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v13    # "rsaData":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_9
    move-object/from16 v27, v10

    move-object/from16 v28, v13

    .line 401
    .end local v9    # "j":I
    .end local v10    # "seqout":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v13    # "rsaData":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v26    # "setout":Lorg/bouncycastle/asn1/ASN1Set;
    .restart local v28    # "rsaData":Lorg/bouncycastle/asn1/ASN1Sequence;
    goto/16 :goto_8

    .end local v25    # "e":Ljava/util/Enumeration;
    .end local v28    # "rsaData":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v11, "e":Ljava/util/Enumeration;
    .restart local v13    # "rsaData":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_a
    move-object/from16 v25, v11

    move-object/from16 v28, v13

    .end local v11    # "e":Ljava/util/Enumeration;
    .end local v13    # "rsaData":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v25    # "e":Ljava/util/Enumeration;
    .restart local v28    # "rsaData":Lorg/bouncycastle/asn1/ASN1Sequence;
    iget-boolean v9, v1, Lcom/itextpdf/signatures/PdfPKCS7;->isCades:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v10, "Signing certificate doesn\'t match the ESS information."

    if-eqz v9, :cond_c

    :try_start_3
    const-string v9, "1.2.840.113549.1.9.16.2.12"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 402
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    check-cast v11, Lorg/bouncycastle/asn1/ASN1Set;

    move-object v9, v11

    .line 403
    .local v9, "setout":Lorg/bouncycastle/asn1/ASN1Set;
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v13

    check-cast v13, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object v11, v13

    .line 404
    .local v11, "seqout":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-static {v11}, Lorg/bouncycastle/asn1/ess/SigningCertificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ess/SigningCertificate;

    move-result-object v13

    .line 405
    .local v13, "sv2":Lorg/bouncycastle/asn1/ess/SigningCertificate;
    invoke-virtual {v13}, Lorg/bouncycastle/asn1/ess/SigningCertificate;->getCerts()[Lorg/bouncycastle/asn1/ess/ESSCertID;

    move-result-object v26

    .line 406
    .local v26, "cerv2m":[Lorg/bouncycastle/asn1/ess/ESSCertID;
    const/16 v18, 0x0

    aget-object v27, v26, v18

    .line 407
    .local v27, "cerv2":Lorg/bouncycastle/asn1/ess/ESSCertID;
    move-object/from16 v29, v9

    .end local v9    # "setout":Lorg/bouncycastle/asn1/ASN1Set;
    .local v29, "setout":Lorg/bouncycastle/asn1/ASN1Set;
    iget-object v9, v1, Lcom/itextpdf/signatures/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v9

    .line 408
    .local v9, "enc2":[B
    const-string v30, "SHA-1"

    invoke-static/range {v30 .. v30}, Lcom/itextpdf/signatures/SignUtils;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v30

    move-object/from16 v31, v30

    .line 409
    .local v31, "m2":Ljava/security/MessageDigest;
    move-object/from16 v30, v11

    move-object/from16 v11, v31

    .end local v31    # "m2":Ljava/security/MessageDigest;
    .local v11, "m2":Ljava/security/MessageDigest;
    .local v30, "seqout":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v11, v9}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v31

    move-object/from16 v32, v31

    .line 410
    .local v32, "signCertHash":[B
    invoke-virtual/range {v27 .. v27}, Lorg/bouncycastle/asn1/ess/ESSCertID;->getCertHash()[B

    move-result-object v31

    move-object/from16 v33, v31

    .line 411
    .local v33, "hs2":[B
    move-object/from16 v31, v9

    move-object/from16 v9, v32

    move-object/from16 v32, v11

    move-object/from16 v11, v33

    .end local v33    # "hs2":[B
    .local v9, "signCertHash":[B
    .local v11, "hs2":[B
    .local v31, "enc2":[B
    .local v32, "m2":Ljava/security/MessageDigest;
    invoke-static {v9, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v33

    if-eqz v33, :cond_b

    .line 413
    const/16 v20, 0x1

    .line 414
    .end local v9    # "signCertHash":[B
    .end local v11    # "hs2":[B
    .end local v13    # "sv2":Lorg/bouncycastle/asn1/ess/SigningCertificate;
    .end local v26    # "cerv2m":[Lorg/bouncycastle/asn1/ess/ESSCertID;
    .end local v27    # "cerv2":Lorg/bouncycastle/asn1/ess/ESSCertID;
    .end local v29    # "setout":Lorg/bouncycastle/asn1/ASN1Set;
    .end local v30    # "seqout":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v31    # "enc2":[B
    .end local v32    # "m2":Ljava/security/MessageDigest;
    goto/16 :goto_8

    .line 412
    .restart local v9    # "signCertHash":[B
    .restart local v11    # "hs2":[B
    .restart local v13    # "sv2":Lorg/bouncycastle/asn1/ess/SigningCertificate;
    .restart local v26    # "cerv2m":[Lorg/bouncycastle/asn1/ess/ESSCertID;
    .restart local v27    # "cerv2":Lorg/bouncycastle/asn1/ess/ESSCertID;
    .restart local v29    # "setout":Lorg/bouncycastle/asn1/ASN1Set;
    .restart local v30    # "seqout":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v31    # "enc2":[B
    .restart local v32    # "m2":Ljava/security/MessageDigest;
    :cond_b
    move-object/from16 v33, v9

    .end local v9    # "signCertHash":[B
    .local v33, "signCertHash":[B
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "contentsKey":[B
    .end local p2    # "filterSubtype":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local p3    # "provider":Ljava/lang/String;
    throw v9

    .line 414
    .end local v11    # "hs2":[B
    .end local v13    # "sv2":Lorg/bouncycastle/asn1/ess/SigningCertificate;
    .end local v26    # "cerv2m":[Lorg/bouncycastle/asn1/ess/ESSCertID;
    .end local v27    # "cerv2":Lorg/bouncycastle/asn1/ess/ESSCertID;
    .end local v29    # "setout":Lorg/bouncycastle/asn1/ASN1Set;
    .end local v30    # "seqout":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v31    # "enc2":[B
    .end local v32    # "m2":Ljava/security/MessageDigest;
    .end local v33    # "signCertHash":[B
    .restart local p1    # "contentsKey":[B
    .restart local p2    # "filterSubtype":Lcom/itextpdf/kernel/pdf/PdfName;
    .restart local p3    # "provider":Ljava/lang/String;
    :cond_c
    iget-boolean v9, v1, Lcom/itextpdf/signatures/PdfPKCS7;->isCades:Z

    if-eqz v9, :cond_e

    const-string v9, "1.2.840.113549.1.9.16.2.47"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 415
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    check-cast v11, Lorg/bouncycastle/asn1/ASN1Set;

    move-object v9, v11

    .line 416
    .local v9, "setout":Lorg/bouncycastle/asn1/ASN1Set;
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v13

    check-cast v13, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object v11, v13

    .line 417
    .local v11, "seqout":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-static {v11}, Lorg/bouncycastle/asn1/ess/SigningCertificateV2;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ess/SigningCertificateV2;

    move-result-object v13

    .line 418
    .local v13, "sv2":Lorg/bouncycastle/asn1/ess/SigningCertificateV2;
    invoke-virtual {v13}, Lorg/bouncycastle/asn1/ess/SigningCertificateV2;->getCerts()[Lorg/bouncycastle/asn1/ess/ESSCertIDv2;

    move-result-object v26

    .line 419
    .local v26, "cerv2m":[Lorg/bouncycastle/asn1/ess/ESSCertIDv2;
    const/16 v18, 0x0

    aget-object v27, v26, v18

    .line 420
    .local v27, "cerv2":Lorg/bouncycastle/asn1/ess/ESSCertIDv2;
    invoke-virtual/range {v27 .. v27}, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v29

    .line 421
    .local v29, "ai2":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    move-object/from16 v30, v5

    .end local v5    # "idSeq2":Ljava/lang/String;
    .local v30, "idSeq2":Ljava/lang/String;
    iget-object v5, v1, Lcom/itextpdf/signatures/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v5

    .line 422
    .local v5, "enc2":[B
    invoke-virtual/range {v29 .. v29}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/itextpdf/signatures/DigestAlgorithms;->getDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/itextpdf/signatures/SignUtils;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v31

    move-object/from16 v32, v31

    .line 423
    .restart local v32    # "m2":Ljava/security/MessageDigest;
    move-object/from16 v31, v8

    move-object/from16 v8, v32

    .end local v32    # "m2":Ljava/security/MessageDigest;
    .local v8, "m2":Ljava/security/MessageDigest;
    .local v31, "seq2":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v8, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v32

    move-object/from16 v33, v32

    .line 424
    .restart local v33    # "signCertHash":[B
    invoke-virtual/range {v27 .. v27}, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;->getCertHash()[B

    move-result-object v32

    move-object/from16 v34, v32

    .line 425
    .local v34, "hs2":[B
    move-object/from16 v32, v5

    move-object/from16 v5, v33

    move-object/from16 v33, v8

    move-object/from16 v8, v34

    .end local v34    # "hs2":[B
    .local v5, "signCertHash":[B
    .local v8, "hs2":[B
    .local v32, "enc2":[B
    .local v33, "m2":Ljava/security/MessageDigest;
    invoke-static {v5, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v34

    if-eqz v34, :cond_d

    .line 427
    const/16 v20, 0x1

    goto :goto_8

    .line 426
    :cond_d
    move-object/from16 v34, v5

    .end local v5    # "signCertHash":[B
    .local v34, "signCertHash":[B
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "contentsKey":[B
    .end local p2    # "filterSubtype":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local p3    # "provider":Ljava/lang/String;
    throw v5

    .line 414
    .end local v9    # "setout":Lorg/bouncycastle/asn1/ASN1Set;
    .end local v11    # "seqout":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v13    # "sv2":Lorg/bouncycastle/asn1/ess/SigningCertificateV2;
    .end local v26    # "cerv2m":[Lorg/bouncycastle/asn1/ess/ESSCertIDv2;
    .end local v27    # "cerv2":Lorg/bouncycastle/asn1/ess/ESSCertIDv2;
    .end local v29    # "ai2":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v30    # "idSeq2":Ljava/lang/String;
    .end local v31    # "seq2":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v32    # "enc2":[B
    .end local v33    # "m2":Ljava/security/MessageDigest;
    .end local v34    # "signCertHash":[B
    .local v5, "idSeq2":Ljava/lang/String;
    .local v8, "seq2":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local p1    # "contentsKey":[B
    .restart local p2    # "filterSubtype":Lcom/itextpdf/kernel/pdf/PdfName;
    .restart local p3    # "provider":Ljava/lang/String;
    :cond_e
    move-object/from16 v30, v5

    move-object/from16 v31, v8

    .line 381
    .end local v5    # "idSeq2":Ljava/lang/String;
    .end local v8    # "seq2":Lorg/bouncycastle/asn1/ASN1Sequence;
    :goto_8
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v8, v21

    move-object/from16 v5, v22

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    move-object/from16 v13, v28

    goto/16 :goto_5

    .end local v22    # "sseq":Lorg/bouncycastle/asn1/ASN1Set;
    .end local v23    # "objId":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v24    # "content":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v25    # "e":Ljava/util/Enumeration;
    .end local v28    # "rsaData":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v5, "sseq":Lorg/bouncycastle/asn1/ASN1Set;
    .local v9, "objId":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v10, "content":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v11, "e":Ljava/util/Enumeration;
    .local v13, "rsaData":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_f
    move-object/from16 v22, v5

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move-object/from16 v28, v13

    .line 430
    .end local v5    # "sseq":Lorg/bouncycastle/asn1/ASN1Set;
    .end local v6    # "k":I
    .end local v9    # "objId":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v10    # "content":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v11    # "e":Ljava/util/Enumeration;
    .end local v13    # "rsaData":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v22    # "sseq":Lorg/bouncycastle/asn1/ASN1Set;
    .restart local v23    # "objId":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v24    # "content":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v25    # "e":Ljava/util/Enumeration;
    .restart local v28    # "rsaData":Lorg/bouncycastle/asn1/ASN1Sequence;
    iget-object v5, v1, Lcom/itextpdf/signatures/PdfPKCS7;->digestAttr:[B

    if-eqz v5, :cond_10

    .line 432
    add-int/lit8 v0, v0, 0x1

    move/from16 v5, v20

    goto :goto_9

    .line 431
    :cond_10
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Authenticated attribute is missing the digest."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "contentsKey":[B
    .end local p2    # "filterSubtype":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local p3    # "provider":Ljava/lang/String;
    throw v5

    .line 374
    .end local v14    # "tagsig":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .end local v20    # "foundCades":Z
    .end local v21    # "issuerAndSerialNumber":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v22    # "sseq":Lorg/bouncycastle/asn1/ASN1Set;
    .end local v23    # "objId":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v24    # "content":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v25    # "e":Ljava/util/Enumeration;
    .end local v28    # "rsaData":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v5, "foundCades":Z
    .local v8, "issuerAndSerialNumber":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v9    # "objId":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v10    # "content":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v11    # "e":Ljava/util/Enumeration;
    .restart local v13    # "rsaData":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local p1    # "contentsKey":[B
    .restart local p2    # "filterSubtype":Lcom/itextpdf/kernel/pdf/PdfName;
    .restart local p3    # "provider":Ljava/lang/String;
    :cond_11
    move/from16 v20, v5

    move-object/from16 v21, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move-object/from16 v28, v13

    .line 434
    .end local v8    # "issuerAndSerialNumber":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v9    # "objId":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v10    # "content":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v11    # "e":Ljava/util/Enumeration;
    .end local v13    # "rsaData":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v21    # "issuerAndSerialNumber":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v23    # "objId":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v24    # "content":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v25    # "e":Ljava/util/Enumeration;
    .restart local v28    # "rsaData":Lorg/bouncycastle/asn1/ASN1Sequence;
    :goto_9
    iget-boolean v6, v1, Lcom/itextpdf/signatures/PdfPKCS7;->isCades:Z

    if-eqz v6, :cond_13

    if-eqz v5, :cond_12

    goto :goto_a

    .line 435
    :cond_12
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v8, "CAdES ESS information missing."

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "contentsKey":[B
    .end local p2    # "filterSubtype":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local p3    # "provider":Ljava/lang/String;
    throw v6

    .line 436
    .restart local p1    # "contentsKey":[B
    .restart local p2    # "filterSubtype":Lcom/itextpdf/kernel/pdf/PdfName;
    .restart local p3    # "provider":Ljava/lang/String;
    :cond_13
    :goto_a
    add-int/lit8 v6, v0, 0x1

    .end local v0    # "next":I
    .local v6, "next":I
    invoke-virtual {v12, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/itextpdf/signatures/PdfPKCS7;->digestEncryptionAlgorithmOid:Ljava/lang/String;

    .line 437
    add-int/lit8 v0, v6, 0x1

    .end local v6    # "next":I
    .restart local v0    # "next":I
    invoke-virtual {v12, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    iput-object v6, v1, Lcom/itextpdf/signatures/PdfPKCS7;->digest:[B

    .line 438
    invoke-virtual {v12}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    if-ge v0, v6, :cond_15

    invoke-virtual {v12, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    instance-of v6, v6, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v6, :cond_15

    .line 439
    invoke-virtual {v12, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 440
    .local v6, "taggedObject":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    const/4 v8, 0x0

    invoke-static {v6, v8}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v9

    move-object v8, v9

    .line 441
    .local v8, "unat":Lorg/bouncycastle/asn1/ASN1Set;
    new-instance v9, Lorg/bouncycastle/asn1/cms/AttributeTable;

    invoke-direct {v9, v8}, Lorg/bouncycastle/asn1/cms/AttributeTable;-><init>(Lorg/bouncycastle/asn1/ASN1Set;)V

    .line 442
    .local v9, "attble":Lorg/bouncycastle/asn1/cms/AttributeTable;
    sget-object v10, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_signatureTimeStampToken:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v9, v10}, Lorg/bouncycastle/asn1/cms/AttributeTable;->get(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/cms/Attribute;

    move-result-object v10

    .line 443
    .local v10, "ts":Lorg/bouncycastle/asn1/cms/Attribute;
    if-eqz v10, :cond_14

    invoke-virtual {v10}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v11

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v11

    if-lez v11, :cond_14

    .line 444
    invoke-virtual {v10}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v11

    .line 445
    .local v11, "attributeValues":Lorg/bouncycastle/asn1/ASN1Set;
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v13

    invoke-static {v13}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v13

    .line 446
    .local v13, "tokenSequence":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-static {v13}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v14

    .line 447
    .local v14, "contentInfo":Lorg/bouncycastle/asn1/cms/ContentInfo;
    move/from16 v17, v0

    .end local v0    # "next":I
    .local v17, "next":I
    new-instance v0, Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-direct {v0, v14}, Lorg/bouncycastle/tsp/TimeStampToken;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    iput-object v0, v1, Lcom/itextpdf/signatures/PdfPKCS7;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    goto :goto_b

    .line 443
    .end local v11    # "attributeValues":Lorg/bouncycastle/asn1/ASN1Set;
    .end local v13    # "tokenSequence":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v14    # "contentInfo":Lorg/bouncycastle/asn1/cms/ContentInfo;
    .end local v17    # "next":I
    .restart local v0    # "next":I
    :cond_14
    move/from16 v17, v0

    .end local v0    # "next":I
    .restart local v17    # "next":I
    goto :goto_b

    .line 438
    .end local v6    # "taggedObject":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .end local v8    # "unat":Lorg/bouncycastle/asn1/ASN1Set;
    .end local v9    # "attble":Lorg/bouncycastle/asn1/cms/AttributeTable;
    .end local v10    # "ts":Lorg/bouncycastle/asn1/cms/Attribute;
    .end local v17    # "next":I
    .restart local v0    # "next":I
    :cond_15
    move/from16 v17, v0

    .line 450
    .end local v0    # "next":I
    .restart local v17    # "next":I
    :goto_b
    iget-boolean v0, v1, Lcom/itextpdf/signatures/PdfPKCS7;->isTsp:Z

    if-eqz v0, :cond_16

    .line 451
    invoke-static {v7}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    .line 452
    .local v0, "contentInfoTsp":Lorg/bouncycastle/asn1/cms/ContentInfo;
    new-instance v6, Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-direct {v6, v0}, Lorg/bouncycastle/tsp/TimeStampToken;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    iput-object v6, v1, Lcom/itextpdf/signatures/PdfPKCS7;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    .line 453
    invoke-virtual {v6}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object v6

    .line 454
    .local v6, "info":Lorg/bouncycastle/tsp/TimeStampTokenInfo;
    invoke-virtual {v6}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v8

    .line 455
    .local v8, "algOID":Ljava/lang/String;
    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/itextpdf/signatures/DigestAlgorithms;->getMessageDigestFromOid(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    iput-object v9, v1, Lcom/itextpdf/signatures/PdfPKCS7;->messageDigest:Ljava/security/MessageDigest;

    .line 456
    .end local v0    # "contentInfoTsp":Lorg/bouncycastle/asn1/cms/ContentInfo;
    .end local v6    # "info":Lorg/bouncycastle/tsp/TimeStampTokenInfo;
    .end local v8    # "algOID":Ljava/lang/String;
    goto :goto_d

    .line 457
    :cond_16
    iget-object v0, v1, Lcom/itextpdf/signatures/PdfPKCS7;->rsaData:[B

    if-nez v0, :cond_17

    iget-object v0, v1, Lcom/itextpdf/signatures/PdfPKCS7;->digestAttr:[B

    if-eqz v0, :cond_19

    .line 458
    :cond_17
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Adbe_pkcs7_sha1:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/signatures/PdfPKCS7;->getFilterSubtype()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 459
    const-string v0, "SHA1"

    invoke-static {v0, v3}, Lcom/itextpdf/signatures/DigestAlgorithms;->getMessageDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, v1, Lcom/itextpdf/signatures/PdfPKCS7;->messageDigest:Ljava/security/MessageDigest;

    goto :goto_c

    .line 461
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/signatures/PdfPKCS7;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/itextpdf/signatures/DigestAlgorithms;->getMessageDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, v1, Lcom/itextpdf/signatures/PdfPKCS7;->messageDigest:Ljava/security/MessageDigest;

    .line 463
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/signatures/PdfPKCS7;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/itextpdf/signatures/DigestAlgorithms;->getMessageDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, v1, Lcom/itextpdf/signatures/PdfPKCS7;->encContDigest:Ljava/security/MessageDigest;

    .line 465
    :cond_19
    iget-object v0, v1, Lcom/itextpdf/signatures/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/itextpdf/signatures/PdfPKCS7;->initSignature(Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v0

    iput-object v0, v1, Lcom/itextpdf/signatures/PdfPKCS7;->sig:Ljava/security/Signature;

    .line 469
    .end local v2    # "issuer":Lorg/bouncycastle/jce/X509Principal;
    .end local v4    # "serialNumber":Ljava/math/BigInteger;
    .end local v5    # "foundCades":Z
    .end local v7    # "signedData":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v12    # "signerInfo":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v15    # "signerInfos":Lorg/bouncycastle/asn1/ASN1Set;
    .end local v16    # "pkcs":Lorg/bouncycastle/asn1/ASN1Primitive;
    .end local v17    # "next":I
    .end local v19    # "din":Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v21    # "issuerAndSerialNumber":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v23    # "objId":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v24    # "content":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v25    # "e":Ljava/util/Enumeration;
    .end local v28    # "rsaData":Lorg/bouncycastle/asn1/ASN1Sequence;
    :goto_d
    nop

    .line 470
    return-void

    .line 367
    .restart local v2    # "issuer":Lorg/bouncycastle/jce/X509Principal;
    .restart local v4    # "serialNumber":Ljava/math/BigInteger;
    .local v5, "pkcs":Lorg/bouncycastle/asn1/ASN1Primitive;
    .restart local v7    # "signedData":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v8, "issuerAndSerialNumber":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v9, "objId":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v10, "content":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v11, "e":Ljava/util/Enumeration;
    .restart local v12    # "signerInfo":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v13, "rsaData":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v14, "next":I
    .restart local v15    # "signerInfos":Lorg/bouncycastle/asn1/ASN1Set;
    .restart local v19    # "din":Lorg/bouncycastle/asn1/ASN1InputStream;
    :cond_1a
    move-object/from16 v16, v5

    move-object/from16 v21, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move-object/from16 v28, v13

    .end local v5    # "pkcs":Lorg/bouncycastle/asn1/ASN1Primitive;
    .end local v8    # "issuerAndSerialNumber":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v9    # "objId":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v10    # "content":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v11    # "e":Ljava/util/Enumeration;
    .end local v13    # "rsaData":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v16    # "pkcs":Lorg/bouncycastle/asn1/ASN1Primitive;
    .restart local v21    # "issuerAndSerialNumber":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v23    # "objId":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v24    # "content":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v25    # "e":Ljava/util/Enumeration;
    .restart local v28    # "rsaData":Lorg/bouncycastle/asn1/ASN1Sequence;
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v5, "Cannot find signing certificate with serial {0}."

    invoke-direct {v0, v5}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    invoke-virtual {v2}, Lorg/bouncycastle/jce/X509Principal;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " / "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v8, 0x10

    invoke-virtual {v4, v8}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v5, v8

    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;

    move-result-object v0

    .end local p1    # "contentsKey":[B
    .end local p2    # "filterSubtype":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local p3    # "provider":Ljava/lang/String;
    throw v0

    .line 346
    .end local v2    # "issuer":Lorg/bouncycastle/jce/X509Principal;
    .end local v12    # "signerInfo":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v16    # "pkcs":Lorg/bouncycastle/asn1/ASN1Primitive;
    .end local v19    # "din":Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v21    # "issuerAndSerialNumber":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v23    # "objId":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v24    # "content":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v25    # "e":Ljava/util/Enumeration;
    .end local v28    # "rsaData":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v4, "din":Lorg/bouncycastle/asn1/ASN1InputStream;
    .restart local v5    # "pkcs":Lorg/bouncycastle/asn1/ASN1Primitive;
    .restart local v9    # "objId":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v10    # "content":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v11    # "e":Ljava/util/Enumeration;
    .restart local v13    # "rsaData":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local p1    # "contentsKey":[B
    .restart local p2    # "filterSubtype":Lcom/itextpdf/kernel/pdf/PdfName;
    .restart local p3    # "provider":Ljava/lang/String;
    :cond_1b
    move-object/from16 v19, v4

    move-object/from16 v16, v5

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move-object/from16 v28, v13

    .end local v4    # "din":Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v5    # "pkcs":Lorg/bouncycastle/asn1/ASN1Primitive;
    .end local v9    # "objId":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v10    # "content":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v11    # "e":Ljava/util/Enumeration;
    .end local v13    # "rsaData":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v16    # "pkcs":Lorg/bouncycastle/asn1/ASN1Primitive;
    .restart local v19    # "din":Lorg/bouncycastle/asn1/ASN1InputStream;
    .restart local v23    # "objId":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v24    # "content":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v25    # "e":Ljava/util/Enumeration;
    .restart local v28    # "rsaData":Lorg/bouncycastle/asn1/ASN1Sequence;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "This PKCS#7 object has multiple SignerInfos. Only one is supported at this time."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "contentsKey":[B
    .end local p2    # "filterSubtype":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local p3    # "provider":Ljava/lang/String;
    throw v0

    .line 272
    .end local v14    # "next":I
    .end local v15    # "signerInfos":Lorg/bouncycastle/asn1/ASN1Set;
    .end local v16    # "pkcs":Lorg/bouncycastle/asn1/ASN1Primitive;
    .end local v19    # "din":Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v23    # "objId":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v24    # "content":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v25    # "e":Ljava/util/Enumeration;
    .end local v28    # "rsaData":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v4    # "din":Lorg/bouncycastle/asn1/ASN1InputStream;
    .restart local v5    # "pkcs":Lorg/bouncycastle/asn1/ASN1Primitive;
    .restart local v9    # "objId":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local p1    # "contentsKey":[B
    .restart local p2    # "filterSubtype":Lcom/itextpdf/kernel/pdf/PdfName;
    .restart local p3    # "provider":Ljava/lang/String;
    :cond_1c
    move-object/from16 v19, v4

    move-object/from16 v16, v5

    move-object/from16 v23, v9

    .end local v4    # "din":Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v5    # "pkcs":Lorg/bouncycastle/asn1/ASN1Primitive;
    .end local v9    # "objId":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v16    # "pkcs":Lorg/bouncycastle/asn1/ASN1Primitive;
    .restart local v19    # "din":Lorg/bouncycastle/asn1/ASN1InputStream;
    .restart local v23    # "objId":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not a valid PKCS#7 object - not signed data."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "contentsKey":[B
    .end local p2    # "filterSubtype":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local p3    # "provider":Ljava/lang/String;
    throw v0

    .line 267
    .end local v7    # "signedData":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v16    # "pkcs":Lorg/bouncycastle/asn1/ASN1Primitive;
    .end local v19    # "din":Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v23    # "objId":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v4    # "din":Lorg/bouncycastle/asn1/ASN1InputStream;
    .restart local v5    # "pkcs":Lorg/bouncycastle/asn1/ASN1Primitive;
    .restart local p1    # "contentsKey":[B
    .restart local p2    # "filterSubtype":Lcom/itextpdf/kernel/pdf/PdfName;
    .restart local p3    # "provider":Ljava/lang/String;
    :cond_1d
    move-object/from16 v19, v4

    move-object/from16 v16, v5

    .end local v4    # "din":Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v5    # "pkcs":Lorg/bouncycastle/asn1/ASN1Primitive;
    .restart local v16    # "pkcs":Lorg/bouncycastle/asn1/ASN1Primitive;
    .restart local v19    # "din":Lorg/bouncycastle/asn1/ASN1InputStream;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not a valid PKCS#7 object - not a sequence"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "contentsKey":[B
    .end local p2    # "filterSubtype":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local p3    # "provider":Ljava/lang/String;
    throw v0

    .line 263
    .end local v16    # "pkcs":Lorg/bouncycastle/asn1/ASN1Primitive;
    .end local v19    # "din":Lorg/bouncycastle/asn1/ASN1InputStream;
    .restart local v4    # "din":Lorg/bouncycastle/asn1/ASN1InputStream;
    .restart local p1    # "contentsKey":[B
    .restart local p2    # "filterSubtype":Lcom/itextpdf/kernel/pdf/PdfName;
    .restart local p3    # "provider":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v19, v4

    move-object v2, v0

    .end local v4    # "din":Lorg/bouncycastle/asn1/ASN1InputStream;
    .restart local v19    # "din":Lorg/bouncycastle/asn1/ASN1InputStream;
    move-object v0, v2

    .line 264
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot decode PKCS#7 SignedData object."

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "contentsKey":[B
    .end local p2    # "filterSubtype":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local p3    # "provider":Ljava/lang/String;
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 467
    .end local v0    # "e":Ljava/io/IOException;
    .end local v19    # "din":Lorg/bouncycastle/asn1/ASN1InputStream;
    .restart local p1    # "contentsKey":[B
    .restart local p2    # "filterSubtype":Lcom/itextpdf/kernel/pdf/PdfName;
    .restart local p3    # "provider":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 468
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/itextpdf/kernel/PdfException;

    invoke-direct {v2, v0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>([B[BLjava/lang/String;)V
    .locals 3
    .param p1, "contentsKey"    # [B
    .param p2, "certsKey"    # [B
    .param p3, "provider"    # Ljava/lang/String;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    const/4 v0, 0x1

    iput v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->version:I

    .line 567
    iput v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signerversion:I

    .line 220
    :try_start_0
    iput-object p3, p0, Lcom/itextpdf/signatures/PdfPKCS7;->provider:Ljava/lang/String;

    .line 221
    invoke-static {p2}, Lcom/itextpdf/signatures/SignUtils;->readAllCerts([B)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->certs:Ljava/util/Collection;

    .line 222
    iput-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signCerts:Ljava/util/Collection;

    .line 223
    invoke-static {v0}, Lcom/itextpdf/signatures/SignUtils;->getFirstElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->crls:Ljava/util/Collection;

    .line 226
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 227
    .local v0, "in":Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digest:[B

    .line 229
    const-string v1, "SHA1withRSA"

    invoke-static {v1, p3}, Lcom/itextpdf/signatures/SignUtils;->getSignatureHelper(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->sig:Ljava/security/Signature;

    .line 230
    iget-object v2, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 233
    const-string v1, "1.2.840.10040.4.3"

    iput-object v1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestAlgorithmOid:Ljava/lang/String;

    .line 234
    const-string v1, "1.3.36.3.3.1.2"

    iput-object v1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestEncryptionAlgorithmOid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v0    # "in":Lorg/bouncycastle/asn1/ASN1InputStream;
    nop

    .line 238
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private buildUnauthenticatedAttributes([B)Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .locals 6
    .param p1, "timeStampToken"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 956
    if-nez p1, :cond_0

    .line 957
    const/4 v0, 0x0

    return-object v0

    .line 960
    :cond_0
    const-string v0, "1.2.840.113549.1.9.16.2.14"

    .line 962
    .local v0, "ID_TIME_STAMP_TOKEN":Ljava/lang/String;
    new-instance v1, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 963
    .local v1, "tempstream":Lorg/bouncycastle/asn1/ASN1InputStream;
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 965
    .local v2, "unauthAttributes":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 966
    .local v3, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v4, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v4, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 967
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 968
    .local v4, "seq":Lorg/bouncycastle/asn1/ASN1Sequence;
    new-instance v5, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v5, v4}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v3, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 970
    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 971
    return-object v2
.end method

.method private findCRL(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 1353
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->crls:Ljava/util/Collection;

    .line 1354
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1355
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-interface {v2}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    const-string v3, "DER"

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1356
    .local v1, "ar":Ljava/io/ByteArrayInputStream;
    invoke-static {v1}, Lcom/itextpdf/signatures/SignUtils;->parseCrlFromStream(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CRL;

    .line 1357
    .local v2, "crl":Ljava/security/cert/X509CRL;
    iget-object v3, p0, Lcom/itextpdf/signatures/PdfPKCS7;->crls:Ljava/util/Collection;

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1354
    nop

    .end local v1    # "ar":Ljava/io/ByteArrayInputStream;
    .end local v2    # "crl":Ljava/security/cert/X509CRL;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1361
    .end local v0    # "k":I
    :cond_0
    goto :goto_1

    .line 1359
    :catch_0
    move-exception v0

    .line 1362
    :goto_1
    return-void
.end method

.method private findOcsp(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1410
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->basicResp:Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    .line 1411
    const/4 v0, 0x0

    .line 1413
    .local v0, "ret":Z
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v2, :cond_0

    .line 1414
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_basic:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1415
    nop

    .line 1437
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 1438
    .local v1, "os":Lorg/bouncycastle/asn1/ASN1OctetString;
    new-instance v2, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 1439
    .local v2, "inp":Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    move-result-object v3

    .line 1440
    .local v3, "resp":Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    new-instance v4, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    invoke-direct {v4, v3}, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;-><init>(Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;)V

    iput-object v4, p0, Lcom/itextpdf/signatures/PdfPKCS7;->basicResp:Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    .line 1441
    return-void

    .line 1417
    .end local v1    # "os":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v2    # "inp":Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v3    # "resp":Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    :cond_0
    const/4 v0, 0x1

    .line 1418
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1419
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    instance-of v3, v3, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v3, :cond_1

    .line 1420
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    move-object p1, v1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 1421
    const/4 v0, 0x0

    .line 1422
    goto :goto_2

    .line 1424
    :cond_1
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    instance-of v3, v3, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_3

    .line 1425
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 1426
    .local v1, "tag":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    instance-of v3, v3, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v3, :cond_2

    .line 1427
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    move-object p1, v3

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 1428
    const/4 v0, 0x0

    .line 1429
    goto :goto_2

    .line 1431
    :cond_2
    return-void

    .line 1418
    .end local v1    # "tag":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1434
    .end local v2    # "k":I
    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    .line 1435
    return-void

    .line 1434
    :cond_5
    goto :goto_0
.end method

.method private getAuthenticatedAttributeSet([BLjava/util/Collection;Ljava/util/Collection;Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;)Lorg/bouncycastle/asn1/DERSet;
    .locals 17
    .param p1, "secondDigest"    # [B
    .param p4, "sigtype"    # Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Collection<",
            "[B>;",
            "Ljava/util/Collection<",
            "[B>;",
            "Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;",
            ")",
            "Lorg/bouncycastle/asn1/DERSet;"
        }
    .end annotation

    .local p2, "ocsp":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    .local p3, "crlBytes":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    move-object/from16 v1, p0

    .line 1057
    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1058
    .local v0, "attribute":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1059
    .local v2, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v3, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "1.2.840.113549.1.9.3"

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1060
    new-instance v3, Lorg/bouncycastle/asn1/DERSet;

    new-instance v4, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "1.2.840.113549.1.7.1"

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1061
    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1062
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v2, v3

    .line 1063
    new-instance v3, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "1.2.840.113549.1.9.4"

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1064
    new-instance v3, Lorg/bouncycastle/asn1/DERSet;

    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v5, p1

    :try_start_1
    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1065
    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1066
    const/4 v3, 0x0

    .line 1067
    .local v3, "haveCrl":Z
    if-eqz p3, :cond_1

    .line 1068
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 1069
    .local v6, "bCrl":[B
    if-eqz v6, :cond_0

    .line 1070
    const/4 v3, 0x1

    .line 1071
    goto :goto_1

    .line 1073
    .end local v6    # "bCrl":[B
    :cond_0
    goto :goto_0

    .line 1075
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    if-eqz v3, :cond_9

    .line 1076
    :cond_3
    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v2, v4

    .line 1077
    new-instance v4, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v6, "1.2.840.113583.1.1.8"

    invoke-direct {v4, v6}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1079
    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1081
    .local v4, "revocationV":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_6

    .line 1082
    new-instance v8, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1083
    .local v8, "v2":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 1084
    .local v10, "bCrl":[B
    if-nez v10, :cond_4

    .line 1085
    goto :goto_2

    .line 1086
    :cond_4
    new-instance v11, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-direct {v12, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v11, v12}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 1087
    .local v11, "t":Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v12

    invoke-virtual {v8, v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1088
    .end local v10    # "bCrl":[B
    .end local v11    # "t":Lorg/bouncycastle/asn1/ASN1InputStream;
    goto :goto_2

    .line 1089
    :cond_5
    new-instance v9, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v10, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v10, v8}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v9, v7, v6, v10}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1092
    .end local v8    # "v2":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_6
    if-eqz p2, :cond_8

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    .line 1093
    new-instance v8, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1094
    .local v8, "vo1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 1095
    .local v10, "ocspBytes":[B
    new-instance v11, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v11, v10}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 1096
    .local v11, "doctet":Lorg/bouncycastle/asn1/DEROctetString;
    new-instance v12, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1097
    .local v12, "v2":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v13, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_basic:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v12, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1098
    invoke-virtual {v12, v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1099
    new-instance v13, Lorg/bouncycastle/asn1/ASN1Enumerated;

    invoke-direct {v13, v6}, Lorg/bouncycastle/asn1/ASN1Enumerated;-><init>(I)V

    .line 1100
    .local v13, "den":Lorg/bouncycastle/asn1/ASN1Enumerated;
    new-instance v14, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v14}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1101
    .local v14, "v3":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v14, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1102
    new-instance v15, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v12}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    move/from16 v16, v3

    const/4 v3, 0x0

    .end local v3    # "haveCrl":Z
    .local v16, "haveCrl":Z
    invoke-direct {v15, v7, v3, v6}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v14, v15}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1103
    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v14}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v8, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1104
    .end local v10    # "ocspBytes":[B
    .end local v11    # "doctet":Lorg/bouncycastle/asn1/DEROctetString;
    .end local v12    # "v2":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v13    # "den":Lorg/bouncycastle/asn1/ASN1Enumerated;
    .end local v14    # "v3":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    move v6, v3

    move/from16 v3, v16

    goto :goto_3

    .line 1105
    .end local v16    # "haveCrl":Z
    .restart local v3    # "haveCrl":Z
    :cond_7
    move/from16 v16, v3

    .end local v3    # "haveCrl":Z
    .restart local v16    # "haveCrl":Z
    new-instance v3, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v8}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v3, v7, v7, v6}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_4

    .line 1092
    .end local v8    # "vo1":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v16    # "haveCrl":Z
    .restart local v3    # "haveCrl":Z
    :cond_8
    move/from16 v16, v3

    .line 1108
    .end local v3    # "haveCrl":Z
    .restart local v16    # "haveCrl":Z
    :goto_4
    new-instance v3, Lorg/bouncycastle/asn1/DERSet;

    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v3, v6}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1109
    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_5

    .line 1075
    .end local v4    # "revocationV":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v16    # "haveCrl":Z
    .restart local v3    # "haveCrl":Z
    :cond_9
    move/from16 v16, v3

    .line 1111
    .end local v3    # "haveCrl":Z
    .restart local v16    # "haveCrl":Z
    :goto_5
    sget-object v3, Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;->CADES:Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v4, p4

    if-ne v4, v3, :cond_a

    .line 1112
    :try_start_2
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v2, v3

    .line 1113
    new-instance v3, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v6, "1.2.840.113549.1.9.16.2.47"

    invoke-direct {v3, v6}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1115
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1116
    .local v3, "aaV2":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v6, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v7, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v8, v1, Lcom/itextpdf/signatures/PdfPKCS7;->digestAlgorithmOid:Ljava/lang/String;

    invoke-direct {v7, v8}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1117
    .local v6, "algoId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1118
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/signatures/PdfPKCS7;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/itextpdf/signatures/PdfPKCS7;->interfaceDigest:Lcom/itextpdf/signatures/IExternalDigest;

    invoke-static {v7, v8}, Lcom/itextpdf/signatures/SignUtils;->getMessageDigest(Ljava/lang/String;Lcom/itextpdf/signatures/IExternalDigest;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 1119
    .local v7, "md":Ljava/security/MessageDigest;
    iget-object v8, v1, Lcom/itextpdf/signatures/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v8

    .line 1120
    .local v8, "dig":[B
    new-instance v9, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v9, v8}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1122
    new-instance v9, Lorg/bouncycastle/asn1/DERSet;

    new-instance v10, Lorg/bouncycastle/asn1/DERSequence;

    new-instance v11, Lorg/bouncycastle/asn1/DERSequence;

    new-instance v12, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v12, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v11, v12}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v10, v11}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v9, v10}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1123
    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v9, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1126
    .end local v3    # "aaV2":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v6    # "algoId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v7    # "md":Ljava/security/MessageDigest;
    .end local v8    # "dig":[B
    :cond_a
    iget-object v3, v1, Lcom/itextpdf/signatures/PdfPKCS7;->signaturePolicyIdentifier:Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;

    if-eqz v3, :cond_b

    .line 1127
    new-instance v3, Lorg/bouncycastle/asn1/cms/Attribute;

    sget-object v6, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_ets_sigPolicyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v7, Lorg/bouncycastle/asn1/DERSet;

    iget-object v8, v1, Lcom/itextpdf/signatures/PdfPKCS7;->signaturePolicyIdentifier:Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;

    invoke-direct {v7, v8}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v3, v6, v7}, Lorg/bouncycastle/asn1/cms/Attribute;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Set;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 1130
    :cond_b
    new-instance v3, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v3

    .line 1131
    .end local v0    # "attribute":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v2    # "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v16    # "haveCrl":Z
    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v5, p1

    :goto_6
    move-object/from16 v4, p4

    .line 1132
    .local v0, "e":Ljava/lang/Exception;
    :goto_7
    new-instance v2, Lcom/itextpdf/kernel/PdfException;

    invoke-direct {v2, v0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private initSignature(Ljava/security/PrivateKey;)Ljava/security/Signature;
    .locals 2
    .param p1, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 719
    invoke-virtual {p0}, Lcom/itextpdf/signatures/PdfPKCS7;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->provider:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/itextpdf/signatures/SignUtils;->getSignatureHelper(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 720
    .local v0, "signature":Ljava/security/Signature;
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 721
    return-object v0
.end method

.method private initSignature(Ljava/security/PublicKey;)Ljava/security/Signature;
    .locals 3
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 725
    invoke-virtual {p0}, Lcom/itextpdf/signatures/PdfPKCS7;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 726
    .local v0, "digestAlgorithm":Ljava/lang/String;
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Adbe_x509_rsa_sha1:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0}, Lcom/itextpdf/signatures/PdfPKCS7;->getFilterSubtype()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 727
    const-string v0, "SHA1withRSA"

    .line 728
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->provider:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/itextpdf/signatures/SignUtils;->getSignatureHelper(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 729
    .local v1, "signature":Ljava/security/Signature;
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 730
    return-object v1
.end method

.method private signCertificateChain()V
    .locals 8

    .line 1309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1310
    .local v0, "cc":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    iget-object v1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1311
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/itextpdf/signatures/PdfPKCS7;->certs:Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1312
    .local v1, "oc":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1313
    iget-object v3, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1314
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1315
    add-int/lit8 v2, v2, -0x1

    .line 1312
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1318
    .end local v2    # "k":I
    :cond_1
    const/4 v2, 0x1

    .line 1319
    .local v2, "found":Z
    :goto_1
    if-eqz v2, :cond_4

    .line 1320
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 1321
    .local v3, "v":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 1322
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 1323
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 1324
    .local v5, "issuer":Ljava/security/cert/X509Certificate;
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    iget-object v7, p0, Lcom/itextpdf/signatures/PdfPKCS7;->provider:Ljava/lang/String;

    invoke-static {v3, v6, v7}, Lcom/itextpdf/signatures/SignUtils;->verifyCertificateSignature(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1325
    const/4 v2, 0x1

    .line 1326
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1327
    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1328
    goto :goto_3

    .line 1322
    .end local v5    # "issuer":Ljava/security/cert/X509Certificate;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1331
    .end local v3    # "v":Ljava/security/cert/X509Certificate;
    .end local v4    # "k":I
    :cond_3
    :goto_3
    goto :goto_1

    .line 1332
    :cond_4
    iput-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signCerts:Ljava/util/Collection;

    .line 1333
    return-void
.end method

.method private verifySigAttributes([B)Z
    .locals 2
    .param p1, "attr"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1233
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/signatures/PdfPKCS7;->initSignature(Ljava/security/PublicKey;)Ljava/security/Signature;

    move-result-object v0

    .line 1234
    .local v0, "signature":Ljava/security/Signature;
    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    .line 1235
    iget-object v1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digest:[B

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public getAuthenticatedAttributeBytes([BLcom/itextpdf/signatures/PdfSigner$CryptoStandard;Ljava/util/Collection;Ljava/util/Collection;)[B
    .locals 2
    .param p1, "secondDigest"    # [B
    .param p2, "sigtype"    # Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;",
            "Ljava/util/Collection<",
            "[B>;",
            "Ljava/util/Collection<",
            "[B>;)[B"
        }
    .end annotation

    .line 1042
    .local p3, "ocsp":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    .local p4, "crlBytes":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    :try_start_0
    invoke-direct {p0, p1, p3, p4, p2}, Lcom/itextpdf/signatures/PdfPKCS7;->getAuthenticatedAttributeSet([BLjava/util/Collection;Ljava/util/Collection;Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;)Lorg/bouncycastle/asn1/DERSet;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/DERSet;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1043
    :catch_0
    move-exception v0

    .line 1044
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAuthenticatedAttributeBytes([B[BLjava/util/Collection;Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;)[B
    .locals 1
    .param p1, "secondDigest"    # [B
    .param p2, "ocsp"    # [B
    .param p4, "sigtype"    # Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/util/Collection<",
            "[B>;",
            "Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;",
            ")[B"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1008
    .local p3, "crlBytes":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, p4, v0, p3}, Lcom/itextpdf/signatures/PdfPKCS7;->getAuthenticatedAttributeBytes([BLcom/itextpdf/signatures/PdfSigner$CryptoStandard;Ljava/util/Collection;Ljava/util/Collection;)[B

    move-result-object v0

    return-object v0
.end method

.method public getCRLs()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .line 1345
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->crls:Ljava/util/Collection;

    return-object v0
.end method

.method public getCertificates()[Ljava/security/cert/Certificate;
    .locals 2

    .line 1280
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->certs:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    return-object v0
.end method

.method public getDigestAlgorithm()Ljava/lang/String;
    .locals 2

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/itextpdf/signatures/PdfPKCS7;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "with"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itextpdf/signatures/PdfPKCS7;->getEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDigestAlgorithmOid()Ljava/lang/String;
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestAlgorithmOid:Ljava/lang/String;

    return-object v0
.end method

.method public getDigestEncryptionAlgorithmOid()Ljava/lang/String;
    .locals 1

    .line 644
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestEncryptionAlgorithmOid:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodedPKCS1()[B
    .locals 4

    .line 758
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->externalDigest:[B

    if-eqz v0, :cond_0

    .line 759
    iput-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digest:[B

    goto :goto_0

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->sig:Ljava/security/Signature;

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digest:[B

    .line 762
    :goto_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 764
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 765
    .local v1, "dout":Lorg/bouncycastle/asn1/ASN1OutputStream;
    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v3, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digest:[B

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    .line 766
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->close()V

    .line 768
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 769
    .end local v0    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "dout":Lorg/bouncycastle/asn1/ASN1OutputStream;
    :catch_0
    move-exception v0

    .line 770
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getEncodedPKCS7()[B
    .locals 6

    .line 782
    sget-object v5, Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;->CMS:Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/signatures/PdfPKCS7;->getEncodedPKCS7([BLcom/itextpdf/signatures/ITSAClient;[BLjava/util/Collection;Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncodedPKCS7([B)[B
    .locals 6
    .param p1, "secondDigest"    # [B

    .line 793
    sget-object v5, Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;->CMS:Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/signatures/PdfPKCS7;->getEncodedPKCS7([BLcom/itextpdf/signatures/ITSAClient;[BLjava/util/Collection;Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncodedPKCS7([BLcom/itextpdf/signatures/ITSAClient;[BLjava/util/Collection;Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;)[B
    .locals 7
    .param p1, "secondDigest"    # [B
    .param p2, "tsaClient"    # Lcom/itextpdf/signatures/ITSAClient;
    .param p3, "ocsp"    # [B
    .param p5, "sigtype"    # Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/itextpdf/signatures/ITSAClient;",
            "[B",
            "Ljava/util/Collection<",
            "[B>;",
            "Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;",
            ")[B"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 811
    .local p4, "crlBytes":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    if-eqz p3, :cond_0

    invoke-static {p3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move-object v4, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/itextpdf/signatures/PdfPKCS7;->getEncodedPKCS7([BLcom/itextpdf/signatures/PdfSigner$CryptoStandard;Lcom/itextpdf/signatures/ITSAClient;Ljava/util/Collection;Ljava/util/Collection;)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncodedPKCS7([BLcom/itextpdf/signatures/PdfSigner$CryptoStandard;Lcom/itextpdf/signatures/ITSAClient;Ljava/util/Collection;Ljava/util/Collection;)[B
    .locals 16
    .param p1, "secondDigest"    # [B
    .param p2, "sigtype"    # Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;
    .param p3, "tsaClient"    # Lcom/itextpdf/signatures/ITSAClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;",
            "Lcom/itextpdf/signatures/ITSAClient;",
            "Ljava/util/Collection<",
            "[B>;",
            "Ljava/util/Collection<",
            "[B>;)[B"
        }
    .end annotation

    .local p4, "ocsp":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    .local p5, "crlBytes":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    .line 828
    :try_start_0
    iget-object v0, v1, Lcom/itextpdf/signatures/PdfPKCS7;->externalDigest:[B

    if-eqz v0, :cond_0

    .line 829
    iput-object v0, v1, Lcom/itextpdf/signatures/PdfPKCS7;->digest:[B

    .line 830
    iget-object v0, v1, Lcom/itextpdf/signatures/PdfPKCS7;->rsaData:[B

    if-eqz v0, :cond_3

    .line 831
    iget-object v0, v1, Lcom/itextpdf/signatures/PdfPKCS7;->externalRsaData:[B

    iput-object v0, v1, Lcom/itextpdf/signatures/PdfPKCS7;->rsaData:[B

    goto :goto_0

    .line 832
    :cond_0
    iget-object v0, v1, Lcom/itextpdf/signatures/PdfPKCS7;->externalRsaData:[B

    if-eqz v0, :cond_1

    iget-object v4, v1, Lcom/itextpdf/signatures/PdfPKCS7;->rsaData:[B

    if-eqz v4, :cond_1

    .line 833
    iput-object v0, v1, Lcom/itextpdf/signatures/PdfPKCS7;->rsaData:[B

    .line 834
    iget-object v4, v1, Lcom/itextpdf/signatures/PdfPKCS7;->sig:Ljava/security/Signature;

    invoke-virtual {v4, v0}, Ljava/security/Signature;->update([B)V

    .line 835
    iget-object v0, v1, Lcom/itextpdf/signatures/PdfPKCS7;->sig:Ljava/security/Signature;

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    iput-object v0, v1, Lcom/itextpdf/signatures/PdfPKCS7;->digest:[B

    goto :goto_0

    .line 837
    :cond_1
    iget-object v0, v1, Lcom/itextpdf/signatures/PdfPKCS7;->rsaData:[B

    if-eqz v0, :cond_2

    .line 838
    iget-object v0, v1, Lcom/itextpdf/signatures/PdfPKCS7;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iput-object v0, v1, Lcom/itextpdf/signatures/PdfPKCS7;->rsaData:[B

    .line 839
    iget-object v4, v1, Lcom/itextpdf/signatures/PdfPKCS7;->sig:Ljava/security/Signature;

    invoke-virtual {v4, v0}, Ljava/security/Signature;->update([B)V

    .line 841
    :cond_2
    iget-object v0, v1, Lcom/itextpdf/signatures/PdfPKCS7;->sig:Ljava/security/Signature;

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    iput-object v0, v1, Lcom/itextpdf/signatures/PdfPKCS7;->digest:[B

    .line 845
    :cond_3
    :goto_0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 846
    .local v0, "digestAlgorithms":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v4, v1, Lcom/itextpdf/signatures/PdfPKCS7;->digestalgos:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 847
    .local v5, "element":Ljava/lang/Object;
    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 848
    .local v6, "algos":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v7, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object v8, v5

    check-cast v8, Ljava/lang/String;

    invoke-direct {v7, v8}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 849
    sget-object v7, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 850
    new-instance v7, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v7, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 851
    .end local v5    # "element":Ljava/lang/Object;
    .end local v6    # "algos":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    goto :goto_1

    .line 854
    :cond_4
    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 855
    .local v4, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v5, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v6, "1.2.840.113549.1.7.1"

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 856
    iget-object v5, v1, Lcom/itextpdf/signatures/PdfPKCS7;->rsaData:[B

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    .line 857
    new-instance v5, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v7, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v8, v1, Lcom/itextpdf/signatures/PdfPKCS7;->rsaData:[B

    invoke-direct {v7, v8}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v5, v6, v7}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 858
    :cond_5
    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 862
    .local v5, "contentinfo":Lorg/bouncycastle/asn1/DERSequence;
    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v4, v7

    .line 863
    iget-object v7, v1, Lcom/itextpdf/signatures/PdfPKCS7;->certs:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 864
    .local v8, "element":Ljava/lang/Object;
    new-instance v9, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v10, Ljava/io/ByteArrayInputStream;

    move-object v11, v8

    check-cast v11, Ljava/security/cert/X509Certificate;

    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v9, v10}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 865
    .local v9, "tempstream":Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 866
    .end local v8    # "element":Ljava/lang/Object;
    .end local v9    # "tempstream":Lorg/bouncycastle/asn1/ASN1InputStream;
    goto :goto_2

    .line 868
    :cond_6
    new-instance v7, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v7, v4}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 872
    .local v7, "dercertificates":Lorg/bouncycastle/asn1/DERSet;
    new-instance v8, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 876
    .local v8, "signerinfo":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v9, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v10, v1, Lcom/itextpdf/signatures/PdfPKCS7;->signerversion:I

    int-to-long v10, v10

    invoke-direct {v9, v10, v11}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 878
    new-instance v9, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v4, v9

    .line 879
    iget-object v9, v1, Lcom/itextpdf/signatures/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v9

    invoke-static {v9}, Lcom/itextpdf/signatures/CertificateInfo;->getIssuer([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 880
    new-instance v9, Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v10, v1, Lcom/itextpdf/signatures/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v4, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 881
    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v9, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 884
    new-instance v9, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v4, v9

    .line 885
    new-instance v9, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v10, v1, Lcom/itextpdf/signatures/PdfPKCS7;->digestAlgorithmOid:Ljava/lang/String;

    invoke-direct {v9, v10}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 886
    sget-object v9, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-virtual {v4, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 887
    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v9, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 890
    if-eqz v2, :cond_7

    .line 891
    new-instance v9, Lorg/bouncycastle/asn1/DERTaggedObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    :try_start_1
    invoke-direct {v1, v2, v11, v12, v10}, Lcom/itextpdf/signatures/PdfPKCS7;->getAuthenticatedAttributeSet([BLjava/util/Collection;Ljava/util/Collection;Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;)Lorg/bouncycastle/asn1/DERSet;

    move-result-object v13

    invoke-direct {v9, v6, v6, v13}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_3

    .line 890
    :cond_7
    move-object/from16 v10, p2

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    .line 894
    :goto_3
    new-instance v9, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v4, v9

    .line 895
    new-instance v9, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v13, v1, Lcom/itextpdf/signatures/PdfPKCS7;->digestEncryptionAlgorithmOid:Ljava/lang/String;

    invoke-direct {v9, v13}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 896
    sget-object v9, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-virtual {v4, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 897
    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v9, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 900
    new-instance v9, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v13, v1, Lcom/itextpdf/signatures/PdfPKCS7;->digest:[B

    invoke-direct {v9, v13}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 905
    if-eqz v3, :cond_8

    .line 906
    invoke-interface/range {p3 .. p3}, Lcom/itextpdf/signatures/ITSAClient;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v9

    iget-object v13, v1, Lcom/itextpdf/signatures/PdfPKCS7;->digest:[B

    invoke-virtual {v9, v13}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v9

    .line 907
    .local v9, "tsImprint":[B
    invoke-interface {v3, v9}, Lcom/itextpdf/signatures/ITSAClient;->getTimeStampToken([B)[B

    move-result-object v13

    .line 908
    .local v13, "tsToken":[B
    if-eqz v13, :cond_8

    .line 909
    invoke-direct {v1, v13}, Lcom/itextpdf/signatures/PdfPKCS7;->buildUnauthenticatedAttributes([B)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v14

    .line 910
    .local v14, "unauthAttributes":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    if-eqz v14, :cond_8

    .line 911
    new-instance v15, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v6, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v6, v14}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v15, v3, v2, v6}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v8, v15}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 917
    .end local v9    # "tsImprint":[B
    .end local v13    # "tsToken":[B
    .end local v14    # "unauthAttributes":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_8
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 918
    .local v2, "body":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v3, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v6, v1, Lcom/itextpdf/signatures/PdfPKCS7;->version:I

    int-to-long v13, v6

    invoke-direct {v3, v13, v14}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 919
    new-instance v3, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 920
    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 921
    new-instance v3, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v7}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 924
    new-instance v3, Lorg/bouncycastle/asn1/DERSet;

    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v8}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v3, v6}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 929
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 930
    .local v3, "whole":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v6, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v9, "1.2.840.113549.1.7.2"

    invoke-direct {v6, v9}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 931
    new-instance v6, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v9, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    const/4 v13, 0x0

    invoke-direct {v6, v13, v9}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 933
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 935
    .local v6, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v9, Lorg/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v9, v6}, Lorg/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 936
    .local v9, "dout":Lorg/bouncycastle/asn1/ASN1OutputStream;
    new-instance v13, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v13, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v9, v13}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    .line 937
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/ASN1OutputStream;->close()V

    .line 939
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v13

    .line 940
    .end local v0    # "digestAlgorithms":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v2    # "body":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v3    # "whole":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v4    # "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v5    # "contentinfo":Lorg/bouncycastle/asn1/DERSequence;
    .end local v6    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "dercertificates":Lorg/bouncycastle/asn1/DERSet;
    .end local v8    # "signerinfo":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v9    # "dout":Lorg/bouncycastle/asn1/ASN1OutputStream;
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    .line 941
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    new-instance v2, Lcom/itextpdf/kernel/PdfException;

    invoke-direct {v2, v0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getEncryptionAlgorithm()Ljava/lang/String;
    .locals 1

    .line 1508
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestEncryptionAlgorithmOid:Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/signatures/EncryptionAlgorithms;->getAlgorithm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1509
    .local v0, "encryptAlgo":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1510
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestEncryptionAlgorithmOid:Ljava/lang/String;

    .line 1511
    :cond_0
    return-object v0
.end method

.method public getFilterSubtype()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 1499
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->filterSubtype:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0
.end method

.method public getHashAlgorithm()Ljava/lang/String;
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestAlgorithmOid:Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/signatures/DigestAlgorithms;->getDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getOcsp()Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;
    .locals 1

    .line 1377
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->basicResp:Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getSignCertificateChain()[Ljava/security/cert/Certificate;
    .locals 2

    .line 1291
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signCerts:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    return-object v0
.end method

.method public getSignDate()Ljava/util/Calendar;
    .locals 2

    .line 540
    invoke-virtual {p0}, Lcom/itextpdf/signatures/PdfPKCS7;->getTimeStampDate()Ljava/util/Calendar;

    move-result-object v0

    .line 541
    .local v0, "dt":Ljava/util/Calendar;
    sget-object v1, Lcom/itextpdf/signatures/TimestampConstants;->UNDEFINED_TIMESTAMP_DATE:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 542
    iget-object v1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signDate:Ljava/util/Calendar;

    return-object v1

    .line 544
    :cond_0
    return-object v0
.end method

.method public getSignName()Ljava/lang/String;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signName:Ljava/lang/String;

    return-object v0
.end method

.method public getSigningCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    .line 1300
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signCert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getSigningInfoVersion()I
    .locals 1

    .line 584
    iget v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signerversion:I

    return v0
.end method

.method public getTimeStampDate()Ljava/util/Calendar;
    .locals 1

    .line 1487
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    if-nez v0, :cond_0

    .line 1488
    sget-object v0, Lcom/itextpdf/signatures/TimestampConstants;->UNDEFINED_TIMESTAMP_DATE:Ljava/lang/Object;

    check-cast v0, Ljava/util/Calendar;

    return-object v0

    .line 1490
    :cond_0
    invoke-static {v0}, Lcom/itextpdf/signatures/SignUtils;->getTimeStampDate(Lorg/bouncycastle/tsp/TimeStampToken;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public getTimeStampToken()Lorg/bouncycastle/tsp/TimeStampToken;
    .locals 1

    .line 1475
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 575
    iget v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->version:I

    return v0
.end method

.method public isRevocationValid()Z
    .locals 8

    .line 1386
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->basicResp:Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1387
    return v1

    .line 1388
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signCerts:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    .line 1389
    return v1

    .line 1391
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/signatures/PdfPKCS7;->getSignCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    check-cast v0, [Ljava/security/cert/X509Certificate;

    .line 1392
    .local v0, "cs":[Ljava/security/cert/X509Certificate;
    iget-object v2, p0, Lcom/itextpdf/signatures/PdfPKCS7;->basicResp:Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    invoke-virtual {v2}, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->getResponses()[Lorg/bouncycastle/cert/ocsp/SingleResp;

    move-result-object v2

    aget-object v2, v2, v1

    .line 1393
    .local v2, "sr":Lorg/bouncycastle/cert/ocsp/SingleResp;
    invoke-virtual {v2}, Lorg/bouncycastle/cert/ocsp/SingleResp;->getCertID()Lorg/bouncycastle/cert/ocsp/CertificateID;

    move-result-object v3

    .line 1394
    .local v3, "cid":Lorg/bouncycastle/cert/ocsp/CertificateID;
    invoke-virtual {p0}, Lcom/itextpdf/signatures/PdfPKCS7;->getSigningCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v4

    .line 1395
    .local v4, "sigcer":Ljava/security/cert/X509Certificate;
    const/4 v5, 0x1

    aget-object v5, v0, v5

    .line 1396
    .local v5, "isscer":Ljava/security/cert/X509Certificate;
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v3}, Lorg/bouncycastle/cert/ocsp/CertificateID;->getHashAlgOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/itextpdf/signatures/SignUtils;->generateCertificateId(Ljava/security/cert/X509Certificate;Ljava/math/BigInteger;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/cert/ocsp/CertificateID;

    move-result-object v6

    .line 1397
    .local v6, "tis":Lorg/bouncycastle/cert/ocsp/CertificateID;
    invoke-virtual {v6, v3}, Lorg/bouncycastle/cert/ocsp/CertificateID;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1398
    .end local v0    # "cs":[Ljava/security/cert/X509Certificate;
    .end local v2    # "sr":Lorg/bouncycastle/cert/ocsp/SingleResp;
    .end local v3    # "cid":Lorg/bouncycastle/cert/ocsp/CertificateID;
    .end local v4    # "sigcer":Ljava/security/cert/X509Certificate;
    .end local v5    # "isscer":Ljava/security/cert/X509Certificate;
    .end local v6    # "tis":Lorg/bouncycastle/cert/ocsp/CertificateID;
    :catch_0
    move-exception v0

    .line 1400
    return v1
.end method

.method public isTsp()Z
    .locals 1

    .line 1466
    iget-boolean v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->isTsp:Z

    return v0
.end method

.method public setExternalDigest([B[BLjava/lang/String;)V
    .locals 3
    .param p1, "digest"    # [B
    .param p2, "rsaData"    # [B
    .param p3, "digestEncryptionAlgorithm"    # Ljava/lang/String;

    .line 685
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->externalDigest:[B

    .line 686
    iput-object p2, p0, Lcom/itextpdf/signatures/PdfPKCS7;->externalRsaData:[B

    .line 687
    if-eqz p3, :cond_3

    .line 688
    const-string v0, "RSA"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    const-string v0, "1.2.840.113549.1.1.1"

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestEncryptionAlgorithmOid:Ljava/lang/String;

    goto :goto_0

    .line 690
    :cond_0
    const-string v0, "DSA"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 691
    const-string v0, "1.2.840.10040.4.1"

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestEncryptionAlgorithmOid:Ljava/lang/String;

    goto :goto_0

    .line 692
    :cond_1
    const-string v0, "ECDSA"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 693
    const-string v0, "1.2.840.10045.2.1"

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestEncryptionAlgorithmOid:Ljava/lang/String;

    goto :goto_0

    .line 695
    :cond_2
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Unknown key algorithm: {0}."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;

    move-result-object v0

    throw v0

    .line 697
    :cond_3
    :goto_0
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .line 531
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->location:Ljava/lang/String;

    .line 532
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 513
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->reason:Ljava/lang/String;

    .line 514
    return-void
.end method

.method public setSignDate(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "signDate"    # Ljava/util/Calendar;

    .line 554
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signDate:Ljava/util/Calendar;

    .line 555
    return-void
.end method

.method public setSignName(Ljava/lang/String;)V
    .locals 0
    .param p1, "signName"    # Ljava/lang/String;

    .line 495
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signName:Ljava/lang/String;

    .line 496
    return-void
.end method

.method public setSignaturePolicy(Lcom/itextpdf/signatures/SignaturePolicyInfo;)V
    .locals 1
    .param p1, "signaturePolicy"    # Lcom/itextpdf/signatures/SignaturePolicyInfo;

    .line 473
    invoke-virtual {p1}, Lcom/itextpdf/signatures/SignaturePolicyInfo;->toSignaturePolicyIdentifier()Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signaturePolicyIdentifier:Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;

    .line 474
    return-void
.end method

.method public setSignaturePolicy(Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;)V
    .locals 0
    .param p1, "signaturePolicy"    # Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;

    .line 477
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->signaturePolicyIdentifier:Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;

    .line 478
    return-void
.end method

.method public update([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 743
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->rsaData:[B

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestAttr:[B

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->isTsp:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->sig:Ljava/security/Signature;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/Signature;->update([BII)V

    goto :goto_1

    .line 744
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 747
    :goto_1
    return-void
.end method

.method public verify()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1179
    invoke-virtual {p0}, Lcom/itextpdf/signatures/PdfPKCS7;->verifySignatureIntegrityAndAuthenticity()Z

    move-result v0

    return v0
.end method

.method public verifySignatureIntegrityAndAuthenticity()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1199
    iget-boolean v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->verified:Z

    if-eqz v0, :cond_0

    .line 1200
    iget-boolean v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->verifyResult:Z

    return v0

    .line 1201
    :cond_0
    iget-boolean v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->isTsp:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1202
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object v0

    .line 1203
    .local v0, "info":Lorg/bouncycastle/tsp/TimeStampTokenInfo;
    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->toASN1Structure()Lorg/bouncycastle/asn1/tsp/TSTInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getMessageImprint()Lorg/bouncycastle/asn1/tsp/MessageImprint;

    move-result-object v2

    .line 1204
    .local v2, "imprint":Lorg/bouncycastle/asn1/tsp/MessageImprint;
    iget-object v3, p0, Lcom/itextpdf/signatures/PdfPKCS7;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 1205
    .local v3, "md":[B
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/tsp/MessageImprint;->getHashedMessage()[B

    move-result-object v4

    .line 1206
    .local v4, "imphashed":[B
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    iput-boolean v5, p0, Lcom/itextpdf/signatures/PdfPKCS7;->verifyResult:Z

    .line 1207
    .end local v0    # "info":Lorg/bouncycastle/tsp/TimeStampTokenInfo;
    .end local v2    # "imprint":Lorg/bouncycastle/asn1/tsp/MessageImprint;
    .end local v3    # "md":[B
    .end local v4    # "imphashed":[B
    goto/16 :goto_5

    .line 1208
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->sigAttr:[B

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->sigAttrDer:[B

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1223
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->rsaData:[B

    if-eqz v0, :cond_3

    .line 1224
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->sig:Ljava/security/Signature;

    iget-object v2, p0, Lcom/itextpdf/signatures/PdfPKCS7;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/Signature;->update([B)V

    .line 1225
    :cond_3
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->sig:Ljava/security/Signature;

    iget-object v2, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digest:[B

    invoke-virtual {v0, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->verifyResult:Z

    goto :goto_5

    .line 1209
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 1210
    .local v0, "msgDigestBytes":[B
    const/4 v2, 0x1

    .line 1212
    .local v2, "verifyRSAdata":Z
    const/4 v3, 0x0

    .line 1213
    .local v3, "encContDigestCompare":Z
    iget-object v4, p0, Lcom/itextpdf/signatures/PdfPKCS7;->rsaData:[B

    if-eqz v4, :cond_5

    .line 1214
    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    .line 1215
    iget-object v4, p0, Lcom/itextpdf/signatures/PdfPKCS7;->encContDigest:Ljava/security/MessageDigest;

    iget-object v5, p0, Lcom/itextpdf/signatures/PdfPKCS7;->rsaData:[B

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 1216
    iget-object v4, p0, Lcom/itextpdf/signatures/PdfPKCS7;->encContDigest:Ljava/security/MessageDigest;

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    iget-object v5, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestAttr:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    .line 1218
    :cond_5
    iget-object v4, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digestAttr:[B

    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    .line 1219
    .local v4, "absentEncContDigestCompare":Z
    const/4 v5, 0x0

    if-nez v4, :cond_7

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    move v6, v5

    goto :goto_2

    :cond_7
    :goto_1
    move v6, v1

    .line 1220
    .local v6, "concludingDigestCompare":Z
    :goto_2
    iget-object v7, p0, Lcom/itextpdf/signatures/PdfPKCS7;->sigAttr:[B

    invoke-direct {p0, v7}, Lcom/itextpdf/signatures/PdfPKCS7;->verifySigAttributes([B)Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/itextpdf/signatures/PdfPKCS7;->sigAttrDer:[B

    invoke-direct {p0, v7}, Lcom/itextpdf/signatures/PdfPKCS7;->verifySigAttributes([B)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_3

    :cond_8
    move v7, v5

    goto :goto_4

    :cond_9
    :goto_3
    move v7, v1

    .line 1221
    .local v7, "sigVerify":Z
    :goto_4
    if-eqz v6, :cond_a

    if-eqz v7, :cond_a

    if-eqz v2, :cond_a

    move v5, v1

    :cond_a
    iput-boolean v5, p0, Lcom/itextpdf/signatures/PdfPKCS7;->verifyResult:Z

    .line 1222
    .end local v0    # "msgDigestBytes":[B
    .end local v2    # "verifyRSAdata":Z
    .end local v3    # "encContDigestCompare":Z
    .end local v4    # "absentEncContDigestCompare":Z
    .end local v6    # "concludingDigestCompare":Z
    .end local v7    # "sigVerify":Z
    nop

    .line 1228
    :goto_5
    iput-boolean v1, p0, Lcom/itextpdf/signatures/PdfPKCS7;->verified:Z

    .line 1229
    iget-boolean v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->verifyResult:Z

    return v0
.end method

.method public verifyTimestampImprint()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1246
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfPKCS7;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    if-nez v0, :cond_0

    .line 1247
    const/4 v0, 0x0

    return v0

    .line 1248
    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object v0

    .line 1249
    .local v0, "info":Lorg/bouncycastle/tsp/TimeStampTokenInfo;
    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->toASN1Structure()Lorg/bouncycastle/asn1/tsp/TSTInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getMessageImprint()Lorg/bouncycastle/asn1/tsp/MessageImprint;

    move-result-object v1

    .line 1250
    .local v1, "imprint":Lorg/bouncycastle/asn1/tsp/MessageImprint;
    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    .line 1251
    .local v2, "algOID":Ljava/lang/String;
    invoke-static {v2}, Lcom/itextpdf/signatures/DigestAlgorithms;->getDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/signatures/SignUtils;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    iget-object v4, p0, Lcom/itextpdf/signatures/PdfPKCS7;->digest:[B

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 1252
    .local v3, "md":[B
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/tsp/MessageImprint;->getHashedMessage()[B

    move-result-object v4

    .line 1253
    .local v4, "imphashed":[B
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    return v5
.end method
