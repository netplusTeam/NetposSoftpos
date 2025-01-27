.class public Lch/qos/logback/core/joran/conditional/IfAction;
.super Lch/qos/logback/core/joran/action/Action;
.source "IfAction.java"


# static fields
.field private static final CONDITION_ATTR:Ljava/lang/String; = "condition"

.field public static final MISSING_JANINO_MSG:Ljava/lang/String; = "Could not find Janino library on the class path. Skipping conditional processing."

.field public static final MISSING_JANINO_SEE:Ljava/lang/String; = "See also http://logback.qos.ch/codes.html#ifJanino"


# instance fields
.field stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lch/qos/logback/core/joran/conditional/IfState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lch/qos/logback/core/joran/action/Action;-><init>()V

    .line 36
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/joran/conditional/IfAction;->stack:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 8
    .param p1, "ic"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/ActionException;
        }
    .end annotation

    .line 41
    new-instance v0, Lch/qos/logback/core/joran/conditional/IfState;

    invoke-direct {v0}, Lch/qos/logback/core/joran/conditional/IfState;-><init>()V

    .line 42
    .local v0, "state":Lch/qos/logback/core/joran/conditional/IfState;
    iget-object v1, p0, Lch/qos/logback/core/joran/conditional/IfAction;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    .line 43
    .local v1, "emptyStack":Z
    iget-object v2, p0, Lch/qos/logback/core/joran/conditional/IfAction;->stack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    if-nez v1, :cond_0

    .line 46
    return-void

    .line 49
    :cond_0
    invoke-virtual {p1, p0}, Lch/qos/logback/core/joran/spi/InterpretationContext;->pushObject(Ljava/lang/Object;)V

    .line 50
    invoke-static {}, Lch/qos/logback/core/util/EnvUtil;->isJaninoAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 51
    const-string v2, "Could not find Janino library on the class path. Skipping conditional processing."

    invoke-virtual {p0, v2}, Lch/qos/logback/core/joran/conditional/IfAction;->addError(Ljava/lang/String;)V

    .line 52
    const-string v2, "See also http://logback.qos.ch/codes.html#ifJanino"

    invoke-virtual {p0, v2}, Lch/qos/logback/core/joran/conditional/IfAction;->addError(Ljava/lang/String;)V

    .line 53
    return-void

    .line 56
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, v0, Lch/qos/logback/core/joran/conditional/IfState;->active:Z

    .line 57
    const/4 v2, 0x0

    .line 58
    .local v2, "condition":Lch/qos/logback/core/joran/conditional/Condition;
    const-string v3, "condition"

    invoke-interface {p3, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "conditionAttribute":Ljava/lang/String;
    invoke-static {v3}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 61
    iget-object v4, p0, Lch/qos/logback/core/joran/conditional/IfAction;->context:Lch/qos/logback/core/Context;

    invoke-static {v3, p1, v4}, Lch/qos/logback/core/util/OptionHelper;->substVars(Ljava/lang/String;Lch/qos/logback/core/spi/PropertyContainer;Lch/qos/logback/core/spi/PropertyContainer;)Ljava/lang/String;

    move-result-object v3

    .line 62
    new-instance v4, Lch/qos/logback/core/joran/conditional/PropertyEvalScriptBuilder;

    invoke-direct {v4, p1}, Lch/qos/logback/core/joran/conditional/PropertyEvalScriptBuilder;-><init>(Lch/qos/logback/core/spi/PropertyContainer;)V

    .line 63
    .local v4, "pesb":Lch/qos/logback/core/joran/conditional/PropertyEvalScriptBuilder;
    iget-object v5, p0, Lch/qos/logback/core/joran/conditional/IfAction;->context:Lch/qos/logback/core/Context;

    invoke-virtual {v4, v5}, Lch/qos/logback/core/joran/conditional/PropertyEvalScriptBuilder;->setContext(Lch/qos/logback/core/Context;)V

    .line 65
    :try_start_0
    invoke-virtual {v4, v3}, Lch/qos/logback/core/joran/conditional/PropertyEvalScriptBuilder;->build(Ljava/lang/String;)Lch/qos/logback/core/joran/conditional/Condition;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    .line 68
    goto :goto_0

    .line 66
    :catch_0
    move-exception v5

    .line 67
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to parse condition ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v5}, Lch/qos/logback/core/joran/conditional/IfAction;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v2, :cond_2

    .line 71
    invoke-interface {v2}, Lch/qos/logback/core/joran/conditional/Condition;->evaluate()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v0, Lch/qos/logback/core/joran/conditional/IfState;->boolResult:Ljava/lang/Boolean;

    .line 75
    .end local v4    # "pesb":Lch/qos/logback/core/joran/conditional/PropertyEvalScriptBuilder;
    :cond_2
    return-void
.end method

