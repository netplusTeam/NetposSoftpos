.class public final enum Lorg/apache/sshd/common/cipher/ECCurves;
.super Ljava/lang/Enum;
.source "ECCurves.java"

# interfaces
.implements Lorg/apache/sshd/common/keyprovider/KeyTypeIndicator;
.implements Lorg/apache/sshd/common/keyprovider/KeySizeIndicator;
.implements Lorg/apache/sshd/common/NamedResource;
.implements Lorg/apache/sshd/common/OptionalFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;,
        Lorg/apache/sshd/common/cipher/ECCurves$Constants;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/sshd/common/cipher/ECCurves;",
        ">;",
        "Lorg/apache/sshd/common/keyprovider/KeyTypeIndicator;",
        "Lorg/apache/sshd/common/keyprovider/KeySizeIndicator;",
        "Lorg/apache/sshd/common/NamedResource;",
        "Lorg/apache/sshd/common/OptionalFeature;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/sshd/common/cipher/ECCurves;

.field public static final BY_KEY_SIZE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/apache/sshd/common/cipher/ECCurves;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_TYPES:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NAMES:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SORTED_KEY_SIZE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/cipher/ECCurves;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/common/cipher/ECCurves;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum nistp256:Lorg/apache/sshd/common/cipher/ECCurves;

.field public static final enum nistp384:Lorg/apache/sshd/common/cipher/ECCurves;

.field public static final enum nistp521:Lorg/apache/sshd/common/cipher/ECCurves;


# instance fields
.field private final digestFactory:Lorg/apache/sshd/common/digest/DigestFactory;

.field private final keySize:I

.field private final keyType:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final numOctets:I

.field private final oidString:Ljava/lang/String;

