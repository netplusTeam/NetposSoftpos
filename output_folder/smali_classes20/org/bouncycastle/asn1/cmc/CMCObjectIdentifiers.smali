.class public interface abstract Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;
.super Ljava/lang/Object;
.source "CMCObjectIdentifiers.java"


# static fields
.field public static final id_cct:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cct_PKIData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cct_PKIResponse:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_addExtensions:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_authData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_batchRequests:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_batchResponses:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_confirmCertAcceptance:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_controlProcessed:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_dataReturn:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_decryptedPOP:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_encryptedPOP:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_getCRL:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_getCert:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_identification:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_identityProof:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_identityProofV2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_lraPOPWitness:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_modCertTemplate:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_popLinkRandom:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_popLinkWitness:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_popLinkWitnessV2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_publishCert:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_queryPending:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_recipientNonce:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_regInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_responseInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_revokeRequest:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_senderNonce:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_statusInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_statusInfoV2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_transactionId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_cmc_trustedAnchors:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_pkix:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_pkix:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 3
    const-string v1, "7"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 4
    const-string v3, "12"

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cct:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 8
    const-string v3, "3"

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_identityProof:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 9
    const-string v4, "4"

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_dataReturn:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 10
    const-string v4, "18"

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_regInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 11
    const-string v4, "19"

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_responseInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 12
    const-string v4, "21"

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_queryPending:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 13
    const-string v4, "22"

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_popLinkRandom:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 14
    const-string v4, "23"

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_popLinkWitness:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 18
    const-string v4, "2"

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    sput-object v5, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_identification:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 22
    const-string v5, "5"

    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    sput-object v5, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_transactionId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 26
    const-string v5, "6"

    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    sput-object v5, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_senderNonce:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 27
    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_recipientNonce:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 31
    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cct_PKIData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 34
    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cct_PKIResponse:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 38
    const-string v0, "1"

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_statusInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 42
    const-string v0, "8"

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_addExtensions:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 44
    const-string v0, "9"

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_encryptedPOP:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 45
    const-string v0, "10"

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_decryptedPOP:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 48
    const-string v0, "11"

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_lraPOPWitness:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 50
    const-string v0, "15"

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_getCert:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 52
    const-string v0, "16"

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_getCRL:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 54
    const-string v0, "17"

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_revokeRequest:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 57
    const-string v0, "24"

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_confirmCertAcceptance:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 62
    const-string v0, "25"

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_statusInfoV2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 68
    const-string v0, "26"

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_trustedAnchors:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 70
    const-string v0, "27"

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_authData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 73
    const-string v0, "28"

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_batchRequests:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 74
    const-string v0, "29"

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_batchResponses:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 76
    const-string v0, "30"

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_publishCert:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 78
    const-string v0, "31"

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_modCertTemplate:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 83
    const-string v0, "32"

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_controlProcessed:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 87
    const-string v0, "34"

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_identityProofV2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 89
    const-string v0, "33"

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CMCObjectIdentifiers;->id_cmc_popLinkWitnessV2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
