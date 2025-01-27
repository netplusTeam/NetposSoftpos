.class public Lnet/i2p/crypto/eddsa/EdDSASecurityProvider;
.super Ljava/security/Provider;
.source "EdDSASecurityProvider.java"


# static fields
.field public static final PROVIDER_NAME:Ljava/lang/String; = "EdDSA"

.field private static final serialVersionUID:J = 0x10cae1f85a1b8853L


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 29
    const-string v0, "EdDSA"

    const-wide v1, 0x3fd3333333333333L    # 0.3

    const-string v3, "str4d EdDSA security provider wrapper"

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 31
    new-instance v0, Lnet/i2p/crypto/eddsa/EdDSASecurityProvider$1;

    invoke-direct {v0, p0}, Lnet/i2p/crypto/eddsa/EdDSASecurityProvider$1;-><init>(Lnet/i2p/crypto/eddsa/EdDSASecurityProvider;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 38
    return-void
.end method


# virtual methods
.method protected setup()V
    .locals 2

    .line 42
    const-string v0, "KeyFactory.EdDSA"

    const-string v1, "net.i2p.crypto.eddsa.KeyFactory"

    invoke-virtual {p0, v0, v1}, Lnet/i2p/crypto/eddsa/EdDSASecurityProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v0, "KeyPairGenerator.EdDSA"

    const-string v1, "net.i2p.crypto.eddsa.KeyPairGenerator"

    invoke-virtual {p0, v0, v1}, Lnet/i2p/crypto/eddsa/EdDSASecurityProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v0, "Signature.NONEwithEdDSA"

    const-string v1, "net.i2p.crypto.eddsa.EdDSAEngine"

    invoke-virtual {p0, v0, v1}, Lnet/i2p/crypto/eddsa/EdDSASecurityProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v0, "Alg.Alias.KeyFactory.1.3.101.112"

    const-string v1, "EdDSA"

    invoke-virtual {p0, v0, v1}, Lnet/i2p/crypto/eddsa/EdDSASecurityProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v0, "Alg.Alias.KeyFactory.OID.1.3.101.112"

    invoke-virtual {p0, v0, v1}, Lnet/i2p/crypto/eddsa/EdDSASecurityProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v0, "Alg.Alias.KeyPairGenerator.1.3.101.112"

    invoke-virtual {p0, v0, v1}, Lnet/i2p/crypto/eddsa/EdDSASecurityProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v0, "Alg.Alias.KeyPairGenerator.OID.1.3.101.112"

    invoke-virtual {p0, v0, v1}, Lnet/i2p/crypto/eddsa/EdDSASecurityProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v0, "Alg.Alias.Signature.1.3.101.112"

    const-string v1, "NONEwithEdDSA"

    invoke-virtual {p0, v0, v1}, Lnet/i2p/crypto/eddsa/EdDSASecurityProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v0, "Alg.Alias.Signature.OID.1.3.101.112"

    invoke-virtual {p0, v0, v1}, Lnet/i2p/crypto/eddsa/EdDSASecurityProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method
