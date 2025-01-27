.class public Lorg/bouncycastle/asn1/x509/sigi/PersonalData;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "PersonalData.java"


# instance fields
.field private dateOfBirth:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

.field private gender:Ljava/lang/String;

.field private nameDistinguisher:Ljava/math/BigInteger;

.field private nameOrPseudonym:Lorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;

.field private placeOfBirth:Lorg/bouncycastle/asn1/x500/DirectoryString;

.field private postalAddress:Lorg/bouncycastle/asn1/x500/DirectoryString;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 8
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->nameOrPseudonym:Lorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 34
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad tag number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    nop

    .line 35
    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->postalAddress:Lorg/bouncycastle/asn1/x500/DirectoryString;

    goto :goto_0

    :pswitch_1
    nop

    .line 36
    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/DERPrintableString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERPrintableString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERPrintableString;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->gender:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    nop

    .line 37
    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->placeOfBirth:Lorg/bouncycastle/asn1/x500/DirectoryString;

    goto :goto_0

    :pswitch_3
    nop

    .line 38
    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->dateOfBirth:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    goto :goto_0

    :pswitch_4
    nop

    .line 39
    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->nameDistinguisher:Ljava/math/BigInteger;

    goto :goto_0

    :cond_0
    return-void

    .line 40
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 41
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;Ljava/math/BigInteger;Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/x500/DirectoryString;Ljava/lang/String;Lorg/bouncycastle/asn1/x500/DirectoryString;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->nameOrPseudonym:Lorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;

    .line 44
    iput-object p3, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->dateOfBirth:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 45
    iput-object p5, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->gender:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->nameDistinguisher:Ljava/math/BigInteger;

    .line 47
    iput-object p6, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->postalAddress:Lorg/bouncycastle/asn1/x500/DirectoryString;

    .line 48
    iput-object p4, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->placeOfBirth:Lorg/bouncycastle/asn1/x500/DirectoryString;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/sigi/PersonalData;
    .locals 3

    if-eqz p0, :cond_2

    .line 1
    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 11
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_2
    :goto_0
    check-cast p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;

    return-object p0
.end method


# virtual methods
.method public getDateOfBirth()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->dateOfBirth:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getNameDistinguisher()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->nameDistinguisher:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getNameOrPseudonym()Lorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->nameOrPseudonym:Lorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;

    return-object v0
.end method

.method public getPlaceOfBirth()Lorg/bouncycastle/asn1/x500/DirectoryString;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->placeOfBirth:Lorg/bouncycastle/asn1/x500/DirectoryString;

    return-object v0
.end method

.method public getPostalAddress()Lorg/bouncycastle/asn1/x500/DirectoryString;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->postalAddress:Lorg/bouncycastle/asn1/x500/DirectoryString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 6

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->nameOrPseudonym:Lorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 3
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->nameDistinguisher:Ljava/math/BigInteger;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v3, Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->nameDistinguisher:Ljava/math/BigInteger;

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 7
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->dateOfBirth:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 9
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->dateOfBirth:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 11
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->placeOfBirth:Lorg/bouncycastle/asn1/x500/DirectoryString;

    if-eqz v1, :cond_2

    .line 13
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->placeOfBirth:Lorg/bouncycastle/asn1/x500/DirectoryString;

    const/4 v5, 0x2

    invoke-direct {v1, v3, v5, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 15
    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->gender:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 17
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v4, Lorg/bouncycastle/asn1/DERPrintableString;

    iget-object v5, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->gender:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lorg/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;Z)V

    const/4 v5, 0x3

    invoke-direct {v1, v2, v5, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 19
    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->postalAddress:Lorg/bouncycastle/asn1/x500/DirectoryString;

    if-eqz v1, :cond_4

    .line 21
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/sigi/PersonalData;->postalAddress:Lorg/bouncycastle/asn1/x500/DirectoryString;

    const/4 v4, 0x4

    invoke-direct {v1, v3, v4, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 23
    :cond_4
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
