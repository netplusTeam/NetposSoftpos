.class public interface abstract Lorg/apache/sshd/agent/SshAgent;
.super Ljava/lang/Object;
.source "SshAgent.java"

# interfaces
.implements Ljava/nio/channels/Channel;


# static fields
.field public static final SSH_AUTHSOCKET_ENV_NAME:Ljava/lang/String; = "SSH_AUTH_SOCK"


# virtual methods
.method public abstract addIdentity(Ljava/security/KeyPair;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getIdentities()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "Ljava/security/PublicKey;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract removeAllIdentities()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract removeIdentity(Ljava/security/PublicKey;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sign(Lorg/apache/sshd/common/session/SessionContext;Ljava/security/PublicKey;[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
