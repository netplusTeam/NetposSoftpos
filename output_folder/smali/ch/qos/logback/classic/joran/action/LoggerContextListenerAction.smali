.class public Lch/qos/logback/classic/joran/action/LoggerContextListenerAction;
.super Lch/qos/logback/core/joran/action/Action;
.source "LoggerContextListenerAction.java"


# instance fields
.field inError:Z

.field lcl:Lch/qos/logback/classic/spi/LoggerContextListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lch/qos/logback/core/joran/action/Action;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/classic/joran/action/LoggerContextListenerAction;->inError:Z

    return-void
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

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/classic/joran/action/LoggerContextListenerAction;->inError:Z

    .line 36
    const-string v0, "class"

    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 38
    const-string v1, "Mandatory \"class\" attribute not set for <loggerContextListener> element"

    invoke-virtual {p0, v1}, Lch/qos/logback/classic/joran/action/LoggerContextListenerAction;->addError(Ljava/lang/String;)V

    .line 39
    iput-boolean v2, p0, Lch/qos/logback/classic/joran/action/LoggerContextListenerAction;->inError:Z

    .line 40
    return-void

    .line 44
    :cond_0
    :try_start_0
    const-class v1, Lch/qos/logback/classic/spi/LoggerContextListener;

    iget-object v3, p0, Lch/qos/logback/classic/joran/action/LoggerContextListenerAction;->context:Lch/qos/logback/core/Context;

    invoke-static {v0, v1, v3}, Lch/qos/logback/core/util/OptionHelper;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Lch/qos/logback/core/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/classic/spi/LoggerContextListener;

    iput-object v1, p0, Lch/qos/logback/classic/joran/action/LoggerContextListenerAction;->lcl:Lch/qos/logback/classic/spi/LoggerContextListener;

    .line 46
    instance-of v3, v1, Lch/qos/logback/core/spi/ContextAware;

    if-eqz v3, :cond_1

    .line 47
    check-cast v1, Lch/qos/logback/core/spi/ContextAware;

    iget-object v3, p0, Lch/qos/logback/classic/joran/action/LoggerContextListenerAction;->context:Lch/qos/logback/core/Context;

    invoke-interface {v1, v3}, Lch/qos/logback/core/spi/ContextAware;->setContext(Lch/qos/logback/core/Context;)V

    .line 50
    :cond_1
    iget-object v1, p0, Lch/qos/logback/classic/joran/action/LoggerContextListenerAction;->lcl:Lch/qos/logback/classic/spi/LoggerContextListener;

    invoke-virtual {p1, v1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->pushObject(Ljava/lang/Object;)V

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding LoggerContextListener of type ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] to the object stack"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/classic/joran/action/LoggerContextListenerAction;->addInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "oops":Ljava/lang/Exception;
    iput-boolean v2, p0, Lch/qos/logback/classic/joran/action/LoggerContextListenerAction;->inError:Z

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create LoggerContextListener of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lch/qos/logback/classic/joran/action/LoggerContextListenerAction;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .end local v1    # "oops":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public end(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .locals 3
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/ActionException;
        }
    .end annotation

    .line 61
    iget-boolean v0, p0, Lch/qos/logback/classic/joran/action/LoggerContextListenerAction;->inError:Z

    if-eqz v0, :cond_0

    .line 62
    return-void

    .line 64
    :cond_0
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->peekObject()Ljava/lang/Object;

    move-result-object v0

    .line 66
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lch/qos/logback/classic/joran/action/LoggerContextListenerAction;->lcl:Lch/qos/logback/classic/spi/LoggerContextListener;

    if-eq v0, v1, :cond_1

    .line 67
    const-string v1, "The object on the top the of the stack is not the LoggerContextListener pushed earlier."

    invoke-virtual {p0, v1}, Lch/qos/logback/classic/joran/action/LoggerContextListenerAction;->addWarn(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_1
    instance-of v2, v1, Lch/qos/logback/core/spi/LifeCycle;

    if-eqz v2, :cond_2

    .line 70
    check-cast v1, Lch/qos/logback/core/spi/LifeCycle;

    invoke-interface {v1}, Lch/qos/logback/core/spi/LifeCycle;->start()V

    .line 71
    const-string v1, "Starting LoggerContextListener"

    invoke-virtual {p0, v1}, Lch/qos/logback/classic/joran/action/LoggerContextListenerAction;->addInfo(Ljava/lang/String;)V

    .line 73
    :cond_2
    iget-object v1, p0, Lch/qos/logback/classic/joran/action/LoggerContextListenerAction;->context:Lch/qos/logback/core/Context;

    check-cast v1, Lch/qos/logback/classic/LoggerContext;

    iget-object v2, p0, Lch/qos/logback/classic/joran/action/LoggerContextListenerAction;->lcl:Lch/qos/logback/classic/spi/LoggerContextListener;

    invoke-virtual {v1, v2}, Lch/qos/logback/classic/LoggerContext;->addListener(Lch/qos/logback/classic/spi/LoggerContextListener;)V

    .line 74
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->popObject()Ljava/lang/Object;

    .line 76
    :goto_0
    return-void
.end method
