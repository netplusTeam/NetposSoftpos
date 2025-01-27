.class public Lorg/bouncycastle/openpgp/jcajce/JcaPGPSecretKeyRing;
.super Lorg/bouncycastle/openpgp/PGPSecretKeyRing;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    invoke-static {}, Lorg/bouncycastle/openpgp/jcajce/JcaPGPSecretKeyRing;->getFingerPrintCalculator()Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    invoke-static {}, Lorg/bouncycastle/openpgp/jcajce/JcaPGPSecretKeyRing;->getFingerPrintCalculator()Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;-><init>([BLorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    return-void
.end method

.method private static getFingerPrintCalculator()Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;
    .locals 1

    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;-><init>()V

    return-object v0
.end method
