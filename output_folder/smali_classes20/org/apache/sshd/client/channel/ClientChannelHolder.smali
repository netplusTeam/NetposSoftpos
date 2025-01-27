.class public interface abstract Lorg/apache/sshd/client/channel/ClientChannelHolder;
.super Ljava/lang/Object;
.source "ClientChannelHolder.java"

# interfaces
.implements Lorg/apache/sshd/common/channel/ChannelHolder;


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public getChannel()Lorg/apache/sshd/common/channel/Channel;
    .locals 1

    .line 34
    invoke-interface {p0}, Lorg/apache/sshd/client/channel/ClientChannelHolder;->getClientChannel()Lorg/apache/sshd/client/channel/ClientChannel;

    move-result-object v0

    return-object v0
.end method

.method public abstract getClientChannel()Lorg/apache/sshd/client/channel/ClientChannel;
.end method
