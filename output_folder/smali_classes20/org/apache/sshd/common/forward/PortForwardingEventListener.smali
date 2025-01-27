.class public interface abstract Lorg/apache/sshd/common/forward/PortForwardingEventListener;
.super Ljava/lang/Object;
.source "PortForwardingEventListener.java"

# interfaces
.implements Lorg/apache/sshd/common/util/SshdEventListener;


# static fields
.field public static final EMPTY:Lorg/apache/sshd/common/forward/PortForwardingEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lorg/apache/sshd/common/forward/PortForwardingEventListener$1;

    invoke-direct {v0}, Lorg/apache/sshd/common/forward/PortForwardingEventListener$1;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/forward/PortForwardingEventListener;->EMPTY:Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    return-void
.end method

.method public static validateListener(Lorg/apache/sshd/common/forward/PortForwardingEventListener;)Lorg/apache/sshd/common/forward/PortForwardingEventListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L::Lorg/apache/sshd/common/forward/PortForwardingEventListener;",
            ">(T",
            "L;",
            ")T",
            "L;"
        }
    .end annotation

    .line 165
    .local p0, "listener":Lorg/apache/sshd/common/forward/PortForwardingEventListener;, "TL;"
    const-class v0, Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/SshdEventListener;->validateListener(Lorg/apache/sshd/common/util/SshdEventListener;Ljava/lang/String;)Lorg/apache/sshd/common/util/SshdEventListener;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    return-object v0
.end method


# virtual methods
.method public establishedDynamicTunnel(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p2, "local"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p3, "boundAddress"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p4, "reason"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    return-void
.end method

.method public establishedExplicitTunnel(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p2, "local"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p3, "remote"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p4, "localForwarding"    # Z
    .param p5, "boundAddress"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p6, "reason"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    return-void
.end method

.method public establishingDynamicTunnel(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p2, "local"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    return-void
.end method

.method public establishingExplicitTunnel(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Z)V
    .locals 0
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p2, "local"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p3, "remote"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p4, "localForwarding"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public tearingDownDynamicTunnel(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p2, "address"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    return-void
.end method

.method public tearingDownExplicitTunnel(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p2, "address"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p3, "localForwarding"    # Z
    .param p4, "remoteAddress"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    return-void
.end method

.method public tornDownDynamicTunnel(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p2, "address"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p3, "reason"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    return-void
.end method

.method public tornDownExplicitTunnel(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p2, "address"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p3, "localForwarding"    # Z
    .param p4, "remoteAddress"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p5, "reason"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    return-void
.end method
