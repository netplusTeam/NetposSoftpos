.class public interface abstract Lorg/apache/sshd/common/session/ConnectionService;
.super Ljava/lang/Object;
.source "ConnectionService.java"

# interfaces
.implements Lorg/apache/sshd/common/Service;
.implements Lorg/apache/sshd/common/session/SessionHeartbeatController;
.implements Lorg/apache/sshd/common/session/UnknownChannelReferenceHandlerManager;
.implements Lorg/apache/sshd/common/forward/PortForwardingEventListenerManager;
.implements Lorg/apache/sshd/common/forward/PortForwardingEventListenerManagerHolder;


# virtual methods
.method public abstract getAgentForwardSupport()Lorg/apache/sshd/agent/common/AgentForwardSupport;
.end method

.method public abstract getForwardingFilter()Lorg/apache/sshd/common/forward/ForwardingFilter;
.end method

.method public abstract getX11ForwardSupport()Lorg/apache/sshd/server/x11/X11ForwardSupport;
.end method

.method public abstract isAllowMoreSessions()Z
.end method

.method public abstract registerChannel(Lorg/apache/sshd/common/channel/Channel;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setAllowMoreSessions(Z)V
.end method

.method public abstract unregisterChannel(Lorg/apache/sshd/common/channel/Channel;)V
.end method
