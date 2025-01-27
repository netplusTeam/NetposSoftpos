.class public Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;
.super Ljava/lang/Object;
.source "EdDSANamedCurveTable.java"


# static fields
.field public static final ED_25519:Ljava/lang/String; = "Ed25519"

.field public static final ED_25519_CURVE_SPEC:Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

.field private static volatile curves:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;",
            ">;"
        }
    .end annotation
.end field

.field private static final ed25519curve:Lnet/i2p/crypto/eddsa/math/Curve;

.field private static final ed25519field:Lnet/i2p/crypto/eddsa/math/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 31
    new-instance v0, Lnet/i2p/crypto/eddsa/math/Field;

    .line 33
    const-string v1, "edffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff7f"

    invoke-static {v1}, Lnet/i2p/crypto/eddsa/Utils;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v2, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;

    invoke-direct {v2}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;-><init>()V

    const/16 v3, 0x100

    invoke-direct {v0, v3, v1, v2}, Lnet/i2p/crypto/eddsa/math/Field;-><init>(I[BLnet/i2p/crypto/eddsa/math/Encoding;)V

    sput-object v0, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->ed25519field:Lnet/i2p/crypto/eddsa/math/Field;

    .line 36
    new-instance v6, Lnet/i2p/crypto/eddsa/math/Curve;

    .line 37
    const-string v1, "a3785913ca4deb75abd841414d0a700098e879777940c78c73fe6f2bee6c0352"

    invoke-static {v1}, Lnet/i2p/crypto/eddsa/Utils;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 38
    const-string v2, "b0a00e4a271beec478e42fad0618432fa7d7fb3d99004d2b0bdfc14f8024832b"

    invoke-static {v2}, Lnet/i2p/crypto/eddsa/Utils;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/i2p/crypto/eddsa/math/Field;->fromByteArray([B)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    invoke-direct {v6, v0, v1, v2}, Lnet/i2p/crypto/eddsa/math/Curve;-><init>(Lnet/i2p/crypto/eddsa/math/Field;[BLnet/i2p/crypto/eddsa/math/FieldElement;)V

    sput-object v6, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->ed25519curve:Lnet/i2p/crypto/eddsa/math/Curve;

    .line 40
    new-instance v0, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

    new-instance v8, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519ScalarOps;

    invoke-direct {v8}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519ScalarOps;-><init>()V

    .line 46
    const-string v1, "5866666666666666666666666666666666666666666666666666666666666666"

    invoke-static {v1}, Lnet/i2p/crypto/eddsa/Utils;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 45
    const/4 v2, 0x1

    invoke-virtual {v6, v1, v2}, Lnet/i2p/crypto/eddsa/math/Curve;->createPoint([BZ)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v9

    const-string v5, "Ed25519"

    const-string v7, "SHA-512"

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;-><init>(Ljava/lang/String;Lnet/i2p/crypto/eddsa/math/Curve;Ljava/lang/String;Lnet/i2p/crypto/eddsa/math/ScalarOps;Lnet/i2p/crypto/eddsa/math/GroupElement;)V

    sput-object v0, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->ED_25519_CURVE_SPEC:Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

    .line 49
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->curves:Ljava/util/HashMap;

    .line 71
    invoke-static {v0}, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->defineCurve(Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;)V

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static defineCurve(Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;)V
    .locals 2
    .param p0, "curve"    # Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

    .line 58
    invoke-virtual {p0}, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->putCurve(Ljava/lang/String;Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;)V

    .line 59
    return-void
.end method

.method static defineCurveAlias(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "alias"    # Ljava/lang/String;

    .line 62
    sget-object v0, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->curves:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

    .line 63
    .local v0, "curve":Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;
    if-eqz v0, :cond_0

    .line 66
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->putCurve(Ljava/lang/String;Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;)V

    .line 67
    return-void

    .line 64
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public static getByName(Ljava/lang/String;)Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 75
    sget-object v0, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->curves:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

    return-object v0
.end method

.method private static declared-synchronized putCurve(Ljava/lang/String;Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "curve"    # Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;

    const-class v0, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;

    monitor-enter v0

    .line 52
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    sget-object v2, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->curves:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 53
    .local v1, "newCurves":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;>;"
    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sput-object v1, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveTable;->curves:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit v0

    return-void

    .line 51
    .end local v1    # "newCurves":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;>;"
    .end local p0    # "name":Ljava/lang/String;
    .end local p1    # "curve":Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
