.class public Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;
.super Ljava/lang/Object;
.source "EcdsaPrivateKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/EcdsaPrivateKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private privateValue:Lcom/google/crypto/tink/util/SecretBigInteger;

.field private publicKey:Lcom/google/crypto/tink/signature/EcdsaPublicKey;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;->publicKey:Lcom/google/crypto/tink/signature/EcdsaPublicKey;

    .line 49
    iput-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;->privateValue:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/signature/EcdsaPrivateKey$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/crypto/tink/signature/EcdsaPrivateKey$1;

    .line 47
    invoke-direct {p0}, Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;-><init>()V

    return-void
.end method

.method private static validatePrivateValue(Ljava/math/BigInteger;Ljava/security/spec/ECPoint;Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;)V
    .locals 4
    .param p0, "privateValue"    # Ljava/math/BigInteger;
    .param p1, "publicPoint"    # Ljava/security/spec/ECPoint;
    .param p2, "curveType"    # Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "privateValue",
            "publicPoint",
            "curveType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 68
    invoke-virtual {p2}, Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;->toParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    .line 69
    .local v0, "order":Ljava/math/BigInteger;
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    const-string v2, "Invalid private value"

    if-lez v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_1

    .line 72
    invoke-virtual {p2}, Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;->toParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/crypto/tink/internal/EllipticCurvesUtil;->multiplyByGenerator(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)Ljava/security/spec/ECPoint;

    move-result-object v1

    .line 73
    .local v1, "p":Ljava/security/spec/ECPoint;
    invoke-virtual {v1, p1}, Ljava/security/spec/ECPoint;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    return-void

    .line 74
    :cond_0
    new-instance v3, Ljava/security/GeneralSecurityException;

    invoke-direct {v3, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 70
    .end local v1    # "p":Ljava/security/spec/ECPoint;
    :cond_1
    new-instance v1, Ljava/security/GeneralSecurityException;

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/signature/EcdsaPrivateKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;->publicKey:Lcom/google/crypto/tink/signature/EcdsaPublicKey;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;->privateValue:Lcom/google/crypto/tink/util/SecretBigInteger;

    if-eqz v0, :cond_0

    .line 86
    nop

    .line 87
    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/util/SecretBigInteger;->getBigInteger(Lcom/google/crypto/tink/SecretKeyAccess;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;->publicKey:Lcom/google/crypto/tink/signature/EcdsaPublicKey;

    .line 88
    invoke-virtual {v1}, Lcom/google/crypto/tink/signature/EcdsaPublicKey;->getPublicPoint()Ljava/security/spec/ECPoint;

    move-result-object v1

    iget-object v2, p0, Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;->publicKey:Lcom/google/crypto/tink/signature/EcdsaPublicKey;

    .line 89
    invoke-virtual {v2}, Lcom/google/crypto/tink/signature/EcdsaPublicKey;->getParameters()Lcom/google/crypto/tink/signature/EcdsaParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/signature/EcdsaParameters;->getCurveType()Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    move-result-object v2

    .line 86
    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;->validatePrivateValue(Ljava/math/BigInteger;Ljava/security/spec/ECPoint;Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;)V

    .line 90
    new-instance v0, Lcom/google/crypto/tink/signature/EcdsaPrivateKey;

    iget-object v1, p0, Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;->publicKey:Lcom/google/crypto/tink/signature/EcdsaPublicKey;

    iget-object v2, p0, Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;->privateValue:Lcom/google/crypto/tink/util/SecretBigInteger;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/crypto/tink/signature/EcdsaPrivateKey;-><init>(Lcom/google/crypto/tink/signature/EcdsaPublicKey;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/signature/EcdsaPrivateKey$1;)V

    return-object v0

    .line 84
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without a private value"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without a ecdsa public key"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPrivateValue(Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;
    .locals 0
    .param p1, "privateValue"    # Lcom/google/crypto/tink/util/SecretBigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privateValue"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;->privateValue:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 62
    return-object p0
.end method

.method public setPublicKey(Lcom/google/crypto/tink/signature/EcdsaPublicKey;)Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;
    .locals 0
    .param p1, "publicKey"    # Lcom/google/crypto/tink/signature/EcdsaPublicKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "publicKey"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/google/crypto/tink/signature/EcdsaPrivateKey$Builder;->publicKey:Lcom/google/crypto/tink/signature/EcdsaPublicKey;

    .line 56
    return-object p0
.end method
