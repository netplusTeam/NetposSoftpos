.class final Lorg/apache/sshd/server/forward/TcpForwardingFilter$1;
.super Ljava/lang/Object;
.source "TcpForwardingFilter.java"

# interfaces
.implements Lorg/apache/sshd/server/forward/TcpForwardingFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/server/forward/TcpForwardingFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canConnect(Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/session/Session;)Z
    .locals 1
    .param p1, "type"    # Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;
    .param p2, "address"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p3, "session"    # Lorg/apache/sshd/common/session/Session;

    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public canListen(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/session/Session;)Z
    .locals 1
    .param p1, "address"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p2, "session"    # Lorg/apache/sshd/common/session/Session;

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/sshd/server/forward/TcpForwardingFilter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[DEFAULT]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
