.class public interface abstract Lorg/apache/sshd/common/forward/ForwardingFilter;
.super Ljava/lang/Object;
.source "ForwardingFilter.java"

# interfaces
.implements Lorg/apache/sshd/common/forward/PortForwardingManager;
.implements Lorg/apache/sshd/common/forward/PortForwardingEventListenerManager;
.implements Lorg/apache/sshd/common/forward/PortForwardingEventListenerManagerHolder;
.implements Lorg/apache/sshd/common/Closeable;


# virtual methods
.method public abstract getForwardedPort(I)Lorg/apache/sshd/common/util/net/SshdSocketAddress;
.end method

.method public abstract localPortForwardingCancelled(Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract localPortForwardingRequested(Lorg/apache/sshd/common/util/net/SshdSocketAddress;)Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
