.class public Lorg/bouncycastle/asn1/cmp/PKIMessage;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "PKIMessage.java"


# instance fields
.field private body:Lorg/bouncycastle/asn1/cmp/PKIBody;

.field private extraCerts:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private header:Lorg/bouncycastle/asn1/cmp/PKIHeader;

.field private protection:Lorg/bouncycastle/asn1/DERBitString;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmp/PKIHeader;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIHeader;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIMessage;->header:Lorg/bouncycastle/asn1/cmp/PKIHeader;

    .line 5
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmp/PKIBody;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIBody;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIMessage;->body:Lorg/bouncycastle/asn1/cmp/PKIBody;

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 11
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 13
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/DERBitString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIMessage;->protection:Lorg/bouncycastle/asn1/DERBitString;

    goto :goto_0

    :cond_0
    nop

    .line 17
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIMessage;->extraCerts:Lorg/bouncycastle/asn1/ASN1Sequence;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/PKIHeader;Lorg/bouncycastle/asn1/cmp/PKIBody;)V
    .locals 1

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/bouncycastle/asn1/cmp/PKIMessage;-><init>(Lorg/bouncycastle/asn1/cmp/PKIHeader;Lorg/bouncycastle/asn1/cmp/PKIBody;Lorg/bouncycastle/asn1/DERBitString;[Lorg/bouncycastle/asn1/cmp/CMPCertificate;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/PKIHeader;Lorg/bouncycastle/asn1/cmp/PKIBody;Lorg/bouncycastle/asn1/DERBitString;)V
    .locals 1

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/asn1/cmp/PKIMessage;-><init>(Lorg/bouncycastle/asn1/cmp/PKIHeader;Lorg/bouncycastle/asn1/cmp/PKIBody;Lorg/bouncycastle/asn1/DERBitString;[Lorg/bouncycastle/asn1/cmp/CMPCertificate;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/PKIHeader;Lorg/bouncycastle/asn1/cmp/PKIBody;Lorg/bouncycastle/asn1/DERBitString;[Lorg/bouncycastle/asn1/cmp/CMPCertificate;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/PKIMessage;->header:Lorg/bouncycastle/asn1/cmp/PKIHeader;

    .line 20
    iput-object p2, p0, Lorg/bouncycastle/asn1/cmp/PKIMessage;->body:Lorg/bouncycastle/asn1/cmp/PKIBody;

    .line 21
    iput-object p3, p0, Lorg/bouncycastle/asn1/cmp/PKIMessage;->protection:Lorg/bouncycastle/asn1/DERBitString;

    if-eqz p4, :cond_1

    .line 24
    new-instance p1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 p2, 0x0

    .line 25
    :goto_0
    array-length p3, p4

    if-ge p2, p3, :cond_0

    .line 27
    aget-object p3, p4, p2

    invoke-virtual {p1, p3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 29
    :cond_0
    new-instance p2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p2, p1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    iput-object p2, p0, Lorg/bouncycastle/asn1/cmp/PKIMessage;->extraCerts:Lorg/bouncycastle/asn1/ASN1Sequence;

    :cond_1
    return-void
.end method

.method private addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2

    if-eqz p3, :cond_0

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2, p3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIMessage;
    .locals 1

    .line 1
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/PKIMessage;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lorg/bouncycastle/asn1/cmp/PKIMessage;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 7
    new-instance v0, Lorg/bouncycastle/asn1/cmp/PKIMessage;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cmp/PKIMessage;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getBody()Lorg/bouncycastle/asn1/cmp/PKIBody;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIMessage;->body:Lorg/bouncycastle/asn1/cmp/PKIBody;

    return-object v0
.end method

.method public getExtraCerts()[Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIMessage;->extraCerts:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v1, v0, [Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    iget-object v3, p0, Lorg/bouncycastle/asn1/cmp/PKIMessage;->extraCerts:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getHeader()Lorg/bouncycastle/asn1/cmp/PKIHeader;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIMessage;->header:Lorg/bouncycastle/asn1/cmp/PKIHeader;

    return-object v0
.end method

.method public getProtection()Lorg/bouncycastle/asn1/DERBitString;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIMessage;->protection:Lorg/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 3
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIMessage;->header:Lorg/bouncycastle/asn1/cmp/PKIHeader;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 4
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIMessage;->body:Lorg/bouncycastle/asn1/cmp/PKIBody;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 6
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIMessage;->protection:Lorg/bouncycastle/asn1/DERBitString;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 7
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIMessage;->extraCerts:Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 9
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
