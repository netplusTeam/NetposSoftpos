.class final Lio/netty/handler/ssl/util/BouncyCastleSelfSignedCertGenerator;
.super Ljava/lang/Object;
.source "BouncyCastleSelfSignedCertGenerator.java"


# static fields
.field private static final PROVIDER:Ljava/security/Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    sput-object v0, Lio/netty/handler/ssl/util/BouncyCastleSelfSignedCertGenerator;->PROVIDER:Ljava/security/Provider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static generate(Ljava/lang/String;Ljava/security/KeyPair;Ljava/security/SecureRandom;Ljava/util/Date;Ljava/util/Date;)[Ljava/lang/String;
    .locals 9
    .param p0, "fqdn"    # Ljava/lang/String;
    .param p1, "keypair"    # Ljava/security/KeyPair;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .param p3, "notBefore"    # Ljava/util/Date;
    .param p4, "notAfter"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    .line 50
    .local v0, "key":Ljava/security/PrivateKey;
    new-instance v2, Lorg/bouncycastle/asn1/x500/X500Name;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CN="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/x500/X500Name;-><init>(Ljava/lang/String;)V

    .line 51
    .local v2, "owner":Lorg/bouncycastle/asn1/x500/X500Name;
    new-instance v8, Lorg/bouncycastle/cert/jcajce/JcaX509v3CertificateBuilder;

    new-instance v3, Ljava/math/BigInteger;

    const/16 v1, 0x40

    invoke-direct {v3, v1, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 52
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v7

    move-object v1, v8

    move-object v4, p3

    move-object v5, p4

    move-object v6, v2

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/cert/jcajce/JcaX509v3CertificateBuilder;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x500/X500Name;Ljava/security/PublicKey;)V

    .line 54
    .local v1, "builder":Lorg/bouncycastle/cert/X509v3CertificateBuilder;
    new-instance v3, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;

    const-string v4, "SHA256WithRSAEncryption"

    invoke-direct {v3, v4}, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->build(Ljava/security/PrivateKey;)Lorg/bouncycastle/operator/ContentSigner;

    move-result-object v3

    .line 55
    .local v3, "signer":Lorg/bouncycastle/operator/ContentSigner;
    invoke-virtual {v1, v3}, Lorg/bouncycastle/cert/X509v3CertificateBuilder;->build(Lorg/bouncycastle/operator/ContentSigner;)Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object v4

    .line 56
    .local v4, "certHolder":Lorg/bouncycastle/cert/X509CertificateHolder;
    new-instance v5, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;

    invoke-direct {v5}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;-><init>()V

    sget-object v6, Lio/netty/handler/ssl/util/BouncyCastleSelfSignedCertGenerator;->PROVIDER:Ljava/security/Provider;

    invoke-virtual {v5, v6}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;->setProvider(Ljava/security/Provider;)Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;->getCertificate(Lorg/bouncycastle/cert/X509CertificateHolder;)Ljava/security/cert/X509Certificate;

    move-result-object v5

    .line 57
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 59
    invoke-static {p0, v0, v5}, Lio/netty/handler/ssl/util/SelfSignedCertificate;->newSelfSignedCertificate(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
