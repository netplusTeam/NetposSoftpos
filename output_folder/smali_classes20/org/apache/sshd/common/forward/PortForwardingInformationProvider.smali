.class public interface abstract Lorg/apache/sshd/common/forward/PortForwardingInformationProvider;
.super Ljava/lang/Object;
.source "PortForwardingInformationProvider.java"


# virtual methods
.method public abstract getBoundLocalPortForward(I)Lorg/apache/sshd/common/util/net/SshdSocketAddress;
.end method

.method public abstract getBoundRemotePortForward(I)Lorg/apache/sshd/common/util/net/SshdSocketAddress;
.end method

.method public abstract getLocalForwardsBindings()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Lorg/apache/sshd/common/util/net/SshdSocketAddress;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getRemoteForwardsBindings()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Lorg/apache/sshd/common/util/net/SshdSocketAddress;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getStartedLocalPortForwards()Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStartedRemotePortForwards()Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public isLocalPortForwardingStartedForPort(I)Z
    .locals 1
    .param p1, "port"    # I

    .line 61
    invoke-interface {p0, p1}, Lorg/apache/sshd/common/forward/PortForwardingInformationProvider;->getBoundLocalPortForward(I)Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRemotePortForwardingStartedForPort(I)Z
    .locals 1
    .param p1, "port"    # I

    .line 93
    invoke-interface {p0, p1}, Lorg/apache/sshd/common/forward/PortForwardingInformationProvider;->getBoundRemotePortForward(I)Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
