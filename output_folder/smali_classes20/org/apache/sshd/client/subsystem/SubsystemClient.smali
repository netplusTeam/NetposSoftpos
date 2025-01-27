.class public interface abstract Lorg/apache/sshd/client/subsystem/SubsystemClient;
.super Ljava/lang/Object;
.source "SubsystemClient.java"

# interfaces
.implements Lorg/apache/sshd/common/session/SessionHolder;
.implements Lorg/apache/sshd/client/session/ClientSessionHolder;
.implements Lorg/apache/sshd/common/NamedResource;
.implements Ljava/nio/channels/Channel;
.implements Lorg/apache/sshd/client/channel/ClientChannelHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/session/SessionHolder<",
        "Lorg/apache/sshd/client/session/ClientSession;",
        ">;",
        "Lorg/apache/sshd/client/session/ClientSessionHolder;",
        "Lorg/apache/sshd/common/NamedResource;",
        "Ljava/nio/channels/Channel;",
        "Lorg/apache/sshd/client/channel/ClientChannelHolder;"
    }
.end annotation


# virtual methods
.method public getSession()Lorg/apache/sshd/client/session/ClientSession;
    .locals 1

    .line 41
    invoke-interface {p0}, Lorg/apache/sshd/client/subsystem/SubsystemClient;->getClientSession()Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSession()Lorg/apache/sshd/common/session/Session;
    .locals 1

    .line 33
    invoke-interface {p0}, Lorg/apache/sshd/client/subsystem/SubsystemClient;->getSession()Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v0

    return-object v0
.end method
