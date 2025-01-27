.class public final Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;
.super Ljava/lang/Object;
.source "HpkeUtil.java"


# static fields
.field public static final AES_128_GCM_AEAD_ID:[B

.field public static final AES_256_GCM_AEAD_ID:[B

.field public static final BASE_MODE:[B

.field public static final CHACHA20_POLY1305_AEAD_ID:[B

.field public static final EMPTY_SALT:[B

.field public static final HKDF_SHA256_KDF_ID:[B

.field public static final HKDF_SHA384_KDF_ID:[B

.field public static final HKDF_SHA512_KDF_ID:[B

.field private static final HPKE:[B

.field private static final HPKE_V1:[B

.field private static final KEM:[B

.field public static final P256_HKDF_SHA256_KEM_ID:[B

.field public static final P384_HKDF_SHA384_KEM_ID:[B

.field public static final P521_HKDF_SHA512_KEM_ID:[B

.field public static final X25519_HKDF_SHA256_KEM_ID:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 32
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->intToByteArray(II)[B

    move-result-object v2

    sput-object v2, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->BASE_MODE:[B

    .line 35
    const/4 v2, 0x2

    const/16 v3, 0x20

    invoke-static {v2, v3}, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->intToByteArray(II)[B

    move-result-object v3

    sput-object v3, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->X25519_HKDF_SHA256_KEM_ID:[B

    .line 36
    const/16 v3, 0x10

    invoke-static {v2, v3}, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->intToByteArray(II)[B

    move-result-object v3

    sput-object v3, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->P256_HKDF_SHA256_KEM_ID:[B

    .line 37
    const/16 v3, 0x11

    invoke-static {v2, v3}, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->intToByteArray(II)[B

    move-result-object v3

    sput-object v3, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->P384_HKDF_SHA384_KEM_ID:[B

    .line 38
    const/16 v3, 0x12

    invoke-static {v2, v3}, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->intToByteArray(II)[B

    move-result-object v3

    sput-object v3, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->P521_HKDF_SHA512_KEM_ID:[B

    .line 41
    invoke-static {v2, v0}, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->intToByteArray(II)[B

    move-result-object v3

    sput-object v3, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->HKDF_SHA256_KDF_ID:[B

    .line 42
    invoke-static {v2, v2}, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->intToByteArray(II)[B

    move-result-object v3

    sput-object v3, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->HKDF_SHA384_KDF_ID:[B

    .line 43
    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->intToByteArray(II)[B

    move-result-object v4

    sput-object v4, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->HKDF_SHA512_KDF_ID:[B

    .line 46
    invoke-static {v2, v0}, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->intToByteArray(II)[B

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->AES_128_GCM_AEAD_ID:[B

    .line 47
    invoke-static {v2, v2}, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->intToByteArray(II)[B

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->AES_256_GCM_AEAD_ID:[B

    .line 48
    invoke-static {v2, v3}, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->intToByteArray(II)[B

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->CHACHA20_POLY1305_AEAD_ID:[B

    .line 50
    new-array v0, v1, [B

    sput-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->EMPTY_SALT:[B

    .line 52
    sget-object v0, Lcom/google/crypto/tink/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "KEM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->KEM:[B

    .line 53
    sget-object v0, Lcom/google/crypto/tink/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "HPKE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->HPKE:[B

    .line 54
    sget-object v0, Lcom/google/crypto/tink/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "HPKE-v1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->HPKE_V1:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static hpkeSuiteId([B[B[B)[B
    .locals 3
    .param p0, "kemId"    # [B
    .param p1, "kdfId"    # [B
    .param p2, "aeadId"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "kemId",
            "kdfId",
            "aeadId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 95
    const/4 v0, 0x4

    new-array v0, v0, [[B

    sget-object v1, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->HPKE:[B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static intToByteArray(II)[B
    .locals 3
    .param p0, "capacity"    # I
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "capacity",
            "value"
        }
    .end annotation

    .line 69
    new-array v0, p0, [B

    .line 70
    .local v0, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 71
    sub-int v2, p0, v1

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x8

    shr-int v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method static kemSuiteId([B)[B
    .locals 3
    .param p0, "kemId"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kemId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [[B

    sget-object v1, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->KEM:[B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object v0

    return-object v0
.end method

.method static labelIkm(Ljava/lang/String;[B[B)[B
    .locals 3
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "ikm"    # [B
    .param p2, "suiteId"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "label",
            "ikm",
            "suiteId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 105
    const/4 v0, 0x4

    new-array v0, v0, [[B

    sget-object v1, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->HPKE_V1:[B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    sget-object v1, Lcom/google/crypto/tink/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object v0

    return-object v0
.end method

.method static labelInfo(Ljava/lang/String;[B[BI)[B
    .locals 4
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "info"    # [B
    .param p2, "suiteId"    # [B
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "label",
            "info",
            "suiteId",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 117
    const/4 v0, 0x5

    new-array v0, v0, [[B

    const/4 v1, 0x2

    invoke-static {v1, p3}, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->intToByteArray(II)[B

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    sget-object v2, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->HPKE_V1:[B

    const/4 v3, 0x1

    aput-object v2, v0, v3

    aput-object p2, v0, v1

    sget-object v1, Lcom/google/crypto/tink/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object v0

    return-object v0
.end method

.method static nistHpkeKemToCurve(Lcom/google/crypto/tink/proto/HpkeKem;)Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;
    .locals 2
    .param p0, "kem"    # Lcom/google/crypto/tink/proto/HpkeKem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kem"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 134
    sget-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil$1;->$SwitchMap$com$google$crypto$tink$proto$HpkeKem:[I

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/HpkeKem;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 142
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Unrecognized NIST HPKE KEM identifier"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :pswitch_0
    sget-object v0, Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;->NIST_P521:Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    return-object v0

    .line 138
    :pswitch_1
    sget-object v0, Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;->NIST_P384:Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    return-object v0

    .line 136
    :pswitch_2
    sget-object v0, Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;->NIST_P256:Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static validateParams(Lcom/google/crypto/tink/proto/HpkeParams;)V
    .locals 3
    .param p0, "params"    # Lcom/google/crypto/tink/proto/HpkeParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/HpkeParams;->getKem()Lcom/google/crypto/tink/proto/HpkeKem;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/HpkeKem;->KEM_UNKNOWN:Lcom/google/crypto/tink/proto/HpkeKem;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/HpkeParams;->getKem()Lcom/google/crypto/tink/proto/HpkeKem;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/HpkeKem;->UNRECOGNIZED:Lcom/google/crypto/tink/proto/HpkeKem;

    if-eq v0, v1, :cond_2

    .line 124
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/HpkeParams;->getKdf()Lcom/google/crypto/tink/proto/HpkeKdf;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/HpkeKdf;->KDF_UNKNOWN:Lcom/google/crypto/tink/proto/HpkeKdf;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/HpkeParams;->getKdf()Lcom/google/crypto/tink/proto/HpkeKdf;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/HpkeKdf;->UNRECOGNIZED:Lcom/google/crypto/tink/proto/HpkeKdf;

    if-eq v0, v1, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/HpkeParams;->getAead()Lcom/google/crypto/tink/proto/HpkeAead;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/HpkeAead;->AEAD_UNKNOWN:Lcom/google/crypto/tink/proto/HpkeAead;

    if-eq v0, v1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/HpkeParams;->getAead()Lcom/google/crypto/tink/proto/HpkeAead;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/HpkeAead;->UNRECOGNIZED:Lcom/google/crypto/tink/proto/HpkeAead;

    if-eq v0, v1, :cond_0

    .line 131
    return-void

    .line 129
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid AEAD param: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/HpkeParams;->getAead()Lcom/google/crypto/tink/proto/HpkeAead;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/HpkeAead;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid KDF param: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/HpkeParams;->getKdf()Lcom/google/crypto/tink/proto/HpkeKdf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/HpkeKdf;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid KEM param: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/HpkeParams;->getKem()Lcom/google/crypto/tink/proto/HpkeKem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/HpkeKem;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
