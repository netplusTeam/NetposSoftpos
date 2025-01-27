.class public abstract Lorg/bouncycastle/math/ec/rfc8032/Ed25519;
.super Ljava/lang/Object;
.source "Ed25519.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;,
        Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;,
        Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;,
        Lorg/bouncycastle/math/ec/rfc8032/Ed25519$Algorithm;
    }
.end annotation


# static fields
.field private static final B_x:[I

.field private static final B_y:[I

.field private static final C_d:[I

.field private static final C_d2:[I

.field private static final C_d4:[I

.field private static final DOM2_PREFIX:[B

.field private static final L:[I

.field private static final L0:I = -0x30a2c13

.field private static final L1:I = 0x12631a6

.field private static final L2:I = 0x79cd658

.field private static final L3:I = -0x6215d1

.field private static final L4:I = 0x14df

.field private static final M28L:J = 0xfffffffL

.field private static final M32L:J = 0xffffffffL

.field private static final P:[I

.field private static final POINT_BYTES:I = 0x20

.field private static final PRECOMP_BLOCKS:I = 0x8

.field private static final PRECOMP_MASK:I = 0x7

.field private static final PRECOMP_POINTS:I = 0x8

.field private static final PRECOMP_SPACING:I = 0x8

.field private static final PRECOMP_TEETH:I = 0x4

.field public static final PREHASH_SIZE:I = 0x40

.field public static final PUBLIC_KEY_SIZE:I = 0x20

.field private static final SCALAR_BYTES:I = 0x20

.field private static final SCALAR_INTS:I = 0x8

.field public static final SECRET_KEY_SIZE:I = 0x20

.field public static final SIGNATURE_SIZE:I = 0x40

.field private static final WNAF_WIDTH_BASE:I = 0x7

.field private static precompBase:[I

.field private static precompBaseTable:[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;

.field private static precompLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "SigEd25519 no Ed25519 collisions"

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->DOM2_PREFIX:[B

    .line 3
    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->P:[I

    .line 4
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->L:[I

    .line 12
    const/16 v0, 0xa

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->B_x:[I

    .line 14
    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->B_y:[I

    .line 16
    new-array v1, v0, [I

    fill-array-data v1, :array_4

    sput-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->C_d:[I

    .line 18
    new-array v1, v0, [I

    fill-array-data v1, :array_5

    sput-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->C_d2:[I

    .line 20
    new-array v0, v0, [I

    fill-array-data v0, :array_6

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->C_d4:[I

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->precompLock:Ljava/lang/Object;

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->precompBaseTable:[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;

    .line 34
    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->precompBase:[I

    return-void

    :array_0
    .array-data 4
        -0x13
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x7fffffff
    .end array-data

    :array_1
    .array-data 4
        0x5cf5d3ed
        0x5812631a
        -0x5d08632a
        0x14def9de
        0x0
        0x0
        0x0
        0x10000000
    .end array-data

    :array_2
    .array-data 4
        0x325d51a
        0x18b5823
        0x7b2c95
        0x304a92d
        0xd2598e
        0x1d6dc5c
        0x1388c7f
        0x13fec0a
        0x29e6b72
        0x42d26d
    .end array-data

    :array_3
    .array-data 4
        0x2666658
        0x1999999
        0x666666
        0x3333333
        0xcccccc
        0x2666666
        0x1999999
        0x666666
        0x3333333
        0xcccccc
    .end array-data

    :array_4
    .array-data 4
        0x35978a3
        0x2d37284
        0x18ab75e
        0x26a0a0e
        0xe014
        0x379e898
        0x1d01e5d
        0x1e738cc
        0x3715b7f
        0xa406d9
    .end array-data

    :array_5
    .array-data 4
        0x2b2f159
        0x1a6e509
        0x1156ebd
        0xd4141d
        0x1c029
        0x2f3d130
        0x3a03cbb
        0x1ce7198
        0x2e2b6ff
        0x480db3
    .end array-data

    :array_6
    .array-data 4
        0x165e2b2
        0x34dca13
        0x2add7a
        0x1a8283b
        0x38052
        0x1e7a260
        0x3407977
        0x19ce331
        0x1c56dff
        0x901b67
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateS([B[B[B)[B
    .locals 4

    .line 1
    const/16 v0, 0x10

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decodeScalar([BI[I)V

    .line 2
    const/16 p0, 0x8

    new-array v3, p0, [I

    invoke-static {p1, v2, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decodeScalar([BI[I)V

    .line 3
    new-array p0, p0, [I

    invoke-static {p2, v2, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decodeScalar([BI[I)V

    .line 5
    invoke-static {v3, p0, v1}, Lorg/bouncycastle/math/raw/Nat256;->mulAddTo([I[I[I)I

    .line 7
    const/16 p0, 0x40

    new-array p0, p0, [B

    :goto_0
    if-ge v2, v0, :cond_0

    .line 10
    aget p1, v1, v2

    mul-int/lit8 p2, v2, 0x4

    invoke-static {p1, p0, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->encode32(I[BI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->reduceScalar([B)[B

    move-result-object p0

    return-object p0
.end method

.method private static checkContextVar([BB)Z
    .locals 0

    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    .line 1
    array-length p0, p0

    const/16 p1, 0x100

    if-ge p0, p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static checkPointVar([B)Z
    .locals 3

    .line 1
    const/16 v0, 0x8

    new-array v1, v0, [I

    .line 2
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decode32([BI[III)V

    .line 3
    const/4 p0, 0x7

    aget v0, v1, p0

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    aput v0, v1, p0

    .line 4
    sget-object p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->P:[I

    invoke-static {v1, p0}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static checkScalarVar([B)Z
    .locals 2

    .line 1
    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 2
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decodeScalar([BI[I)V

    .line 3
    sget-object p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->L:[I

    invoke-static {v0, p0}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static createDigest()Lorg/bouncycastle/crypto/Digest;
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    return-object v0
.end method

.method public static createPrehash()Lorg/bouncycastle/crypto/Digest;
    .locals 1

    .line 1
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->createDigest()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    return-object v0
.end method

.method private static decode24([BI)I
    .locals 2

    .line 1
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    .line 2
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    .line 3
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v0

    return p0
.end method

.method private static decode32([BI)I
    .locals 2

    .line 1
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    .line 2
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    .line 3
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    .line 4
    aget-byte p0, p0, p1

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method private static decode32([BI[III)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p3, v0

    mul-int/lit8 v2, v0, 0x4

    add-int/2addr v2, p1

    .line 5
    invoke-static {p0, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decode32([BI)I

    move-result v2

    aput v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static decodePointVar([BIZLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;)Z
    .locals 3

    add-int/lit8 v0, p1, 0x20

    .line 1
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    .line 2
    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->checkPointVar([B)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 7
    :cond_0
    const/16 p1, 0x1f

    aget-byte v1, p0, p1

    and-int/lit16 v2, v1, 0x80

    ushr-int/lit8 v2, v2, 0x7

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    .line 8
    aput-byte v1, p0, p1

    .line 10
    iget-object p1, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->y:[I

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->decode([BI[I)V

    .line 12
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object p0

    .line 13
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object p1

    .line 15
    iget-object v1, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->y:[I

    invoke-static {v1, p0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([I[I)V

    .line 16
    sget-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->C_d:[I

    invoke-static {v1, p0, p1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 17
    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->subOne([I)V

    .line 18
    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->addOne([I)V

    .line 20
    iget-object v1, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->x:[I

    invoke-static {p0, p1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqrtRatioVar([I[I[I)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    .line 25
    :cond_1
    iget-object p0, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->x:[I

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->normalize([I)V

    const/4 p0, 0x1

    if-ne v2, p0, :cond_2

    .line 26
    iget-object p1, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->x:[I

    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->isZeroVar([I)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    .line 31
    :cond_2
    iget-object p1, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->x:[I

    aget v1, p1, v0

    and-int/2addr v1, p0

    if-eq v2, v1, :cond_3

    move v0, p0

    :cond_3
    xor-int/2addr p2, v0

    if-eqz p2, :cond_4

    .line 33
    invoke-static {p1, p1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->negate([I[I)V

    .line 36
    :cond_4
    invoke-static {p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointExtendXY(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;)V

    return p0
.end method

.method private static decodeScalar([BI[I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-static {p0, p1, p2, v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decode32([BI[III)V

    return-void
.end method

.method private static dom2(Lorg/bouncycastle/crypto/Digest;B[B)V
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    sget-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->DOM2_PREFIX:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 2
    invoke-interface {p0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 3
    array-length p1, p2

    int-to-byte p1, p1

    invoke-interface {p0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 4
    array-length p1, p2

    invoke-interface {p0, p2, v2, p1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    :cond_0
    return-void
.end method

.method private static encode24(I[BI)V
    .locals 1

    int-to-byte v0, p0

    .line 1
    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    .line 2
    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 p0, p0, 0x10

    int-to-byte p0, p0

    .line 3
    aput-byte p0, p1, p2

    return-void
.end method

.method private static encode32(I[BI)V
    .locals 1

    int-to-byte v0, p0

    .line 1
    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    .line 2
    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    .line 3
    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 p0, p0, 0x18

    int-to-byte p0, p0

    .line 4
    aput-byte p0, p1, p2

    return-void
.end method

.method private static encode56(J[BI)V
    .locals 1

    long-to-int v0, p0

    .line 1
    invoke-static {v0, p2, p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->encode32(I[BI)V

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    add-int/lit8 p3, p3, 0x4

    .line 2
    invoke-static {p0, p2, p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->encode24(I[BI)V

    return-void
.end method

.method private static encodePoint(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;[BI)V
    .locals 3

    .line 1
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v0

    .line 2
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v1

    .line 4
    iget-object v2, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    invoke-static {v2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->inv([I[I)V

    .line 5
    iget-object v2, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v2, v1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 6
    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    invoke-static {p0, v1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 7
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->normalize([I)V

    .line 8
    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->normalize([I)V

    .line 10
    invoke-static {v1, p1, p2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->encode([I[BI)V

    add-int/lit8 p2, p2, 0x20

    add-int/lit8 p2, p2, -0x1

    .line 11
    aget-byte p0, p1, p2

    const/4 v1, 0x0

    aget v0, v0, v1

    and-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x7

    or-int/2addr p0, v0

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method

.method public static generatePrivateKey(Ljava/security/SecureRandom;[B)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-void
.end method

.method public static generatePublicKey([BI[BI)V
    .locals 3

    .line 1
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->createDigest()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    .line 4
    const/16 v2, 0x20

    invoke-interface {v0, p0, p1, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 5
    const/4 p0, 0x0

    invoke-interface {v0, v1, p0}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 7
    new-array p1, v2, [B

    .line 8
    invoke-static {v1, p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pruneScalar([BI[B)V

    .line 10
    invoke-static {p1, p2, p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->scalarMultBaseEncoded([B[BI)V

    return-void
.end method

.method private static getWNAF([II)[B
    .locals 10

    .line 1
    const/16 v0, 0x10

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x8

    move v4, v0

    move v5, v2

    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_0

    .line 7
    aget v6, p0, v3

    add-int/lit8 v4, v4, -0x1

    ushr-int/lit8 v7, v6, 0x10

    shl-int/2addr v5, v0

    or-int/2addr v5, v7

    .line 8
    aput v5, v1, v4

    add-int/lit8 v4, v4, -0x1

    .line 9
    aput v6, v1, v4

    move v5, v6

    goto :goto_0

    :cond_0
    const/16 p0, 0x100

    .line 13
    new-array p0, p0, [B

    const/4 v3, 0x1

    shl-int v4, v3, p1

    add-int/lit8 v5, v4, -0x1

    ushr-int/lit8 v3, v4, 0x1

    move v4, v2

    move v6, v4

    :goto_1
    if-ge v2, v0, :cond_3

    .line 22
    aget v7, v1, v2

    :goto_2
    if-ge v4, v0, :cond_2

    ushr-int v8, v7, v4

    and-int/lit8 v9, v8, 0x1

    if-ne v9, v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    and-int/2addr v8, v5

    add-int/2addr v8, v6

    and-int v6, v8, v3

    shl-int/lit8 v9, v6, 0x1

    sub-int/2addr v8, v9

    add-int/lit8 v9, p1, -0x1

    ushr-int/2addr v6, v9

    shl-int/lit8 v9, v2, 0x4

    add-int/2addr v9, v4

    int-to-byte v8, v8

    .line 39
    aput-byte v8, p0, v9

    add-int/2addr v4, p1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, -0x10

    goto :goto_1

    :cond_3
    return-object p0
.end method

.method private static implSign(Lorg/bouncycastle/crypto/Digest;[B[B[BI[BB[BII[BI)V
    .locals 4

    .line 1
    invoke-static {p0, p6, p5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->dom2(Lorg/bouncycastle/crypto/Digest;B[B)V

    .line 2
    const/16 v0, 0x20

    invoke-interface {p0, p1, v0, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 3
    invoke-interface {p0, p7, p8, p9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 4
    const/4 v1, 0x0

    invoke-interface {p0, p1, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 6
    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->reduceScalar([B)[B

    move-result-object v2

    .line 7
    new-array v3, v0, [B

    .line 8
    invoke-static {v2, v3, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->scalarMultBaseEncoded([B[BI)V

    .line 10
    invoke-static {p0, p6, p5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->dom2(Lorg/bouncycastle/crypto/Digest;B[B)V

    .line 11
    invoke-interface {p0, v3, v1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 12
    invoke-interface {p0, p3, p4, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 13
    invoke-interface {p0, p7, p8, p9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 14
    invoke-interface {p0, p1, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 16
    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->reduceScalar([B)[B

    move-result-object p0

    .line 17
    invoke-static {v2, p0, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->calculateS([B[B[B)[B

    move-result-object p0

    .line 19
    invoke-static {v3, v1, p10, p11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p11, v0

    .line 20
    invoke-static {p0, v1, p10, p11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private static implSign([BI[BB[BII[BI)V
    .locals 13

    .line 21
    invoke-static/range {p2 .. p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->checkContextVar([BB)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->createDigest()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    .line 27
    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v2, v0, [B

    .line 29
    const/16 v0, 0x20

    move-object v3, p0

    move v4, p1

    invoke-interface {v1, p0, p1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 30
    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 32
    new-array v4, v0, [B

    .line 33
    invoke-static {v2, v3, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pruneScalar([BI[B)V

    .line 35
    new-array v0, v0, [B

    .line 36
    invoke-static {v4, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->scalarMultBaseEncoded([B[BI)V

    const/4 v5, 0x0

    .line 38
    move-object v3, v4

    move-object v4, v0

    move-object v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    invoke-static/range {v1 .. v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implSign(Lorg/bouncycastle/crypto/Digest;[B[B[BI[BB[BII[BI)V

    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ctx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static implSign([BI[BI[BB[BII[BI)V
    .locals 13

    .line 40
    invoke-static/range {p4 .. p5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->checkContextVar([BB)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->createDigest()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    .line 46
    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v2, v0, [B

    .line 48
    const/16 v0, 0x20

    move-object v3, p0

    move v4, p1

    invoke-interface {v1, p0, p1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 49
    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 51
    new-array v0, v0, [B

    .line 52
    invoke-static {v2, v3, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pruneScalar([BI[B)V

    .line 54
    move-object v3, v0

    move-object v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    invoke-static/range {v1 .. v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implSign(Lorg/bouncycastle/crypto/Digest;[B[B[BI[BB[BII[BI)V

    return-void

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ctx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static implVerify([BI[BI[BB[BII)Z
    .locals 5

    .line 1
    invoke-static {p4, p5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->checkContextVar([BB)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p1, 0x20

    .line 6
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    add-int/lit8 p1, p1, 0x40

    .line 7
    invoke-static {p0, v0, p1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    .line 9
    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->checkPointVar([B)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 13
    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->checkScalarVar([B)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 18
    :cond_1
    new-instance p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;

    const/4 v2, 0x0

    invoke-direct {p1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    const/4 v3, 0x1

    .line 19
    invoke-static {p2, p3, v3, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decodePointVar([BIZLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;)Z

    move-result v3

    if-nez v3, :cond_2

    return v0

    .line 24
    :cond_2
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->createDigest()Lorg/bouncycastle/crypto/Digest;

    move-result-object v3

    .line 25
    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    new-array v4, v4, [B

    .line 27
    invoke-static {v3, p5, p4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->dom2(Lorg/bouncycastle/crypto/Digest;B[B)V

    .line 28
    const/16 p4, 0x20

    invoke-interface {v3, v1, v0, p4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 29
    invoke-interface {v3, p2, p3, p4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 30
    invoke-interface {v3, p6, p7, p8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 31
    invoke-interface {v3, v4, v0}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 33
    invoke-static {v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->reduceScalar([B)[B

    move-result-object p2

    .line 35
    const/16 p3, 0x8

    new-array p5, p3, [I

    .line 36
    invoke-static {p0, v0, p5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decodeScalar([BI[I)V

    .line 38
    new-array p0, p3, [I

    .line 39
    invoke-static {p2, v0, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decodeScalar([BI[I)V

    .line 41
    new-instance p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;

    invoke-direct {p2, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    .line 42
    invoke-static {p5, p0, p1, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->scalarMultStraussVar([I[ILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    .line 44
    new-array p0, p4, [B

    .line 45
    invoke-static {p2, p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->encodePoint(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;[BI)V

    .line 47
    invoke-static {p0, v1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p0

    return p0

    .line 48
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ctx"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static pointAddPrecomp(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V
    .locals 9

    .line 1
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v0

    .line 2
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v1

    .line 3
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v2

    .line 4
    iget-object v3, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->u:[I

    .line 5
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v4

    .line 6
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v5

    .line 7
    iget-object v6, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->v:[I

    .line 9
    iget-object v7, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    iget-object v8, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v7, v8, v1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->apm([I[I[I[I)V

    .line 10
    iget-object v7, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ymx_h:[I

    invoke-static {v0, v7, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 11
    iget-object v7, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ypx_h:[I

    invoke-static {v1, v7, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 12
    iget-object v7, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->u:[I

    iget-object v8, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->v:[I

    invoke-static {v7, v8, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 13
    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->xyd:[I

    invoke-static {v2, p0, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 14
    invoke-static {v1, v0, v6, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->apm([I[I[I[I)V

    .line 15
    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    invoke-static {p0, v2, v5, v4}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->apm([I[I[I[I)V

    .line 16
    invoke-static {v5}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->carry([I)V

    .line 17
    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v3, v4, p0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 18
    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    invoke-static {v5, v6, p0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 19
    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    invoke-static {v4, v5, p0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    return-void
.end method

.method private static pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V
    .locals 13

    .line 1
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v0

    .line 2
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v1

    .line 3
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v2

    .line 4
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v3

    .line 5
    iget-object v4, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->u:[I

    .line 6
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v5

    .line 7
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v6

    .line 8
    iget-object v7, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->v:[I

    if-eqz p0, :cond_0

    move-object v8, v2

    move-object v9, v3

    move-object p0, v5

    move-object v10, v6

    goto :goto_0

    :cond_0
    move-object v9, v2

    move-object v8, v3

    move-object v10, v5

    move-object p0, v6

    .line 20
    :goto_0
    iget-object v11, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    iget-object v12, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v11, v12, v1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->apm([I[I[I[I)V

    .line 21
    iget-object v11, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->y:[I

    iget-object v12, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->x:[I

    invoke-static {v11, v12, v8, v9}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->apm([I[I[I[I)V

    .line 22
    invoke-static {v0, v2, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 23
    invoke-static {v1, v3, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 24
    iget-object v8, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->u:[I

    iget-object v9, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->v:[I

    invoke-static {v8, v9, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 25
    iget-object v8, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->t:[I

    invoke-static {v2, v8, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 26
    sget-object v8, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->C_d2:[I

    invoke-static {v2, v8, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 27
    iget-object v8, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    iget-object p1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->z:[I

    invoke-static {v8, p1, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 28
    invoke-static {v3, v3, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->add([I[I[I)V

    .line 29
    invoke-static {v1, v0, v7, v4}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->apm([I[I[I[I)V

    .line 30
    invoke-static {v3, v2, p0, v10}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->apm([I[I[I[I)V

    .line 31
    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->carry([I)V

    .line 32
    iget-object p0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v4, v5, p0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 33
    iget-object p0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    invoke-static {v6, v7, p0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 34
    iget-object p0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    invoke-static {v5, v6, p0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    return-void
.end method

.method private static pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;)V
    .locals 17

    .line 35
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v3

    .line 36
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v4

    .line 37
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v5

    .line 38
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v6

    .line 39
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v7

    .line 40
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v8

    .line 41
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v9

    .line 42
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v10

    if-eqz p0, :cond_0

    move-object v12, v5

    move-object v13, v6

    move-object v11, v8

    move-object v14, v9

    goto :goto_0

    :cond_0
    move-object v13, v5

    move-object v12, v6

    move-object v14, v8

    move-object v11, v9

    .line 54
    :goto_0
    iget-object v15, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->y:[I

    move-object/from16 v16, v9

    iget-object v9, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->x:[I

    invoke-static {v15, v9, v4, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->apm([I[I[I[I)V

    .line 55
    iget-object v9, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->y:[I

    iget-object v15, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->x:[I

    invoke-static {v9, v15, v12, v13}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->apm([I[I[I[I)V

    .line 56
    invoke-static {v3, v5, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 57
    invoke-static {v4, v6, v4}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 58
    iget-object v9, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->t:[I

    iget-object v12, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->t:[I

    invoke-static {v9, v12, v5}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 59
    sget-object v9, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->C_d2:[I

    invoke-static {v5, v9, v5}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 60
    iget-object v0, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->z:[I

    iget-object v1, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->z:[I

    invoke-static {v0, v1, v6}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 61
    invoke-static {v6, v6, v6}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->add([I[I[I)V

    .line 62
    invoke-static {v4, v3, v10, v7}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->apm([I[I[I[I)V

    .line 63
    invoke-static {v6, v5, v11, v14}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->apm([I[I[I[I)V

    .line 64
    invoke-static {v11}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->carry([I)V

    .line 65
    iget-object v0, v2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->x:[I

    invoke-static {v7, v8, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 66
    iget-object v0, v2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->y:[I

    move-object/from16 v1, v16

    invoke-static {v1, v10, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 67
    iget-object v0, v2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->z:[I

    invoke-static {v8, v1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 68
    iget-object v0, v2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->t:[I

    invoke-static {v7, v10, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    return-void
.end method

.method private static pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;
    .locals 4

    .line 1
    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    .line 2
    iget-object v1, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    iget-object v2, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->x:[I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->copy([II[II)V

    .line 3
    iget-object v1, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    iget-object v2, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->y:[I

    invoke-static {v1, v3, v2, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->copy([II[II)V

    .line 4
    iget-object v1, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    iget-object v2, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->z:[I

    invoke-static {v1, v3, v2, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->copy([II[II)V

    .line 5
    iget-object v1, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->u:[I

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->v:[I

    iget-object v2, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->t:[I

    invoke-static {v1, p0, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    return-object v0
.end method

.method private static pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;)Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;
    .locals 4

    .line 6
    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    .line 7
    iget-object v1, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->x:[I

    iget-object v2, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->x:[I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->copy([II[II)V

    .line 8
    iget-object v1, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->y:[I

    iget-object v2, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->y:[I

    invoke-static {v1, v3, v2, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->copy([II[II)V

    .line 9
    iget-object v1, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->z:[I

    iget-object v2, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->z:[I

    invoke-static {v1, v3, v2, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->copy([II[II)V

    .line 10
    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->t:[I

    iget-object v1, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->t:[I

    invoke-static {p0, v3, v1, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->copy([II[II)V

    return-object v0
.end method

.method private static pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V
    .locals 8

    .line 1
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v0

    .line 2
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v1

    .line 3
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v2

    .line 4
    iget-object v3, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->u:[I

    .line 5
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v4

    .line 6
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v5

    .line 7
    iget-object v6, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->v:[I

    .line 9
    iget-object v7, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v7, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([I[I)V

    .line 10
    iget-object v7, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    invoke-static {v7, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([I[I)V

    .line 11
    iget-object v7, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    invoke-static {v7, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([I[I)V

    .line 12
    invoke-static {v2, v2, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->add([I[I[I)V

    .line 13
    invoke-static {v0, v1, v6, v5}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->apm([I[I[I[I)V

    .line 14
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    iget-object v1, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    invoke-static {v0, v1, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->add([I[I[I)V

    .line 15
    invoke-static {v3, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([I[I)V

    .line 16
    invoke-static {v6, v3, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sub([I[I[I)V

    .line 17
    invoke-static {v2, v5, v4}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->add([I[I[I)V

    .line 18
    invoke-static {v4}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->carry([I)V

    .line 19
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v3, v4, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 20
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    invoke-static {v5, v6, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 21
    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    invoke-static {v4, v5, p0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    return-void
.end method

.method private static pointExtendXY(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->one([I)V

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    iget-object v1, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->u:[I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->copy([II[II)V

    .line 3
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->v:[I

    invoke-static {v0, v2, p0, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->copy([II[II)V

    return-void
.end method

.method private static pointExtendXY(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->z:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->one([I)V

    .line 5
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->x:[I

    iget-object v1, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->y:[I

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->t:[I

    invoke-static {v0, v1, p0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    return-void
.end method

.method private static pointLookup(IILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;)V
    .locals 10

    const/16 v0, 0x8

    mul-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x3

    mul-int/lit8 p0, p0, 0xa

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    xor-int v2, v1, p1

    add-int/lit8 v2, v2, -0x1

    shr-int/lit8 v9, v2, 0x1f

    .line 1
    sget-object v4, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->precompBase:[I

    iget-object v6, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ypx_h:[I

    const/16 v2, 0xa

    const/4 v7, 0x0

    move v3, v9

    move v5, p0

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/math/raw/Nat;->cmov(II[II[II)V

    add-int/lit8 p0, p0, 0xa

    .line 2
    sget-object v5, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->precompBase:[I

    iget-object v7, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ymx_h:[I

    const/16 v3, 0xa

    const/4 v8, 0x0

    move v4, v9

    move v6, p0

    invoke-static/range {v3 .. v8}, Lorg/bouncycastle/math/raw/Nat;->cmov(II[II[II)V

    add-int/lit8 p0, p0, 0xa

    .line 3
    sget-object v5, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->precompBase:[I

    iget-object v7, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->xyd:[I

    move v6, p0

    invoke-static/range {v3 .. v8}, Lorg/bouncycastle/math/raw/Nat;->cmov(II[II[II)V

    add-int/lit8 p0, p0, 0xa

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static pointPrecompVar(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;I)[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;
    .locals 6

    .line 1
    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    .line 2
    const/4 v2, 0x0

    invoke-static {v2, p0, p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;)V

    .line 4
    new-array v3, p1, [Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;

    .line 5
    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;)Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;

    move-result-object p0

    aput-object p0, v3, v2

    const/4 p0, 0x1

    :goto_0
    if-ge p0, p1, :cond_0

    add-int/lit8 v4, p0, -0x1

    .line 8
    aget-object v4, v3, v4

    new-instance v5, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;

    invoke-direct {v5, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    aput-object v5, v3, p0

    invoke-static {v2, v4, v0, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private static pointSetNeutral(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->zero([I)V

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->one([I)V

    .line 3
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->one([I)V

    .line 4
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->u:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->zero([I)V

    .line 5
    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->v:[I

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->one([I)V

    return-void
.end method

.method private static pointSetNeutral(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->zero([I)V

    .line 7
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->y:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->one([I)V

    .line 8
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->z:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->one([I)V

    .line 9
    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->t:[I

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->zero([I)V

    return-void
.end method

.method public static precompute()V
    .locals 16

    .line 1
    sget-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->precompLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->precompBase:[I

    if-eqz v0, :cond_0

    .line 5
    monitor-exit v1

    return-void

    .line 10
    :cond_0
    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    .line 11
    sget-object v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->B_x:[I

    iget-object v4, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->x:[I

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v5}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->copy([II[II)V

    .line 12
    sget-object v4, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->B_y:[I

    iget-object v6, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->y:[I

    invoke-static {v4, v5, v6, v5}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->copy([II[II)V

    .line 13
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointExtendXY(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;)V

    const/16 v6, 0x20

    .line 15
    invoke-static {v0, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointPrecompVar(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;I)[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->precompBaseTable:[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;

    .line 18
    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;

    invoke-direct {v0, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    .line 19
    iget-object v6, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v3, v5, v6, v5}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->copy([II[II)V

    .line 20
    iget-object v3, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    invoke-static {v4, v5, v3, v5}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->copy([II[II)V

    .line 21
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointExtendXY(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    const/16 v3, 0x780

    .line 23
    new-array v3, v3, [I

    sput-object v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->precompBase:[I

    move v3, v5

    move v4, v3

    :goto_0
    const/16 v6, 0x8

    if-ge v3, v6, :cond_6

    .line 28
    const/4 v7, 0x4

    new-array v8, v7, [Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;

    .line 30
    new-instance v9, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;

    invoke-direct {v9, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    .line 31
    invoke-static {v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointSetNeutral(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;)V

    move v10, v5

    :goto_1
    const/4 v11, 0x1

    if-ge v10, v7, :cond_2

    .line 35
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;

    move-result-object v12

    .line 36
    invoke-static {v11, v9, v12, v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;)V

    .line 37
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    .line 39
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;

    move-result-object v12

    aput-object v12, v8, v10

    add-int v12, v3, v10

    const/16 v13, 0xa

    if-eq v12, v13, :cond_1

    :goto_2
    if-ge v11, v6, :cond_1

    .line 45
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    nop

    .line 50
    new-array v7, v6, [Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;

    .line 52
    aput-object v9, v7, v5

    move v9, v5

    move v10, v11

    :goto_3
    const/4 v12, 0x3

    if-ge v9, v12, :cond_4

    shl-int v12, v11, v9

    move v13, v5

    :goto_4
    if-ge v13, v12, :cond_3

    sub-int v14, v10, v12

    .line 59
    aget-object v14, v7, v14

    aget-object v15, v8, v9

    new-instance v11, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;

    invoke-direct {v11, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    aput-object v11, v7, v10

    invoke-static {v5, v14, v15, v11}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;)V

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v9, v9, 0x1

    const/4 v11, 0x1

    goto :goto_3

    :cond_4
    move v8, v5

    :goto_5
    if-ge v8, v6, :cond_5

    .line 67
    aget-object v9, v7, v8

    .line 69
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v10

    .line 70
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v11

    .line 72
    iget-object v12, v9, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->z:[I

    invoke-static {v12, v12, v10}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->add([I[I[I)V

    .line 74
    invoke-static {v10, v11}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->inv([I[I)V

    .line 75
    iget-object v12, v9, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->x:[I

    invoke-static {v12, v11, v10}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 76
    iget-object v9, v9, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;->y:[I

    invoke-static {v9, v11, v11}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 78
    new-instance v9, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;

    invoke-direct {v9, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    .line 79
    iget-object v12, v9, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ypx_h:[I

    iget-object v13, v9, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ymx_h:[I

    invoke-static {v11, v10, v12, v13}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->apm([I[I[I[I)V

    .line 80
    iget-object v12, v9, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->xyd:[I

    invoke-static {v10, v11, v12}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 81
    iget-object v10, v9, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->xyd:[I

    sget-object v11, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->C_d4:[I

    invoke-static {v10, v11, v10}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 83
    iget-object v10, v9, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ypx_h:[I

    invoke-static {v10}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->normalize([I)V

    .line 84
    iget-object v10, v9, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ymx_h:[I

    invoke-static {v10}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->normalize([I)V

    .line 87
    iget-object v10, v9, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ypx_h:[I

    sget-object v11, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->precompBase:[I

    invoke-static {v10, v5, v11, v4}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->copy([II[II)V

    add-int/lit8 v4, v4, 0xa

    .line 88
    iget-object v10, v9, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ymx_h:[I

    sget-object v11, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->precompBase:[I

    invoke-static {v10, v5, v11, v4}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->copy([II[II)V

    add-int/lit8 v4, v4, 0xa

    .line 89
    iget-object v9, v9, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->xyd:[I

    sget-object v10, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->precompBase:[I

    invoke-static {v9, v5, v10, v4}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->copy([II[II)V

    add-int/lit8 v4, v4, 0xa

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 94
    :cond_6
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static pruneScalar([BI[B)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/16 v1, 0x20

    invoke-static {p0, p1, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    aget-byte p0, p2, v0

    and-int/lit16 p0, p0, 0xf8

    int-to-byte p0, p0

    aput-byte p0, p2, v0

    .line 4
    const/16 p0, 0x1f

    aget-byte p1, p2, p0

    and-int/lit8 p1, p1, 0x7f

    int-to-byte p1, p1

    aput-byte p1, p2, p0

    or-int/lit8 p1, p1, 0x40

    int-to-byte p1, p1

    .line 5
    aput-byte p1, p2, p0

    return-void
.end method

.method private static reduceScalar([B)[B
    .locals 55

    .line 1
    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decode32([BI)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 2
    const/4 v6, 0x4

    invoke-static {v0, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decode24([BI)I

    move-result v7

    shl-int/2addr v7, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    .line 3
    const/4 v9, 0x7

    invoke-static {v0, v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decode32([BI)I

    move-result v10

    int-to-long v10, v10

    and-long/2addr v10, v4

    .line 4
    const/16 v12, 0xb

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decode24([BI)I

    move-result v12

    shl-int/2addr v12, v6

    int-to-long v12, v12

    and-long/2addr v12, v4

    .line 5
    const/16 v14, 0xe

    invoke-static {v0, v14}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decode32([BI)I

    move-result v15

    int-to-long v14, v15

    and-long/2addr v14, v4

    .line 6
    const/16 v9, 0x12

    invoke-static {v0, v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decode24([BI)I

    move-result v9

    shl-int/2addr v9, v6

    move-wide/from16 v16, v2

    int-to-long v1, v9

    and-long/2addr v1, v4

    .line 7
    const/16 v3, 0x15

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decode32([BI)I

    move-result v9

    move-wide/from16 v19, v7

    int-to-long v6, v9

    and-long/2addr v6, v4

    .line 8
    const/16 v8, 0x19

    invoke-static {v0, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decode24([BI)I

    move-result v8

    const/4 v9, 0x4

    shl-int/2addr v8, v9

    move-wide/from16 v21, v10

    int-to-long v9, v8

    and-long v8, v9, v4

    .line 9
    const/16 v10, 0x1c

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decode32([BI)I

    move-result v11

    int-to-long v10, v11

    and-long/2addr v10, v4

    .line 10
    const/16 v3, 0x20

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decode24([BI)I

    move-result v24

    const/16 v18, 0x4

    shl-int/lit8 v3, v24, 0x4

    move-wide/from16 v25, v12

    int-to-long v12, v3

    and-long/2addr v12, v4

    .line 11
    const/16 v3, 0x23

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decode32([BI)I

    move-result v3

    move-wide/from16 v27, v14

    int-to-long v14, v3

    and-long/2addr v14, v4

    .line 12
    const/16 v3, 0x27

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v29, v1

    int-to-long v1, v3

    and-long/2addr v1, v4

    .line 13
    const/16 v3, 0x2a

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decode32([BI)I

    move-result v3

    move-wide/from16 v31, v6

    int-to-long v6, v3

    and-long/2addr v6, v4

    .line 14
    const/16 v3, 0x2e

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v33, v8

    int-to-long v8, v3

    and-long/2addr v8, v4

    .line 15
    const/16 v3, 0x31

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decode32([BI)I

    move-result v3

    move-wide/from16 v35, v10

    int-to-long v10, v3

    and-long/2addr v10, v4

    .line 16
    const/16 v3, 0x35

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v37, v10

    int-to-long v10, v3

    and-long/2addr v10, v4

    .line 17
    const/16 v3, 0x38

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decode32([BI)I

    move-result v3

    move-wide/from16 v39, v10

    int-to-long v10, v3

    and-long/2addr v10, v4

    .line 18
    const/16 v3, 0x3c

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v41, v10

    int-to-long v10, v3

    and-long v3, v10, v4

    .line 19
    const/16 v5, 0x3f

    aget-byte v0, v0, v5

    int-to-long v10, v0

    const-wide/16 v43, 0xff

    and-long v10, v10, v43

    const-wide/32 v43, -0x30a2c13

    mul-long v45, v10, v43

    sub-long v12, v12, v45

    const-wide/32 v45, 0x12631a6

    mul-long v47, v10, v45

    sub-long v14, v14, v47

    const-wide/32 v47, 0x79cd658

    mul-long v49, v10, v47

    sub-long v1, v1, v49

    const-wide/32 v49, -0x6215d1

    mul-long v51, v10, v49

    sub-long v6, v6, v51

    const-wide/16 v51, 0x14df

    mul-long v10, v10, v51

    sub-long/2addr v8, v10

    const/16 v0, 0x1c

    shr-long v10, v41, v0

    add-long/2addr v3, v10

    const-wide/32 v10, 0xfffffff

    and-long v41, v41, v10

    mul-long v53, v3, v43

    sub-long v35, v35, v53

    mul-long v53, v3, v45

    sub-long v12, v12, v53

    mul-long v53, v3, v47

    sub-long v14, v14, v53

    mul-long v53, v3, v49

    sub-long v1, v1, v53

    mul-long v3, v3, v51

    sub-long/2addr v6, v3

    mul-long v3, v41, v43

    sub-long v3, v33, v3

    mul-long v33, v41, v45

    sub-long v35, v35, v33

    mul-long v33, v41, v47

    sub-long v12, v12, v33

    mul-long v33, v41, v49

    sub-long v14, v14, v33

    mul-long v41, v41, v51

    sub-long v1, v1, v41

    const/16 v0, 0x1c

    shr-long v33, v37, v0

    add-long v33, v39, v33

    and-long v37, v37, v10

    mul-long v39, v33, v43

    sub-long v31, v31, v39

    mul-long v39, v33, v45

    sub-long v3, v3, v39

    mul-long v39, v33, v47

    sub-long v35, v35, v39

    mul-long v39, v33, v49

    sub-long v12, v12, v39

    mul-long v33, v33, v51

    sub-long v14, v14, v33

    mul-long v33, v37, v43

    sub-long v29, v29, v33

    mul-long v33, v37, v45

    sub-long v31, v31, v33

    mul-long v33, v37, v47

    sub-long v3, v3, v33

    mul-long v33, v37, v49

    sub-long v35, v35, v33

    mul-long v37, v37, v51

    sub-long v12, v12, v37

    const/16 v0, 0x1c

    shr-long v33, v6, v0

    add-long v8, v8, v33

    and-long v5, v6, v10

    mul-long v33, v8, v43

    sub-long v27, v27, v33

    mul-long v33, v8, v45

    sub-long v29, v29, v33

    mul-long v33, v8, v47

    sub-long v31, v31, v33

    mul-long v33, v8, v49

    sub-long v3, v3, v33

    mul-long v8, v8, v51

    sub-long v35, v35, v8

    const/16 v0, 0x1c

    shr-long v7, v1, v0

    add-long/2addr v5, v7

    and-long v0, v1, v10

    mul-long v7, v5, v43

    sub-long v7, v25, v7

    mul-long v25, v5, v45

    sub-long v27, v27, v25

    mul-long v25, v5, v47

    sub-long v29, v29, v25

    mul-long v25, v5, v49

    sub-long v31, v31, v25

    mul-long v5, v5, v51

    sub-long/2addr v3, v5

    const/16 v2, 0x1c

    shr-long v5, v14, v2

    add-long/2addr v0, v5

    and-long v5, v14, v10

    mul-long v14, v0, v43

    sub-long v14, v21, v14

    mul-long v21, v0, v45

    sub-long v7, v7, v21

    mul-long v21, v0, v47

    sub-long v27, v27, v21

    mul-long v21, v0, v49

    sub-long v29, v29, v21

    mul-long v0, v0, v51

    sub-long v31, v31, v0

    const/16 v0, 0x1c

    shr-long v1, v12, v0

    add-long/2addr v5, v1

    and-long v0, v12, v10

    mul-long v12, v5, v43

    sub-long v12, v19, v12

    mul-long v18, v5, v45

    sub-long v14, v14, v18

    mul-long v18, v5, v47

    sub-long v7, v7, v18

    mul-long v18, v5, v49

    sub-long v27, v27, v18

    mul-long v5, v5, v51

    sub-long v29, v29, v5

    const/16 v2, 0x1c

    shr-long v5, v3, v2

    add-long v35, v35, v5

    and-long/2addr v3, v10

    shr-long v5, v35, v2

    add-long/2addr v0, v5

    and-long v5, v35, v10

    const/16 v2, 0x1b

    ushr-long v18, v5, v2

    add-long v0, v0, v18

    mul-long v20, v0, v43

    sub-long v16, v16, v20

    mul-long v20, v0, v45

    sub-long v12, v12, v20

    mul-long v20, v0, v47

    sub-long v14, v14, v20

    mul-long v20, v0, v49

    sub-long v7, v7, v20

    mul-long v0, v0, v51

    sub-long v27, v27, v0

    const/16 v0, 0x1c

    shr-long v1, v16, v0

    add-long/2addr v12, v1

    and-long v1, v16, v10

    shr-long v16, v12, v0

    add-long v14, v14, v16

    and-long/2addr v12, v10

    shr-long v16, v14, v0

    add-long v7, v7, v16

    and-long/2addr v14, v10

    shr-long v16, v7, v0

    add-long v27, v27, v16

    and-long/2addr v7, v10

    shr-long v16, v27, v0

    add-long v29, v29, v16

    and-long v16, v27, v10

    shr-long v20, v29, v0

    add-long v31, v31, v20

    and-long v20, v29, v10

    shr-long v22, v31, v0

    add-long v3, v3, v22

    and-long v25, v31, v10

    shr-long v22, v3, v0

    add-long v5, v5, v22

    and-long/2addr v3, v10

    shr-long v27, v5, v0

    and-long/2addr v5, v10

    sub-long v27, v27, v18

    and-long v18, v27, v43

    add-long v1, v1, v18

    and-long v18, v27, v45

    add-long v12, v12, v18

    and-long v18, v27, v47

    add-long v14, v14, v18

    and-long v18, v27, v49

    add-long v7, v7, v18

    and-long v18, v27, v51

    add-long v16, v16, v18

    const/16 v0, 0x1c

    shr-long v18, v1, v0

    add-long v12, v12, v18

    and-long/2addr v1, v10

    shr-long v18, v12, v0

    add-long v14, v14, v18

    and-long/2addr v12, v10

    shr-long v18, v14, v0

    add-long v7, v7, v18

    and-long/2addr v14, v10

    shr-long v18, v7, v0

    add-long v16, v16, v18

    and-long/2addr v7, v10

    shr-long v18, v16, v0

    add-long v20, v20, v18

    and-long v16, v16, v10

    shr-long v18, v20, v0

    add-long v25, v25, v18

    and-long v18, v20, v10

    shr-long v20, v25, v0

    add-long v3, v3, v20

    and-long v20, v25, v10

    shr-long v22, v3, v0

    add-long v5, v5, v22

    and-long/2addr v3, v10

    .line 126
    const/16 v9, 0x20

    new-array v9, v9, [B

    shl-long v10, v12, v0

    or-long/2addr v1, v10

    .line 127
    const/4 v10, 0x0

    invoke-static {v1, v2, v9, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->encode56(J[BI)V

    shl-long v1, v7, v0

    or-long/2addr v1, v14

    .line 128
    const/4 v7, 0x7

    invoke-static {v1, v2, v9, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->encode56(J[BI)V

    shl-long v1, v18, v0

    or-long v1, v16, v1

    .line 129
    const/16 v7, 0xe

    invoke-static {v1, v2, v9, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->encode56(J[BI)V

    shl-long v1, v3, v0

    or-long v1, v20, v1

    .line 130
    const/16 v3, 0x15

    invoke-static {v1, v2, v9, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->encode56(J[BI)V

    long-to-int v1, v5

    .line 131
    invoke-static {v1, v9, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->encode32(I[BI)V

    return-object v9
.end method

.method private static scalarMultBase([BLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V
    .locals 9

    .line 1
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->precompute()V

    .line 3
    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointSetNeutral(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    .line 5
    const/16 v0, 0x8

    new-array v1, v0, [I

    .line 6
    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decodeScalar([BI[I)V

    .line 11
    aget p0, v1, v2

    not-int p0, p0

    const/4 v3, 0x1

    and-int/2addr p0, v3

    sget-object v4, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->L:[I

    invoke-static {v0, p0, v1, v4, v1}, Lorg/bouncycastle/math/raw/Nat;->cadd(II[I[I[I)I

    .line 13
    invoke-static {v0, v1, v3}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    move p0, v2

    :goto_0
    if-ge p0, v0, :cond_0

    .line 17
    aget v4, v1, p0

    invoke-static {v4}, Lorg/bouncycastle/math/raw/Interleave;->shuffle2(I)I

    move-result v4

    aput v4, v1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 21
    :cond_0
    new-instance p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    const/16 v4, 0x1c

    :goto_1
    move v5, v2

    :goto_2
    if-ge v5, v0, :cond_1

    .line 28
    aget v6, v1, v5

    ushr-int/2addr v6, v4

    ushr-int/lit8 v7, v6, 0x3

    and-int/2addr v7, v3

    neg-int v8, v7

    xor-int/2addr v6, v8

    and-int/lit8 v6, v6, 0x7

    .line 35
    invoke-static {v5, v6, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointLookup(IILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;)V

    .line 37
    iget-object v6, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ypx_h:[I

    iget-object v8, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ymx_h:[I

    invoke-static {v7, v6, v8}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->cswap(I[I[I)V

    .line 38
    iget-object v6, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->xyd:[I

    invoke-static {v7, v6}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->cnegate(I[I)V

    .line 40
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointAddPrecomp(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, -0x4

    if-gez v4, :cond_2

    return-void

    .line 48
    :cond_2
    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    goto :goto_1
.end method

.method private static scalarMultBaseEncoded([B[BI)V
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    .line 2
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->scalarMultBase([BLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    .line 3
    invoke-static {v0, p1, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->encodePoint(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;[BI)V

    return-void
.end method

.method public static scalarMultBaseYZ(Lorg/bouncycastle/math/ec/rfc7748/X25519$Friend;[BI[I[I)V
    .locals 0

    if-eqz p0, :cond_0

    const/16 p0, 0x20

    .line 1
    new-array p0, p0, [B

    .line 2
    invoke-static {p1, p2, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pruneScalar([BI[B)V

    .line 4
    new-instance p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$1;)V

    .line 5
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->scalarMultBase([BLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    .line 6
    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    const/4 p2, 0x0

    invoke-static {p0, p2, p3, p2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->copy([II[II)V

    .line 7
    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    invoke-static {p0, p2, p4, p2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->copy([II[II)V

    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "This method is only for use by X25519"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static scalarMultStraussVar([I[ILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V
    .locals 6

    .line 1
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->precompute()V

    .line 5
    const/4 v0, 0x7

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->getWNAF([II)[B

    move-result-object p0

    .line 6
    const/4 v0, 0x5

    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->getWNAF([II)[B

    move-result-object p1

    .line 8
    const/16 v0, 0x8

    invoke-static {p2, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointPrecompVar(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;I)[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;

    move-result-object p2

    .line 10
    invoke-static {p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointSetNeutral(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    const/16 v0, 0xff

    :goto_0
    if-lez v0, :cond_0

    .line 13
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    or-int/2addr v1, v2

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 20
    :cond_0
    :goto_1
    aget-byte v1, p0, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    shr-int/lit8 v4, v1, 0x1f

    xor-int/2addr v1, v4

    ushr-int/2addr v1, v3

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_2

    :cond_1
    move v4, v2

    .line 26
    :goto_2
    sget-object v5, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->precompBaseTable:[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;

    aget-object v1, v5, v1

    invoke-static {v4, v1, p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    .line 29
    :cond_2
    aget-byte v1, p1, v0

    if-eqz v1, :cond_4

    shr-int/lit8 v4, v1, 0x1f

    xor-int/2addr v1, v4

    ushr-int/2addr v1, v3

    if-eqz v4, :cond_3

    move v2, v3

    .line 35
    :cond_3
    aget-object v1, p2, v1

    invoke-static {v2, v1, p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    :cond_4
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_5

    return-void

    .line 43
    :cond_5
    invoke-static {p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    goto :goto_1
.end method

.method public static sign([BI[BII[BI)V
    .locals 9

    .line 1
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implSign([BI[BB[BII[BI)V

    return-void
.end method

.method public static sign([BI[BI[BII[BI)V
    .locals 11

    .line 2
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v0 .. v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implSign([BI[BI[BB[BII[BI)V

    return-void
.end method

.method public static sign([BI[BI[B[BII[BI)V
    .locals 11

    .line 4
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v0 .. v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implSign([BI[BI[BB[BII[BI)V

    return-void
.end method

.method public static sign([BI[B[BII[BI)V
    .locals 9

    .line 3
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implSign([BI[BB[BII[BI)V

    return-void
.end method

.method public static signPrehash([BI[BI[BLorg/bouncycastle/crypto/Digest;[BI)V
    .locals 12

    .line 13
    const/16 v0, 0x40

    new-array v7, v0, [B

    .line 14
    const/4 v1, 0x0

    move-object/from16 v2, p5

    invoke-interface {v2, v7, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x40

    .line 21
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-static/range {v1 .. v11}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implSign([BI[BI[BB[BII[BI)V

    return-void

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ph"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static signPrehash([BI[BI[B[BI[BI)V
    .locals 11

    .line 2
    const/4 v5, 0x1

    const/16 v8, 0x40

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v0 .. v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implSign([BI[BI[BB[BII[BI)V

    return-void
.end method

.method public static signPrehash([BI[BLorg/bouncycastle/crypto/Digest;[BI)V
    .locals 10

    .line 3
    const/16 v0, 0x40

    new-array v5, v0, [B

    .line 4
    const/4 v1, 0x0

    invoke-interface {p3, v5, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    move-result p3

    if-ne v0, p3, :cond_0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x40

    .line 11
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v8, p4

    move v9, p5

    invoke-static/range {v1 .. v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implSign([BI[BB[BII[BI)V

    return-void

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ph"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static signPrehash([BI[B[BI[BI)V
    .locals 9

    .line 1
    const/4 v3, 0x1

    const/16 v6, 0x40

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object v7, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implSign([BI[BB[BII[BI)V

    return-void
.end method

.method public static verify([BI[BI[BII)Z
    .locals 9

    .line 1
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implVerify([BI[BI[BB[BII)Z

    move-result p0

    return p0
.end method

.method public static verify([BI[BI[B[BII)Z
    .locals 9

    .line 2
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implVerify([BI[BI[BB[BII)Z

    move-result v0

    return v0
.end method

.method public static verifyPrehash([BI[BI[BLorg/bouncycastle/crypto/Digest;)Z
    .locals 10

    .line 2
    const/16 v0, 0x40

    new-array v7, v0, [B

    .line 3
    const/4 v1, 0x0

    invoke-interface {p5, v7, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    move-result p5

    if-ne v0, p5, :cond_0

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x40

    .line 10
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implVerify([BI[BI[BB[BII)Z

    move-result p0

    return p0

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ph"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static verifyPrehash([BI[BI[B[BI)Z
    .locals 9

    .line 1
    const/4 v5, 0x1

    const/16 v8, 0x40

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    move v7, p6

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implVerify([BI[BI[BB[BII)Z

    move-result p0

    return p0
.end method
