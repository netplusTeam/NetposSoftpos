.class public Lorg/jpos/q2/qbean/SpaceAdaptor;
.super Lorg/jpos/q2/QBeanSupport;
.source "SpaceAdaptor.java"

# interfaces
.implements Lorg/jpos/q2/qbean/SpaceAdaptorMBean;


# instance fields
.field private objectName:Ljavax/management/ObjectName;

.field private sp:Lorg/jpos/space/Space;

.field private spaceName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lorg/jpos/q2/QBeanSupport;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/q2/qbean/SpaceAdaptor;->sp:Lorg/jpos/space/Space;

    .line 42
    iput-object v0, p0, Lorg/jpos/q2/qbean/SpaceAdaptor;->spaceName:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lorg/jpos/q2/qbean/SpaceAdaptor;->objectName:Ljavax/management/ObjectName;

    .line 47
    return-void
.end method


# virtual methods
.method public getKeys()Ljava/util/Set;
    .locals 2

    .line 77
    iget-object v0, p0, Lorg/jpos/q2/qbean/SpaceAdaptor;->sp:Lorg/jpos/space/Space;

    instance-of v1, v0, Lorg/jpos/space/LocalSpace;

    if-eqz v1, :cond_0

    .line 78
    check-cast v0, Lorg/jpos/space/LocalSpace;

    invoke-interface {v0}, Lorg/jpos/space/LocalSpace;->getKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 79
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpaceName()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/jpos/q2/qbean/SpaceAdaptor;->spaceName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized setSpaceName(Ljava/lang/String;)V
    .locals 2
    .param p1, "spaceName"    # Ljava/lang/String;

    monitor-enter p0

    .line 67
    :try_start_0
    iput-object p1, p0, Lorg/jpos/q2/qbean/SpaceAdaptor;->spaceName:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/SpaceAdaptor;->getAttrs()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "spaceName"

    invoke-virtual {p0, v0, v1, p1}, Lorg/jpos/q2/qbean/SpaceAdaptor;->setAttr(Ljava/util/Iterator;Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jpos/q2/qbean/SpaceAdaptor;->setModified(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    .line 66
    .end local p0    # "this":Lorg/jpos/q2/qbean/SpaceAdaptor;
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
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lorg/jpos/q2/qbean/SpaceAdaptor;->spaceName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 51
    invoke-static {}, Lorg/jpos/space/SpaceFactory;->getSpace()Lorg/jpos/space/Space;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/q2/qbean/SpaceAdaptor;->sp:Lorg/jpos/space/Space;

    goto :goto_0

    .line 53
    :cond_0
    invoke-static {v0}, Lorg/jpos/space/SpaceFactory;->getSpace(Ljava/lang/String;)Lorg/jpos/space/Space;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/q2/qbean/SpaceAdaptor;->sp:Lorg/jpos/space/Space;

    .line 55
    :goto_0
    new-instance v0, Ljavax/management/ObjectName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Q2:type=qbean,service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 56
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/SpaceAdaptor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",space="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jpos/q2/qbean/SpaceAdaptor;->spaceName:Ljava/lang/String;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "default"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jpos/q2/qbean/SpaceAdaptor;->objectName:Ljavax/management/ObjectName;

    .line 59
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/SpaceAdaptor;->getServer()Lorg/jpos/q2/Q2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/q2/Q2;->getMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v0

    iget-object v1, p0, Lorg/jpos/q2/qbean/SpaceAdaptor;->sp:Lorg/jpos/space/Space;

    iget-object v2, p0, Lorg/jpos/q2/qbean/SpaceAdaptor;->objectName:Ljavax/management/ObjectName;

    invoke-interface {v0, v1, v2}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;

    .line 60
    return-void
.end method

.method protected stopService()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/SpaceAdaptor;->getServer()Lorg/jpos/q2/Q2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/q2/Q2;->getMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v0

    iget-object v1, p0, Lorg/jpos/q2/qbean/SpaceAdaptor;->objectName:Ljavax/management/ObjectName;

    invoke-interface {v0, v1}, Ljavax/management/MBeanServer;->unregisterMBean(Ljavax/management/ObjectName;)V

    .line 64
    return-void
.end method