.method public end(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .locals 6
    .param p1, "ic"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/ActionException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lch/qos/logback/core/joran/conditional/IfAction;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/core/joran/conditional/IfState;

    .line 81
    .local v0, "state":Lch/qos/logback/core/joran/conditional/IfState;
    iget-boolean v1, v0, Lch/qos/logback/core/joran/conditional/IfState;->active:Z

    if-nez v1, :cond_0

    .line 82
    return-void

    .line 85
    :cond_0
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->peekObject()Ljava/lang/Object;

    move-result-object v1

    .line 86
    .local v1, "o":Ljava/lang/Object;
    if-eqz v1, :cond_6

    .line 89
    instance-of v2, v1, Lch/qos/logback/core/joran/conditional/IfAction;

    if-eqz v2, :cond_5

    .line 93
    if-ne v1, p0, :cond_4

    .line 96
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->popObject()Ljava/lang/Object;

    .line 98
    iget-object v2, v0, Lch/qos/logback/core/joran/conditional/IfState;->boolResult:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    .line 99
    const-string v2, "Failed to determine \"if then else\" result"

    invoke-virtual {p0, v2}, Lch/qos/logback/core/joran/conditional/IfAction;->addError(Ljava/lang/String;)V

    .line 100
    return-void

    .line 103
    :cond_1
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->getJoranInterpreter()Lch/qos/logback/core/joran/spi/Interpreter;

    move-result-object v2

    .line 104
    .local v2, "interpreter":Lch/qos/logback/core/joran/spi/Interpreter;
    iget-object v3, v0, Lch/qos/logback/core/joran/conditional/IfState;->thenSaxEventList:Ljava/util/List;

    .line 105
    .local v3, "listToPlay":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/joran/event/SaxEvent;>;"
    iget-object v4, v0, Lch/qos/logback/core/joran/conditional/IfState;->boolResult:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    .line 106
    iget-object v3, v0, Lch/qos/logback/core/joran/conditional/IfState;->elseSaxEventList:Ljava/util/List;

    .line 110
    :cond_2
    if-eqz v3, :cond_3

    .line 112
    invoke-virtual {v2}, Lch/qos/logback/core/joran/spi/Interpreter;->getEventPlayer()Lch/qos/logback/core/joran/spi/EventPlayer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lch/qos/logback/core/joran/spi/EventPlayer;->addEventsDynamically(Ljava/util/List;I)V

    .line 115
    :cond_3
    return-void

    .line 94
    .end local v2    # "interpreter":Lch/qos/logback/core/joran/spi/Interpreter;
    .end local v3    # "listToPlay":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/joran/event/SaxEvent;>;"
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "IfAction different then current one on stack"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected object of type ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] on stack"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unexpected null object on stack"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isActive()Z
    .locals 2

    .line 137
    iget-object v0, p0, Lch/qos/logback/core/joran/conditional/IfAction;->stack:Ljava/util/Stack;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 138
    return v1

    .line 139
    :cond_0
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    return v1

    .line 141
    :cond_1
    iget-object v0, p0, Lch/qos/logback/core/joran/conditional/IfAction;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/core/joran/conditional/IfState;

    iget-boolean v0, v0, Lch/qos/logback/core/joran/conditional/IfState;->active:Z

    return v0
.end method

.method public setElseSaxEventList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/event/SaxEvent;",
            ">;)V"
        }
    .end annotation

    .line 127
    .local p1, "elseSaxEventList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/joran/event/SaxEvent;>;"
    iget-object v0, p0, Lch/qos/logback/core/joran/conditional/IfAction;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/core/joran/conditional/IfState;

    .line 128
    .local v0, "state":Lch/qos/logback/core/joran/conditional/IfState;
    iget-boolean v1, v0, Lch/qos/logback/core/joran/conditional/IfState;->active:Z

    if-eqz v1, :cond_0

    .line 129
    iput-object p1, v0, Lch/qos/logback/core/joran/conditional/IfState;->elseSaxEventList:Ljava/util/List;

    .line 134
    return-void

    .line 131
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "setElseSaxEventList() invoked on inactive IfAction"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setThenSaxEventList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/event/SaxEvent;",
            ">;)V"
        }
    .end annotation

    .line 118
    .local p1, "thenSaxEventList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/joran/event/SaxEvent;>;"
    iget-object v0, p0, Lch/qos/logback/core/joran/conditional/IfAction;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/core/joran/conditional/IfState;

    .line 119
    .local v0, "state":Lch/qos/logback/core/joran/conditional/IfState;
    iget-boolean v1, v0, Lch/qos/logback/core/joran/conditional/IfState;->active:Z

    if-eqz v1, :cond_0

    .line 120
    iput-object p1, v0, Lch/qos/logback/core/joran/conditional/IfState;->thenSaxEventList:Ljava/util/List;

    .line 124
    return-void

    .line 122
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "setThenSaxEventList() invoked on inactive IfAction"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
