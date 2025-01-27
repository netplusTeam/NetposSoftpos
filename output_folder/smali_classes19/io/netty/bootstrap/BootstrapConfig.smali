.class public final Lio/netty/bootstrap/BootstrapConfig;
.super Lio/netty/bootstrap/AbstractBootstrapConfig;
.source "BootstrapConfig.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/bootstrap/AbstractBootstrapConfig<",
        "Lio/netty/bootstrap/Bootstrap;",
        "Lio/netty/channel/Channel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/netty/bootstrap/Bootstrap;)V
    .locals 0
    .param p1, "bootstrap"    # Lio/netty/bootstrap/Bootstrap;

    .line 29
    invoke-direct {p0, p1}, Lio/netty/bootstrap/AbstractBootstrapConfig;-><init>(Lio/netty/bootstrap/AbstractBootstrap;)V

    .line 30
    return-void
.end method


# virtual methods
.method public remoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 36
    iget-object v0, p0, Lio/netty/bootstrap/BootstrapConfig;->bootstrap:Lio/netty/bootstrap/AbstractBootstrap;

    check-cast v0, Lio/netty/bootstrap/Bootstrap;

    invoke-virtual {v0}, Lio/netty/bootstrap/Bootstrap;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public resolver()Lio/netty/resolver/AddressResolverGroup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/resolver/AddressResolverGroup<",
            "*>;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lio/netty/bootstrap/BootstrapConfig;->bootstrap:Lio/netty/bootstrap/AbstractBootstrap;

    check-cast v0, Lio/netty/bootstrap/Bootstrap;

    invoke-virtual {v0}, Lio/netty/bootstrap/Bootstrap;->resolver()Lio/netty/resolver/AddressResolverGroup;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lio/netty/bootstrap/AbstractBootstrapConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 50
    const-string v1, ", resolver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/bootstrap/BootstrapConfig;->resolver()Lio/netty/resolver/AddressResolverGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p0}, Lio/netty/bootstrap/BootstrapConfig;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    .line 52
    .local v1, "remoteAddress":Ljava/net/SocketAddress;
    if-eqz v1, :cond_0

    .line 53
    const-string v2, ", remoteAddress: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 54
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    :cond_0
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
