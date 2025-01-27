.class public Lorg/jpos/q2/iso/QMUXProxyAdaptor;
.super Lorg/jpos/q2/QBeanSupport;
.source "QMUXProxyAdaptor.java"

# interfaces
.implements Lorg/jpos/q2/iso/QMUXProxyAdaptorMBean;


# instance fields
.field private qmux:Lorg/jpos/q2/iso/QMUX;

.field private qmuxName:Ljava/lang/String;

.field private qmuxproxy:Lorg/jpos/q2/iso/QMUXProxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lorg/jpos/q2/QBeanSupport;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/q2/iso/QMUXProxyAdaptor;->qmuxproxy:Lorg/jpos/q2/iso/QMUXProxy;

    .line 47
    return-void
.end method


# virtual methods
.method public getQmuxName()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/jpos/q2/iso/QMUXProxyAdaptor;->qmuxName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized setQmuxName(Ljava/lang/String;)V
    .locals 2
    .param p1, "muxName"    # Ljava/lang/String;

    monitor-enter p0

    .line 62
    :try_start_0
    iput-object p1, p0, Lorg/jpos/q2/iso/QMUXProxyAdaptor;->qmuxName:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QMUXProxyAdaptor;->getAttrs()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "qmuxName"

    invoke-virtual {p0, v0, v1, p1}, Lorg/jpos/q2/iso/QMUXProxyAdaptor;->setAttr(Ljava/util/Iterator;Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jpos/q2/iso/QMUXProxyAdaptor;->setModified(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    .line 61
    .end local p0    # "this":Lorg/jpos/q2/iso/QMUXProxyAdaptor;
    .end local p1    # "muxName":Ljava/lang/String;
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
            Ljavax/naming/NamingException;,
            Lorg/jpos/util/NameRegistrar$NotFoundException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lorg/jpos/q2/iso/QMUXProxyAdaptor;->qmuxName:Ljava/lang/String;

    invoke-static {v0}, Lorg/jpos/util/NameRegistrar;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/q2/iso/QMUX;

    iput-object v0, p0, Lorg/jpos/q2/iso/QMUXProxyAdaptor;->qmux:Lorg/jpos/q2/iso/QMUX;

    .line 51
    new-instance v0, Lorg/jpos/q2/iso/QMUXProxy;

    iget-object v1, p0, Lorg/jpos/q2/iso/QMUXProxyAdaptor;->qmux:Lorg/jpos/q2/iso/QMUX;

    invoke-direct {v0, v1}, Lorg/jpos/q2/iso/QMUXProxy;-><init>(Lorg/jpos/q2/iso/QMUX;)V

    iput-object v0, p0, Lorg/jpos/q2/iso/QMUXProxyAdaptor;->qmuxproxy:Lorg/jpos/q2/iso/QMUXProxy;

    .line 52
    new-instance v0, Ljavax/naming/InitialContext;

    invoke-direct {v0}, Ljavax/naming/InitialContext;-><init>()V

    .line 53
    .local v0, "ctx":Ljavax/naming/InitialContext;
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QMUXProxyAdaptor;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jpos/q2/iso/QMUXProxyAdaptor;->qmuxproxy:Lorg/jpos/q2/iso/QMUXProxy;

    invoke-virtual {v0, v1, v2}, Ljavax/naming/InitialContext;->rebind(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method protected stopService()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 57
    new-instance v0, Ljavax/naming/InitialContext;

    invoke-direct {v0}, Ljavax/naming/InitialContext;-><init>()V

    .line 58
    .local v0, "ctx":Ljavax/naming/InitialContext;
    invoke-virtual {p0}, Lorg/jpos/q2/iso/QMUXProxyAdaptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/naming/InitialContext;->unbind(Ljava/lang/String;)V

    .line 59
    return-void
.end method
