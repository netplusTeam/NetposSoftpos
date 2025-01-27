.class public Lorg/bouncycastle/crypto/tls/OCSPStatusRequest;
.super Ljava/lang/Object;
.source "OCSPStatusRequest.java"


# instance fields
.field protected requestExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field protected responderIDList:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljava/util/Vector;Lorg/bouncycastle/asn1/x509/Extensions;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/OCSPStatusRequest;->responderIDList:Ljava/util/Vector;

    .line 3
    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/OCSPStatusRequest;->requestExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-void
.end method

.method public static parse(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/OCSPStatusRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 3
    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v1

    if-lez v1, :cond_1

    .line 6
    invoke-static {v1, p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v1

    .line 7
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 10
    :cond_0
    invoke-static {v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 11
    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readDERObject([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ocsp/ResponderID;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/ResponderID;

    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    if-gtz v1, :cond_0

    :cond_1
    const/4 v1, 0x0

    .line 20
    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v2

    if-lez v2, :cond_2

    .line 23
    invoke-static {v2, p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object p0

    .line 24
    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->readDERObject([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v1

    .line 28
    :cond_2
    new-instance p0, Lorg/bouncycastle/crypto/tls/OCSPStatusRequest;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/tls/OCSPStatusRequest;-><init>(Ljava/util/Vector;Lorg/bouncycastle/asn1/x509/Extensions;)V

    return-object p0
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/OCSPStatusRequest;->responderIDList:Ljava/util/Vector;

    const-string v1, "DER"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v3, v2

    .line 8
    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/OCSPStatusRequest;->responderIDList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 10
    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/OCSPStatusRequest;->responderIDList:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ocsp/ResponderID;

    .line 11
    invoke-virtual {v4, v1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v4

    .line 12
    invoke-static {v4, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    invoke-static {v3}, Lorg/bouncycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    .line 15
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    invoke-static {v3, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 16
    invoke-static {v0, p1}, Lorg/bouncycastle/util/io/Streams;->writeBufTo(Ljava/io/ByteArrayOutputStream;Ljava/io/OutputStream;)V

    goto :goto_2

    :cond_2
    :goto_1
    nop

    .line 17
    invoke-static {v2, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 33
    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/OCSPStatusRequest;->requestExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    if-nez v0, :cond_3

    .line 35
    invoke-static {v2, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    goto :goto_3

    .line 39
    :cond_3
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    .line 40
    array-length v1, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    .line 41
    array-length v1, v0

    invoke-static {v1, p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 42
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :goto_3
    return-void
.end method

.method public getRequestExtensions()Lorg/bouncycastle/asn1/x509/Extensions;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/OCSPStatusRequest;->requestExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public getResponderIDList()Ljava/util/Vector;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/OCSPStatusRequest;->responderIDList:Ljava/util/Vector;

    return-object v0
.end method
