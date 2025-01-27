.class public abstract Lorg/bouncycastle/bcpg/ECPublicBCPGKey;
.super Lorg/bouncycastle/bcpg/BCPGObject;

# interfaces
.implements Lorg/bouncycastle/bcpg/BCPGKey;


# instance fields
.field oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field point:Ljava/math/BigInteger;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/bcpg/BCPGObject;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;->point:Ljava/math/BigInteger;

    iput-object p1, p0, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;->oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/math/ec/ECPoint;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/bcpg/BCPGObject;-><init>()V

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;->point:Ljava/math/BigInteger;

    iput-object p1, p0, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;->oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/bcpg/BCPGObject;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;->readBytesOfEncodedLength(Lorg/bouncycastle/bcpg/BCPGInputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;->oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/bcpg/MPInteger;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;->point:Ljava/math/BigInteger;

    return-void
.end method

.method protected static readBytesOfEncodedLength(Lorg/bouncycastle/bcpg/BCPGInputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    if-ltz v0, :cond_2

    if-eqz v0, :cond_1

    const/16 v1, 0xff

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x2

    new-array v2, v1, [B

    const/4 v3, 0x2

    sub-int/2addr v1, v3

    invoke-virtual {p0, v2, v3, v1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->readFully([BII)V

    const/4 p0, 0x0

    const/4 v1, 0x6

    aput-byte v1, v2, p0

    const/4 p0, 0x1

    int-to-byte v0, v0

    aput-byte v0, v2, p0

    return-object v2

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo v0, "unsupported OID"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "future extensions not yet implemented"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo v0, "unexpected end-of-stream"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public encode(Lorg/bouncycastle/bcpg/BCPGOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;->oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getEncoded()[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v2, v1}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write([BII)V

    new-instance v0, Lorg/bouncycastle/bcpg/MPInteger;

    iget-object v1, p0, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;->point:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writeObject(Lorg/bouncycastle/bcpg/BCPGObject;)V

    return-void
.end method

.method public getCurveOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;->oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    :try_start_0
    invoke-super {p0}, Lorg/bouncycastle/bcpg/BCPGObject;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEncodedPoint()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/bcpg/ECPublicBCPGKey;->point:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "PGP"

    return-object v0
.end method
