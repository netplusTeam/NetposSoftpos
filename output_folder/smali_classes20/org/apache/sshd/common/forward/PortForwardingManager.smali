.class public interface abstract Lorg/apache/sshd/common/forward/PortForwardingManager;
.super Ljava/lang/Object;
.source "PortForwardingManager.java"

# interfaces
.implements Lorg/apache/sshd/common/forward/PortForwardingInformationProvider;


# virtual methods
.method public abstract startDynamicPortForwarding(Lorg/apache/sshd/common/util/net/SshdSocketAddress;)Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract startLocalPortForwarding(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract startRemotePortForwarding(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract stopDynamicPortForwarding(Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract stopLocalPortForwarding(Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract stopRemotePortForwarding(Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
