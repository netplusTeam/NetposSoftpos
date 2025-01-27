.class public Lorg/bouncycastle/asn1/cmp/PollRepContent;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "PollRepContent.java"


# instance fields
.field private certReqId:[Lorg/bouncycastle/asn1/ASN1Integer;

.field private checkAfter:[Lorg/bouncycastle/asn1/ASN1Integer;

.field private reason:[Lorg/bouncycastle/asn1/cmp/PKIFreeText;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Integer;)V
    .locals 1

    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/cmp/PollRepContent;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/cmp/PKIFreeText;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/cmp/PKIFreeText;)V
    .locals 4

    .line 17
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 18
    const/4 v0, 0x1

    new-array v1, v0, [Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->certReqId:[Lorg/bouncycastle/asn1/ASN1Integer;

    .line 19
    new-array v2, v0, [Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object v2, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->checkAfter:[Lorg/bouncycastle/asn1/ASN1Integer;

    .line 20
    new-array v0, v0, [Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->reason:[Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    .line 22
    const/4 v3, 0x0

    aput-object p1, v1, v3

    .line 23
    aput-object p2, v2, v3

    .line 24
    aput-object p3, v0, v3

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->certReqId:[Lorg/bouncycastle/asn1/ASN1Integer;

    .line 3
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->checkAfter:[Lorg/bouncycastle/asn1/ASN1Integer;

    .line 4
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->reason:[Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    const/4 v0, 0x0

    move v1, v0

    .line 6
    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 8
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    .line 10
    iget-object v3, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->certReqId:[Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v4

    aput-object v4, v3, v1

    .line 11
    iget-object v3, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->checkAfter:[Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v4

    aput-object v4, v3, v1

    .line 13
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    .line 15
    iget-object v3, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->reason:[Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/cmp/PKIFreeText;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    move-result-object v2

    aput-object v2, v3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PollRepContent;
    .locals 1

    .line 1
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 8
    new-instance v0, Lorg/bouncycastle/asn1/cmp/PollRepContent;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cmp/PollRepContent;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getCertReqId(I)Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->certReqId:[Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getCheckAfter(I)Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->checkAfter:[Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getReason(I)Lorg/bouncycastle/asn1/cmp/PKIFreeText;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->reason:[Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->certReqId:[Lorg/bouncycastle/asn1/ASN1Integer;

    array-length v0, v0

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->certReqId:[Lorg/bouncycastle/asn1/ASN1Integer;

    array-length v2, v2

    if-eq v1, v2, :cond_1

    .line 5
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 7
    iget-object v3, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->certReqId:[Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 8
    iget-object v3, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->checkAfter:[Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 10
    iget-object v3, p0, Lorg/bouncycastle/asn1/cmp/PollRepContent;->reason:[Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 12
    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 15
    :cond_0
    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18
    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
