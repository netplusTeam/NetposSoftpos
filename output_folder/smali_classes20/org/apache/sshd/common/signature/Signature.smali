.class public interface abstract Lorg/apache/sshd/common/signature/Signature;
.super Ljava/lang/Object;
.source "Signature.java"

# interfaces
.implements Lorg/apache/sshd/common/AlgorithmNameProvider;


# virtual methods
.method public abstract initSigner(Lorg/apache/sshd/common/session/SessionContext;Ljava/security/PrivateKey;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract initVerifier(Lorg/apache/sshd/common/session/SessionContext;Ljava/security/PublicKey;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract sign(Lorg/apache/sshd/common/session/SessionContext;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public update(Lorg/apache/sshd/common/session/SessionContext;[B)V
    .locals 2
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "hash"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    invoke-static {p2}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p0, p1, p2, v1, v0}, Lorg/apache/sshd/common/signature/Signature;->update(Lorg/apache/sshd/common/session/SessionContext;[BII)V

    .line 63
    return-void
.end method

.method public abstract update(Lorg/apache/sshd/common/session/SessionContext;[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract verify(Lorg/apache/sshd/common/session/SessionContext;[B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
