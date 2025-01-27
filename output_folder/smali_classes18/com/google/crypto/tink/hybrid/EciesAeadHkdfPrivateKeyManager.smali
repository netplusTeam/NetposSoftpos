.class public final Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;
.super Lcom/google/crypto/tink/internal/PrivateKeyTypeManager;
.source "EciesAeadHkdfPrivateKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/internal/PrivateKeyTypeManager<",
        "Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;",
        "Lcom/google/crypto/tink/proto/EciesAeadHkdfPublicKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final EMPTY_SALT:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 269
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;->EMPTY_SALT:[B

    return-void
.end method

.method constructor <init>()V
    .locals 5

    .line 62
    const-class v0, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;

    const-class v1, Lcom/google/crypto/tink/proto/EciesAeadHkdfPublicKey;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/crypto/tink/internal/PrimitiveFactory;

    new-instance v3, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager$1;

    const-class v4, Lcom/google/crypto/tink/HybridDecrypt;

    invoke-direct {v3, v4}, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager$1;-><init>(Ljava/lang/Class;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v1, v2}, Lcom/google/crypto/tink/internal/PrivateKeyTypeManager;-><init>(Ljava/lang/Class;Ljava/lang/Class;[Lcom/google/crypto/tink/internal/PrimitiveFactory;)V

    .line 86
    return-void
.end method

.method static synthetic access$000()[B
    .locals 1

    .line 59
    sget-object v0, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;->EMPTY_SALT:[B

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/proto/EllipticCurveType;Lcom/google/crypto/tink/proto/HashType;Lcom/google/crypto/tink/proto/EcPointFormat;Lcom/google/crypto/tink/KeyTemplate;[BLcom/google/crypto/tink/KeyTemplate$OutputPrefixType;)Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory$KeyFormat;
    .locals 1
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/EllipticCurveType;
    .param p1, "x1"    # Lcom/google/crypto/tink/proto/HashType;
    .param p2, "x2"    # Lcom/google/crypto/tink/proto/EcPointFormat;
    .param p3, "x3"    # Lcom/google/crypto/tink/KeyTemplate;
    .param p4, "x4"    # [B
    .param p5, "x5"    # Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;

    .line 59
    invoke-static/range {p0 .. p5}, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;->createKeyFormat(Lcom/google/crypto/tink/proto/EllipticCurveType;Lcom/google/crypto/tink/proto/HashType;Lcom/google/crypto/tink/proto/EcPointFormat;Lcom/google/crypto/tink/KeyTemplate;[BLcom/google/crypto/tink/KeyTemplate$OutputPrefixType;)Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory$KeyFormat;

    move-result-object v0

    return-object v0
.end method

.method private static createKeyFormat(Lcom/google/crypto/tink/proto/EllipticCurveType;Lcom/google/crypto/tink/proto/HashType;Lcom/google/crypto/tink/proto/EcPointFormat;Lcom/google/crypto/tink/KeyTemplate;[BLcom/google/crypto/tink/KeyTemplate$OutputPrefixType;)Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory$KeyFormat;
    .locals 3
    .param p0, "curve"    # Lcom/google/crypto/tink/proto/EllipticCurveType;
    .param p1, "hashType"    # Lcom/google/crypto/tink/proto/HashType;
    .param p2, "ecPointFormat"    # Lcom/google/crypto/tink/proto/EcPointFormat;
    .param p3, "demKeyTemplate"    # Lcom/google/crypto/tink/KeyTemplate;
    .param p4, "salt"    # [B
    .param p5, "prefixType"    # Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "curve",
            "hashType",
            "ecPointFormat",
            "demKeyTemplate",
            "salt",
            "prefixType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/proto/EllipticCurveType;",
            "Lcom/google/crypto/tink/proto/HashType;",
            "Lcom/google/crypto/tink/proto/EcPointFormat;",
            "Lcom/google/crypto/tink/KeyTemplate;",
            "[B",
            "Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;",
            ")",
            "Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory$KeyFormat<",
            "Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat;",
            ">;"
        }
    .end annotation

    .line 397
    new-instance v0, Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory$KeyFormat;

    .line 398
    invoke-static {}, Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat;->newBuilder()Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat$Builder;

    move-result-object v1

    .line 399
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;->createParams(Lcom/google/crypto/tink/proto/EllipticCurveType;Lcom/google/crypto/tink/proto/HashType;Lcom/google/crypto/tink/proto/EcPointFormat;Lcom/google/crypto/tink/KeyTemplate;[B)Lcom/google/crypto/tink/proto/EciesAeadHkdfParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat$Builder;->setParams(Lcom/google/crypto/tink/proto/EciesAeadHkdfParams;)Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat$Builder;

    move-result-object v1

    .line 400
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat;

    invoke-direct {v0, v1, p5}, Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory$KeyFormat;-><init>(Ljava/lang/Object;Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;)V

    .line 397
    return-object v0
.end method

.method private static createKeyTemplate(Lcom/google/crypto/tink/proto/EllipticCurveType;Lcom/google/crypto/tink/proto/HashType;Lcom/google/crypto/tink/proto/EcPointFormat;Lcom/google/crypto/tink/KeyTemplate;Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;[B)Lcom/google/crypto/tink/KeyTemplate;
    .locals 3
    .param p0, "curve"    # Lcom/google/crypto/tink/proto/EllipticCurveType;
    .param p1, "hashType"    # Lcom/google/crypto/tink/proto/HashType;
    .param p2, "ecPointFormat"    # Lcom/google/crypto/tink/proto/EcPointFormat;
    .param p3, "demKeyTemplate"    # Lcom/google/crypto/tink/KeyTemplate;
    .param p4, "outputPrefixType"    # Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;
    .param p5, "salt"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "curve",
            "hashType",
            "ecPointFormat",
            "demKeyTemplate",
            "outputPrefixType",
            "salt"
        }
    .end annotation

    .line 383
    invoke-static {}, Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat;->newBuilder()Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat$Builder;

    move-result-object v0

    .line 384
    invoke-static {p0, p1, p2, p3, p5}, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;->createParams(Lcom/google/crypto/tink/proto/EllipticCurveType;Lcom/google/crypto/tink/proto/HashType;Lcom/google/crypto/tink/proto/EcPointFormat;Lcom/google/crypto/tink/KeyTemplate;[B)Lcom/google/crypto/tink/proto/EciesAeadHkdfParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat$Builder;->setParams(Lcom/google/crypto/tink/proto/EciesAeadHkdfParams;)Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat$Builder;

    move-result-object v0

    .line 385
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat;

    .line 386
    .local v0, "format":Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat;
    new-instance v1, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;

    invoke-direct {v1}, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;-><init>()V

    .line 387
    invoke-virtual {v1}, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;->getKeyType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat;->toByteArray()[B

    move-result-object v2

    .line 386
    invoke-static {v1, v2, p4}, Lcom/google/crypto/tink/KeyTemplate;->create(Ljava/lang/String;[BLcom/google/crypto/tink/KeyTemplate$OutputPrefixType;)Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v1

    return-object v1
.end method

.method static createParams(Lcom/google/crypto/tink/proto/EllipticCurveType;Lcom/google/crypto/tink/proto/HashType;Lcom/google/crypto/tink/proto/EcPointFormat;Lcom/google/crypto/tink/KeyTemplate;[B)Lcom/google/crypto/tink/proto/EciesAeadHkdfParams;
    .locals 4
    .param p0, "curve"    # Lcom/google/crypto/tink/proto/EllipticCurveType;
    .param p1, "hashType"    # Lcom/google/crypto/tink/proto/HashType;
    .param p2, "ecPointFormat"    # Lcom/google/crypto/tink/proto/EcPointFormat;
    .param p3, "demKeyTemplate"    # Lcom/google/crypto/tink/KeyTemplate;
    .param p4, "salt"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "curve",
            "hashType",
            "ecPointFormat",
            "demKeyTemplate",
            "salt"
        }
    .end annotation

    .line 412
    invoke-static {}, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;->newBuilder()Lcom/google/crypto/tink/proto/EciesHkdfKemParams$Builder;

    move-result-object v0

    .line 413
    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/EciesHkdfKemParams$Builder;->setCurveType(Lcom/google/crypto/tink/proto/EllipticCurveType;)Lcom/google/crypto/tink/proto/EciesHkdfKemParams$Builder;

    move-result-object v0

    .line 414
    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/EciesHkdfKemParams$Builder;->setHkdfHashType(Lcom/google/crypto/tink/proto/HashType;)Lcom/google/crypto/tink/proto/EciesHkdfKemParams$Builder;

    move-result-object v0

    .line 415
    invoke-static {p4}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/EciesHkdfKemParams$Builder;->setHkdfSalt(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/EciesHkdfKemParams$Builder;

    move-result-object v0

    .line 416
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/EciesHkdfKemParams$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/EciesHkdfKemParams;

    .line 418
    .local v0, "kemParams":Lcom/google/crypto/tink/proto/EciesHkdfKemParams;
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyTemplate;->newBuilder()Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v1

    .line 419
    invoke-virtual {p3}, Lcom/google/crypto/tink/KeyTemplate;->getTypeUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v1

    .line 420
    invoke-virtual {p3}, Lcom/google/crypto/tink/KeyTemplate;->getValue()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v1

    .line 421
    invoke-virtual {p3}, Lcom/google/crypto/tink/KeyTemplate;->getOutputPrefixType()Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;->toProto(Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;)Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v1

    .line 422
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 423
    .local v1, "protoKt":Lcom/google/crypto/tink/proto/KeyTemplate;
    invoke-static {}, Lcom/google/crypto/tink/proto/EciesAeadDemParams;->newBuilder()Lcom/google/crypto/tink/proto/EciesAeadDemParams$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/crypto/tink/proto/EciesAeadDemParams$Builder;->setAeadDem(Lcom/google/crypto/tink/proto/KeyTemplate;)Lcom/google/crypto/tink/proto/EciesAeadDemParams$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/EciesAeadDemParams$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/proto/EciesAeadDemParams;

    .line 424
    .local v2, "demParams":Lcom/google/crypto/tink/proto/EciesAeadDemParams;
    invoke-static {}, Lcom/google/crypto/tink/proto/EciesAeadHkdfParams;->newBuilder()Lcom/google/crypto/tink/proto/EciesAeadHkdfParams$Builder;

    move-result-object v3

    .line 425
    invoke-virtual {v3, v0}, Lcom/google/crypto/tink/proto/EciesAeadHkdfParams$Builder;->setKemParams(Lcom/google/crypto/tink/proto/EciesHkdfKemParams;)Lcom/google/crypto/tink/proto/EciesAeadHkdfParams$Builder;

    move-result-object v3

    .line 426
    invoke-virtual {v3, v2}, Lcom/google/crypto/tink/proto/EciesAeadHkdfParams$Builder;->setDemParams(Lcom/google/crypto/tink/proto/EciesAeadDemParams;)Lcom/google/crypto/tink/proto/EciesAeadHkdfParams$Builder;

    move-result-object v3

    .line 427
    invoke-virtual {v3, p2}, Lcom/google/crypto/tink/proto/EciesAeadHkdfParams$Builder;->setEcPointFormat(Lcom/google/crypto/tink/proto/EcPointFormat;)Lcom/google/crypto/tink/proto/EciesAeadHkdfParams$Builder;

    move-result-object v3

    .line 428
    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/EciesAeadHkdfParams$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/proto/EciesAeadHkdfParams;

    .line 424
    return-object v3
.end method

.method public static final eciesP256HkdfHmacSha256Aes128CtrHmacSha256Template()Lcom/google/crypto/tink/KeyTemplate;
    .locals 6

    .line 337
    sget-object v0, Lcom/google/crypto/tink/proto/EllipticCurveType;->NIST_P256:Lcom/google/crypto/tink/proto/EllipticCurveType;

    sget-object v1, Lcom/google/crypto/tink/proto/HashType;->SHA256:Lcom/google/crypto/tink/proto/HashType;

    sget-object v2, Lcom/google/crypto/tink/proto/EcPointFormat;->UNCOMPRESSED:Lcom/google/crypto/tink/proto/EcPointFormat;

    .line 341
    invoke-static {}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager;->aes128CtrHmacSha256Template()Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v3

    sget-object v4, Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;->TINK:Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;

    sget-object v5, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;->EMPTY_SALT:[B

    .line 337
    invoke-static/range {v0 .. v5}, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;->createKeyTemplate(Lcom/google/crypto/tink/proto/EllipticCurveType;Lcom/google/crypto/tink/proto/HashType;Lcom/google/crypto/tink/proto/EcPointFormat;Lcom/google/crypto/tink/KeyTemplate;Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;[B)Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v0

    return-object v0
.end method

.method public static final eciesP256HkdfHmacSha256Aes128GcmTemplate()Lcom/google/crypto/tink/KeyTemplate;
    .locals 6

    .line 286
    sget-object v0, Lcom/google/crypto/tink/proto/EllipticCurveType;->NIST_P256:Lcom/google/crypto/tink/proto/EllipticCurveType;

    sget-object v1, Lcom/google/crypto/tink/proto/HashType;->SHA256:Lcom/google/crypto/tink/proto/HashType;

    sget-object v2, Lcom/google/crypto/tink/proto/EcPointFormat;->UNCOMPRESSED:Lcom/google/crypto/tink/proto/EcPointFormat;

    .line 290
    invoke-static {}, Lcom/google/crypto/tink/aead/AesGcmKeyManager;->aes128GcmTemplate()Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v3

    sget-object v4, Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;->TINK:Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;

    sget-object v5, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;->EMPTY_SALT:[B

    .line 286
    invoke-static/range {v0 .. v5}, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;->createKeyTemplate(Lcom/google/crypto/tink/proto/EllipticCurveType;Lcom/google/crypto/tink/proto/HashType;Lcom/google/crypto/tink/proto/EcPointFormat;Lcom/google/crypto/tink/KeyTemplate;Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;[B)Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v0

    return-object v0
.end method

.method public static final rawEciesP256HkdfHmacSha256Aes128CtrHmacSha256CompressedTemplate()Lcom/google/crypto/tink/KeyTemplate;
    .locals 6

    .line 365
    sget-object v0, Lcom/google/crypto/tink/proto/EllipticCurveType;->NIST_P256:Lcom/google/crypto/tink/proto/EllipticCurveType;

    sget-object v1, Lcom/google/crypto/tink/proto/HashType;->SHA256:Lcom/google/crypto/tink/proto/HashType;

    sget-object v2, Lcom/google/crypto/tink/proto/EcPointFormat;->COMPRESSED:Lcom/google/crypto/tink/proto/EcPointFormat;

    .line 369
    invoke-static {}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager;->aes128CtrHmacSha256Template()Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v3

    sget-object v4, Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;->RAW:Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;

    sget-object v5, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;->EMPTY_SALT:[B

    .line 365
    invoke-static/range {v0 .. v5}, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;->createKeyTemplate(Lcom/google/crypto/tink/proto/EllipticCurveType;Lcom/google/crypto/tink/proto/HashType;Lcom/google/crypto/tink/proto/EcPointFormat;Lcom/google/crypto/tink/KeyTemplate;Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;[B)Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v0

    return-object v0
.end method

.method public static final rawEciesP256HkdfHmacSha256Aes128GcmCompressedTemplate()Lcom/google/crypto/tink/KeyTemplate;
    .locals 6

    .line 310
    sget-object v0, Lcom/google/crypto/tink/proto/EllipticCurveType;->NIST_P256:Lcom/google/crypto/tink/proto/EllipticCurveType;

    sget-object v1, Lcom/google/crypto/tink/proto/HashType;->SHA256:Lcom/google/crypto/tink/proto/HashType;

    sget-object v2, Lcom/google/crypto/tink/proto/EcPointFormat;->COMPRESSED:Lcom/google/crypto/tink/proto/EcPointFormat;

    .line 314
    invoke-static {}, Lcom/google/crypto/tink/aead/AesGcmKeyManager;->aes128GcmTemplate()Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v3

    sget-object v4, Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;->RAW:Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;

    sget-object v5, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;->EMPTY_SALT:[B

    .line 310
    invoke-static/range {v0 .. v5}, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;->createKeyTemplate(Lcom/google/crypto/tink/proto/EllipticCurveType;Lcom/google/crypto/tink/proto/HashType;Lcom/google/crypto/tink/proto/EcPointFormat;Lcom/google/crypto/tink/KeyTemplate;Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;[B)Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v0

    return-object v0
.end method

.method public static registerPair(Z)V
    .locals 2
    .param p0, "newKeyAllowed"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newKeyAllowed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 265
    new-instance v0, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;

    invoke-direct {v0}, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;-><init>()V

    new-instance v1, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPublicKeyManager;

    invoke-direct {v1}, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPublicKeyManager;-><init>()V

    invoke-static {v0, v1, p0}, Lcom/google/crypto/tink/Registry;->registerAsymmetricKeyManagers(Lcom/google/crypto/tink/internal/PrivateKeyTypeManager;Lcom/google/crypto/tink/internal/KeyTypeManager;Z)V

    .line 267
    return-void
.end method

.method private static toProto(Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;)Lcom/google/crypto/tink/proto/OutputPrefixType;
    .locals 2
    .param p0, "outputPrefixType"    # Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputPrefixType"
        }
    .end annotation

    .line 432
    sget-object v0, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager$3;->$SwitchMap$com$google$crypto$tink$KeyTemplate$OutputPrefixType:[I

    invoke-virtual {p0}, Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 442
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown output prefix type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :pswitch_0
    sget-object v0, Lcom/google/crypto/tink/proto/OutputPrefixType;->CRUNCHY:Lcom/google/crypto/tink/proto/OutputPrefixType;

    return-object v0

    .line 438
    :pswitch_1
    sget-object v0, Lcom/google/crypto/tink/proto/OutputPrefixType;->RAW:Lcom/google/crypto/tink/proto/OutputPrefixType;

    return-object v0

    .line 436
    :pswitch_2
    sget-object v0, Lcom/google/crypto/tink/proto/OutputPrefixType;->LEGACY:Lcom/google/crypto/tink/proto/OutputPrefixType;

    return-object v0

    .line 434
    :pswitch_3
    sget-object v0, Lcom/google/crypto/tink/proto/OutputPrefixType;->TINK:Lcom/google/crypto/tink/proto/OutputPrefixType;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getKeyType()Ljava/lang/String;
    .locals 1

    .line 90
    const-string/jumbo v0, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey"

    return-object v0
.end method

.method public getPublicKey(Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;)Lcom/google/crypto/tink/proto/EciesAeadHkdfPublicKey;
    .locals 1
    .param p1, "key"    # Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;
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

    .line 101
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;->getPublicKey()Lcom/google/crypto/tink/proto/EciesAeadHkdfPublicKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPublicKey(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
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

    .line 59
    check-cast p1, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;->getPublicKey(Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;)Lcom/google/crypto/tink/proto/EciesAeadHkdfPublicKey;

    move-result-object p1

    return-object p1
.end method

.method public getVersion()I
    .locals 1

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public keyFactory()Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory<",
            "Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat;",
            "Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;",
            ">;"
        }
    .end annotation

    .line 126
    new-instance v0, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager$2;

    const-class v1, Lcom/google/crypto/tink/proto/EciesAeadHkdfKeyFormat;

    invoke-direct {v0, p0, v1}, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager$2;-><init>(Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;Ljava/lang/Class;)V

    return-object v0
.end method

.method public keyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;
    .locals 1

    .line 106
    sget-object v0, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->ASYMMETRIC_PRIVATE:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    return-object v0
.end method

.method public parseKey(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;
    .locals 1
    .param p1, "byteString"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "byteString"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 112
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseKey(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "byteString"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 59
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;->parseKey(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public validateKey(Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;)V
    .locals 2
    .param p1, "keyProto"    # Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyProto"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 117
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;->getKeyValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;->getVersion()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;->getVersion()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/crypto/tink/subtle/Validators;->validateVersion(II)V

    .line 121
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;->getPublicKey()Lcom/google/crypto/tink/proto/EciesAeadHkdfPublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/EciesAeadHkdfPublicKey;->getParams()Lcom/google/crypto/tink/proto/EciesAeadHkdfParams;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/hybrid/HybridUtil;->validate(Lcom/google/crypto/tink/proto/EciesAeadHkdfParams;)V

    .line 122
    return-void

    .line 118
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid ECIES private key"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic validateKey(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "keyProto"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 59
    check-cast p1, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;->validateKey(Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;)V

    return-void
.end method
