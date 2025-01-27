.class public interface abstract Lorg/apache/sshd/client/keyverifier/ModifiedServerKeyAcceptor;
.super Ljava/lang/Object;
.source "ModifiedServerKeyAcceptor.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract acceptModifiedServerKey(Lorg/apache/sshd/client/session/ClientSession;Ljava/net/SocketAddress;Lorg/apache/sshd/client/config/hosts/KnownHostEntry;Ljava/security/PublicKey;Ljava/security/PublicKey;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
