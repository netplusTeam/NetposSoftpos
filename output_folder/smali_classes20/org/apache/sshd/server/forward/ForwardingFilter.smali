.class public interface abstract Lorg/apache/sshd/server/forward/ForwardingFilter;
.super Ljava/lang/Object;
.source "ForwardingFilter.java"

# interfaces
.implements Lorg/apache/sshd/server/forward/AgentForwardingFilter;
.implements Lorg/apache/sshd/server/forward/X11ForwardingFilter;
.implements Lorg/apache/sshd/server/forward/TcpForwardingFilter;


# direct methods
.method public static asForwardingFilter(Lorg/apache/sshd/server/forward/AgentForwardingFilter;Lorg/apache/sshd/server/forward/X11ForwardingFilter;Lorg/apache/sshd/server/forward/TcpForwardingFilter;)Lorg/apache/sshd/server/forward/ForwardingFilter;
    .locals 1
    .param p0, "agentFilter"    # Lorg/apache/sshd/server/forward/AgentForwardingFilter;
    .param p1, "x11Filter"    # Lorg/apache/sshd/server/forward/X11ForwardingFilter;
    .param p2, "tcpFilter"    # Lorg/apache/sshd/server/forward/TcpForwardingFilter;

    .line 40
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 41
    sget-object v0, Lorg/apache/sshd/server/forward/RejectAllForwardingFilter;->INSTANCE:Lorg/apache/sshd/server/forward/RejectAllForwardingFilter;

    return-object v0

    .line 44
    :cond_0
    new-instance v0, Lorg/apache/sshd/server/forward/ForwardingFilter$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/sshd/server/forward/ForwardingFilter$1;-><init>(Lorg/apache/sshd/server/forward/AgentForwardingFilter;Lorg/apache/sshd/server/forward/X11ForwardingFilter;Lorg/apache/sshd/server/forward/TcpForwardingFilter;)V

    return-object v0
.end method
