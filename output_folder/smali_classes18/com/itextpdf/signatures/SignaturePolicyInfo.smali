.class public Lcom/itextpdf/signatures/SignaturePolicyInfo;
.super Ljava/lang/Object;
.source "SignaturePolicyInfo.java"


# instance fields
.field private policyDigestAlgorithm:Ljava/lang/String;

.field private policyHash:[B

.field private policyIdentifier:Ljava/lang/String;

.field private policyUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "policyIdentifier"    # Ljava/lang/String;
    .param p2, "policyHashBase64"    # Ljava/lang/String;
    .param p3, "policyDigestAlgorithm"    # Ljava/lang/String;
    .param p4, "policyUri"    # Ljava/lang/String;

    .line 104
    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/itextpdf/io/codec/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/itextpdf/signatures/SignaturePolicyInfo;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "policyIdentifier"    # Ljava/lang/String;
    .param p2, "policyHash"    # [B
    .param p3, "policyDigestAlgorithm"    # Ljava/lang/String;
    .param p4, "policyUri"    # Ljava/lang/String;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    if-eqz p2, :cond_1

    .line 86
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iput-object p1, p0, Lcom/itextpdf/signatures/SignaturePolicyInfo;->policyIdentifier:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lcom/itextpdf/signatures/SignaturePolicyInfo;->policyHash:[B

    .line 92
    iput-object p3, p0, Lcom/itextpdf/signatures/SignaturePolicyInfo;->policyDigestAlgorithm:Ljava/lang/String;

    .line 93
    iput-object p4, p0, Lcom/itextpdf/signatures/SignaturePolicyInfo;->policyUri:Ljava/lang/String;

    .line 94
    return-void

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Policy digest algorithm cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Policy hash cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Policy identifier cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getPolicyDigestAlgorithm()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/itextpdf/signatures/SignaturePolicyInfo;->policyDigestAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyHash()[B
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/itextpdf/signatures/SignaturePolicyInfo;->policyHash:[B

    return-object v0
.end method

.method public getPolicyIdentifier()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/itextpdf/signatures/SignaturePolicyInfo;->policyIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyUri()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/itextpdf/signatures/SignaturePolicyInfo;->policyUri:Ljava/lang/String;

    return-object v0
.end method

.method toSignaturePolicyIdentifier()Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;
    .locals 10

    .line 124
    iget-object v0, p0, Lcom/itextpdf/signatures/SignaturePolicyInfo;->policyDigestAlgorithm:Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/signatures/DigestAlgorithms;->getAllowedDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "algId":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    const/4 v1, 0x0

    .line 131
    .local v1, "signaturePolicyIdentifier":Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;
    const/4 v2, 0x0

    .line 133
    .local v2, "spqi":Lorg/bouncycastle/asn1/esf/SigPolicyQualifierInfo;
    iget-object v3, p0, Lcom/itextpdf/signatures/SignaturePolicyInfo;->policyUri:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 134
    new-instance v3, Lorg/bouncycastle/asn1/esf/SigPolicyQualifierInfo;

    sget-object v4, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_spq_ets_uri:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/asn1/DERIA5String;

    iget-object v6, p0, Lcom/itextpdf/signatures/SignaturePolicyInfo;->policyUri:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/asn1/esf/SigPolicyQualifierInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    move-object v2, v3

    .line 137
    :cond_0
    new-instance v3, Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;

    new-instance v4, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;

    new-instance v5, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v6, p0, Lcom/itextpdf/signatures/SignaturePolicyInfo;->policyIdentifier:Ljava/lang/String;

    .line 138
    const-string/jumbo v7, "urn:oid:"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    new-instance v6, Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;

    new-instance v7, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v8, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v8, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v8, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v9, p0, Lcom/itextpdf/signatures/SignaturePolicyInfo;->policyHash:[B

    invoke-direct {v8, v9}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    const/4 v7, 0x1

    new-array v7, v7, [Lorg/bouncycastle/asn1/esf/SigPolicyQualifierInfo;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    .line 140
    invoke-static {v7}, Lcom/itextpdf/signatures/SignUtils;->createSigPolicyQualifiers([Lorg/bouncycastle/asn1/esf/SigPolicyQualifierInfo;)Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lorg/bouncycastle/asn1/esf/SignaturePolicyId;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/esf/OtherHashAlgAndValue;Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;)V

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;-><init>(Lorg/bouncycastle/asn1/esf/SignaturePolicyId;)V

    move-object v1, v3

    .line 142
    return-object v1

    .line 127
    .end local v1    # "signaturePolicyIdentifier":Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;
    .end local v2    # "spqi":Lorg/bouncycastle/asn1/esf/SigPolicyQualifierInfo;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid policy hash algorithm"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
