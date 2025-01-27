.class public abstract Lorg/bouncycastle/crypto/tls/AbstractTlsSignerCredentials;
.super Lorg/bouncycastle/crypto/tls/AbstractTlsCredentials;
.source "AbstractTlsSignerCredentials.java"

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsSignerCredentials;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/AbstractTlsCredentials;-><init>()V

    return-void
.end method


# virtual methods
.method public getSignatureAndHashAlgorithm()Lorg/bouncycastle/crypto/tls/SignatureAndHashAlgorithm;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TlsSignerCredentials implementation does not support (D)TLS 1.2+"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
