.class public Lorg/bouncycastle/asn1/tsp/TSTInfo;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "TSTInfo.java"


# instance fields
.field private accuracy:Lorg/bouncycastle/asn1/tsp/Accuracy;

.field private extensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field private genTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

.field private messageImprint:Lorg/bouncycastle/asn1/tsp/MessageImprint;

.field private nonce:Lorg/bouncycastle/asn1/ASN1Integer;

.field private ordering:Lorg/bouncycastle/asn1/ASN1Boolean;

.field private serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

.field private tsa:Lorg/bouncycastle/asn1/x509/GeneralName;

.field private tsaPolicyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private version:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/tsp/MessageImprint;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/tsp/Accuracy;Lorg/bouncycastle/asn1/ASN1Boolean;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/x509/Extensions;)V
    .locals 3

    .line 61
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 62
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 63
    iput-object p1, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->tsaPolicyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 64
    iput-object p2, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->messageImprint:Lorg/bouncycastle/asn1/tsp/MessageImprint;

    .line 65
    iput-object p3, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 66
    iput-object p4, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->genTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 68
    iput-object p5, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->accuracy:Lorg/bouncycastle/asn1/tsp/Accuracy;

    .line 69
    iput-object p6, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->ordering:Lorg/bouncycastle/asn1/ASN1Boolean;

    .line 70
    iput-object p7, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->nonce:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 71
    iput-object p8, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->tsa:Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 72
    iput-object p9, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 8
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->tsaPolicyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 11
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/tsp/MessageImprint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/MessageImprint;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->messageImprint:Lorg/bouncycastle/asn1/tsp/MessageImprint;

    .line 14
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 17
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->genTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 20
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->ordering:Lorg/bouncycastle/asn1/ASN1Boolean;

    .line 22
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 24
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Object;

    .line 26
    instance-of v2, v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_3

    .line 28
    check-cast v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 30
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    .line 36
    invoke-static {v1, v0}, Lorg/bouncycastle/asn1/x509/Extensions;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    goto :goto_0

    .line 39
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown tag value "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    nop

    .line 40
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->tsa:Lorg/bouncycastle/asn1/x509/GeneralName;

    goto :goto_0

    .line 49
    :cond_3
    instance-of v2, v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v2, :cond_6

    instance-of v2, v1, Lorg/bouncycastle/asn1/tsp/Accuracy;

    if-eqz v2, :cond_4

    goto :goto_1

    .line 53
    :cond_4
    instance-of v2, v1, Lorg/bouncycastle/asn1/ASN1Boolean;

    if-eqz v2, :cond_5

    .line 55
    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->ordering:Lorg/bouncycastle/asn1/ASN1Boolean;

    goto :goto_0

    .line 57
    :cond_5
    instance-of v2, v1, Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_0

    .line 59
    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->nonce:Lorg/bouncycastle/asn1/ASN1Integer;

    goto :goto_0

    .line 60
    :cond_6
    :goto_1
    invoke-static {v1}, Lorg/bouncycastle/asn1/tsp/Accuracy;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/Accuracy;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->accuracy:Lorg/bouncycastle/asn1/tsp/Accuracy;

    goto :goto_0

    :cond_7
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/TSTInfo;
    .locals 1

    .line 1
    instance-of v0, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 7
    new-instance v0, Lorg/bouncycastle/asn1/tsp/TSTInfo;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/tsp/TSTInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getAccuracy()Lorg/bouncycastle/asn1/tsp/Accuracy;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->accuracy:Lorg/bouncycastle/asn1/tsp/Accuracy;

    return-object v0
.end method

.method public getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public getGenTime()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->genTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public getMessageImprint()Lorg/bouncycastle/asn1/tsp/MessageImprint;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->messageImprint:Lorg/bouncycastle/asn1/tsp/MessageImprint;

    return-object v0
.end method

.method public getNonce()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->nonce:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getOrdering()Lorg/bouncycastle/asn1/ASN1Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->ordering:Lorg/bouncycastle/asn1/ASN1Boolean;

    return-object v0
.end method

.method public getPolicy()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->tsaPolicyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getTsa()Lorg/bouncycastle/asn1/x509/GeneralName;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->tsa:Lorg/bouncycastle/asn1/x509/GeneralName;

    return-object v0
.end method

.method public getVersion()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 4
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->tsaPolicyId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 5
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->messageImprint:Lorg/bouncycastle/asn1/tsp/MessageImprint;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 6
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 7
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->genTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 9
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->accuracy:Lorg/bouncycastle/asn1/tsp/Accuracy;

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 14
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->ordering:Lorg/bouncycastle/asn1/ASN1Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->ordering:Lorg/bouncycastle/asn1/ASN1Boolean;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 19
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->nonce:Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_2

    .line 21
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 24
    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->tsa:Lorg/bouncycastle/asn1/x509/GeneralName;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 26
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v4, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->tsa:Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v1, v3, v2, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 29
    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_4

    .line 31
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v4, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 34
    :cond_4
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
