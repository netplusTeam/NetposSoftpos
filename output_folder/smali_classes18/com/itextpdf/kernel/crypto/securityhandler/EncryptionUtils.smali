.class final Lcom/itextpdf/kernel/crypto/securityhandler/EncryptionUtils;
.super Ljava/lang/Object;
.source "EncryptionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/crypto/securityhandler/EncryptionUtils$DERForRecipientParams;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calculateDERForRecipientParams([B)Lcom/itextpdf/kernel/crypto/securityhandler/EncryptionUtils$DERForRecipientParams;
    .locals 12
    .param p0, "in"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 169
    const-string v0, "1.2.840.113549.3.2"

    .line 170
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Lcom/itextpdf/kernel/crypto/securityhandler/EncryptionUtils$DERForRecipientParams;

    invoke-direct {v1}, Lcom/itextpdf/kernel/crypto/securityhandler/EncryptionUtils$DERForRecipientParams;-><init>()V

    .line 172
    .local v1, "parameters":Lcom/itextpdf/kernel/crypto/securityhandler/EncryptionUtils$DERForRecipientParams;
    invoke-static {v0}, Ljava/security/AlgorithmParameterGenerator;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameterGenerator;

    move-result-object v2

    .line 173
    .local v2, "algorithmparametergenerator":Ljava/security/AlgorithmParameterGenerator;
    invoke-virtual {v2}, Ljava/security/AlgorithmParameterGenerator;->generateParameters()Ljava/security/AlgorithmParameters;

    move-result-object v3

    .line 174
    .local v3, "algorithmparameters":Ljava/security/AlgorithmParameters;
    new-instance v4, Ljava/io/ByteArrayInputStream;

    const-string v5, "ASN.1"

    invoke-virtual {v3, v5}, Ljava/security/AlgorithmParameters;->getEncoded(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 175
    .local v4, "bytearrayinputstream":Ljava/io/ByteArrayInputStream;
    new-instance v5, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v5, v4}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 176
    .local v5, "asn1inputstream":Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    .line 177
    .local v6, "derobject":Lorg/bouncycastle/asn1/ASN1Primitive;
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v7

    .line 178
    .local v7, "keygenerator":Ljavax/crypto/KeyGenerator;
    const/16 v8, 0x80

    invoke-virtual {v7, v8}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 179
    invoke-virtual {v7}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v8

    .line 180
    .local v8, "secretkey":Ljavax/crypto/SecretKey;
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v9

    .line 181
    .local v9, "cipher":Ljavax/crypto/Cipher;
    const/4 v10, 0x1

    invoke-virtual {v9, v10, v8, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    .line 183
    invoke-interface {v8}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v10

    iput-object v10, v1, Lcom/itextpdf/kernel/crypto/securityhandler/EncryptionUtils$DERForRecipientParams;->abyte0:[B

    .line 184
    invoke-virtual {v9, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v10

    iput-object v10, v1, Lcom/itextpdf/kernel/crypto/securityhandler/EncryptionUtils$DERForRecipientParams;->abyte1:[B

    .line 185
    new-instance v10, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v11, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v11, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v11, v6}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v10, v1, Lcom/itextpdf/kernel/crypto/securityhandler/EncryptionUtils$DERForRecipientParams;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 187
    return-object v1
.end method

.method static cipherBytes(Ljava/security/cert/X509Certificate;[BLorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)[B
    .locals 4
    .param p0, "x509certificate"    # Ljava/security/cert/X509Certificate;
    .param p1, "abyte0"    # [B
    .param p2, "algorithmidentifier"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 149
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 151
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    goto :goto_0

    .line 152
    :catch_0
    move-exception v2

    .line 153
    .local v2, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 155
    .end local v2    # "e":Ljava/security/InvalidKeyException;
    :goto_0
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    return-object v1
.end method

.method static fetchEnvelopedData(Ljava/security/Key;Ljava/security/cert/Certificate;Ljava/lang/String;Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;Lcom/itextpdf/kernel/pdf/PdfArray;)[B
    .locals 10
    .param p0, "certificateKey"    # Ljava/security/Key;
    .param p1, "certificate"    # Ljava/security/cert/Certificate;
    .param p2, "certificateKeyProvider"    # Ljava/lang/String;
    .param p3, "externalDecryptionProcess"    # Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;
    .param p4, "recipients"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 96
    const-string v0, "Exception occurred with PDF document decryption. One of the possible reasons is wrong password or wrong public key certificate and private key."

    const/4 v1, 0x0

    .line 97
    .local v1, "foundRecipient":Z
    const/4 v2, 0x0

    .line 101
    .local v2, "envelopedData":[B
    :try_start_0
    new-instance v3, Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/cert/X509CertificateHolder;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 104
    .local v3, "certHolder":Lorg/bouncycastle/cert/X509CertificateHolder;
    nop

    .line 105
    if-nez p3, :cond_3

    .line 106
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 107
    invoke-virtual {p4, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsString(I)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v5

    .line 110
    .local v5, "recipient":Lcom/itextpdf/kernel/pdf/PdfString;
    :try_start_1
    new-instance v6, Lorg/bouncycastle/cms/CMSEnvelopedData;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfString;->getValueBytes()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/bouncycastle/cms/CMSEnvelopedData;-><init>([B)V

    .line 111
    .local v6, "data":Lorg/bouncycastle/cms/CMSEnvelopedData;
    invoke-virtual {v6}, Lorg/bouncycastle/cms/CMSEnvelopedData;->getRecipientInfos()Lorg/bouncycastle/cms/RecipientInformationStore;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/cms/RecipientInformationStore;->getRecipients()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 112
    .local v7, "recipientCertificatesIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/bouncycastle/cms/RecipientInformation;>;"
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 113
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/cms/RecipientInformation;

    .line 115
    .local v8, "recipientInfo":Lorg/bouncycastle/cms/RecipientInformation;
    invoke-virtual {v8}, Lorg/bouncycastle/cms/RecipientInformation;->getRID()Lorg/bouncycastle/cms/RecipientId;

    move-result-object v9

    invoke-virtual {v9, v3}, Lorg/bouncycastle/cms/RecipientId;->match(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    if-nez v1, :cond_0

    .line 116
    move-object v9, p0

    check-cast v9, Ljava/security/PrivateKey;

    invoke-static {v8, v9, p2}, Lcom/itextpdf/kernel/pdf/PdfEncryptor;->getContent(Lorg/bouncycastle/cms/RecipientInformation;Ljava/security/PrivateKey;Ljava/lang/String;)[B

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v9

    .line 117
    const/4 v1, 0x1

    .line 119
    .end local v8    # "recipientInfo":Lorg/bouncycastle/cms/RecipientInformation;
    :cond_0
    goto :goto_1

    .line 122
    .end local v7    # "recipientCertificatesIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/bouncycastle/cms/RecipientInformation;>;"
    :cond_1
    nop

    .line 106
    .end local v5    # "recipient":Lcom/itextpdf/kernel/pdf/PdfString;
    .end local v6    # "data":Lorg/bouncycastle/cms/CMSEnvelopedData;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 120
    .restart local v5    # "recipient":Lcom/itextpdf/kernel/pdf/PdfString;
    :catch_0
    move-exception v6

    .line 121
    .local v6, "f":Ljava/lang/Exception;
    new-instance v7, Lcom/itextpdf/kernel/PdfException;

    invoke-direct {v7, v0, v6}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 106
    .end local v4    # "i":I
    .end local v5    # "recipient":Lcom/itextpdf/kernel/pdf/PdfString;
    .end local v6    # "f":Ljava/lang/Exception;
    :cond_2
    goto :goto_3

    .line 125
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 126
    invoke-virtual {p4, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsString(I)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v5

    .line 129
    .restart local v5    # "recipient":Lcom/itextpdf/kernel/pdf/PdfString;
    :try_start_2
    new-instance v6, Lorg/bouncycastle/cms/CMSEnvelopedData;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfString;->getValueBytes()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/bouncycastle/cms/CMSEnvelopedData;-><init>([B)V

    .line 130
    .local v6, "data":Lorg/bouncycastle/cms/CMSEnvelopedData;
    invoke-virtual {v6}, Lorg/bouncycastle/cms/CMSEnvelopedData;->getRecipientInfos()Lorg/bouncycastle/cms/RecipientInformationStore;

    move-result-object v7

    invoke-interface {p3}, Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;->getCmsRecipientId()Lorg/bouncycastle/cms/RecipientId;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/bouncycastle/cms/RecipientInformationStore;->get(Lorg/bouncycastle/cms/RecipientId;)Lorg/bouncycastle/cms/RecipientInformation;

    move-result-object v7

    .line 131
    .local v7, "recipientInfo":Lorg/bouncycastle/cms/RecipientInformation;
    if-eqz v7, :cond_4

    .line 132
    invoke-interface {p3}, Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;->getCmsRecipient()Lorg/bouncycastle/cms/Recipient;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/bouncycastle/cms/RecipientInformation;->getContent(Lorg/bouncycastle/cms/Recipient;)[B

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v2, v8

    .line 133
    const/4 v1, 0x1

    .line 137
    .end local v7    # "recipientInfo":Lorg/bouncycastle/cms/RecipientInformation;
    :cond_4
    nop

    .line 125
    .end local v5    # "recipient":Lcom/itextpdf/kernel/pdf/PdfString;
    .end local v6    # "data":Lorg/bouncycastle/cms/CMSEnvelopedData;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 135
    .restart local v5    # "recipient":Lcom/itextpdf/kernel/pdf/PdfString;
    :catch_1
    move-exception v6

    .line 136
    .local v6, "f":Ljava/lang/Exception;
    new-instance v7, Lcom/itextpdf/kernel/PdfException;

    invoke-direct {v7, v0, v6}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 141
    .end local v4    # "i":I
    .end local v5    # "recipient":Lcom/itextpdf/kernel/pdf/PdfString;
    .end local v6    # "f":Ljava/lang/Exception;
    :cond_5
    :goto_3
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    .line 144
    return-object v2

    .line 142
    :cond_6
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v4, "Bad public key certificate and/or private key."

    invoke-direct {v0, v4}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    .end local v3    # "certHolder":Lorg/bouncycastle/cert/X509CertificateHolder;
    :catch_2
    move-exception v3

    .line 103
    .local v3, "f":Ljava/lang/Exception;
    new-instance v4, Lcom/itextpdf/kernel/PdfException;

    invoke-direct {v4, v0, v3}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method static generateSeed(I)[B
    .locals 5
    .param p0, "seedLength"    # I

    .line 82
    :try_start_0
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 83
    .local v0, "key":Ljavax/crypto/KeyGenerator;
    const/16 v1, 0xc0

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 84
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 85
    .local v1, "sk":Ljavax/crypto/SecretKey;
    new-array v2, p0, [B

    .line 87
    .local v2, "seedBytes":[B
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v1    # "sk":Ljavax/crypto/SecretKey;
    goto :goto_0

    .line 88
    .end local v0    # "key":Ljavax/crypto/KeyGenerator;
    .end local v2    # "seedBytes":[B
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-static {p0}, Ljava/security/SecureRandom;->getSeed(I)[B

    move-result-object v2

    .line 91
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v2    # "seedBytes":[B
    :goto_0
    return-object v2
.end method
