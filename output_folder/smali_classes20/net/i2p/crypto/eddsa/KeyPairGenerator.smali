.class public final Lnet/i2p/crypto/eddsa/KeyPairGenerator;
.super Ljava/security/KeyPairGeneratorSpi;
.source "KeyPairGenerator.java"


# static fields
.field private static final DEFAULT_KEYSIZE:I = 0x100

.field private static final edParameters:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private edParams:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

.field private initialized:Z

.field private random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 41
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->edParameters:Ljava/util/Hashtable;

    .line 43
    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lnet/i2p/crypto/eddsa/spec/EdDSAGenParameterSpec;

    const-string v3, "Ed25519"

    invoke-direct {v2, v3}, Lnet/i2p/crypto/eddsa/spec/EdDSAGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected createNamedCurveSpec(Ljava/lang/String;)Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;
    .locals 4
    .param p1, "curveName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 91
    invoke-static {p1}, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->getByName(Ljava/lang/String;)Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

    move-result-object v0

    .line 92
    .local v0, "spec":Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;
    if-eqz v0, :cond_0

    .line 95
    return-object v0

    .line 93
    :cond_0
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown curve name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 6

    .line 71
    iget-boolean v0, p0, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->initialized:Z

    if-nez v0, :cond_0

    .line 72
    const/16 v0, 0x100

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p0, v0, v1}, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->edParams:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getCurve()Lnet/i2p/crypto/eddsa/math/Curve;

    move-result-object v0

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/Curve;->getField()Lnet/i2p/crypto/eddsa/math/Field;

    move-result-object v0

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/Field;->getb()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 75
    .local v0, "seed":[B
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 77
    new-instance v1, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;

    iget-object v2, p0, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->edParams:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    invoke-direct {v1, v0, v2}, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;-><init>([BLnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V

    .line 78
    .local v1, "privKey":Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;
    new-instance v2, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->getA()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v3

    iget-object v4, p0, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->edParams:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    invoke-direct {v2, v3, v4}, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;-><init>(Lnet/i2p/crypto/eddsa/math/GroupElement;Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V

    .line 80
    .local v2, "pubKey":Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;
    new-instance v3, Ljava/security/KeyPair;

    new-instance v4, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    invoke-direct {v4, v2}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;-><init>(Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;)V

    new-instance v5, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;

    invoke-direct {v5, v1}, Lnet/i2p/crypto/eddsa/EdDSAPrivateKey;-><init>(Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;)V

    invoke-direct {v3, v4, v5}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v3
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 4
    .param p1, "keysize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 47
    sget-object v0, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->edParameters:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/spec/AlgorithmParameterSpec;

    .line 48
    .local v0, "edParams":Ljava/security/spec/AlgorithmParameterSpec;
    if-eqz v0, :cond_0

    .line 51
    :try_start_0
    invoke-virtual {p0, v0, p2}, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    nop

    .line 55
    return-void

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v2, Ljava/security/InvalidParameterException;

    const-string v3, "key type not configurable."

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 49
    .end local v1    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :cond_0
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string/jumbo v2, "unknown key type."

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 59
    instance-of v0, p1, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    if-eqz v0, :cond_0

    .line 60
    move-object v0, p1

    check-cast v0, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->edParams:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    goto :goto_0

    .line 61
    :cond_0
    instance-of v0, p1, Lnet/i2p/crypto/eddsa/spec/EdDSAGenParameterSpec;

    if-eqz v0, :cond_1

    .line 62
    move-object v0, p1

    check-cast v0, Lnet/i2p/crypto/eddsa/spec/EdDSAGenParameterSpec;

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/spec/EdDSAGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->createNamedCurveSpec(Ljava/lang/String;)Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

    move-result-object v0

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->edParams:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 66
    :goto_0
    iput-object p2, p0, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->random:Ljava/security/SecureRandom;

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/i2p/crypto/eddsa/KeyPairGenerator;->initialized:Z

    .line 68
    return-void

    .line 64
    :cond_1
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "parameter object not a EdDSAParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
