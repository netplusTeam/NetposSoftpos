.class public Lorg/bouncycastle/gpg/keybox/jcajce/JcaKeyBox;
.super Lorg/bouncycastle/gpg/keybox/KeyBox;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;Lorg/bouncycastle/gpg/keybox/BlobVerifier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/gpg/keybox/KeyBox;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;Lorg/bouncycastle/gpg/keybox/BlobVerifier;)V

    return-void
.end method

.method constructor <init>([BLorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;Lorg/bouncycastle/gpg/keybox/BlobVerifier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/gpg/keybox/KeyBox;-><init>([BLorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;Lorg/bouncycastle/gpg/keybox/BlobVerifier;)V

    return-void
.end method
