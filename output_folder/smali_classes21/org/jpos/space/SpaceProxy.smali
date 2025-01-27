.class public Lorg/jpos/space/SpaceProxy;
.super Ljava/lang/Object;
.source "SpaceProxy.java"

# interfaces
.implements Lorg/jpos/space/RemoteSpace;
.implements Lorg/jpos/core/Configurable;


# instance fields
.field cfg:Lorg/jpos/core/Configuration;

.field private ref:Ljava/rmi/server/RemoteRef;

.field sp:Lorg/jpos/space/Space;

.field private stub:Ljava/rmi/server/RemoteStub;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Lorg/jpos/space/SpaceFactory;->getSpace()Lorg/jpos/space/Space;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/space/SpaceProxy;->sp:Lorg/jpos/space/Space;

    .line 50
    invoke-direct {p0}, Lorg/jpos/space/SpaceProxy;->startService()V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "spaceUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Lorg/jpos/space/SpaceFactory;->getSpace(Ljava/lang/String;)Lorg/jpos/space/Space;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/space/SpaceProxy;->sp:Lorg/jpos/space/Space;

    .line 55
    invoke-direct {p0}, Lorg/jpos/space/SpaceProxy;->startService()V

    .line 56
    return-void
.end method

.method private startService()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 61
    const/16 v0, 0x44b

    :try_start_0
    invoke-static {v0}, Ljava/rmi/registry/LocateRegistry;->createRegistry(I)Ljava/rmi/registry/Registry;
    :try_end_0
    .catch Ljava/rmi/server/ExportException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 65
    :goto_0
    invoke-static {p0}, Ljava/rmi/server/UnicastRemoteObject;->exportObject(Ljava/rmi/Remote;)Ljava/rmi/server/RemoteStub;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/space/SpaceProxy;->stub:Ljava/rmi/server/RemoteStub;

    .line 66
    invoke-virtual {v0}, Ljava/rmi/server/RemoteStub;->getRef()Ljava/rmi/server/RemoteRef;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/space/SpaceProxy;->ref:Ljava/rmi/server/RemoteRef;

    .line 67
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 149
    instance-of v0, p1, Ljava/rmi/server/RemoteObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lorg/jpos/space/SpaceProxy;->ref:Ljava/rmi/server/RemoteRef;

    if-nez v0, :cond_1

    .line 151
    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 153
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/rmi/server/RemoteObject;

    invoke-virtual {v0}, Ljava/rmi/server/RemoteObject;->getRef()Ljava/rmi/server/RemoteRef;

    move-result-object v0

    .line 154
    .local v0, "otherRef":Ljava/rmi/server/RemoteRef;
    iget-object v1, p0, Lorg/jpos/space/SpaceProxy;->ref:Ljava/rmi/server/RemoteRef;

    invoke-interface {v1, v0}, Ljava/rmi/server/RemoteRef;->remoteEquals(Ljava/rmi/server/RemoteRef;)Z

    move-result v1

    return v1

    .line 156
    .end local v0    # "otherRef":Ljava/rmi/server/RemoteRef;
    :cond_2
    if-eqz p1, :cond_3

    .line 157
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 159
    :cond_3
    return v1
.end method

.method public getKeySet()Ljava/util/Set;
    .locals 2

    .line 131
    iget-object v0, p0, Lorg/jpos/space/SpaceProxy;->sp:Lorg/jpos/space/Space;

    instance-of v1, v0, Lorg/jpos/space/LocalSpace;

    if-eqz v1, :cond_0

    .line 132
    check-cast v0, Lorg/jpos/space/LocalSpace;

    invoke-interface {v0}, Lorg/jpos/space/LocalSpace;->getKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 134
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/jpos/space/SpaceProxy;->ref:Ljava/rmi/server/RemoteRef;

    if-nez v0, :cond_0

    .line 144
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 146
    :cond_0
    invoke-interface {v0}, Ljava/rmi/server/RemoteRef;->remoteHashCode()I

    move-result v0

    return v0
.end method

