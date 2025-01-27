.class public Lorg/bouncycastle/openpgp/operator/bc/BcPBESecretKeyDecryptorBuilder;
.super Ljava/lang/Object;


# instance fields
.field private calculatorProvider:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPBESecretKeyDecryptorBuilder;->calculatorProvider:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;

    return-void
.end method


# virtual methods
.method public build([C)Lorg/bouncycastle/openpgp/operator/PBESecretKeyDecryptor;
    .locals 2

    new-instance v0, Lorg/bouncycastle/openpgp/operator/bc/BcPBESecretKeyDecryptorBuilder$1;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPBESecretKeyDecryptorBuilder;->calculatorProvider:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;

    invoke-direct {v0, p0, p1, v1}, Lorg/bouncycastle/openpgp/operator/bc/BcPBESecretKeyDecryptorBuilder$1;-><init>(Lorg/bouncycastle/openpgp/operator/bc/BcPBESecretKeyDecryptorBuilder;[CLorg/bouncycastle/openpgp/operator/PGPDigestCalculatorProvider;)V

    return-object v0
.end method
