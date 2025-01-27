.class public final enum Lcom/google/crypto/tink/PemKeyType;
.super Ljava/lang/Enum;
.source "PemKeyType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/crypto/tink/PemKeyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/crypto/tink/PemKeyType;

.field private static final BEGIN:Ljava/lang/String; = "-----BEGIN "

.field public static final enum ECDSA_P256_SHA256:Lcom/google/crypto/tink/PemKeyType;

.field public static final enum ECDSA_P384_SHA384:Lcom/google/crypto/tink/PemKeyType;

.field public static final enum ECDSA_P521_SHA512:Lcom/google/crypto/tink/PemKeyType;

.field private static final END:Ljava/lang/String; = "-----END "

.field private static final MARKER:Ljava/lang/String; = "-----"

.field private static final PRIVATE_KEY:Ljava/lang/String; = "PRIVATE KEY"

.field private static final PUBLIC_KEY:Ljava/lang/String; = "PUBLIC KEY"

.field public static final enum RSA_PSS_2048_SHA256:Lcom/google/crypto/tink/PemKeyType;

.field public static final enum RSA_PSS_3072_SHA256:Lcom/google/crypto/tink/PemKeyType;

.field public static final enum RSA_PSS_4096_SHA256:Lcom/google/crypto/tink/PemKeyType;

.field public static final enum RSA_PSS_4096_SHA512:Lcom/google/crypto/tink/PemKeyType;

.field public static final enum RSA_SIGN_PKCS1_2048_SHA256:Lcom/google/crypto/tink/PemKeyType;

.field public static final enum RSA_SIGN_PKCS1_3072_SHA256:Lcom/google/crypto/tink/PemKeyType;

.field public static final enum RSA_SIGN_PKCS1_4096_SHA256:Lcom/google/crypto/tink/PemKeyType;

.field public static final enum RSA_SIGN_PKCS1_4096_SHA512:Lcom/google/crypto/tink/PemKeyType;


# instance fields
.field public final algorithm:Ljava/lang/String;

.field public final hash:Lcom/google/crypto/tink/subtle/Enums$HashType;

.field public final keySizeInBits:I

