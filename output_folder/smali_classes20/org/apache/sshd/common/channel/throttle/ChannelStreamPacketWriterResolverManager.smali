.class public interface abstract Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolverManager;
.super Ljava/lang/Object;
.source "ChannelStreamPacketWriterResolverManager.java"

# interfaces
.implements Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;


# virtual methods
.method public abstract getChannelStreamPacketWriterResolver()Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;
.end method

.method public resolveChannelStreamPacketWriter(Lorg/apache/sshd/common/channel/Channel;B)Lorg/apache/sshd/common/io/PacketWriter;
    .locals 2
    .param p1, "channel"    # Lorg/apache/sshd/common/channel/Channel;
    .param p2, "cmd"    # B

    .line 41
    invoke-interface {p0}, Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolverManager;->resolveChannelStreamPacketWriterResolver()Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;

    move-result-object v0

    .line 42
    .local v0, "resolver":Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;
    if-nez v0, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1, p2}, Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;->resolveChannelStreamPacketWriter(Lorg/apache/sshd/common/channel/Channel;B)Lorg/apache/sshd/common/io/PacketWriter;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public resolveChannelStreamPacketWriterResolver()Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;
    .locals 2

    .line 35
    invoke-interface {p0}, Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolverManager;->getChannelStreamPacketWriterResolver()Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;

    move-result-object v0

    .line 36
    .local v0, "resolver":Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;
    if-nez v0, :cond_0

    sget-object v1, Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;->NONE:Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public abstract setChannelStreamPacketWriterResolver(Lorg/apache/sshd/common/channel/throttle/ChannelStreamPacketWriterResolver;)V
.end method
