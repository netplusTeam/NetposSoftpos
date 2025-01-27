.class public Lorg/bouncycastle/gpg/keybox/bc/BcKeyBox;
.super Lorg/bouncycastle/gpg/keybox/KeyBox;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/openpgp/operator/bc/BcKeyFingerprintCalculator;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/bc/BcKeyFingerprintCalculator;-><init>()V

    new-instance v1, Lorg/bouncycastle/gpg/keybox/bc/BcBlobVerifier;

    invoke-direct {v1}, Lorg/bouncycastle/gpg/keybox/bc/BcBlobVerifier;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/gpg/keybox/KeyBox;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;Lorg/bouncycastle/gpg/keybox/BlobVerifier;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/openpgp/operator/bc/BcKeyFingerprintCalculator;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/bc/BcKeyFingerprintCalculator;-><init>()V

    new-instance v1, Lorg/bouncycastle/gpg/keybox/bc/BcBlobVerifier;

    invoke-direct {v1}, Lorg/bouncycastle/gpg/keybox/bc/BcBlobVerifier;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/gpg/keybox/KeyBox;-><init>([BLorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;Lorg/bouncycastle/gpg/keybox/BlobVerifier;)V

    return-void
.end method
