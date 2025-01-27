.class public Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "RC2CBCParameter.java"


# instance fields
.field iv:Lorg/bouncycastle/asn1/ASN1OctetString;

.field version:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(I[B)V
    .locals 3

    .line 4
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 5
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 6
    new-instance p1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->iv:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3

    .line 7
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 8
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 11
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object p1, p0, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->iv:Lorg/bouncycastle/asn1/ASN1OctetString;

    goto :goto_0

    :cond_0
    nop

    .line 15
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 16
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object p1, p0, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->iv:Lorg/bouncycastle/asn1/ASN1OctetString;

    :goto_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 3
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->iv:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;
    .locals 1

    .line 1
    instance-of v0, p0, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 7
    new-instance v0, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getIV()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->iv:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public getRC2ParameterVersion()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 3
    iget-object v1, p0, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 8
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->iv:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 10
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
