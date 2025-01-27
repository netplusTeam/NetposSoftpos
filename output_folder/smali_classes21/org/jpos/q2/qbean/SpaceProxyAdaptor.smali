.class public Lorg/jpos/q2/qbean/SpaceProxyAdaptor;
.super Lorg/jpos/q2/QBeanSupport;
.source "SpaceProxyAdaptor.java"

# interfaces
.implements Lorg/jpos/q2/qbean/SpaceProxyAdaptorMBean;


# instance fields
.field private sp:Lorg/jpos/space/SpaceProxy;

.field private spaceName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lorg/jpos/q2/QBeanSupport;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/q2/qbean/SpaceProxyAdaptor;->sp:Lorg/jpos/space/SpaceProxy;

    .line 41
    iput-object v0, p0, Lorg/jpos/q2/qbean/SpaceProxyAdaptor;->spaceName:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public getKeys()Ljava/util/Set;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/jpos/q2/qbean/SpaceProxyAdaptor;->sp:Lorg/jpos/space/SpaceProxy;

    invoke-virtual {v0}, Lorg/jpos/space/SpaceProxy;->getKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSpaceName()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/jpos/q2/qbean/SpaceProxyAdaptor;->spaceName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized setSpaceName(Ljava/lang/String;)V
    .locals 2
    .param p1, "spaceName"    # Ljava/lang/String;

    monitor-enter p0

    .line 61
    :try_start_0
    iput-object p1, p0, Lorg/jpos/q2/qbean/SpaceProxyAdaptor;->spaceName:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/SpaceProxyAdaptor;->getAttrs()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "spaceName"

    invoke-virtual {p0, v0, v1, p1}, Lorg/jpos/q2/qbean/SpaceProxyAdaptor;->setAttr(Ljava/util/Iterator;Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jpos/q2/qbean/SpaceProxyAdaptor;->setModified(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 60
    .end local p0    # "this":Lorg/jpos/q2/qbean/SpaceProxyAdaptor;
    .end local p1    # "spaceName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected startService()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/rmi/RemoteException;,
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lorg/jpos/q2/qbean/SpaceProxyAdaptor;->spaceName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lorg/jpos/space/SpaceProxy;

    invoke-direct {v0}, Lorg/jpos/space/SpaceProxy;-><init>()V

    iput-object v0, p0, Lorg/jpos/q2/qbean/SpaceProxyAdaptor;->sp:Lorg/jpos/space/SpaceProxy;

    goto :goto_0

    .line 51
    :cond_0
    new-instance v0, Lorg/jpos/space/SpaceProxy;

    iget-object v1, p0, Lorg/jpos/q2/qbean/SpaceProxyAdaptor;->spaceName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/jpos/space/SpaceProxy;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jpos/q2/qbean/SpaceProxyAdaptor;->sp:Lorg/jpos/space/SpaceProxy;

    .line 52
    :goto_0
    new-instance v0, Ljavax/naming/InitialContext;

    invoke-direct {v0}, Ljavax/naming/InitialContext;-><init>()V

    .line 53
    .local v0, "ctx":Ljavax/naming/InitialContext;
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/SpaceProxyAdaptor;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jpos/q2/qbean/SpaceProxyAdaptor;->sp:Lorg/jpos/space/SpaceProxy;

    invoke-virtual {v0, v1, v2}, Ljavax/naming/InitialContext;->rebind(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method protected stopService()V
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/jpos/q2/qbean/SpaceProxyAdaptor;->sp:Lorg/jpos/space/SpaceProxy;

    invoke-virtual {v0}, Lorg/jpos/space/SpaceProxy;->shutdown()V

    .line 58
    return-void
.end method