.method public in(Ljava/io/Serializable;)Ljava/io/Serializable;
    .locals 1
    .param p1, "key"    # Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lorg/jpos/space/SpaceProxy;->sp:Lorg/jpos/space/Space;

    invoke-interface {v0, p1}, Lorg/jpos/space/Space;->in(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    return-object v0
.end method

.method public in(Ljava/io/Serializable;J)Ljava/io/Serializable;
    .locals 1
    .param p1, "key"    # Ljava/io/Serializable;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/jpos/space/SpaceProxy;->sp:Lorg/jpos/space/Space;

    invoke-interface {v0, p1, p2, p3}, Lorg/jpos/space/Space;->in(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    return-object v0
.end method

.method public inp(Ljava/io/Serializable;)Ljava/io/Serializable;
    .locals 1
    .param p1, "key"    # Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lorg/jpos/space/SpaceProxy;->sp:Lorg/jpos/space/Space;

    invoke-interface {v0, p1}, Lorg/jpos/space/Space;->inp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    return-object v0
.end method

.method public out(Ljava/io/Serializable;Ljava/io/Serializable;)V
    .locals 1
    .param p1, "key"    # Ljava/io/Serializable;
    .param p2, "value"    # Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/jpos/space/SpaceProxy;->sp:Lorg/jpos/space/Space;

    invoke-interface {v0, p1, p2}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public out(Ljava/io/Serializable;Ljava/io/Serializable;J)V
    .locals 1
    .param p1, "key"    # Ljava/io/Serializable;
    .param p2, "value"    # Ljava/io/Serializable;
    .param p3, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/jpos/space/SpaceProxy;->sp:Lorg/jpos/space/Space;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 78
    return-void
.end method

.method public rd(Ljava/io/Serializable;)Ljava/io/Serializable;
    .locals 1
    .param p1, "key"    # Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lorg/jpos/space/SpaceProxy;->sp:Lorg/jpos/space/Space;

    invoke-interface {v0, p1}, Lorg/jpos/space/Space;->rd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    return-object v0
.end method

.method public rd(Ljava/io/Serializable;J)Ljava/io/Serializable;
    .locals 1
    .param p1, "key"    # Ljava/io/Serializable;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/jpos/space/SpaceProxy;->sp:Lorg/jpos/space/Space;

    invoke-interface {v0, p1, p2, p3}, Lorg/jpos/space/Space;->rd(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    return-object v0
.end method

.method public rdp(Ljava/io/Serializable;)Ljava/io/Serializable;
    .locals 1
    .param p1, "key"    # Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lorg/jpos/space/SpaceProxy;->sp:Lorg/jpos/space/Space;

    invoke-interface {v0, p1}, Lorg/jpos/space/Space;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    return-object v0
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 3
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lorg/jpos/space/SpaceProxy;->cfg:Lorg/jpos/core/Configuration;

    .line 124
    :try_start_0
    new-instance v0, Ljavax/naming/InitialContext;

    invoke-direct {v0}, Ljavax/naming/InitialContext;-><init>()V

    .line 125
    .local v0, "ctx":Ljavax/naming/InitialContext;
    const-string v1, "name"

    invoke-interface {p1, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jpos/space/SpaceProxy;->stub:Ljava/rmi/server/RemoteStub;

    invoke-virtual {v0, v1, v2}, Ljavax/naming/InitialContext;->rebind(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v0    # "ctx":Ljavax/naming/InitialContext;
    nop

    .line 129
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljavax/naming/NamingException;
    new-instance v1, Lorg/jpos/core/ConfigurationException;

    invoke-direct {v1, v0}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public shutdown()V
    .locals 2

    .line 111
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Ljava/rmi/server/UnicastRemoteObject;->unexportObject(Ljava/rmi/Remote;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    return-void

    .line 113
    :cond_0
    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 114
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/rmi/server/UnicastRemoteObject;->unexportObject(Ljava/rmi/Remote;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 118
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 137
    iget-object v0, p0, Lorg/jpos/space/SpaceProxy;->ref:Ljava/rmi/server/RemoteRef;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[<unexported>]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jpos/space/SpaceProxy;->ref:Ljava/rmi/server/RemoteRef;

    invoke-interface {v1}, Ljava/rmi/server/RemoteRef;->remoteToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
