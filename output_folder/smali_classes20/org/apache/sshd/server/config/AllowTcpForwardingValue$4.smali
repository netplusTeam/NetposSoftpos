.class final enum Lorg/apache/sshd/server/config/AllowTcpForwardingValue$4;
.super Lorg/apache/sshd/server/config/AllowTcpForwardingValue;
.source "AllowTcpForwardingValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/server/config/AllowTcpForwardingValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/sshd/server/config/AllowTcpForwardingValue;-><init>(Ljava/lang/String;ILorg/apache/sshd/server/config/AllowTcpForwardingValue$1;)V

    return-void
.end method


# virtual methods
.method public canConnect(Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/session/Session;)Z
    .locals 1
    .param p1, "type"    # Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;
    .param p2, "address"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p3, "session"    # Lorg/apache/sshd/common/session/Session;

    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public canListen(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/session/Session;)Z
    .locals 1
    .param p1, "address"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p2, "session"    # Lorg/apache/sshd/common/session/Session;

    .line 72
    const/4 v0, 0x0

    return v0
.end method
