.class public abstract Lch/qos/logback/core/joran/conditional/ThenOrElseActionBase;
.super Lch/qos/logback/core/joran/action/Action;
.source "ThenOrElseActionBase.java"


# instance fields
.field stateStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lch/qos/logback/core/joran/conditional/ThenActionState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lch/qos/logback/core/joran/action/Action;-><init>()V

    .line 30
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/joran/conditional/ThenOrElseActionBase;->stateStack:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "ic"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/ActionException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Lch/qos/logback/core/joran/conditional/ThenOrElseActionBase;->weAreActive(Lch/qos/logback/core/joran/spi/InterpretationContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    return-void

    .line 38
    :cond_0
    new-instance v0, Lch/qos/logback/core/joran/conditional/ThenActionState;

    invoke-direct {v0}, Lch/qos/logback/core/joran/conditional/ThenActionState;-><init>()V

    .line 39
    .local v0, "state":Lch/qos/logback/core/joran/conditional/ThenActionState;
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->isListenerListEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    invoke-virtual {p1, v0}, Lch/qos/logback/core/joran/spi/InterpretationContext;->addInPlayListener(Lch/qos/logback/core/joran/event/InPlayListener;)V

    .line 41
    const/4 v1, 0x1

    iput-boolean v1, v0, Lch/qos/logback/core/joran/conditional/ThenActionState;->isRegistered:Z

    .line 43
    :cond_1
    iget-object v1, p0, Lch/qos/logback/core/joran/conditional/ThenOrElseActionBase;->stateStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public end(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .locals 4
    .param p1, "ic"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/ActionException;
        }
    .end annotation

    .line 56
    invoke-virtual {p0, p1}, Lch/qos/logback/core/joran/conditional/ThenOrElseActionBase;->weAreActive(Lch/qos/logback/core/joran/spi/InterpretationContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/joran/conditional/ThenOrElseActionBase;->stateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/core/joran/conditional/ThenActionState;

    .line 60
    .local v0, "state":Lch/qos/logback/core/joran/conditional/ThenActionState;
    iget-boolean v1, v0, Lch/qos/logback/core/joran/conditional/ThenActionState;->isRegistered:Z

    if-eqz v1, :cond_2

    .line 61
    invoke-virtual {p1, v0}, Lch/qos/logback/core/joran/spi/InterpretationContext;->removeInPlayListener(Lch/qos/logback/core/joran/event/InPlayListener;)Z

    .line 62
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->peekObject()Ljava/lang/Object;

    move-result-object v1

    .line 63
    .local v1, "o":Ljava/lang/Object;
    instance-of v2, v1, Lch/qos/logback/core/joran/conditional/IfAction;

    if-eqz v2, :cond_1

    .line 64
    move-object v2, v1

    check-cast v2, Lch/qos/logback/core/joran/conditional/IfAction;

    .line 65
    .local v2, "ifAction":Lch/qos/logback/core/joran/conditional/IfAction;
    iget-object v3, v0, Lch/qos/logback/core/joran/conditional/ThenActionState;->eventList:Ljava/util/List;

    invoke-virtual {p0, v3}, Lch/qos/logback/core/joran/conditional/ThenOrElseActionBase;->removeFirstAndLastFromList(Ljava/util/List;)V

    .line 66
    iget-object v3, v0, Lch/qos/logback/core/joran/conditional/ThenActionState;->eventList:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lch/qos/logback/core/joran/conditional/ThenOrElseActionBase;->registerEventList(Lch/qos/logback/core/joran/conditional/IfAction;Ljava/util/List;)V

    .line 67
    .end local v2    # "ifAction":Lch/qos/logback/core/joran/conditional/IfAction;
    goto :goto_0

    .line 68
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Missing IfAction on top of stack"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    .end local v1    # "o":Ljava/lang/Object;
    :cond_2
    :goto_0
    return-void
.end method

.method abstract registerEventList(Lch/qos/logback/core/joran/conditional/IfAction;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/joran/conditional/IfAction;",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/event/SaxEvent;",
            ">;)V"
        }
    .end annotation
.end method

.method removeFirstAndLastFromList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/event/SaxEvent;",
            ">;)V"
        }
    .end annotation

    .line 76
    .local p1, "eventList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/joran/event/SaxEvent;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 77
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 78
    return-void
.end method

.method weAreActive(Lch/qos/logback/core/joran/spi/InterpretationContext;)Z
    .locals 3
    .param p1, "ic"    # Lch/qos/logback/core/joran/spi/InterpretationContext;

    .line 47
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->peekObject()Ljava/lang/Object;

    move-result-object v0

    .line 48
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Lch/qos/logback/core/joran/conditional/IfAction;

    if-nez v1, :cond_0

    .line 49
    const/4 v1, 0x0

    return v1

    .line 50
    :cond_0
    move-object v1, v0

    check-cast v1, Lch/qos/logback/core/joran/conditional/IfAction;

    .line 51
    .local v1, "ifAction":Lch/qos/logback/core/joran/conditional/IfAction;
    invoke-virtual {v1}, Lch/qos/logback/core/joran/conditional/IfAction;->isActive()Z

    move-result v2

    return v2
.end method
