.class public interface abstract Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;
.super Ljava/lang/Object;
.source "UAObjectIdentifiers.java"


# static fields
.field public static final UaOid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu4145be:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu4145le:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7564digest_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7564digest_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7564digest_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7564mac_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7564mac_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7564mac_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624cbc_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624cbc_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624cbc_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624ccm_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624ccm_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624ccm_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624cfb_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624cfb_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624cfb_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624cmac_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624cmac_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624cmac_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624ctr_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624ctr_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624ctr_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624ecb_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624ecb_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624ecb_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624gmac_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624gmac_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624gmac_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624kw_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624kw_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624kw_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624ofb_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624ofb_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624ofb_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624xts_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624xts_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624xts_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.2.804.2.1.1.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 4
    const-string v1, "1.3.1.1"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu4145le:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 6
    const-string v1, "1.3.1.1.1.1"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu4145be:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 9
    const-string v1, "1.2.2.1"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7564digest_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 11
    const-string v1, "1.2.2.2"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7564digest_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 13
    const-string v1, "1.2.2.3"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7564digest_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 16
    const-string v1, "1.2.2.4"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7564mac_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 18
    const-string v1, "1.2.2.5"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7564mac_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 20
    const-string v1, "1.2.2.6"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7564mac_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 24
    const-string v1, "1.1.3.1.1"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ecb_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 26
    const-string v1, "1.1.3.1.2"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ecb_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 28
    const-string v1, "1.1.3.1.3"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ecb_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 31
    const-string v1, "1.1.3.2.1"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ctr_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 33
    const-string v1, "1.1.3.2.2"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ctr_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 35
    const-string v1, "1.1.3.2.3"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ctr_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 38
    const-string v1, "1.1.3.3.1"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624cfb_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 40
    const-string v1, "1.1.3.3.2"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624cfb_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 42
    const-string v1, "1.1.3.3.3"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624cfb_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 45
    const-string v1, "1.1.3.4.1"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624cmac_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 47
    const-string v1, "1.1.3.4.2"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624cmac_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 49
    const-string v1, "1.1.3.4.3"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624cmac_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 52
    const-string v1, "1.1.3.5.1"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624cbc_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 54
    const-string v1, "1.1.3.5.2"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624cbc_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 56
    const-string v1, "1.1.3.5.3"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624cbc_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 59
    const-string v1, "1.1.3.6.1"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ofb_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 61
    const-string v1, "1.1.3.6.2"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ofb_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 63
    const-string v1, "1.1.3.6.3"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ofb_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 66
    const-string v1, "1.1.3.7.1"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624gmac_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 68
    const-string v1, "1.1.3.7.2"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624gmac_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 70
    const-string v1, "1.1.3.7.3"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624gmac_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 73
    const-string v1, "1.1.3.8.1"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ccm_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 75
    const-string v1, "1.1.3.8.2"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ccm_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 77
    const-string v1, "1.1.3.8.3"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ccm_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 80
    const-string v1, "1.1.3.9.1"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624xts_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 82
    const-string v1, "1.1.3.9.2"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624xts_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 84
    const-string v1, "1.1.3.9.3"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624xts_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 87
    const-string v1, "1.1.3.10.1"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624kw_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 89
    const-string v1, "1.1.3.10.2"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624kw_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 91
    const-string v1, "1.1.3.10.3"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624kw_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
