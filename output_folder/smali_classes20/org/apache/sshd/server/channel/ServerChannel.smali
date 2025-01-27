.class public interface abstract Lorg/apache/sshd/server/channel/ServerChannel;
.super Ljava/lang/Object;
.source "ServerChannel.java"

# interfaces
.implements Lorg/apache/sshd/common/channel/Channel;
.implements Lorg/apache/sshd/server/session/ServerSessionHolder;


# virtual methods
.method public getServerSession()Lorg/apache/sshd/server/session/ServerSession;
    .locals 1

    .line 32
    invoke-interface {p0}, Lorg/apache/sshd/server/channel/ServerChannel;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/server/session/ServerSession;

    return-object v0
.end method
