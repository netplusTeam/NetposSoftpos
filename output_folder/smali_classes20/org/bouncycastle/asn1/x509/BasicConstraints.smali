.class public Lorg/bouncycastle/asn1/x509/BasicConstraints;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "BasicConstraints.java"


# instance fields
.field cA:Lorg/bouncycastle/asn1/ASN1Boolean;

.field pathLenConstraint:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 144
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 145
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/ASN1Boolean;

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 234
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/ASN1Boolean;

    .line 235
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/ASN1Integer;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/ASN1Boolean;

    .line 3
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 39
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 41
    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/ASN1Boolean;

    .line 42
    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/ASN1Integer;

    goto :goto_1

    :cond_0
    nop

    .line 46
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/asn1/ASN1Boolean;

    if-eqz v2, :cond_1

    .line 48
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/ASN1Boolean;

    goto :goto_0

    :cond_1
    nop

    .line 52
    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/ASN1Boolean;

    .line 53
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 55
    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 57
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/ASN1Boolean;

    if-eqz v0, :cond_2

    .line 59
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/ASN1Integer;

    goto :goto_1

    .line 63
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "wrong sequence in constructor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 64
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/ASN1Boolean;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 137
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/ASN1Boolean;

    goto :goto_0

    :cond_0
    nop

    .line 141
    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/ASN1Boolean;

    :goto_0
    nop

    .line 143
    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/ASN1Integer;

    return-void
.end method

.method public static fromExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/asn1/x509/BasicConstraints;
    .locals 1

    .line 1
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->basicConstraints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/BasicConstraints;
    .locals 1

    .line 2
    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;

    if-eqz v0, :cond_0

    .line 4
    check-cast p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;

    return-object p0

    .line 6
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/X509Extension;

    if-eqz v0, :cond_1

    .line 8
    check-cast p0, Lorg/bouncycastle/asn1/x509/X509Extension;

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/X509Extension;->convertValueToObject(Lorg/bouncycastle/asn1/x509/X509Extension;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p0, :cond_2

    .line 12
    new-instance v0, Lorg/bouncycastle/asn1/x509/BasicConstraints;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/BasicConstraints;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getPathLenConstraint()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCA()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/ASN1Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 3
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/ASN1Boolean;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 8
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 13
    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/ASN1Integer;

    const-string v1, "BasicConstraints: isCa("

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/ASN1Boolean;

    if-nez v0, :cond_0

    .line 5
    const-string v0, "BasicConstraints: isCa(false)"

    return-object v0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), pathLenConstraint = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
