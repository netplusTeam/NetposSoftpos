.class public abstract Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;
.super Ljava/lang/Object;


# instance fields
.field private calculatorProvider:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;

.field private passPhrase:[C


# direct methods
.method protected constructor <init>([CLorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;->passPhrase:[C

    iput-object p2, p0, Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;->calculatorProvider:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;

    return-void
.end method


# virtual methods
.method public getChecksumCalculator(I)Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;->calculatorProvider:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;

    invoke-interface {v0, p1}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;->get(I)Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object p1

    return-object p1
.end method

.method public makeKeyFromPassPhrase(ILorg/bouncycastle/bcpg/S2K;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;->calculatorProvider:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;->passPhrase:[C

    invoke-static {v0, p1, p2, v1}, Lorg/bouncycastle/openpgp/operator/PGPUtil;->makeKeyFromPassPhrase(Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;ILorg/bouncycastle/bcpg/S2K;[C)[B

    move-result-object p1

    return-object p1
.end method

.method public abstract recoverKeyData(I[B[B[BII)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation
.end method
