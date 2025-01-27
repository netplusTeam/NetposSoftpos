.class public Lch/qos/logback/core/joran/action/StatusListenerAction;
.super Lch/qos/logback/core/joran/action/Action;
.source "StatusListenerAction.java"


# instance fields
.field effectivelyAdded:Ljava/lang/Boolean;

.field inError:Z

.field statusListener:Lch/qos/logback/core/status/StatusListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lch/qos/logback/core/joran/action/Action;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/joran/action/StatusListenerAction;->inError:Z

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/core/joran/action/StatusListenerAction;->effectivelyAdded:Ljava/lang/Boolean;

    .line 29
    iput-object v0, p0, Lch/qos/logback/core/joran/action/StatusListenerAction;->statusListener:Lch/qos/logback/core/status/StatusListener;

    return-void
.end method

.method private isEffectivelyAdded()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lch/qos/logback/core/joran/action/StatusListenerAction;->effectivelyAdded:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x0

    return v0

    .line 78
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/ActionException;
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/joran/action/StatusListenerAction;->inError:Z

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/core/joran/action/StatusListenerAction;->effectivelyAdded:Ljava/lang/Boolean;

    .line 34
    const-string v0, "class"

    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing class name for statusListener. Near ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] line "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lch/qos/logback/core/joran/action/StatusListenerAction;->getLineNumber(Lch/qos/logback/core/joran/spi/InterpretationContext;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/joran/action/StatusListenerAction;->addError(Ljava/lang/String;)V

    .line 37
    iput-boolean v2, p0, Lch/qos/logback/core/joran/action/StatusListenerAction;->inError:Z

    .line 38
    return-void

    .line 42
    :cond_0
    :try_start_0
    const-class v1, Lch/qos/logback/core/status/StatusListener;

    iget-object v3, p0, Lch/qos/logback/core/joran/action/StatusListenerAction;->context:Lch/qos/logback/core/Context;

    invoke-static {v0, v1, v3}, Lch/qos/logback/core/util/OptionHelper;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Lch/qos/logback/core/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/core/status/StatusListener;

    iput-object v1, p0, Lch/qos/logback/core/joran/action/StatusListenerAction;->statusListener:Lch/qos/logback/core/status/StatusListener;

    .line 43
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->getContext()Lch/qos/logback/core/Context;

    move-result-object v1

    invoke-interface {v1}, Lch/qos/logback/core/Context;->getStatusManager()Lch/qos/logback/core/status/StatusManager;

    move-result-object v1

    iget-object v3, p0, Lch/qos/logback/core/joran/action/StatusListenerAction;->statusListener:Lch/qos/logback/core/status/StatusListener;

    invoke-interface {v1, v3}, Lch/qos/logback/core/status/StatusManager;->add(Lch/qos/logback/core/status/StatusListener;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lch/qos/logback/core/joran/action/StatusListenerAction;->effectivelyAdded:Ljava/lang/Boolean;

    .line 44
    iget-object v1, p0, Lch/qos/logback/core/joran/action/StatusListenerAction;->statusListener:Lch/qos/logback/core/status/StatusListener;

    instance-of v3, v1, Lch/qos/logback/core/spi/ContextAware;

    if-eqz v3, :cond_1

    .line 45
    check-cast v1, Lch/qos/logback/core/spi/ContextAware;

    iget-object v3, p0, Lch/qos/logback/core/joran/action/StatusListenerAction;->context:Lch/qos/logback/core/Context;

    invoke-interface {v1, v3}, Lch/qos/logback/core/spi/ContextAware;->setContext(Lch/qos/logback/core/Context;)V

    .line 47
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added status listener of type ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/joran/action/StatusListenerAction;->addInfo(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lch/qos/logback/core/joran/action/StatusListenerAction;->statusListener:Lch/qos/logback/core/status/StatusListener;

    invoke-virtual {p1, v1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->pushObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    nop

    .line 55
    return-void

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/Exception;
    iput-boolean v2, p0, Lch/qos/logback/core/joran/action/StatusListenerAction;->inError:Z

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create an StatusListener of type ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lch/qos/logback/core/joran/action/StatusListenerAction;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    new-instance v2, Lch/qos/logback/core/joran/spi/ActionException;

    invoke-direct {v2, v1}, Lch/qos/logback/core/joran/spi/ActionException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public end(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .locals 2
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "e"    # Ljava/lang/String;

    .line 61
    iget-boolean v0, p0, Lch/qos/logback/core/joran/action/StatusListenerAction;->inError:Z

    if-eqz v0, :cond_0

    .line 62
    return-void

    .line 64
    :cond_0
    invoke-direct {p0}, Lch/qos/logback/core/joran/action/StatusListenerAction;->isEffectivelyAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lch/qos/logback/core/joran/action/StatusListenerAction;->statusListener:Lch/qos/logback/core/status/StatusListener;

    instance-of v1, v0, Lch/qos/logback/core/spi/LifeCycle;

    if-eqz v1, :cond_1

    .line 65
    check-cast v0, Lch/qos/logback/core/spi/LifeCycle;

    invoke-interface {v0}, Lch/qos/logback/core/spi/LifeCycle;->start()V

    .line 67
    :cond_1
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->peekObject()Ljava/lang/Object;

    move-result-object v0

    .line 68
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lch/qos/logback/core/joran/action/StatusListenerAction;->statusListener:Lch/qos/logback/core/status/StatusListener;

    if-eq v0, v1, :cond_2

    .line 69
    const-string v1, "The object at the of the stack is not the statusListener pushed earlier."

    invoke-virtual {p0, v1}, Lch/qos/logback/core/joran/action/StatusListenerAction;->addWarn(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->popObject()Ljava/lang/Object;

    .line 73
    :goto_0
    return-void
.end method

.method public finish(Lch/qos/logback/core/joran/spi/InterpretationContext;)V
    .locals 0
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;

    .line 58
    return-void
.end method
