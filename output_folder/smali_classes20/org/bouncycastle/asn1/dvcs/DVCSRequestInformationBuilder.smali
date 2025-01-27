.class public Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;
.super Ljava/lang/Object;
.source "DVCSRequestInformationBuilder.java"


# static fields
.field private static final DEFAULT_VERSION:I = 0x1

.field private static final TAG_DATA_LOCATIONS:I = 0x3

.field private static final TAG_DVCS:I = 0x2

.field private static final TAG_EXTENSIONS:I = 0x4

.field private static final TAG_REQUESTER:I = 0x0

.field private static final TAG_REQUEST_POLICY:I = 0x1


# instance fields
.field private dataLocations:Lorg/bouncycastle/asn1/x509/GeneralNames;

.field private dvcs:Lorg/bouncycastle/asn1/x509/GeneralNames;

.field private extensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field private initialInfo:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

.field private nonce:Ljava/math/BigInteger;

.field private requestPolicy:Lorg/bouncycastle/asn1/x509/PolicyInformation;

.field private requestTime:Lorg/bouncycastle/asn1/dvcs/DVCSTime;

.field private requester:Lorg/bouncycastle/asn1/x509/GeneralNames;

.field private final service:Lorg/bouncycastle/asn1/dvcs/ServiceType;

.field private version:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->version:I

    .line 53
    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->initialInfo:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    .line 54
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->getService()Lorg/bouncycastle/asn1/dvcs/ServiceType;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->service:Lorg/bouncycastle/asn1/dvcs/ServiceType;

    .line 55
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->getVersion()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->version:I

    .line 56
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->getNonce()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->nonce:Ljava/math/BigInteger;

    .line 57
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->getRequestTime()Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->requestTime:Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    .line 58
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->getRequestPolicy()Lorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->requestPolicy:Lorg/bouncycastle/asn1/x509/PolicyInformation;

    .line 59
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->getDVCS()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->dvcs:Lorg/bouncycastle/asn1/x509/GeneralNames;

    .line 60
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->getDataLocations()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->dataLocations:Lorg/bouncycastle/asn1/x509/GeneralNames;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/dvcs/ServiceType;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->version:I

    .line 24
    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->service:Lorg/bouncycastle/asn1/dvcs/ServiceType;

    return-void
.end method


# virtual methods
.method public build()Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;
    .locals 9

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 3
    iget v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->version:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 5
    new-instance v3, Lorg/bouncycastle/asn1/ASN1Integer;

    int-to-long v4, v1

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 7
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->service:Lorg/bouncycastle/asn1/dvcs/ServiceType;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 8
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->nonce:Ljava/math/BigInteger;

    if-eqz v1, :cond_1

    .line 10
    new-instance v3, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v3, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 12
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->requestTime:Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    nop

    .line 17
    const/4 v1, 0x5

    new-array v3, v1, [I

    fill-array-data v3, :array_0

    .line 24
    new-array v4, v1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    iget-object v5, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->requester:Lorg/bouncycastle/asn1/x509/GeneralNames;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->requestPolicy:Lorg/bouncycastle/asn1/x509/PolicyInformation;

    aput-object v5, v4, v2

    iget-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->dvcs:Lorg/bouncycastle/asn1/x509/GeneralNames;

    const/4 v5, 0x2

    aput-object v2, v4, v5

    iget-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->dataLocations:Lorg/bouncycastle/asn1/x509/GeneralNames;

    const/4 v5, 0x3

    aput-object v2, v4, v5

    iget-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    const/4 v5, 0x4

    aput-object v2, v4, v5

    move v2, v6

    :goto_0
    if-ge v2, v1, :cond_4

    .line 33
    aget v5, v3, v2

    .line 34
    aget-object v7, v4, v2

    if-eqz v7, :cond_3

    .line 37
    new-instance v8, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v8, v6, v5, v7}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    :cond_4
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v1}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method public setDVCS(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/GeneralNames;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->setDVCS(Lorg/bouncycastle/asn1/x509/GeneralNames;)V

    return-void
.end method

.method public setDVCS(Lorg/bouncycastle/asn1/x509/GeneralNames;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->dvcs:Lorg/bouncycastle/asn1/x509/GeneralNames;

    return-void
.end method

.method public setDataLocations(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/GeneralNames;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->setDataLocations(Lorg/bouncycastle/asn1/x509/GeneralNames;)V

    return-void
.end method

.method public setDataLocations(Lorg/bouncycastle/asn1/x509/GeneralNames;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->dataLocations:Lorg/bouncycastle/asn1/x509/GeneralNames;

    return-void
.end method

.method public setExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->initialInfo:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    if-nez v0, :cond_0

    .line 6
    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cannot change extensions in existing DVCSRequestInformation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNonce(Ljava/math/BigInteger;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->initialInfo:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->getNonce()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->nonce:Ljava/math/BigInteger;

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->initialInfo:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->getNonce()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 10
    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v1

    .line 11
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 13
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    array-length v0, v0

    array-length v3, v1

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->nonce:Ljava/math/BigInteger;

    .line 20
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->nonce:Ljava/math/BigInteger;

    return-void
.end method

.method public setRequestPolicy(Lorg/bouncycastle/asn1/x509/PolicyInformation;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->initialInfo:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    if-nez v0, :cond_0

    .line 6
    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->requestPolicy:Lorg/bouncycastle/asn1/x509/PolicyInformation;

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cannot change request policy in existing DVCSRequestInformation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRequestTime(Lorg/bouncycastle/asn1/dvcs/DVCSTime;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->initialInfo:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    if-nez v0, :cond_0

    .line 6
    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->requestTime:Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cannot change request time in existing DVCSRequestInformation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRequester(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/GeneralNames;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->setRequester(Lorg/bouncycastle/asn1/x509/GeneralNames;)V

    return-void
.end method

.method public setRequester(Lorg/bouncycastle/asn1/x509/GeneralNames;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->requester:Lorg/bouncycastle/asn1/x509/GeneralNames;

    return-void
.end method

.method public setVersion(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->initialInfo:Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    if-nez v0, :cond_0

    .line 6
    iput p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;->version:I

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cannot change version in existing DVCSRequestInformation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
