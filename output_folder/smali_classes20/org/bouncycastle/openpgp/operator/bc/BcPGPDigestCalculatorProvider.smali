.class public Lorg/bouncycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider$DigestOutputStream;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/openpgp/operator/bc/BcImplProvider;->createDigest(I)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider$DigestOutputStream;

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider$DigestOutputStream;-><init>(Lorg/bouncycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;Lorg/bouncycastle/crypto/Digest;)V

    new-instance v2, Lorg/bouncycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider$1;

    invoke-direct {v2, p0, p1, v1, v0}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider$1;-><init>(Lorg/bouncycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;ILorg/bouncycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider$DigestOutputStream;Lorg/bouncycastle/crypto/Digest;)V

    return-object v2
.end method
