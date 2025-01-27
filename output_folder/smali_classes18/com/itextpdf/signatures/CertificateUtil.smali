.class public Lcom/itextpdf/signatures/CertificateUtil;
.super Ljava/lang/Object;
.source "CertificateUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCRL(Ljava/lang/String;)Ljava/security/cert/CRL;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 139
    if-nez p0, :cond_0

    .line 140
    const/4 v0, 0x0

    return-object v0

    .line 141
    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/signatures/SignUtils;->parseCrlFromStream(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v0

    return-object v0
.end method

.method public static getCRL(Ljava/security/cert/X509Certificate;)Ljava/security/cert/CRL;
    .locals 1
    .param p0, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/cert/CRLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-static {p0}, Lcom/itextpdf/signatures/CertificateUtil;->getCRLURL(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/signatures/CertificateUtil;->getCRL(Ljava/lang/String;)Ljava/security/cert/CRL;

    move-result-object v0

    return-object v0
.end method

.method public static getCRLURL(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 16
    .param p0, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 102
    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v2, p0

    :try_start_1
    invoke-static {v2, v0}, Lcom/itextpdf/signatures/CertificateUtil;->getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 105
    .local v0, "obj":Lorg/bouncycastle/asn1/ASN1Primitive;
    goto :goto_1

    .line 103
    .end local v0    # "obj":Lorg/bouncycastle/asn1/ASN1Primitive;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v2, p0

    .line 104
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    move-object v3, v1

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Primitive;

    move-object v0, v3

    .line 106
    .local v0, "obj":Lorg/bouncycastle/asn1/ASN1Primitive;
    :goto_1
    if-nez v0, :cond_0

    .line 107
    return-object v1

    .line 109
    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CRLDistPoint;

    move-result-object v3

    .line 110
    .local v3, "dist":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lorg/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object v4

    .line 111
    .local v4, "dists":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_2
    if-ge v7, v5, :cond_4

    aget-object v8, v4, v7

    .line 112
    .local v8, "p":Lorg/bouncycastle/asn1/x509/DistributionPoint;
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v9

    .line 113
    .local v9, "distributionPointName":Lorg/bouncycastle/asn1/x509/DistributionPointName;
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v10

    if-eqz v10, :cond_1

    .line 114
    goto :goto_4

    .line 116
    :cond_1
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    check-cast v10, Lorg/bouncycastle/asn1/x509/GeneralNames;

    .line 117
    .local v10, "generalNames":Lorg/bouncycastle/asn1/x509/GeneralNames;
    invoke-virtual {v10}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v11

    .line 118
    .local v11, "names":[Lorg/bouncycastle/asn1/x509/GeneralName;
    array-length v12, v11

    move v13, v6

    :goto_3
    if-ge v13, v12, :cond_3

    aget-object v14, v11, v13

    .line 119
    .local v14, "name":Lorg/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v14}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v15

    const/4 v1, 0x6

    if-eq v15, v1, :cond_2

    .line 120
    nop

    .line 118
    .end local v14    # "name":Lorg/bouncycastle/asn1/x509/GeneralName;
    add-int/lit8 v13, v13, 0x1

    const/4 v1, 0x0

    goto :goto_3

    .line 122
    .restart local v14    # "name":Lorg/bouncycastle/asn1/x509/GeneralName;
    :cond_2
    invoke-virtual {v14}, Lorg/bouncycastle/asn1/x509/GeneralName;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v1, v6}, Lorg/bouncycastle/asn1/DERIA5String;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERIA5String;

    move-result-object v1

    .line 123
    .local v1, "derStr":Lorg/bouncycastle/asn1/DERIA5String;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 111
    .end local v1    # "derStr":Lorg/bouncycastle/asn1/DERIA5String;
    .end local v8    # "p":Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local v9    # "distributionPointName":Lorg/bouncycastle/asn1/x509/DistributionPointName;
    .end local v10    # "generalNames":Lorg/bouncycastle/asn1/x509/GeneralNames;
    .end local v11    # "names":[Lorg/bouncycastle/asn1/x509/GeneralName;
    .end local v14    # "name":Lorg/bouncycastle/asn1/x509/GeneralName;
    :cond_3
    :goto_4
    add-int/lit8 v7, v7, 0x1

    const/4 v1, 0x0

    goto :goto_2

    .line 126
    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 6
    .param p0, "certificate"    # Ljava/security/cert/X509Certificate;
    .param p1, "oid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    invoke-static {p0, p1}, Lcom/itextpdf/signatures/SignUtils;->getExtensionValueByOid(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    move-result-object v0

    .line 217
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    .line 218
    const/4 v1, 0x0

    return-object v1

    .line 220
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 221
    .local v1, "aIn":Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 222
    .local v2, "octs":Lorg/bouncycastle/asn1/ASN1OctetString;
    new-instance v3, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v3

    .line 223
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    return-object v3
.end method

.method public static getOCSPURL(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 8
    .param p0, "certificate"    # Ljava/security/cert/X509Certificate;

    .line 154
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->authorityInfoAccess:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/itextpdf/signatures/CertificateUtil;->getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 155
    .local v1, "obj":Lorg/bouncycastle/asn1/ASN1Primitive;
    if-nez v1, :cond_0

    .line 156
    return-object v0

    .line 158
    :cond_0
    move-object v2, v1

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 159
    .local v2, "AccessDescriptions":Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 160
    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 161
    .local v4, "AccessDescription":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 162
    goto :goto_1

    .line 164
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    instance-of v6, v6, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v6, :cond_3

    .line 165
    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 166
    .local v5, "id":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    const-string v6, "1.3.6.1.5.5.7.48.1"

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 167
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 168
    .local v6, "description":Lorg/bouncycastle/asn1/ASN1Primitive;
    invoke-static {v6}, Lcom/itextpdf/signatures/CertificateUtil;->getStringFromGeneralName(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/lang/String;

    move-result-object v7

    .line 169
    .local v7, "AccessLocation":Ljava/lang/String;
    if-nez v7, :cond_2

    .line 170
    const-string v0, ""
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 173
    :cond_2
    return-object v7

    .line 159
    .end local v4    # "AccessDescription":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v5    # "id":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v6    # "description":Lorg/bouncycastle/asn1/ASN1Primitive;
    .end local v7    # "AccessLocation":Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 180
    .end local v2    # "AccessDescriptions":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v3    # "i":I
    :cond_4
    nop

    .line 181
    return-object v0

    .line 178
    .end local v1    # "obj":Lorg/bouncycastle/asn1/ASN1Primitive;
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e":Ljava/io/IOException;
    return-object v0
.end method

.method private static getStringFromGeneralName(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/lang/String;
    .locals 4
    .param p0, "names"    # Lorg/bouncycastle/asn1/ASN1Primitive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 234
    .local v0, "taggedObject":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    const-string v3, "ISO-8859-1"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public static getTSAURL(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 6
    .param p0, "certificate"    # Ljava/security/cert/X509Certificate;

    .line 192
    const-string v0, "1.2.840.113583.1.1.9.1"

    invoke-static {p0, v0}, Lcom/itextpdf/signatures/SignUtils;->getExtensionValueByOid(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    move-result-object v0

    .line 193
    .local v0, "der":[B
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 194
    return-object v1

    .line 197
    :cond_0
    :try_start_0
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 198
    .local v2, "asn1obj":Lorg/bouncycastle/asn1/ASN1Primitive;
    move-object v3, v2

    check-cast v3, Lorg/bouncycastle/asn1/DEROctetString;

    .line 199
    .local v3, "octets":Lorg/bouncycastle/asn1/DEROctetString;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    move-object v2, v4

    .line 200
    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v4

    .line 201
    .local v4, "asn1seq":Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-interface {v5}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lcom/itextpdf/signatures/CertificateUtil;->getStringFromGeneralName(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 202
    .end local v2    # "asn1obj":Lorg/bouncycastle/asn1/ASN1Primitive;
    .end local v3    # "octets":Lorg/bouncycastle/asn1/DEROctetString;
    .end local v4    # "asn1seq":Lorg/bouncycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v2

    .line 203
    .local v2, "e":Ljava/io/IOException;
    return-object v1
.end method
