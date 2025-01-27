.class public Lorg/bouncycastle/asn1/est/CsrAttrs;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "CsrAttrs.java"


# instance fields
.field private final attrOrOIDs:[Lorg/bouncycastle/asn1/est/AttrOrOID;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3

    .line 5
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/est/AttrOrOID;

    iput-object v0, p0, Lorg/bouncycastle/asn1/est/CsrAttrs;->attrOrOIDs:[Lorg/bouncycastle/asn1/est/AttrOrOID;

    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 10
    iget-object v1, p0, Lorg/bouncycastle/asn1/est/CsrAttrs;->attrOrOIDs:[Lorg/bouncycastle/asn1/est/AttrOrOID;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/est/AttrOrOID;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/est/AttrOrOID;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/est/AttrOrOID;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 2
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bouncycastle/asn1/est/AttrOrOID;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/asn1/est/CsrAttrs;->attrOrOIDs:[Lorg/bouncycastle/asn1/est/AttrOrOID;

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/est/AttrOrOID;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 4
    invoke-static {p1}, Lorg/bouncycastle/asn1/est/Utils;->clone([Lorg/bouncycastle/asn1/est/AttrOrOID;)[Lorg/bouncycastle/asn1/est/AttrOrOID;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/est/CsrAttrs;->attrOrOIDs:[Lorg/bouncycastle/asn1/est/AttrOrOID;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/est/CsrAttrs;
    .locals 1

    .line 1
    instance-of v0, p0, Lorg/bouncycastle/asn1/est/CsrAttrs;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lorg/bouncycastle/asn1/est/CsrAttrs;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 8
    new-instance v0, Lorg/bouncycastle/asn1/est/CsrAttrs;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/est/CsrAttrs;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/est/CsrAttrs;
    .locals 0

    .line 9
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/est/CsrAttrs;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/est/CsrAttrs;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAttrOrOIDs()[Lorg/bouncycastle/asn1/est/AttrOrOID;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/est/CsrAttrs;->attrOrOIDs:[Lorg/bouncycastle/asn1/est/AttrOrOID;

    invoke-static {v0}, Lorg/bouncycastle/asn1/est/Utils;->clone([Lorg/bouncycastle/asn1/est/AttrOrOID;)[Lorg/bouncycastle/asn1/est/AttrOrOID;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/est/CsrAttrs;->attrOrOIDs:[Lorg/bouncycastle/asn1/est/AttrOrOID;

    array-length v0, v0

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    iget-object v1, p0, Lorg/bouncycastle/asn1/est/CsrAttrs;->attrOrOIDs:[Lorg/bouncycastle/asn1/est/AttrOrOID;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
