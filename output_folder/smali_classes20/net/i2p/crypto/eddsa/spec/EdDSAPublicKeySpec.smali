.class public Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;
.super Ljava/lang/Object;
.source "EdDSAPublicKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final A:Lnet/i2p/crypto/eddsa/math/GroupElement;

.field private Aneg:Lnet/i2p/crypto/eddsa/math/GroupElement;

.field private final spec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;


# direct methods
.method public constructor <init>(Lnet/i2p/crypto/eddsa/math/GroupElement;Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V
    .locals 1
    .param p1, "A"    # Lnet/i2p/crypto/eddsa/math/GroupElement;
    .param p2, "spec"    # Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;->Aneg:Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 41
    iput-object p1, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;->A:Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 42
    iput-object p2, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;->spec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 43
    return-void
.end method

.method public constructor <init>([BLnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V
    .locals 2
    .param p1, "pk"    # [B
    .param p2, "spec"    # Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;->Aneg:Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 33
    array-length v0, p1

    invoke-virtual {p2}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getCurve()Lnet/i2p/crypto/eddsa/math/Curve;

    move-result-object v1

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/Curve;->getField()Lnet/i2p/crypto/eddsa/math/Field;

    move-result-object v1

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/Field;->getb()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    if-ne v0, v1, :cond_0

    .line 36
    new-instance v0, Lnet/i2p/crypto/eddsa/math/GroupElement;

    invoke-virtual {p2}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getCurve()Lnet/i2p/crypto/eddsa/math/Curve;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lnet/i2p/crypto/eddsa/math/GroupElement;-><init>(Lnet/i2p/crypto/eddsa/math/Curve;[B)V

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;->A:Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 37
    iput-object p2, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;->spec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 38
    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "public-key length is wrong"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getA()Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 1

    .line 46
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;->A:Lnet/i2p/crypto/eddsa/math/GroupElement;

    return-object v0
.end method

.method public getNegativeA()Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 2

    .line 51
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;->Aneg:Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 52
    .local v0, "ourAneg":Lnet/i2p/crypto/eddsa/math/GroupElement;
    if-nez v0, :cond_0

    .line 53
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;->A:Lnet/i2p/crypto/eddsa/math/GroupElement;

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/GroupElement;->negate()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v0

    .line 54
    iput-object v0, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;->Aneg:Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 56
    :cond_0
    return-object v0
.end method

.method public getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;
    .locals 1

    .line 60
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPublicKeySpec;->spec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    return-object v0
.end method
