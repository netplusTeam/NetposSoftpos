.class final Lorg/apache/sshd/server/forward/ForwardingFilter$1;
.super Ljava/lang/Object;
.source "ForwardingFilter.java"

# interfaces
.implements Lorg/apache/sshd/server/forward/ForwardingFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/server/forward/ForwardingFilter;->asForwardingFilter(Lorg/apache/sshd/server/forward/AgentForwardingFilter;Lorg/apache/sshd/server/forward/X11ForwardingFilter;Lorg/apache/sshd/server/forward/TcpForwardingFilter;)Lorg/apache/sshd/server/forward/ForwardingFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$agentFilter:Lorg/apache/sshd/server/forward/AgentForwardingFilter;

.field final synthetic val$tcpFilter:Lorg/apache/sshd/server/forward/TcpForwardingFilter;

.field final synthetic val$x11Filter:Lorg/apache/sshd/server/forward/X11ForwardingFilter;


# direct methods
.method constructor <init>(Lorg/apache/sshd/server/forward/AgentForwardingFilter;Lorg/apache/sshd/server/forward/X11ForwardingFilter;Lorg/apache/sshd/server/forward/TcpForwardingFilter;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lorg/apache/sshd/server/forward/ForwardingFilter$1;->val$agentFilter:Lorg/apache/sshd/server/forward/AgentForwardingFilter;

    iput-object p2, p0, Lorg/apache/sshd/server/forward/ForwardingFilter$1;->val$x11Filter:Lorg/apache/sshd/server/forward/X11ForwardingFilter;

    iput-object p3, p0, Lorg/apache/sshd/server/forward/ForwardingFilter$1;->val$tcpFilter:Lorg/apache/sshd/server/forward/TcpForwardingFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canConnect(Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/session/Session;)Z
    .locals 1
    .param p1, "type"    # Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;
    .param p2, "address"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p3, "session"    # Lorg/apache/sshd/common/session/Session;

    .line 62
    iget-object v0, p0, Lorg/apache/sshd/server/forward/ForwardingFilter$1;->val$tcpFilter:Lorg/apache/sshd/server/forward/TcpForwardingFilter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/sshd/server/forward/TcpForwardingFilter;->canConnect(Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/session/Session;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canForwardAgent(Lorg/apache/sshd/common/session/Session;Ljava/lang/String;)Z
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p2, "requestType"    # Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lorg/apache/sshd/server/forward/ForwardingFilter$1;->val$agentFilter:Lorg/apache/sshd/server/forward/AgentForwardingFilter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lorg/apache/sshd/server/forward/AgentForwardingFilter;->canForwardAgent(Lorg/apache/sshd/common/session/Session;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canForwardX11(Lorg/apache/sshd/common/session/Session;Ljava/lang/String;)Z
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p2, "requestType"    # Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lorg/apache/sshd/server/forward/ForwardingFilter$1;->val$x11Filter:Lorg/apache/sshd/server/forward/X11ForwardingFilter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lorg/apache/sshd/server/forward/X11ForwardingFilter;->canForwardX11(Lorg/apache/sshd/common/session/Session;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canListen(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/session/Session;)Z
    .locals 1
    .param p1, "address"    # Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .param p2, "session"    # Lorg/apache/sshd/common/session/Session;

    .line 57
    iget-object v0, p0, Lorg/apache/sshd/server/forward/ForwardingFilter$1;->val$tcpFilter:Lorg/apache/sshd/server/forward/TcpForwardingFilter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lorg/apache/sshd/server/forward/TcpForwardingFilter;->canListen(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/session/Session;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
