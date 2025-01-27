.class public abstract Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;
.super Lch/qos/logback/core/joran/action/Action;
.source "AbstractEventEvaluatorAction.java"


# instance fields
.field evaluator:Lch/qos/logback/core/boolex/EventEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/boolex/EventEvaluator<",
            "*>;"
        }
    .end annotation
.end field

.field inError:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lch/qos/logback/core/joran/action/Action;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->inError:Z

    return-void
.end method


# virtual methods
.method public begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attributes"    # Lorg/xml/sax/Attributes;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->inError:Z

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->evaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    .line 39
    const-string v0, "class"

    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {p0}, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->defaultClassName()Ljava/lang/String;

    move-result-object v0

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Assuming default evaluator class ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->addInfo(Ljava/lang/String;)V

    .line 45
    :cond_0
    invoke-static {v0}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 46
    invoke-virtual {p0}, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->defaultClassName()Ljava/lang/String;

    move-result-object v0

    .line 47
    iput-boolean v2, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->inError:Z

    .line 48
    const-string v1, "Mandatory \"class\" attribute not set for <evaluator>"

    invoke-virtual {p0, v1}, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->addError(Ljava/lang/String;)V

    .line 49
    return-void

    .line 52
    :cond_1
    const-string v1, "name"

    invoke-interface {p3, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "evaluatorName":Ljava/lang/String;
    invoke-static {v1}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 54
    iput-boolean v2, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->inError:Z

    .line 55
    const-string v2, "Mandatory \"name\" attribute not set for <evaluator>"

    invoke-virtual {p0, v2}, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->addError(Ljava/lang/String;)V

    .line 56
    return-void

    .line 59
    :cond_2
    :try_start_0
    const-class v3, Lch/qos/logback/core/boolex/EventEvaluator;

    iget-object v4, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->context:Lch/qos/logback/core/Context;

    invoke-static {v0, v3, v4}, Lch/qos/logback/core/util/OptionHelper;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Lch/qos/logback/core/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/qos/logback/core/boolex/EventEvaluator;

    iput-object v3, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->evaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    .line 61
    iget-object v4, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->context:Lch/qos/logback/core/Context;

    invoke-interface {v3, v4}, Lch/qos/logback/core/boolex/EventEvaluator;->setContext(Lch/qos/logback/core/Context;)V

    .line 62
    iget-object v3, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->evaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    invoke-interface {v3, v1}, Lch/qos/logback/core/boolex/EventEvaluator;->setName(Ljava/lang/String;)V

    .line 64
    iget-object v3, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->evaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    invoke-virtual {p1, v3}, Lch/qos/logback/core/joran/spi/InterpretationContext;->pushObject(Ljava/lang/Object;)V

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding evaluator named ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] to the object stack"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->addInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_0

    .line 67
    :catch_0
    move-exception v3

    .line 68
    .local v3, "oops":Ljava/lang/Exception;
    iput-boolean v2, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->inError:Z

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create evaluator of type "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .end local v3    # "oops":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected abstract defaultClassName()Ljava/lang/String;
.end method

.method public end(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .locals 4
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "e"    # Ljava/lang/String;

    .line 86
    iget-boolean v0, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->inError:Z

    if-eqz v0, :cond_0

    .line 87
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->evaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    instance-of v1, v0, Lch/qos/logback/core/spi/LifeCycle;

    if-eqz v1, :cond_1

    .line 91
    invoke-interface {v0}, Lch/qos/logback/core/spi/LifeCycle;->start()V

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting evaluator named ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->evaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    invoke-interface {v1}, Lch/qos/logback/core/boolex/EventEvaluator;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->addInfo(Ljava/lang/String;)V

    .line 95
    :cond_1
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->peekObject()Ljava/lang/Object;

    move-result-object v0

    .line 97
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->evaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    if-eq v0, v1, :cond_2

    .line 98
    const-string v1, "The object on the top the of the stack is not the evaluator pushed earlier."

    invoke-virtual {p0, v1}, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->addWarn(Ljava/lang/String;)V

    goto :goto_1

    .line 100
    :cond_2
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->popObject()Ljava/lang/Object;

    .line 103
    :try_start_0
    iget-object v1, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->context:Lch/qos/logback/core/Context;

    const-string v2, "EVALUATOR_MAP"

    invoke-interface {v1, v2}, Lch/qos/logback/core/Context;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 104
    .local v1, "evaluatorMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lch/qos/logback/core/boolex/EventEvaluator<*>;>;"
    if-nez v1, :cond_3

    .line 105
    const-string v2, "Could not find EvaluatorMap"

    invoke-virtual {p0, v2}, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->addError(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_3
    iget-object v2, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->evaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    invoke-interface {v2}, Lch/qos/logback/core/boolex/EventEvaluator;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->evaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v1    # "evaluatorMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lch/qos/logback/core/boolex/EventEvaluator<*>;>;"
    :goto_0
    goto :goto_1

    .line 109
    :catch_0
    move-exception v1

    .line 110
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not set evaluator named ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->evaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public finish(Lch/qos/logback/core/joran/spi/InterpretationContext;)V
    .locals 0
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;

    .line 116
    return-void
.end method
