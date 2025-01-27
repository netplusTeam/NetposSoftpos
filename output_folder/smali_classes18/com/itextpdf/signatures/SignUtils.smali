.class final Lcom/itextpdf/signatures/SignUtils;
.super Ljava/lang/Object;
.source "SignUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/signatures/SignUtils$TsaResponse;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static add180Sec(Ljava/util/Date;)Ljava/util/Date;
    .locals 5
    .param p0, "date"    # Ljava/util/Date;

    .line 220
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/32 v3, 0x2bf20

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method static checkIfIssuersMatch(Lorg/bouncycastle/cert/ocsp/CertificateID;Ljava/security/cert/X509Certificate;)Z
    .locals 2
    .param p0, "certID"    # Lorg/bouncycastle/cert/ocsp/CertificateID;
    .param p1, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/io/IOException;,
            Lorg/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 216
    new-instance v0, Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/X509CertificateHolder;-><init>([B)V

    new-instance v1, Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider;

    invoke-direct {v1}, Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/cert/ocsp/CertificateID;->matchesIssuer(Lorg/bouncycastle/cert/X509CertificateHolder;Lorg/bouncycastle/operator/DigestCalculatorProvider;)Z

    move-result v0

    return v0
.end method

.method static varargs createSigPolicyQualifiers([Lorg/bouncycastle/asn1/esf/SigPolicyQualifierInfo;)Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;
    .locals 1
    .param p0, "sigPolicyQualifierInfo"    # [Lorg/bouncycastle/asn1/esf/SigPolicyQualifierInfo;

    .line 348
    new-instance v0, Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;-><init>([Lorg/bouncycastle/asn1/esf/SigPolicyQualifierInfo;)V

    return-object v0
.end method

.method public static dateToString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .param p0, "signDate"    # Ljava/util/Calendar;

    .line 251
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy.MM.dd HH:mm:ss z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static generateCertificateId(Ljava/security/cert/X509Certificate;Ljava/math/BigInteger;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/cert/ocsp/CertificateID;
    .locals 4
    .param p0, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .param p1, "serialNumber"    # Ljava/math/BigInteger;
    .param p2, "identifier"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;,
            Ljava/security/cert/CertificateEncodingException;,
            Lorg/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 174
    new-instance v0, Lorg/bouncycastle/cert/ocsp/CertificateID;

    new-instance v1, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    invoke-direct {v1}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;-><init>()V

    .line 175
    invoke-virtual {v1}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->build()Lorg/bouncycastle/operator/DigestCalculatorProvider;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v2, p2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-interface {v1, v2}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;

    invoke-direct {v2, p0}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-direct {v0, v1, v2, p1}, Lorg/bouncycastle/cert/ocsp/CertificateID;-><init>(Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/cert/X509CertificateHolder;Ljava/math/BigInteger;)V

    .line 174
    return-object v0
.end method

.method static generateCertificateId(Ljava/security/cert/X509Certificate;Ljava/math/BigInteger;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/cert/ocsp/CertificateID;
    .locals 3
    .param p0, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .param p1, "serialNumber"    # Ljava/math/BigInteger;
    .param p2, "digestAlgorithmIdentifier"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;,
            Ljava/security/cert/CertificateEncodingException;,
            Lorg/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 168
    new-instance v0, Lorg/bouncycastle/cert/ocsp/CertificateID;

    new-instance v1, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    invoke-direct {v1}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;-><init>()V

    .line 169
    invoke-virtual {v1}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->build()Lorg/bouncycastle/operator/DigestCalculatorProvider;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;

    invoke-direct {v2, p0}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-direct {v0, v1, v2, p1}, Lorg/bouncycastle/cert/ocsp/CertificateID;-><init>(Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/cert/X509CertificateHolder;Ljava/math/BigInteger;)V

    .line 168
    return-object v0
.end method

.method static generateOcspRequestWithNonce(Lorg/bouncycastle/cert/ocsp/CertificateID;)Lorg/bouncycastle/cert/ocsp/OCSPReq;
    .locals 6
    .param p0, "id"    # Lorg/bouncycastle/cert/ocsp/CertificateID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 180
    new-instance v0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;

    invoke-direct {v0}, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;-><init>()V

    .line 181
    .local v0, "gen":Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;
    invoke-virtual {v0, p0}, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->addRequest(Lorg/bouncycastle/cert/ocsp/CertificateID;)Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;

    .line 183
    new-instance v1, Lorg/bouncycastle/asn1/x509/Extension;

    sget-object v2, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_nonce:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-static {}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->generateNewDocumentId()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/DEROctetString;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Lorg/bouncycastle/asn1/x509/Extension;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1OctetString;)V

    .line 184
    .local v1, "ext":Lorg/bouncycastle/asn1/x509/Extension;
    new-instance v2, Lorg/bouncycastle/asn1/x509/Extensions;

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/bouncycastle/asn1/x509/Extension;

    aput-object v1, v3, v4

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/x509/Extensions;-><init>([Lorg/bouncycastle/asn1/x509/Extension;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->setRequestExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;

    .line 185
    invoke-virtual {v0}, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->build()Lorg/bouncycastle/cert/ocsp/OCSPReq;

    move-result-object v2

    return-object v2
.end method

.method static getCertificates(Ljava/security/KeyStore;)Ljava/lang/Iterable;
    .locals 2
    .param p0, "keyStore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/KeyStore;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 352
    invoke-virtual {p0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v0

    .line 353
    .local v0, "keyStoreAliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    new-instance v1, Lcom/itextpdf/signatures/SignUtils$1;

    invoke-direct {v1, v0, p0}, Lcom/itextpdf/signatures/SignUtils$1;-><init>(Ljava/util/Enumeration;Ljava/security/KeyStore;)V

    return-object v1
.end method

.method static getCertsFromOcspResponse(Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;)Ljava/lang/Iterable;
    .locals 7
    .param p0, "ocspResp"    # Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v0, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {p0}, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->getCerts()[Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object v1

    .line 226
    .local v1, "certHolders":[Lorg/bouncycastle/cert/X509CertificateHolder;
    new-instance v2, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;

    invoke-direct {v2}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;-><init>()V

    .line 227
    .local v2, "converter":Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    .line 229
    .local v5, "certHolder":Lorg/bouncycastle/cert/X509CertificateHolder;
    :try_start_0
    invoke-virtual {v2, v5}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;->getCertificate(Lorg/bouncycastle/cert/X509CertificateHolder;)Ljava/security/cert/X509Certificate;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    goto :goto_1

    .line 230
    :catch_0
    move-exception v6

    .line 227
    .end local v5    # "certHolder":Lorg/bouncycastle/cert/X509CertificateHolder;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 233
    :cond_0
    return-object v0
.end method

.method static getExtensionValueByOid(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B
    .locals 1
    .param p0, "certificate"    # Ljava/security/cert/X509Certificate;
    .param p1, "oid"    # Ljava/lang/String;

    .line 140
    invoke-virtual {p0, p1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static getFirstElement(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 243
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static getHttpResponse(Ljava/net/URL;)Ljava/io/InputStream;
    .locals 5
    .param p0, "urlt"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 161
    .local v0, "con":Ljava/net/HttpURLConnection;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    div-int/lit8 v1, v1, 0x64

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 164
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    return-object v1

    .line 162
    :cond_0
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "Invalid http response {0}."

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;

    move-result-object v1

    throw v1
.end method

.method static getHttpResponseForOcspRequest([BLjava/net/URL;)Ljava/io/InputStream;
    .locals 7
    .param p0, "request"    # [B
    .param p1, "urlt"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 190
    .local v0, "con":Ljava/net/HttpURLConnection;
    const-string v1, "Content-Type"

    const-string v2, "application/ocsp-request"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v1, "Accept"

    const-string v2, "application/ocsp-response"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 193
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 194
    .local v2, "out":Ljava/io/OutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 195
    .local v3, "dataOut":Ljava/io/DataOutputStream;
    invoke-virtual {v3, p0}, Ljava/io/DataOutputStream;->write([B)V

    .line 196
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 197
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 198
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    div-int/lit8 v4, v4, 0x64

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 202
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    return-object v1

    .line 199
    :cond_0
    new-instance v4, Lcom/itextpdf/kernel/PdfException;

    const-string v5, "Invalid http response {0}."

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    invoke-virtual {v4, v1}, Lcom/itextpdf/kernel/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;

    move-result-object v1

    throw v1
.end method

.method static getIssuerX509Name(Lorg/bouncycastle/asn1/ASN1Sequence;)Lorg/bouncycastle/jce/X509Principal;
    .locals 2
    .param p0, "issuerAndSerialNumber"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    new-instance v0, Lorg/bouncycastle/jce/X509Principal;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/X509Principal;-><init>([B)V

    return-object v0
.end method

.method static getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 1
    .param p0, "hashAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 144
    new-instance v0, Lcom/itextpdf/signatures/BouncyCastleDigest;

    invoke-direct {v0}, Lcom/itextpdf/signatures/BouncyCastleDigest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/itextpdf/signatures/BouncyCastleDigest;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method static getMessageDigest(Ljava/lang/String;Lcom/itextpdf/signatures/IExternalDigest;)Ljava/security/MessageDigest;
    .locals 1
    .param p0, "hashAlgorithm"    # Ljava/lang/String;
    .param p1, "externalDigest"    # Lcom/itextpdf/signatures/IExternalDigest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 148
    invoke-interface {p1, p0}, Lcom/itextpdf/signatures/IExternalDigest;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method static getMessageDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 1
    .param p0, "hashAlgorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 152
    if-eqz p1, :cond_1

    const-string v0, "SunPKCS11"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SunMSCAPI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    invoke-static {p0, p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0

    .line 153
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/itextpdf/signatures/DigestAlgorithms;->normalizeDigestName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method static getPrivateKeyAlgorithm(Ljava/security/PrivateKey;)Ljava/lang/String;
    .locals 2
    .param p0, "pk"    # Ljava/security/PrivateKey;

    .line 119
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "algorithm":Ljava/lang/String;
    const-string v1, "EC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    const-string v0, "ECDSA"

    .line 124
    :cond_0
    return-object v0
.end method

.method static getSignatureHelper(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 329
    if-nez p1, :cond_0

    invoke-static {p0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static getTimeStampDate(Lorg/bouncycastle/tsp/TimeStampToken;)Ljava/util/Calendar;
    .locals 2
    .param p0, "timeStampToken"    # Lorg/bouncycastle/tsp/TimeStampToken;

    .line 323
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 324
    .local v0, "calendar":Ljava/util/GregorianCalendar;
    invoke-virtual {p0}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getGenTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 325
    return-object v0
.end method

.method static getTsaResponseForUserRequest(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Lcom/itextpdf/signatures/SignUtils$TsaResponse;
    .locals 6
    .param p0, "tsaUrl"    # Ljava/lang/String;
    .param p1, "requestBytes"    # [B
    .param p2, "tsaUsername"    # Ljava/lang/String;
    .param p3, "tsaPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 263
    .local v0, "url":Ljava/net/URL;
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    .local v3, "tsaConnection":Ljava/net/URLConnection;
    nop

    .line 268
    invoke-virtual {v3, v2}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 269
    invoke-virtual {v3, v2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 270
    invoke-virtual {v3, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 271
    const-string v1, "Content-Type"

    const-string v2, "application/timestamp-query"

    invoke-virtual {v3, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v1, "Content-Transfer-Encoding"

    const-string v2, "binary"

    invoke-virtual {v3, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    if-eqz p2, :cond_0

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "userPassword":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Basic "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 278
    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const/16 v5, 0x8

    invoke-static {v4, v5}, Lcom/itextpdf/io/codec/Base64;->encodeBytes([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 277
    const-string v4, "Authorization"

    invoke-virtual {v3, v4, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .end local v1    # "userPassword":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 281
    .local v1, "out":Ljava/io/OutputStream;
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 282
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 284
    new-instance v2, Lcom/itextpdf/signatures/SignUtils$TsaResponse;

    invoke-direct {v2}, Lcom/itextpdf/signatures/SignUtils$TsaResponse;-><init>()V

    .line 285
    .local v2, "response":Lcom/itextpdf/signatures/SignUtils$TsaResponse;
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, v2, Lcom/itextpdf/signatures/SignUtils$TsaResponse;->tsaResponseStream:Ljava/io/InputStream;

    .line 286
    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/itextpdf/signatures/SignUtils$TsaResponse;->encoding:Ljava/lang/String;

    .line 287
    return-object v2

    .line 265
    .end local v1    # "out":Ljava/io/OutputStream;
    .end local v2    # "response":Lcom/itextpdf/signatures/SignUtils$TsaResponse;
    .end local v3    # "tsaConnection":Ljava/net/URLConnection;
    :catch_0
    move-exception v3

    .line 266
    .local v3, "ioe":Ljava/io/IOException;
    new-instance v4, Lcom/itextpdf/kernel/PdfException;

    const-string v5, "Failed to get TSA response from {0}."

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-virtual {v4, v2}, Lcom/itextpdf/kernel/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;

    move-result-object v1

    throw v1
.end method

.method static hasUnsupportedCriticalExtension(Ljava/security/cert/X509Certificate;)Z
    .locals 3
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 306
    if-eqz p0, :cond_2

    .line 310
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->hasUnsupportedCriticalExtension()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 312
    .local v1, "oid":Ljava/lang/String;
    sget-object v2, Lcom/itextpdf/signatures/OID$X509Extensions;->SUPPORTED_CRITICAL_EXTENSIONS:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 313
    goto :goto_0

    .line 315
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 319
    .end local v1    # "oid":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 307
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "X509Certificate can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static isSignatureValid(Lorg/bouncycastle/tsp/TimeStampToken;Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .param p0, "validator"    # Lorg/bouncycastle/tsp/TimeStampToken;
    .param p1, "certStoreX509"    # Ljava/security/cert/X509Certificate;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;,
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    .line 211
    if-nez p2, :cond_0

    const-string p2, "BC"

    .line 212
    :cond_0
    new-instance v0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;

    invoke-direct {v0}, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;-><init>()V

    invoke-virtual {v0, p2}, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;->build(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/cms/SignerInformationVerifier;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tsp/TimeStampToken;->validate(Lorg/bouncycastle/cms/SignerInformationVerifier;)V

    .line 213
    return-void
.end method

.method static isSignatureValid(Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;Ljava/security/cert/Certificate;Ljava/lang/String;)Z
    .locals 2
    .param p0, "validator"    # Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;
    .param p1, "certStoreX509"    # Ljava/security/cert/Certificate;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;,
            Lorg/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 206
    if-nez p2, :cond_0

    const-string p2, "BC"

    .line 207
    :cond_0
    new-instance v0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;-><init>()V

    invoke-virtual {v0, p2}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->build(Ljava/security/PublicKey;)Lorg/bouncycastle/operator/ContentVerifierProvider;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->isSignatureValid(Lorg/bouncycastle/operator/ContentVerifierProvider;)Z

    move-result v0

    return v0
.end method

.method static parseCrlFromStream(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 136
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v0

    return-object v0
.end method

.method static readAllCerts([B)Ljava/util/Collection;
    .locals 2
    .param p0, "contentsKey"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Collection<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/util/StreamParsingException;
        }
    .end annotation

    .line 237
    new-instance v0, Lorg/bouncycastle/jce/provider/X509CertParser;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/X509CertParser;-><init>()V

    .line 238
    .local v0, "cr":Lorg/bouncycastle/jce/provider/X509CertParser;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jce/provider/X509CertParser;->engineInit(Ljava/io/InputStream;)V

    .line 239
    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/X509CertParser;->engineReadAll()Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method static verifyCertificateSignature(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)Z
    .locals 2
    .param p0, "certificate"    # Ljava/security/cert/X509Certificate;
    .param p1, "issuerPublicKey"    # Ljava/security/PublicKey;
    .param p2, "provider"    # Ljava/lang/String;

    .line 333
    const/4 v0, 0x0

    .line 335
    .local v0, "res":Z
    if-nez p2, :cond_0

    .line 336
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    goto :goto_0

    .line 338
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_0
    const/4 v0, 0x1

    .line 342
    goto :goto_1

    .line 341
    :catch_0
    move-exception v1

    .line 344
    :goto_1
    return v0
.end method
