.class public Lorg/bouncycastle/asn1/cms/AuthenticatedData;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "AuthenticatedData.java"


# instance fields
.field private authAttrs:Lorg/bouncycastle/asn1/ASN1Set;

.field private digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private encapsulatedContentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

.field private mac:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private macAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

.field private recipientInfos:Lorg/bouncycastle/asn1/ASN1Set;

.field private unauthAttrs:Lorg/bouncycastle/asn1/ASN1Set;

.field private version:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5

    .line 21
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 26
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    .line 28
    instance-of v2, v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    .line 30
    check-cast v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v1, v0}, Lorg/bouncycastle/asn1/cms/OriginatorInfo;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    const/4 v1, 0x3

    .line 31
    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    move v3, v1

    move-object v1, v2

    .line 34
    :cond_0
    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->recipientInfos:Lorg/bouncycastle/asn1/ASN1Set;

    add-int/lit8 v1, v3, 0x1

    .line 35
    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->macAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    add-int/lit8 v2, v1, 0x1

    .line 37
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    .line 39
    instance-of v3, v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_1

    .line 41
    check-cast v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v1, v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    add-int/lit8 v1, v2, 0x1

    .line 42
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    move-object v4, v2

    move v2, v1

    move-object v1, v4

    .line 45
    :cond_1
    invoke-static {v1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->encapsulatedContentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    add-int/lit8 v1, v2, 0x1

    .line 47
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 49
    instance-of v3, v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_2

    .line 51
    check-cast v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v2, v0}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->authAttrs:Lorg/bouncycastle/asn1/ASN1Set;

    add-int/lit8 v2, v1, 0x1

    .line 52
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    move v4, v2

    move-object v2, v1

    move v1, v4

    .line 55
    :cond_2
    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->mac:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 57
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-le v2, v1, :cond_3

    .line 59
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->unauthAttrs:Lorg/bouncycastle/asn1/ASN1Set;

    :cond_3
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/OriginatorInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/cms/ContentInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1Set;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    if-nez p4, :cond_0

    if-eqz p6, :cond_1

    :cond_0
    if-eqz p4, :cond_2

    if-eqz p6, :cond_2

    .line 10
    :cond_1
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-static {p1}, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->calculateVersion(Lorg/bouncycastle/asn1/cms/OriginatorInfo;)I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 12
    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    .line 13
    iput-object p3, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->macAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 14
    iput-object p4, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 15
    iput-object p2, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->recipientInfos:Lorg/bouncycastle/asn1/ASN1Set;

    .line 16
    iput-object p5, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->encapsulatedContentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    .line 17
    iput-object p6, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->authAttrs:Lorg/bouncycastle/asn1/ASN1Set;

    .line 18
    iput-object p7, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->mac:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 19
    iput-object p8, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->unauthAttrs:Lorg/bouncycastle/asn1/ASN1Set;

    return-void

    .line 20
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "digestAlgorithm and authAttrs must be set together"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static calculateVersion(Lorg/bouncycastle/asn1/cms/OriginatorInfo;)I
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cms/OriginatorInfo;->getCertificates()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_3

    .line 3
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .line 5
    instance-of v5, v3, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v5, :cond_1

    .line 7
    check-cast v3, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 9
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    move v0, v2

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    if-ne v3, v4, :cond_1

    move v0, v4

    .line 21
    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cms/OriginatorInfo;->getCRLs()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 23
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cms/OriginatorInfo;->getCRLs()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 25
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 27
    instance-of v3, v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_4

    .line 29
    check-cast v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 31
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    if-ne v1, v2, :cond_4

    goto :goto_1

    :cond_5
    move v4, v0

    :goto_1
    return v4
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/AuthenticatedData;
    .locals 1

    .line 2
    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;

    if-eqz v0, :cond_0

    .line 4
    check-cast p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 8
    new-instance v0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cms/AuthenticatedData;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/AuthenticatedData;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/AuthenticatedData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAuthAttrs()Lorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->authAttrs:Lorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getEncapsulatedContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->encapsulatedContentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    return-object v0
.end method

.method public getMac()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->mac:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getMacAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->macAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getOriginatorInfo()Lorg/bouncycastle/asn1/cms/OriginatorInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    return-object v0
.end method

.method public getRecipientInfos()Lorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->recipientInfos:Lorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getUnauthAttrs()Lorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->unauthAttrs:Lorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getVersion()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 3
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 5
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 7
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 10
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->recipientInfos:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 11
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->macAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 13
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v1, :cond_1

    .line 15
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 18
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->encapsulatedContentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 20
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->authAttrs:Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_2

    .line 22
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->authAttrs:Lorg/bouncycastle/asn1/ASN1Set;

    const/4 v4, 0x2

    invoke-direct {v1, v2, v4, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 25
    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->mac:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 27
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->unauthAttrs:Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_3

    .line 29
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->unauthAttrs:Lorg/bouncycastle/asn1/ASN1Set;

    const/4 v4, 0x3

    invoke-direct {v1, v2, v4, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 32
    :cond_3
    new-instance v1, Lorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/BERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