.field public final keyType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 38
    new-instance v7, Lcom/google/crypto/tink/PemKeyType;

    sget-object v6, Lcom/google/crypto/tink/subtle/Enums$HashType;->SHA256:Lcom/google/crypto/tink/subtle/Enums$HashType;

    const-string v1, "RSA_PSS_2048_SHA256"

    const/4 v2, 0x0

    const-string v3, "RSA"

    const-string v4, "RSASSA-PSS"

    const/16 v5, 0x800

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/crypto/tink/PemKeyType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/google/crypto/tink/subtle/Enums$HashType;)V

    sput-object v7, Lcom/google/crypto/tink/PemKeyType;->RSA_PSS_2048_SHA256:Lcom/google/crypto/tink/PemKeyType;

    .line 40
    new-instance v0, Lcom/google/crypto/tink/PemKeyType;

    sget-object v14, Lcom/google/crypto/tink/subtle/Enums$HashType;->SHA256:Lcom/google/crypto/tink/subtle/Enums$HashType;

    const-string v9, "RSA_PSS_3072_SHA256"

    const/4 v10, 0x1

    const-string v11, "RSA"

    const-string v12, "RSASSA-PSS"

    const/16 v13, 0xc00

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/google/crypto/tink/PemKeyType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/google/crypto/tink/subtle/Enums$HashType;)V

    sput-object v0, Lcom/google/crypto/tink/PemKeyType;->RSA_PSS_3072_SHA256:Lcom/google/crypto/tink/PemKeyType;

    .line 42
    new-instance v1, Lcom/google/crypto/tink/PemKeyType;

    sget-object v21, Lcom/google/crypto/tink/subtle/Enums$HashType;->SHA256:Lcom/google/crypto/tink/subtle/Enums$HashType;

    const-string v16, "RSA_PSS_4096_SHA256"

    const/16 v17, 0x2

    const-string v18, "RSA"

    const-string v19, "RSASSA-PSS"

    const/16 v20, 0x1000

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Lcom/google/crypto/tink/PemKeyType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/google/crypto/tink/subtle/Enums$HashType;)V

    sput-object v1, Lcom/google/crypto/tink/PemKeyType;->RSA_PSS_4096_SHA256:Lcom/google/crypto/tink/PemKeyType;

    .line 44
    new-instance v2, Lcom/google/crypto/tink/PemKeyType;

    sget-object v14, Lcom/google/crypto/tink/subtle/Enums$HashType;->SHA512:Lcom/google/crypto/tink/subtle/Enums$HashType;

    const-string v9, "RSA_PSS_4096_SHA512"

    const/4 v10, 0x3

    const-string v11, "RSA"

    const-string v12, "RSASSA-PSS"

    const/16 v13, 0x1000

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/google/crypto/tink/PemKeyType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/google/crypto/tink/subtle/Enums$HashType;)V

    sput-object v2, Lcom/google/crypto/tink/PemKeyType;->RSA_PSS_4096_SHA512:Lcom/google/crypto/tink/PemKeyType;

    .line 47
    new-instance v3, Lcom/google/crypto/tink/PemKeyType;

    sget-object v21, Lcom/google/crypto/tink/subtle/Enums$HashType;->SHA256:Lcom/google/crypto/tink/subtle/Enums$HashType;

    const-string v16, "RSA_SIGN_PKCS1_2048_SHA256"

    const/16 v17, 0x4

    const-string v18, "RSA"

    const-string v19, "RSASSA-PKCS1-v1_5"

    const/16 v20, 0x800

    move-object v15, v3

    invoke-direct/range {v15 .. v21}, Lcom/google/crypto/tink/PemKeyType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/google/crypto/tink/subtle/Enums$HashType;)V

    sput-object v3, Lcom/google/crypto/tink/PemKeyType;->RSA_SIGN_PKCS1_2048_SHA256:Lcom/google/crypto/tink/PemKeyType;

    .line 49
    new-instance v4, Lcom/google/crypto/tink/PemKeyType;

    sget-object v14, Lcom/google/crypto/tink/subtle/Enums$HashType;->SHA256:Lcom/google/crypto/tink/subtle/Enums$HashType;

    const-string v9, "RSA_SIGN_PKCS1_3072_SHA256"

    const/4 v10, 0x5

    const-string v11, "RSA"

    const-string v12, "RSASSA-PKCS1-v1_5"

    const/16 v13, 0xc00

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Lcom/google/crypto/tink/PemKeyType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/google/crypto/tink/subtle/Enums$HashType;)V

    sput-object v4, Lcom/google/crypto/tink/PemKeyType;->RSA_SIGN_PKCS1_3072_SHA256:Lcom/google/crypto/tink/PemKeyType;

    .line 51
    new-instance v5, Lcom/google/crypto/tink/PemKeyType;

    sget-object v21, Lcom/google/crypto/tink/subtle/Enums$HashType;->SHA256:Lcom/google/crypto/tink/subtle/Enums$HashType;

    const-string v16, "RSA_SIGN_PKCS1_4096_SHA256"

    const/16 v17, 0x6

    const-string v18, "RSA"

    const-string v19, "RSASSA-PKCS1-v1_5"

    const/16 v20, 0x1000

    move-object v15, v5

    invoke-direct/range {v15 .. v21}, Lcom/google/crypto/tink/PemKeyType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/google/crypto/tink/subtle/Enums$HashType;)V

    sput-object v5, Lcom/google/crypto/tink/PemKeyType;->RSA_SIGN_PKCS1_4096_SHA256:Lcom/google/crypto/tink/PemKeyType;

    .line 53
    new-instance v6, Lcom/google/crypto/tink/PemKeyType;

    sget-object v14, Lcom/google/crypto/tink/subtle/Enums$HashType;->SHA512:Lcom/google/crypto/tink/subtle/Enums$HashType;

    const-string v9, "RSA_SIGN_PKCS1_4096_SHA512"

    const/4 v10, 0x7

    const-string v11, "RSA"

    const-string v12, "RSASSA-PKCS1-v1_5"

    const/16 v13, 0x1000

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lcom/google/crypto/tink/PemKeyType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/google/crypto/tink/subtle/Enums$HashType;)V

    sput-object v6, Lcom/google/crypto/tink/PemKeyType;->RSA_SIGN_PKCS1_4096_SHA512:Lcom/google/crypto/tink/PemKeyType;

    .line 56
    new-instance v8, Lcom/google/crypto/tink/PemKeyType;

    sget-object v21, Lcom/google/crypto/tink/subtle/Enums$HashType;->SHA256:Lcom/google/crypto/tink/subtle/Enums$HashType;

    const-string v16, "ECDSA_P256_SHA256"

    const/16 v17, 0x8

    const-string v18, "EC"

    const-string v19, "ECDSA"

    const/16 v20, 0x100

    move-object v15, v8

    invoke-direct/range {v15 .. v21}, Lcom/google/crypto/tink/PemKeyType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/google/crypto/tink/subtle/Enums$HashType;)V

    sput-object v8, Lcom/google/crypto/tink/PemKeyType;->ECDSA_P256_SHA256:Lcom/google/crypto/tink/PemKeyType;

    .line 58
    new-instance v16, Lcom/google/crypto/tink/PemKeyType;

    sget-object v15, Lcom/google/crypto/tink/subtle/Enums$HashType;->SHA384:Lcom/google/crypto/tink/subtle/Enums$HashType;

    const-string v10, "ECDSA_P384_SHA384"

    const/16 v11, 0x9

    const-string v12, "EC"

    const-string v13, "ECDSA"

    const/16 v14, 0x180

    move-object/from16 v9, v16

    invoke-direct/range {v9 .. v15}, Lcom/google/crypto/tink/PemKeyType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/google/crypto/tink/subtle/Enums$HashType;)V

    sput-object v16, Lcom/google/crypto/tink/PemKeyType;->ECDSA_P384_SHA384:Lcom/google/crypto/tink/PemKeyType;

    .line 60
    new-instance v9, Lcom/google/crypto/tink/PemKeyType;

    sget-object v23, Lcom/google/crypto/tink/subtle/Enums$HashType;->SHA512:Lcom/google/crypto/tink/subtle/Enums$HashType;

    const-string v18, "ECDSA_P521_SHA512"

    const/16 v19, 0xa

    const-string v20, "EC"

    const-string v21, "ECDSA"

    const/16 v22, 0x209

    move-object/from16 v17, v9

    invoke-direct/range {v17 .. v23}, Lcom/google/crypto/tink/PemKeyType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/google/crypto/tink/subtle/Enums$HashType;)V

    sput-object v9, Lcom/google/crypto/tink/PemKeyType;->ECDSA_P521_SHA512:Lcom/google/crypto/tink/PemKeyType;

    .line 36
    const/16 v10, 0xb

    new-array v10, v10, [Lcom/google/crypto/tink/PemKeyType;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v7, 0x1

    aput-object v0, v10, v7

    const/4 v0, 0x2

    aput-object v1, v10, v0

    const/4 v0, 0x3

    aput-object v2, v10, v0

    const/4 v0, 0x4

    aput-object v3, v10, v0

    const/4 v0, 0x5

    aput-object v4, v10, v0

    const/4 v0, 0x6

    aput-object v5, v10, v0

    const/4 v0, 0x7

    aput-object v6, v10, v0

    const/16 v0, 0x8

    aput-object v8, v10, v0

    const/16 v0, 0x9

    aput-object v16, v10, v0

    const/16 v0, 0xa

    aput-object v9, v10, v0

    sput-object v10, Lcom/google/crypto/tink/PemKeyType;->$VALUES:[Lcom/google/crypto/tink/PemKeyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/google/crypto/tink/subtle/Enums$HashType;)V
    .locals 0
    .param p3, "keyType"    # Ljava/lang/String;
    .param p4, "algorithm"    # Ljava/lang/String;
    .param p5, "keySizeInBits"    # I
    .param p6, "hash"    # Lcom/google/crypto/tink/subtle/Enums$HashType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "keyType",
            "algorithm",
            "keySizeInBits",
            "hash"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/crypto/tink/subtle/Enums$HashType;",
            ")V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 68
    iput-object p3, p0, Lcom/google/crypto/tink/PemKeyType;->keyType:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lcom/google/crypto/tink/PemKeyType;->algorithm:Ljava/lang/String;

    .line 70
    iput p5, p0, Lcom/google/crypto/tink/PemKeyType;->keySizeInBits:I

    .line 71
    iput-object p6, p0, Lcom/google/crypto/tink/PemKeyType;->hash:Lcom/google/crypto/tink/subtle/Enums$HashType;

    .line 72
    return-void
.end method

.method private getPrivateKey([B)Ljava/security/Key;
    .locals 2
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 133
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->KEY_FACTORY:Lcom/google/crypto/tink/subtle/EngineFactory;

    iget-object v1, p0, Lcom/google/crypto/tink/PemKeyType;->keyType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyFactory;

    .line 134
    .local v0, "keyFactory":Ljava/security/KeyFactory;
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/crypto/tink/PemKeyType;->validate(Ljava/security/Key;)Ljava/security/Key;

    move-result-object v1

    return-object v1
.end method

.method private getPublicKey([B)Ljava/security/Key;
    .locals 2
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 128
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->KEY_FACTORY:Lcom/google/crypto/tink/subtle/EngineFactory;

    iget-object v1, p0, Lcom/google/crypto/tink/PemKeyType;->keyType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyFactory;

    .line 129
    .local v0, "keyFactory":Ljava/security/KeyFactory;
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/crypto/tink/PemKeyType;->validate(Ljava/security/Key;)Ljava/security/Key;

    move-result-object v1

    return-object v1
.end method

.method private validate(Ljava/security/Key;)Ljava/security/Key;
    .locals 8
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/google/crypto/tink/PemKeyType;->keyType:Ljava/lang/String;

    const-string v1, "RSA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    .line 139
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAKey;

    .line 140
    .local v0, "rsaKey":Ljava/security/interfaces/RSAKey;
    invoke-interface {v0}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    .line 141
    .local v4, "foundKeySizeInBits":I
    iget v5, p0, Lcom/google/crypto/tink/PemKeyType;->keySizeInBits:I

    if-ne v4, v5, :cond_0

    .line 146
    .end local v0    # "rsaKey":Ljava/security/interfaces/RSAKey;
    .end local v4    # "foundKeySizeInBits":I
    goto :goto_0

    .line 142
    .restart local v0    # "rsaKey":Ljava/security/interfaces/RSAKey;
    .restart local v4    # "foundKeySizeInBits":I
    :cond_0
    new-instance v5, Ljava/security/GeneralSecurityException;

    new-array v3, v3, [Ljava/lang/Object;

    iget v6, p0, Lcom/google/crypto/tink/PemKeyType;->keySizeInBits:I

    .line 144
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    .line 143
    const-string v1, "invalid RSA key size, want %d got %d"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 147
    .end local v0    # "rsaKey":Ljava/security/interfaces/RSAKey;
    .end local v4    # "foundKeySizeInBits":I
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/ECKey;

    .line 148
    .local v0, "ecKey":Ljava/security/interfaces/ECKey;
    invoke-interface {v0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    .line 149
    .local v4, "ecParams":Ljava/security/spec/ECParameterSpec;
    invoke-static {v4}, Lcom/google/crypto/tink/subtle/EllipticCurves;->isNistEcParameterSpec(Ljava/security/spec/ECParameterSpec;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 153
    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v5

    invoke-static {v5}, Lcom/google/crypto/tink/subtle/EllipticCurves;->fieldSizeInBits(Ljava/security/spec/EllipticCurve;)I

    move-result v5

    .line 154
    .local v5, "foundKeySizeInBits":I
    iget v6, p0, Lcom/google/crypto/tink/PemKeyType;->keySizeInBits:I

    if-ne v5, v6, :cond_2

    .line 160
    .end local v0    # "ecKey":Ljava/security/interfaces/ECKey;
    .end local v4    # "ecParams":Ljava/security/spec/ECParameterSpec;
    .end local v5    # "foundKeySizeInBits":I
    :goto_0
    return-object p1

    .line 155
    .restart local v0    # "ecKey":Ljava/security/interfaces/ECKey;
    .restart local v4    # "ecParams":Ljava/security/spec/ECParameterSpec;
    .restart local v5    # "foundKeySizeInBits":I
    :cond_2
    new-instance v6, Ljava/security/GeneralSecurityException;

    new-array v3, v3, [Ljava/lang/Object;

    iget v7, p0, Lcom/google/crypto/tink/PemKeyType;->keySizeInBits:I

    .line 157
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    .line 156
    const-string v1, "invalid EC key size, want %d got %d"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 150
    .end local v5    # "foundKeySizeInBits":I
    :cond_3
    new-instance v1, Ljava/security/GeneralSecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unsupport EC spec: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/crypto/tink/PemKeyType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 36
    const-class v0, Lcom/google/crypto/tink/PemKeyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/PemKeyType;

    return-object v0
.end method

.method public static values()[Lcom/google/crypto/tink/PemKeyType;
    .locals 1

    .line 36
    sget-object v0, Lcom/google/crypto/tink/PemKeyType;->$VALUES:[Lcom/google/crypto/tink/PemKeyType;

    invoke-virtual {v0}, [Lcom/google/crypto/tink/PemKeyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/crypto/tink/PemKeyType;

    return-object v0
.end method


# virtual methods
.method public readKey(Ljava/io/BufferedReader;)Ljava/security/Key;
    .locals 8
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 87
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "line":Ljava/lang/String;
    :goto_0
    const-string v1, "-----BEGIN "

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 92
    return-object v2

    .line 95
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    const-string v1, "-----"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 97
    .local v3, "index":I
    if-gez v3, :cond_2

    .line 98
    return-object v2

    .line 100
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 101
    .local v5, "type":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-----END "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "endMarker":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v6, "base64key":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    if-eqz v7, :cond_5

    .line 105
    const-string v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_3

    .line 107
    goto :goto_1

    .line 109
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 110
    goto :goto_2

    .line 112
    :cond_4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 115
    :cond_5
    :goto_2
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/google/crypto/tink/subtle/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 116
    .local v4, "key":[B
    const-string v7, "PUBLIC KEY"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 117
    invoke-direct {p0, v4}, Lcom/google/crypto/tink/PemKeyType;->getPublicKey([B)Ljava/security/Key;

    move-result-object v2

    return-object v2

    .line 118
    :cond_6
    const-string v7, "PRIVATE KEY"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 119
    invoke-direct {p0, v4}, Lcom/google/crypto/tink/PemKeyType;->getPrivateKey([B)Ljava/security/Key;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 123
    .end local v4    # "key":[B
    :cond_7
    nop

    .line 124
    return-object v2

    .line 121
    :catch_0
    move-exception v4

    goto :goto_3

    :catch_1
    move-exception v4

    .line 122
    .local v4, "ex":Ljava/lang/Exception;
    :goto_3
    return-object v2
.end method
