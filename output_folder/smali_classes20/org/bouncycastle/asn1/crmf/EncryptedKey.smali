.class public Lorg/bouncycastle/asn1/crmf/EncryptedKey;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "EncryptedKey.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private encryptedValue:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

.field private envelopedData:Lorg/bouncycastle/asn1/cms/EnvelopedData;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/cms/EnvelopedData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/EncryptedKey;->envelopedData:Lorg/bouncycastle/asn1/cms/EnvelopedData;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/crmf/EncryptedValue;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/bouncycastle/asn1/crmf/EncryptedKey;->encryptedValue:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/EncryptedKey;
    .locals 2

    .line 1
    instance-of v0, p0, Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    return-object p0

    .line 5
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lorg/bouncycastle/asn1/cms/EnvelopedData;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/EnvelopedData;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/crmf/EncryptedKey;-><init>(Lorg/bouncycastle/asn1/cms/EnvelopedData;)V

    return-object v0

    .line 9
    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    if-eqz v0, :cond_2

    .line 11
    new-instance v0, Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    check-cast p0, Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/crmf/EncryptedKey;-><init>(Lorg/bouncycastle/asn1/crmf/EncryptedValue;)V

    return-object v0

    .line 15
    :cond_2
    new-instance v0, Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    invoke-static {p0}, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/crmf/EncryptedKey;-><init>(Lorg/bouncycastle/asn1/crmf/EncryptedValue;)V

    return-object v0
.end method


# virtual methods
.method public getValue()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/EncryptedKey;->encryptedValue:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    if-eqz v0, :cond_0

    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/EncryptedKey;->envelopedData:Lorg/bouncycastle/asn1/cms/EnvelopedData;

    return-object v0
.end method

.method public isEncryptedValue()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/EncryptedKey;->encryptedValue:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/crmf/EncryptedKey;->encryptedValue:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/bouncycastle/asn1/crmf/EncryptedKey;->envelopedData:Lorg/bouncycastle/asn1/cms/EnvelopedData;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
