.class public final Lcom/google/crypto/tink/subtle/SelfKeyTestValidators;
.super Ljava/lang/Object;
.source "SelfKeyTestValidators.java"


# static fields
.field private static final TEST_MESSAGE:Lcom/google/crypto/tink/shaded/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-string v0, "Tink and Wycheproof."

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/subtle/SelfKeyTestValidators;->TEST_MESSAGE:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final validateEcdsa(Ljava/security/interfaces/ECPrivateKey;Ljava/security/interfaces/ECPublicKey;Lcom/google/crypto/tink/subtle/Enums$HashType;Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;)V
    .locals 5
    .param p0, "privateKey"    # Ljava/security/interfaces/ECPrivateKey;
    .param p1, "publicKey"    # Ljava/security/interfaces/ECPublicKey;
    .param p2, "hash"    # Lcom/google/crypto/tink/subtle/Enums$HashType;
    .param p3, "encoding"    # Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "privateKey",
            "publicKey",
            "hash",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 76
    new-instance v0, Lcom/google/crypto/tink/subtle/EcdsaSignJce;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/crypto/tink/subtle/EcdsaSignJce;-><init>(Ljava/security/interfaces/ECPrivateKey;Lcom/google/crypto/tink/subtle/Enums$HashType;Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;)V

    .line 77
    .local v0, "ecdsaSigner":Lcom/google/crypto/tink/subtle/EcdsaSignJce;
    new-instance v1, Lcom/google/crypto/tink/subtle/EcdsaVerifyJce;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/crypto/tink/subtle/EcdsaVerifyJce;-><init>(Ljava/security/interfaces/ECPublicKey;Lcom/google/crypto/tink/subtle/Enums$HashType;Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;)V

    .line 79
    .local v1, "ecdsaverifier":Lcom/google/crypto/tink/subtle/EcdsaVerifyJce;
    :try_start_0
    sget-object v2, Lcom/google/crypto/tink/subtle/SelfKeyTestValidators;->TEST_MESSAGE:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 80
    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/crypto/tink/subtle/EcdsaSignJce;->sign([B)[B

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    .line 79
    invoke-virtual {v1, v3, v2}, Lcom/google/crypto/tink/subtle/EcdsaVerifyJce;->verify([B[B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    nop

    .line 87
    return-void

    .line 81
    :catch_0
    move-exception v2

    .line 82
    .local v2, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Ljava/security/GeneralSecurityException;

    const-string v4, "ECDSA signing with private key followed by verifying with public key failed. The key may be corrupted."

    invoke-direct {v3, v4, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static final validateRsaSsaPkcs1(Ljava/security/interfaces/RSAPrivateCrtKey;Ljava/security/interfaces/RSAPublicKey;Lcom/google/crypto/tink/subtle/Enums$HashType;)V
    .locals 5
    .param p0, "privateKey"    # Ljava/security/interfaces/RSAPrivateCrtKey;
    .param p1, "publicKey"    # Ljava/security/interfaces/RSAPublicKey;
    .param p2, "sigHash"    # Lcom/google/crypto/tink/subtle/Enums$HashType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "privateKey",
            "publicKey",
            "sigHash"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 57
    new-instance v0, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1SignJce;

    invoke-direct {v0, p0, p2}, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1SignJce;-><init>(Ljava/security/interfaces/RSAPrivateCrtKey;Lcom/google/crypto/tink/subtle/Enums$HashType;)V

    .line 58
    .local v0, "rsaSigner":Lcom/google/crypto/tink/subtle/RsaSsaPkcs1SignJce;
    new-instance v1, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1VerifyJce;

    invoke-direct {v1, p1, p2}, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1VerifyJce;-><init>(Ljava/security/interfaces/RSAPublicKey;Lcom/google/crypto/tink/subtle/Enums$HashType;)V

    .line 60
    .local v1, "rsaVerifier":Lcom/google/crypto/tink/subtle/RsaSsaPkcs1VerifyJce;
    :try_start_0
    sget-object v2, Lcom/google/crypto/tink/subtle/SelfKeyTestValidators;->TEST_MESSAGE:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1SignJce;->sign([B)[B

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1VerifyJce;->verify([B[B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    nop

    .line 67
    return-void

    .line 61
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Ljava/security/GeneralSecurityException;

    const-string v4, "RSA PKCS1 signing with private key followed by verifying with public key failed. The key may be corrupted."

    invoke-direct {v3, v4, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static final validateRsaSsaPss(Ljava/security/interfaces/RSAPrivateCrtKey;Ljava/security/interfaces/RSAPublicKey;Lcom/google/crypto/tink/subtle/Enums$HashType;Lcom/google/crypto/tink/subtle/Enums$HashType;I)V
    .locals 5
    .param p0, "privateKey"    # Ljava/security/interfaces/RSAPrivateCrtKey;
    .param p1, "publicKey"    # Ljava/security/interfaces/RSAPublicKey;
    .param p2, "sigHash"    # Lcom/google/crypto/tink/subtle/Enums$HashType;
    .param p3, "mgf1Hash"    # Lcom/google/crypto/tink/subtle/Enums$HashType;
    .param p4, "saltLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "privateKey",
            "publicKey",
            "sigHash",
            "mgf1Hash",
            "saltLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce;-><init>(Ljava/security/interfaces/RSAPrivateCrtKey;Lcom/google/crypto/tink/subtle/Enums$HashType;Lcom/google/crypto/tink/subtle/Enums$HashType;I)V

    .line 41
    .local v0, "rsaSigner":Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce;
    new-instance v1, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce;-><init>(Ljava/security/interfaces/RSAPublicKey;Lcom/google/crypto/tink/subtle/Enums$HashType;Lcom/google/crypto/tink/subtle/Enums$HashType;I)V

    .line 44
    .local v1, "rsaVerifier":Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce;
    :try_start_0
    sget-object v2, Lcom/google/crypto/tink/subtle/SelfKeyTestValidators;->TEST_MESSAGE:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce;->sign([B)[B

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce;->verify([B[B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    nop

    .line 51
    return-void

    .line 45
    :catch_0
    move-exception v2

    .line 46
    .local v2, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Ljava/security/GeneralSecurityException;

    const-string v4, "RSA PSS signing with private key followed by verifying with public key failed. The key may be corrupted."

    invoke-direct {v3, v4, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
