.class public Lorg/bouncycastle/gpg/keybox/jcajce/JcaKeyBoxBuilder;
.super Ljava/lang/Object;


# instance fields
.field private helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/gpg/keybox/jcajce/JcaKeyBoxBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-void
.end method


# virtual methods
.method public build(Ljava/io/InputStream;)Lorg/bouncycastle/gpg/keybox/jcajce/JcaKeyBox;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/gpg/keybox/jcajce/JcaKeyBox;

    new-instance v1, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {v1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;-><init>()V

    new-instance v2, Lorg/bouncycastle/gpg/keybox/jcajce/JcaBlobVerifier;

    iget-object v3, p0, Lorg/bouncycastle/gpg/keybox/jcajce/JcaKeyBoxBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-direct {v2, v3}, Lorg/bouncycastle/gpg/keybox/jcajce/JcaBlobVerifier;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    invoke-direct {v0, p1, v1, v2}, Lorg/bouncycastle/gpg/keybox/jcajce/JcaKeyBox;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;Lorg/bouncycastle/gpg/keybox/BlobVerifier;)V

    return-object v0
.end method

.method public build([B)Lorg/bouncycastle/gpg/keybox/jcajce/JcaKeyBox;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/gpg/keybox/jcajce/JcaKeyBox;

    new-instance v1, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {v1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;-><init>()V

    new-instance v2, Lorg/bouncycastle/gpg/keybox/jcajce/JcaBlobVerifier;

    iget-object v3, p0, Lorg/bouncycastle/gpg/keybox/jcajce/JcaKeyBoxBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-direct {v2, v3}, Lorg/bouncycastle/gpg/keybox/jcajce/JcaBlobVerifier;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    invoke-direct {v0, p1, v1, v2}, Lorg/bouncycastle/gpg/keybox/jcajce/JcaKeyBox;-><init>([BLorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;Lorg/bouncycastle/gpg/keybox/BlobVerifier;)V

    return-object v0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/gpg/keybox/jcajce/JcaKeyBoxBuilder;
    .locals 1

    new-instance v0, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/gpg/keybox/jcajce/JcaKeyBoxBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/gpg/keybox/jcajce/JcaKeyBoxBuilder;
    .locals 1

    new-instance v0, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, Lorg/bouncycastle/gpg/keybox/jcajce/JcaKeyBoxBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-object p0
.end method
