.class public interface abstract Lorg/apache/sshd/client/auth/pubkey/PublicKeyIdentity;
.super Ljava/lang/Object;
.source "PublicKeyIdentity.java"


# virtual methods
.method public abstract getPublicKey()Ljava/security/PublicKey;
.end method

.method public abstract sign(Lorg/apache/sshd/common/session/SessionContext;[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
