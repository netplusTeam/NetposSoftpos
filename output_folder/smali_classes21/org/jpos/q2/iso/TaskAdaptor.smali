.class public Lorg/jpos/q2/iso/TaskAdaptor;
.super Lorg/jpos/q2/QBeanSupport;
.source "TaskAdaptor.java"


# instance fields
.field task:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/jpos/q2/QBeanSupport;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/jpos/q2/iso/TaskAdaptor;->task:Ljava/lang/Object;

    return-object v0
.end method

.method protected initService()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lorg/jpos/q2/iso/TaskAdaptor;->getServer()Lorg/jpos/q2/Q2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/q2/Q2;->getFactory()Lorg/jpos/q2/QFactory;

    move-result-object v0

    .line 42
    .local v0, "factory":Lorg/jpos/q2/QFactory;
    invoke-virtual {p0}, Lorg/jpos/q2/iso/TaskAdaptor;->getPersist()Lorg/jdom2/Element;

    move-result-object v1

    .line 43
    .local v1, "e":Lorg/jdom2/Element;
    const-string v2, "class"

    invoke-virtual {v1, v2}, Lorg/jdom2/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jpos/q2/QFactory;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/jpos/q2/iso/TaskAdaptor;->task:Ljava/lang/Object;

    .line 44
    invoke-virtual {v0, v2, v1}, Lorg/jpos/q2/QFactory;->setLogger(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 45
    return-void
.end method

.method protected startService()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lorg/jpos/q2/iso/TaskAdaptor;->getServer()Lorg/jpos/q2/Q2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/q2/Q2;->getFactory()Lorg/jpos/q2/QFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/jpos/q2/iso/TaskAdaptor;->task:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/jpos/q2/iso/TaskAdaptor;->getPersist()Lorg/jdom2/Element;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jpos/q2/QFactory;->setConfiguration(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 48
    invoke-virtual {p0}, Lorg/jpos/q2/iso/TaskAdaptor;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jpos/q2/iso/TaskAdaptor;->task:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/jpos/util/NameRegistrar;->register(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lorg/jpos/q2/iso/TaskAdaptor;->task:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lorg/jpos/q2/iso/TaskAdaptor;->task:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 52
    :cond_0
    return-void
.end method

.method protected stopService()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lorg/jpos/q2/iso/TaskAdaptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/NameRegistrar;->unregister(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lorg/jpos/q2/iso/TaskAdaptor;->task:Ljava/lang/Object;

    instance-of v1, v0, Lorg/jpos/util/Destroyable;

    if-eqz v1, :cond_0

    .line 56
    check-cast v0, Lorg/jpos/util/Destroyable;

    invoke-interface {v0}, Lorg/jpos/util/Destroyable;->destroy()V

    .line 57
    :cond_0
    return-void
.end method
