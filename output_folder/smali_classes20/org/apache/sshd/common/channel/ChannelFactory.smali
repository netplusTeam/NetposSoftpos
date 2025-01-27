.class public interface abstract Lorg/apache/sshd/common/channel/ChannelFactory;
.super Ljava/lang/Object;
.source "ChannelFactory.java"

# interfaces
.implements Lorg/apache/sshd/common/NamedResource;


# direct methods
.method public static createChannel(Lorg/apache/sshd/common/session/Session;Ljava/util/Collection;Ljava/lang/String;)Lorg/apache/sshd/common/channel/Channel;
    .locals 2
    .param p0, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/Session;",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/common/channel/ChannelFactory;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/sshd/common/channel/Channel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    .local p1, "factories":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/channel/ChannelFactory;>;"
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {p2, v0, p1}, Lorg/apache/sshd/common/NamedResource;->findByName(Ljava/lang/String;Ljava/util/Comparator;Ljava/util/Collection;)Lorg/apache/sshd/common/NamedResource;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/channel/ChannelFactory;

    .line 50
    .local v0, "f":Lorg/apache/sshd/common/channel/ChannelFactory;
    if-eqz v0, :cond_0

    .line 51
    invoke-interface {v0, p0}, Lorg/apache/sshd/common/channel/ChannelFactory;->createChannel(Lorg/apache/sshd/common/session/Session;)Lorg/apache/sshd/common/channel/Channel;

    move-result-object v1

    return-object v1

    .line 53
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public abstract createChannel(Lorg/apache/sshd/common/session/Session;)Lorg/apache/sshd/common/channel/Channel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