.field private final oidValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final params:Ljava/security/spec/ECParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 61
    new-instance v8, Lorg/apache/sshd/common/cipher/ECCurves;

    const/4 v0, 0x7

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    new-instance v5, Ljava/security/spec/ECParameterSpec;

    new-instance v0, Ljava/security/spec/EllipticCurve;

    new-instance v1, Ljava/security/spec/ECFieldFp;

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF"

    const/16 v9, 0x10

    invoke-direct {v2, v3, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v2}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFC"

    invoke-direct {v2, v3, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v3, Ljava/math/BigInteger;

    const-string v6, "5ac635d8aa3a93e7b3ebbd55769886bc651d06b0cc53b0f63bce3c3e27d2604b"

    invoke-direct {v3, v6, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2, v3}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v1, Ljava/security/spec/ECPoint;

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "6B17D1F2E12C4247F8BCE6E563A440F277037D812DEB33A0F4A13945D898C296"

    invoke-direct {v2, v3, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v3, Ljava/math/BigInteger;

    const-string v6, "4FE342E2FE1A7F9B8EE7EB4A7C0F9E162BCE33576B315ECECBB6406837BF51F5"

    invoke-direct {v3, v6, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v2, v3}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "FFFFFFFF00000000FFFFFFFFFFFFFFFFBCE6FAADA7179E84F3B9CAC2FC632551"

    invoke-direct {v2, v3, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v10, 0x1

    invoke-direct {v5, v0, v1, v2, v10}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    sget-object v7, Lorg/apache/sshd/common/digest/BuiltinDigests;->sha256:Lorg/apache/sshd/common/digest/BuiltinDigests;

    const-string v1, "nistp256"

    const/4 v2, 0x0

    const-string v3, "nistp256"

    const/16 v6, 0x20

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/apache/sshd/common/cipher/ECCurves;-><init>(Ljava/lang/String;ILjava/lang/String;[ILjava/security/spec/ECParameterSpec;ILorg/apache/sshd/common/digest/DigestFactory;)V

    sput-object v8, Lorg/apache/sshd/common/cipher/ECCurves;->nistp256:Lorg/apache/sshd/common/cipher/ECCurves;

    .line 74
    new-instance v0, Lorg/apache/sshd/common/cipher/ECCurves;

    const/4 v1, 0x5

    new-array v15, v1, [I

    fill-array-data v15, :array_1

    new-instance v2, Ljava/security/spec/ECParameterSpec;

    new-instance v3, Ljava/security/spec/EllipticCurve;

    new-instance v4, Ljava/security/spec/ECFieldFp;

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFF"

    invoke-direct {v5, v6, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v4, v5}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFC"

    invoke-direct {v5, v6, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "B3312FA7E23EE7E4988E056BE3F82D19181D9C6EFE8141120314088F5013875AC656398D8A2ED19D2A85C8EDD3EC2AEF"

    invoke-direct {v6, v7, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v3, v4, v5, v6}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v4, Ljava/security/spec/ECPoint;

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "AA87CA22BE8B05378EB1C71EF320AD746E1D3B628BA79B9859F741E082542A385502F25DBF55296C3A545E3872760AB7"

    invoke-direct {v5, v6, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "3617DE4A96262C6F5D9E98BF9292DC29F8F41DBD289A147CE9DA3113B5F0B8C00A60B1CE1D7E819D7A431D7C90EA0E5F"

    invoke-direct {v6, v7, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v4, v5, v6}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7634D81F4372DDF581A0DB248B0A77AECEC196ACCC52973"

    invoke-direct {v5, v6, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v3, v4, v5, v10}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    sget-object v18, Lorg/apache/sshd/common/digest/BuiltinDigests;->sha384:Lorg/apache/sshd/common/digest/BuiltinDigests;

    const-string v12, "nistp384"

    const/4 v13, 0x1

    const-string v14, "nistp384"

    const/16 v17, 0x30

    move-object v11, v0

    move-object/from16 v16, v2

    invoke-direct/range {v11 .. v18}, Lorg/apache/sshd/common/cipher/ECCurves;-><init>(Ljava/lang/String;ILjava/lang/String;[ILjava/security/spec/ECParameterSpec;ILorg/apache/sshd/common/digest/DigestFactory;)V

    sput-object v0, Lorg/apache/sshd/common/cipher/ECCurves;->nistp384:Lorg/apache/sshd/common/cipher/ECCurves;

    .line 87
    new-instance v2, Lorg/apache/sshd/common/cipher/ECCurves;

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    new-instance v3, Ljava/security/spec/ECParameterSpec;

    new-instance v4, Ljava/security/spec/EllipticCurve;

    new-instance v5, Ljava/security/spec/ECFieldFp;

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"

    invoke-direct {v6, v7, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v5, v6}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC"

    invoke-direct {v6, v7, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v7, Ljava/math/BigInteger;

    const-string v11, "0051953EB9618E1C9A1F929A21A0B68540EEA2DA725B99B315F3B8B489918EF109E156193951EC7E937B1652C0BD3BB1BF073573DF883D2C34F1EF451FD46B503F00"

    invoke-direct {v7, v11, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v4, v5, v6, v7}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v5, Ljava/security/spec/ECPoint;

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "00C6858E06B70404E9CD9E3ECB662395B4429C648139053FB521F828AF606B4D3DBAA14B5E77EFE75928FE1DC127A2FFA8DE3348B3C1856A429BF97E7E31C2E5BD66"

    invoke-direct {v6, v7, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v7, Ljava/math/BigInteger;

    const-string v11, "011839296A789A3BC0045C8A5FB42C7D1BD998F54449579B446817AFBD17273E662C97EE72995EF42640C550B9013FAD0761353C7086A272C24088BE94769FD16650"

    invoke-direct {v7, v11, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v5, v6, v7}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA51868783BF2F966B7FCC0148F709A5D03BB5C9B8899C47AEBB6FB71E91386409"

    invoke-direct {v6, v7, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v3, v4, v5, v6, v10}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    sget-object v26, Lorg/apache/sshd/common/digest/BuiltinDigests;->sha512:Lorg/apache/sshd/common/digest/BuiltinDigests;

    const-string v20, "nistp521"

    const/16 v21, 0x2

    const-string v22, "nistp521"

    const/16 v25, 0x42

    move-object/from16 v19, v2

    move-object/from16 v23, v1

    move-object/from16 v24, v3

    invoke-direct/range {v19 .. v26}, Lorg/apache/sshd/common/cipher/ECCurves;-><init>(Ljava/lang/String;ILjava/lang/String;[ILjava/security/spec/ECParameterSpec;ILorg/apache/sshd/common/digest/DigestFactory;)V

    sput-object v2, Lorg/apache/sshd/common/cipher/ECCurves;->nistp521:Lorg/apache/sshd/common/cipher/ECCurves;

    .line 60
    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/sshd/common/cipher/ECCurves;

    const/4 v3, 0x0

    aput-object v8, v1, v3

    aput-object v0, v1, v10

    const/4 v0, 0x2

    aput-object v2, v1, v0

    sput-object v1, Lorg/apache/sshd/common/cipher/ECCurves;->$VALUES:[Lorg/apache/sshd/common/cipher/ECCurves;

    .line 110
    const-class v0, Lorg/apache/sshd/common/cipher/ECCurves;

    .line 111
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/cipher/ECCurves;->VALUES:Ljava/util/Set;

    .line 116
    new-instance v1, Lorg/apache/sshd/common/cipher/ECCurves$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/sshd/common/cipher/ECCurves$$ExternalSyntheticLambda0;-><init>()V

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 118
    invoke-static {v0, v1, v2}, Lorg/apache/sshd/common/util/GenericUtils;->mapSort(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/NavigableSet;

    move-result-object v1

    .line 117
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v1

    sput-object v1, Lorg/apache/sshd/common/cipher/ECCurves;->NAMES:Ljava/util/NavigableSet;

    .line 123
    new-instance v1, Lorg/apache/sshd/common/cipher/ECCurves$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/apache/sshd/common/cipher/ECCurves$$ExternalSyntheticLambda1;-><init>()V

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 125
    invoke-static {v0, v1, v2}, Lorg/apache/sshd/common/util/GenericUtils;->mapSort(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/NavigableSet;

    move-result-object v1

    .line 124
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v1

    sput-object v1, Lorg/apache/sshd/common/cipher/ECCurves;->KEY_TYPES:Ljava/util/NavigableSet;

    .line 127
    new-instance v1, Lorg/apache/sshd/common/cipher/ECCurves$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/apache/sshd/common/cipher/ECCurves$$ExternalSyntheticLambda2;-><init>()V

    sput-object v1, Lorg/apache/sshd/common/cipher/ECCurves;->BY_KEY_SIZE:Ljava/util/Comparator;

    .line 133
    nop

    .line 134
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    .line 135
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 136
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 134
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/cipher/ECCurves;->SORTED_KEY_SIZE:Ljava/util/List;

    .line 133
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x3
        0x1
        0x7
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x3
        0x84
        0x0
        0x22
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x3
        0x84
        0x0
        0x23
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;[ILjava/security/spec/ECParameterSpec;ILorg/apache/sshd/common/digest/DigestFactory;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "oid"    # [I
    .param p5, "params"    # Ljava/security/spec/ECParameterSpec;
    .param p6, "numOctets"    # I
    .param p7, "digestFactory"    # Lorg/apache/sshd/common/digest/DigestFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[I",
            "Ljava/security/spec/ECParameterSpec;",
            "I",
            "Lorg/apache/sshd/common/digest/DigestFactory;",
            ")V"
        }
    .end annotation

    .line 147
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 148
    const-string p1, "No curve name"

    invoke-static {p3, p1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/sshd/common/cipher/ECCurves;->name:Ljava/lang/String;

    .line 149
    const-string p1, "No OID"

    invoke-static {p4, p1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty([ILjava/lang/String;)[I

    move-result-object p1

    const/16 p2, 0x2e

    invoke-static {p2, p1}, Lorg/apache/sshd/common/util/NumberUtils;->join(C[I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/sshd/common/cipher/ECCurves;->oidString:Ljava/lang/String;

    .line 150
    invoke-static {p4}, Lorg/apache/sshd/common/util/NumberUtils;->asList([I)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/sshd/common/cipher/ECCurves;->oidValue:Ljava/util/List;

    .line 151
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ecdsa-sha2-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/sshd/common/cipher/ECCurves;->keyType:Ljava/lang/String;

    .line 152
    const-string p1, "No EC params for %s"

    invoke-static {p5, p1, p3}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/spec/ECParameterSpec;

    iput-object p1, p0, Lorg/apache/sshd/common/cipher/ECCurves;->params:Ljava/security/spec/ECParameterSpec;

    .line 153
    invoke-static {p5}, Lorg/apache/sshd/common/cipher/ECCurves;->getCurveSize(Ljava/security/spec/ECParameterSpec;)I

    move-result p1

    iput p1, p0, Lorg/apache/sshd/common/cipher/ECCurves;->keySize:I

    .line 154
    iput p6, p0, Lorg/apache/sshd/common/cipher/ECCurves;->numOctets:I

    .line 155
    const-string p1, "No digestFactory"

    invoke-static {p7, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/sshd/common/digest/DigestFactory;

    iput-object p1, p0, Lorg/apache/sshd/common/cipher/ECCurves;->digestFactory:Lorg/apache/sshd/common/digest/DigestFactory;

    .line 156
    return-void
.end method

.method public static encodeECPoint(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)[B
    .locals 1
    .param p0, "group"    # Ljava/security/spec/ECPoint;
    .param p1, "params"    # Ljava/security/spec/ECParameterSpec;

    .line 329
    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/sshd/common/cipher/ECCurves;->encodeECPoint(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeECPoint(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)[B
    .locals 7
    .param p0, "group"    # Ljava/security/spec/ECPoint;
    .param p1, "curve"    # Ljava/security/spec/EllipticCurve;

    .line 334
    invoke-virtual {p1}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    .line 335
    .local v0, "elementSize":I
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    .line 338
    .local v1, "m":[B
    const/4 v2, 0x4

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 340
    invoke-virtual {p0}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/sshd/common/cipher/ECCurves;->removeLeadingZeroes([B)[B

    move-result-object v2

    .line 341
    .local v2, "affineX":[B
    add-int/lit8 v4, v0, 0x1

    array-length v5, v2

    sub-int/2addr v4, v5

    array-length v5, v2

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    invoke-virtual {p0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lorg/apache/sshd/common/cipher/ECCurves;->removeLeadingZeroes([B)[B

    move-result-object v4

    .line 344
    .local v4, "affineY":[B
    add-int/lit8 v5, v0, 0x1

    add-int/2addr v5, v0

    array-length v6, v4

    sub-int/2addr v5, v6

    array-length v6, v4

    invoke-static {v4, v3, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    return-object v1
.end method

.method private static varargs findFirstNonZeroIndex([B)I
    .locals 3
    .param p0, "octets"    # [B

    .line 404
    invoke-static {p0}, Lorg/apache/sshd/common/util/NumberUtils;->isEmpty([B)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 405
    return v1

    .line 408
    :cond_0
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 409
    aget-byte v2, p0, v0

    if-eqz v2, :cond_1

    .line 410
    return v0

    .line 408
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 414
    .end local v0    # "index":I
    :cond_2
    return v1
.end method

.method public static fromCurveName(Ljava/lang/String;)Lorg/apache/sshd/common/cipher/ECCurves;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 229
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    sget-object v1, Lorg/apache/sshd/common/cipher/ECCurves;->VALUES:Ljava/util/Set;

    invoke-static {p0, v0, v1}, Lorg/apache/sshd/common/NamedResource;->findByName(Ljava/lang/String;Ljava/util/Comparator;Ljava/util/Collection;)Lorg/apache/sshd/common/NamedResource;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/cipher/ECCurves;

    return-object v0
.end method

.method public static fromCurveParameters(Ljava/security/spec/ECParameterSpec;)Lorg/apache/sshd/common/cipher/ECCurves;
    .locals 1
    .param p0, "params"    # Ljava/security/spec/ECParameterSpec;

    .line 248
    if-nez p0, :cond_0

    .line 249
    const/4 v0, 0x0

    return-object v0

    .line 251
    :cond_0
    invoke-static {p0}, Lorg/apache/sshd/common/cipher/ECCurves;->getCurveSize(Ljava/security/spec/ECParameterSpec;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/sshd/common/cipher/ECCurves;->fromCurveSize(I)Lorg/apache/sshd/common/cipher/ECCurves;

    move-result-object v0

    return-object v0
.end method

.method public static fromCurveSize(I)Lorg/apache/sshd/common/cipher/ECCurves;
    .locals 4
    .param p0, "keySize"    # I

    .line 261
    const/4 v0, 0x0

    if-gtz p0, :cond_0

    .line 262
    return-object v0

    .line 265
    :cond_0
    sget-object v1, Lorg/apache/sshd/common/cipher/ECCurves;->VALUES:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/cipher/ECCurves;

    .line 266
    .local v2, "c":Lorg/apache/sshd/common/cipher/ECCurves;
    invoke-virtual {v2}, Lorg/apache/sshd/common/cipher/ECCurves;->getKeySize()I

    move-result v3

    if-ne p0, v3, :cond_1

    .line 267
    return-object v2

    .line 269
    .end local v2    # "c":Lorg/apache/sshd/common/cipher/ECCurves;
    :cond_1
    goto :goto_0

    .line 271
    :cond_2
    return-object v0
.end method

.method public static fromECKey(Ljava/security/interfaces/ECKey;)Lorg/apache/sshd/common/cipher/ECCurves;
    .locals 1
    .param p0, "key"    # Ljava/security/interfaces/ECKey;

    .line 238
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/apache/sshd/common/cipher/ECCurves;->fromCurveParameters(Ljava/security/spec/ECParameterSpec;)Lorg/apache/sshd/common/cipher/ECCurves;

    move-result-object v0

    return-object v0
.end method

.method public static fromKeyType(Ljava/lang/String;)Lorg/apache/sshd/common/cipher/ECCurves;
    .locals 4
    .param p0, "type"    # Ljava/lang/String;

    .line 210
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 211
    return-object v1

    .line 214
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/cipher/ECCurves;->VALUES:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/cipher/ECCurves;

    .line 215
    .local v2, "c":Lorg/apache/sshd/common/cipher/ECCurves;
    invoke-virtual {v2}, Lorg/apache/sshd/common/cipher/ECCurves;->getKeyType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 216
    return-object v2

    .line 218
    .end local v2    # "c":Lorg/apache/sshd/common/cipher/ECCurves;
    :cond_1
    goto :goto_0

    .line 220
    :cond_2
    return-object v1
.end method

.method public static fromOID(Ljava/lang/String;)Lorg/apache/sshd/common/cipher/ECCurves;
    .locals 4
    .param p0, "oid"    # Ljava/lang/String;

    .line 304
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 305
    return-object v1

    .line 308
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/cipher/ECCurves;->VALUES:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/cipher/ECCurves;

    .line 309
    .local v2, "c":Lorg/apache/sshd/common/cipher/ECCurves;
    invoke-virtual {v2}, Lorg/apache/sshd/common/cipher/ECCurves;->getOID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 310
    return-object v2

    .line 312
    .end local v2    # "c":Lorg/apache/sshd/common/cipher/ECCurves;
    :cond_1
    goto :goto_0

    .line 314
    :cond_2
    return-object v1
.end method

.method public static fromOIDValue(Ljava/util/List;)Lorg/apache/sshd/common/cipher/ECCurves;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Number;",
            ">;)",
            "Lorg/apache/sshd/common/cipher/ECCurves;"
        }
    .end annotation

    .line 275
    .local p0, "oid":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Number;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 276
    return-object v1

    .line 279
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/cipher/ECCurves;->VALUES:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/cipher/ECCurves;

    .line 280
    .local v2, "c":Lorg/apache/sshd/common/cipher/ECCurves;
    invoke-virtual {v2}, Lorg/apache/sshd/common/cipher/ECCurves;->getOIDValue()Ljava/util/List;

    move-result-object v3

    .line 281
    .local v3, "v":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Number;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 282
    goto :goto_0

    .line 285
    :cond_1
    const/4 v4, 0x1

    .line 286
    .local v4, "matches":Z
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 287
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    .line 288
    .local v6, "exp":Ljava/lang/Number;
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    .line 289
    .local v7, "act":Ljava/lang/Number;
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v9

    if-eq v8, v9, :cond_2

    .line 290
    const/4 v4, 0x0

    .line 291
    goto :goto_2

    .line 286
    .end local v6    # "exp":Ljava/lang/Number;
    .end local v7    # "act":Ljava/lang/Number;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 295
    .end local v5    # "index":I
    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    .line 296
    return-object v2

    .line 298
    .end local v2    # "c":Lorg/apache/sshd/common/cipher/ECCurves;
    .end local v3    # "v":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Number;>;"
    .end local v4    # "matches":Z
    :cond_4
    goto :goto_0

    .line 300
    :cond_5
    return-object v1
.end method

.method public static getCurveSize(Ljava/security/spec/ECParameterSpec;)I
    .locals 3
    .param p0, "params"    # Ljava/security/spec/ECParameterSpec;

    .line 323
    const-string v0, "No EC params"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    .line 324
    .local v0, "curve":Ljava/security/spec/EllipticCurve;
    const-string v1, "No EC curve"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/spec/EllipticCurve;

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v1

    .line 325
    .local v1, "field":Ljava/security/spec/ECField;
    const-string v2, "No EC field"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/spec/ECField;

    invoke-interface {v2}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v2

    return v2
.end method

.method static synthetic lambda$static$0(Lorg/apache/sshd/common/cipher/ECCurves;Lorg/apache/sshd/common/cipher/ECCurves;)I
    .locals 3
    .param p0, "o1"    # Lorg/apache/sshd/common/cipher/ECCurves;
    .param p1, "o2"    # Lorg/apache/sshd/common/cipher/ECCurves;

    .line 128
    const v0, 0x7fffffff

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/cipher/ECCurves;->getKeySize()I

    move-result v1

    .line 129
    .local v1, "k1":I
    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/sshd/common/cipher/ECCurves;->getKeySize()I

    move-result v0

    .line 130
    .local v0, "k2":I
    :goto_1
    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    return v2
.end method

.method public static varargs octetStringToEcPoint([B)Ljava/security/spec/ECPoint;
    .locals 6
    .param p0, "octets"    # [B

    .line 384
    invoke-static {p0}, Lorg/apache/sshd/common/util/NumberUtils;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    const/4 v0, 0x0

    return-object v0

    .line 388
    :cond_0
    invoke-static {p0}, Lorg/apache/sshd/common/cipher/ECCurves;->findFirstNonZeroIndex([B)I

    move-result v0

    .line 389
    .local v0, "startIndex":I
    if-ltz v0, :cond_2

    .line 393
    aget-byte v1, p0, v0

    .line 394
    .local v1, "indicator":B
    invoke-static {v1}, Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;->fromIndicatorValue(I)Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;

    move-result-object v2

    .line 395
    .local v2, "compression":Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;
    if-eqz v2, :cond_1

    .line 400
    add-int/lit8 v3, v0, 0x1

    array-length v4, p0

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, p0, v3, v4}, Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;->octetStringToEcPoint([BII)Ljava/security/spec/ECPoint;

    move-result-object v3

    return-object v3

    .line 396
    :cond_1
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown compression indicator value: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit16 v5, v1, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 390
    .end local v1    # "indicator":B
    .end local v2    # "compression":Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "All zeroes ECPoint N/A"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static varargs octetStringToInteger([B)Ljava/math/BigInteger;
    .locals 2
    .param p0, "octets"    # [B

    .line 374
    if-nez p0, :cond_0

    .line 375
    const/4 v0, 0x0

    return-object v0

    .line 376
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 377
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v0

    .line 379
    :cond_1
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method private static removeLeadingZeroes([B)[B
    .locals 4
    .param p0, "input"    # [B

    .line 350
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    if-eqz v1, :cond_0

    .line 351
    return-object p0

    .line 354
    :cond_0
    const/4 v1, 0x1

    .line 355
    .local v1, "pos":I
    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    aget-byte v2, p0, v1

    if-nez v2, :cond_1

    .line 356
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 359
    :cond_1
    array-length v2, p0

    sub-int/2addr v2, v1

    new-array v2, v2, [B

    .line 360
    .local v2, "output":[B
    array-length v3, v2

    invoke-static {p0, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/sshd/common/cipher/ECCurves;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 60
    const-class v0, Lorg/apache/sshd/common/cipher/ECCurves;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/cipher/ECCurves;

    return-object v0
.end method

.method public static values()[Lorg/apache/sshd/common/cipher/ECCurves;
    .locals 1

    .line 60
    sget-object v0, Lorg/apache/sshd/common/cipher/ECCurves;->$VALUES:[Lorg/apache/sshd/common/cipher/ECCurves;

    invoke-virtual {v0}, [Lorg/apache/sshd/common/cipher/ECCurves;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/sshd/common/cipher/ECCurves;

    return-object v0
.end method


# virtual methods
.method public final getDigestForParams()Lorg/apache/sshd/common/digest/Digest;
    .locals 1

    .line 201
    iget-object v0, p0, Lorg/apache/sshd/common/cipher/ECCurves;->digestFactory:Lorg/apache/sshd/common/digest/DigestFactory;

    invoke-interface {v0}, Lorg/apache/sshd/common/digest/DigestFactory;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/digest/Digest;

    return-object v0
.end method

.method public final getKeySize()I
    .locals 1

    .line 187
    iget v0, p0, Lorg/apache/sshd/common/cipher/ECCurves;->keySize:I

    return v0
.end method

.method public final getKeyType()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/apache/sshd/common/cipher/ECCurves;->keyType:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/apache/sshd/common/cipher/ECCurves;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNumPointOctets()I
    .locals 1

    .line 194
    iget v0, p0, Lorg/apache/sshd/common/cipher/ECCurves;->numOctets:I

    return v0
.end method

.method public final getOID()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/apache/sshd/common/cipher/ECCurves;->oidString:Ljava/lang/String;

    return-object v0
.end method

.method public final getOIDValue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lorg/apache/sshd/common/cipher/ECCurves;->oidValue:Ljava/util/List;

    return-object v0
.end method

.method public final getParameters()Ljava/security/spec/ECParameterSpec;
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/apache/sshd/common/cipher/ECCurves;->params:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public final isSupported()Z
    .locals 1

    .line 178
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isECCSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/sshd/common/cipher/ECCurves;->digestFactory:Lorg/apache/sshd/common/digest/DigestFactory;

    invoke-interface {v0}, Lorg/apache/sshd/common/digest/DigestFactory;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
