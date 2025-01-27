.class public Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;
.super Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;
.source "EdDSANamedCurveSpec.java"


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/i2p/crypto/eddsa/math/Curve;Ljava/lang/String;Lnet/i2p/crypto/eddsa/math/ScalarOps;Lnet/i2p/crypto/eddsa/math/GroupElement;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "curve"    # Lnet/i2p/crypto/eddsa/math/Curve;
    .param p3, "hashAlgo"    # Ljava/lang/String;
    .param p4, "sc"    # Lnet/i2p/crypto/eddsa/math/ScalarOps;
    .param p5, "B"    # Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 28
    invoke-direct {p0, p2, p3, p4, p5}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;-><init>(Lnet/i2p/crypto/eddsa/math/Curve;Ljava/lang/String;Lnet/i2p/crypto/eddsa/math/ScalarOps;Lnet/i2p/crypto/eddsa/math/GroupElement;)V

    .line 29
    iput-object p1, p0, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;->name:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/spec/EdDSANamedCurveSpec;->name:Ljava/lang/String;

    return-object v0
.end method
