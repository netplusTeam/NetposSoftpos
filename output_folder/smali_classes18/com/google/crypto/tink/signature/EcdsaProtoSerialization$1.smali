.class synthetic Lcom/google/crypto/tink/signature/EcdsaProtoSerialization$1;
.super Ljava/lang/Object;
.source "EcdsaProtoSerialization.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/EcdsaProtoSerialization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$crypto$tink$proto$EcdsaSignatureEncoding:[I

.field static final synthetic $SwitchMap$com$google$crypto$tink$proto$EllipticCurveType:[I

.field static final synthetic $SwitchMap$com$google$crypto$tink$proto$HashType:[I

.field static final synthetic $SwitchMap$com$google$crypto$tink$proto$OutputPrefixType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 220
    invoke-static {}, Lcom/google/crypto/tink/proto/EcdsaSignatureEncoding;->values()[Lcom/google/crypto/tink/proto/EcdsaSignatureEncoding;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/crypto/tink/signature/EcdsaProtoSerialization$1;->$SwitchMap$com$google$crypto$tink$proto$EcdsaSignatureEncoding:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/google/crypto/tink/proto/EcdsaSignatureEncoding;->IEEE_P1363:Lcom/google/crypto/tink/proto/EcdsaSignatureEncoding;

    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/EcdsaSignatureEncoding;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/google/crypto/tink/signature/EcdsaProtoSerialization$1;->$SwitchMap$com$google$crypto$tink$proto$EcdsaSignatureEncoding:[I

    sget-object v3, Lcom/google/crypto/tink/proto/EcdsaSignatureEncoding;->DER:Lcom/google/crypto/tink/proto/EcdsaSignatureEncoding;

    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/EcdsaSignatureEncoding;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 194
    :goto_1
    invoke-static {}, Lcom/google/crypto/tink/proto/EllipticCurveType;->values()[Lcom/google/crypto/tink/proto/EllipticCurveType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/google/crypto/tink/signature/EcdsaProtoSerialization$1;->$SwitchMap$com$google$crypto$tink$proto$EllipticCurveType:[I

    :try_start_2
    sget-object v3, Lcom/google/crypto/tink/proto/EllipticCurveType;->NIST_P256:Lcom/google/crypto/tink/proto/EllipticCurveType;

    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/EllipticCurveType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    :goto_2
    :try_start_3
    sget-object v2, Lcom/google/crypto/tink/signature/EcdsaProtoSerialization$1;->$SwitchMap$com$google$crypto$tink$proto$EllipticCurveType:[I

    sget-object v3, Lcom/google/crypto/tink/proto/EllipticCurveType;->NIST_P384:Lcom/google/crypto/tink/proto/EllipticCurveType;

    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/EllipticCurveType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    :goto_3
    const/4 v2, 0x3

    :try_start_4
    sget-object v3, Lcom/google/crypto/tink/signature/EcdsaProtoSerialization$1;->$SwitchMap$com$google$crypto$tink$proto$EllipticCurveType:[I

    sget-object v4, Lcom/google/crypto/tink/proto/EllipticCurveType;->NIST_P521:Lcom/google/crypto/tink/proto/EllipticCurveType;

    invoke-virtual {v4}, Lcom/google/crypto/tink/proto/EllipticCurveType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v3

    .line 146
    :goto_4
    invoke-static {}, Lcom/google/crypto/tink/proto/OutputPrefixType;->values()[Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/google/crypto/tink/signature/EcdsaProtoSerialization$1;->$SwitchMap$com$google$crypto$tink$proto$OutputPrefixType:[I

    :try_start_5
    sget-object v4, Lcom/google/crypto/tink/proto/OutputPrefixType;->TINK:Lcom/google/crypto/tink/proto/OutputPrefixType;

    invoke-virtual {v4}, Lcom/google/crypto/tink/proto/OutputPrefixType;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v3

    :goto_5
    :try_start_6
    sget-object v3, Lcom/google/crypto/tink/signature/EcdsaProtoSerialization$1;->$SwitchMap$com$google$crypto$tink$proto$OutputPrefixType:[I

    sget-object v4, Lcom/google/crypto/tink/proto/OutputPrefixType;->CRUNCHY:Lcom/google/crypto/tink/proto/OutputPrefixType;

    invoke-virtual {v4}, Lcom/google/crypto/tink/proto/OutputPrefixType;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v3

    :goto_6
    :try_start_7
    sget-object v3, Lcom/google/crypto/tink/signature/EcdsaProtoSerialization$1;->$SwitchMap$com$google$crypto$tink$proto$OutputPrefixType:[I

    sget-object v4, Lcom/google/crypto/tink/proto/OutputPrefixType;->LEGACY:Lcom/google/crypto/tink/proto/OutputPrefixType;

    invoke-virtual {v4}, Lcom/google/crypto/tink/proto/OutputPrefixType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v3

    :goto_7
    :try_start_8
    sget-object v3, Lcom/google/crypto/tink/signature/EcdsaProtoSerialization$1;->$SwitchMap$com$google$crypto$tink$proto$OutputPrefixType:[I

    sget-object v4, Lcom/google/crypto/tink/proto/OutputPrefixType;->RAW:Lcom/google/crypto/tink/proto/OutputPrefixType;

    invoke-virtual {v4}, Lcom/google/crypto/tink/proto/OutputPrefixType;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v3

    .line 131
    :goto_8
    invoke-static {}, Lcom/google/crypto/tink/proto/HashType;->values()[Lcom/google/crypto/tink/proto/HashType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/google/crypto/tink/signature/EcdsaProtoSerialization$1;->$SwitchMap$com$google$crypto$tink$proto$HashType:[I

    :try_start_9
    sget-object v4, Lcom/google/crypto/tink/proto/HashType;->SHA256:Lcom/google/crypto/tink/proto/HashType;

    invoke-virtual {v4}, Lcom/google/crypto/tink/proto/HashType;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v1

    :goto_9
    :try_start_a
    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaProtoSerialization$1;->$SwitchMap$com$google$crypto$tink$proto$HashType:[I

    sget-object v3, Lcom/google/crypto/tink/proto/HashType;->SHA384:Lcom/google/crypto/tink/proto/HashType;

    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/HashType;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v0

    :goto_a
    :try_start_b
    sget-object v0, Lcom/google/crypto/tink/signature/EcdsaProtoSerialization$1;->$SwitchMap$com$google$crypto$tink$proto$HashType:[I

    sget-object v1, Lcom/google/crypto/tink/proto/HashType;->SHA512:Lcom/google/crypto/tink/proto/HashType;

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/HashType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v0

    :goto_b
    return-void
.end method
