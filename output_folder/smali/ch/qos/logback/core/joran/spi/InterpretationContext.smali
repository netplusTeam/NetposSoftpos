.class public Lch/qos/logback/core/joran/spi/InterpretationContext;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "InterpretationContext.java"

# interfaces
.implements Lch/qos/logback/core/spi/PropertyContainer;


# instance fields
.field defaultNestedComponentRegistry:Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;

.field joranInterpreter:Lch/qos/logback/core/joran/spi/Interpreter;

.field final listenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/event/InPlayListener;",
            ">;"
        }
    .end annotation
.end field

.field objectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field objectStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field propertiesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lch/qos/logback/core/Context;Lch/qos/logback/core/joran/spi/Interpreter;)V
    .locals 2
    .param p1, "context"    # Lch/qos/logback/core/Context;
    .param p2, "joranInterpreter"    # Lch/qos/logback/core/joran/spi/Interpreter;

    .line 50
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->listenerList:Ljava/util/List;

    .line 48
    new-instance v0, Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;

    invoke-direct {v0}, Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->defaultNestedComponentRegistry:Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;

    .line 51
    iput-object p1, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->context:Lch/qos/logback/core/Context;

    .line 52
    iput-object p2, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->joranInterpreter:Lch/qos/logback/core/joran/spi/Interpreter;

    .line 53
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->objectStack:Ljava/util/Stack;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->objectMap:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->propertiesMap:Ljava/util/Map;

    .line 56
    return-void
.end method


# virtual methods
.method public addInPlayListener(Lch/qos/logback/core/joran/event/InPlayListener;)V
    .locals 2
    .param p1, "ipl"    # Lch/qos/logback/core/joran/event/InPlayListener;

    .line 165
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->listenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InPlayListener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has been already registered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/joran/spi/InterpretationContext;->addWarn(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->listenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    :goto_0
    return-void
.end method

.method public addSubstitutionProperties(Ljava/util/Properties;)V
    .locals 4
    .param p1, "props"    # Ljava/util/Properties;

    .line 130
    if-nez p1, :cond_0

    .line 131
    return-void

    .line 133
    :cond_0
    invoke-virtual {p1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 134
    .local v1, "keyObject":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 135
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "val":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lch/qos/logback/core/joran/spi/InterpretationContext;->addSubstitutionProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .end local v1    # "keyObject":Ljava/lang/Object;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "val":Ljava/lang/String;
    goto :goto_0

    .line 138
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public addSubstitutionProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 121
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 126
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->propertiesMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-void

    .line 122
    :cond_1
    :goto_0
    return-void
.end method

.method fireInPlay(Lch/qos/logback/core/joran/event/SaxEvent;)V
    .locals 2
    .param p1, "event"    # Lch/qos/logback/core/joran/event/SaxEvent;

    .line 177
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->listenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/core/joran/event/InPlayListener;

    .line 178
    .local v1, "ipl":Lch/qos/logback/core/joran/event/InPlayListener;
    invoke-interface {v1, p1}, Lch/qos/logback/core/joran/event/InPlayListener;->inPlay(Lch/qos/logback/core/joran/event/SaxEvent;)V

    .line 179
    .end local v1    # "ipl":Lch/qos/logback/core/joran/event/InPlayListener;
    goto :goto_0

    .line 180
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public getCopyOfPropertyMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->propertiesMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getDefaultNestedComponentRegistry()Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;
    .locals 1

    .line 59
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->defaultNestedComponentRegistry:Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;

    return-object v0
.end method

.method public getJoranInterpreter()Lch/qos/logback/core/joran/spi/Interpreter;
    .locals 1

    .line 85
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->joranInterpreter:Lch/qos/logback/core/joran/spi/Interpreter;

    return-object v0
.end method

.method public getLocator()Lorg/xml/sax/Locator;
    .locals 1

    .line 81
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->joranInterpreter:Lch/qos/logback/core/joran/spi/Interpreter;

    invoke-virtual {v0}, Lch/qos/logback/core/joran/spi/Interpreter;->getLocator()Lorg/xml/sax/Locator;

    move-result-object v0

    return-object v0
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .line 109
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->objectStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getObjectMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->objectMap:Ljava/util/Map;

    return-object v0
.end method

.method public getObjectStack()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->objectStack:Ljava/util/Stack;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->propertiesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 146
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 147
    return-object v0

    .line 149
    :cond_0
    iget-object v1, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->context:Lch/qos/logback/core/Context;

    invoke-interface {v1, p1}, Lch/qos/logback/core/Context;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->objectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isListenerListEmpty()Z
    .locals 1

    .line 161
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->listenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public peekObject()Ljava/lang/Object;
    .locals 1

    .line 97
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->objectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public popObject()Ljava/lang/Object;
    .locals 1

    .line 105
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->objectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pushObject(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->objectStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void
.end method

.method public removeInPlayListener(Lch/qos/logback/core/joran/event/InPlayListener;)Z
    .locals 1
    .param p1, "ipl"    # Lch/qos/logback/core/joran/event/InPlayListener;

    .line 173
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->listenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method setPropertiesMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 67
    .local p1, "propertiesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->propertiesMap:Ljava/util/Map;

    .line 68
    return-void
.end method

.method public subst(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 154
    if-nez p1, :cond_0

    .line 155
    const/4 v0, 0x0

    return-object v0

    .line 157
    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->context:Lch/qos/logback/core/Context;

    invoke-static {p1, p0, v0}, Lch/qos/logback/core/util/OptionHelper;->substVars(Ljava/lang/String;Lch/qos/logback/core/spi/PropertyContainer;Lch/qos/logback/core/spi/PropertyContainer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateLocationInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/InterpretationContext;->joranInterpreter:Lch/qos/logback/core/joran/spi/Interpreter;

    invoke-virtual {v0}, Lch/qos/logback/core/joran/spi/Interpreter;->getLocator()Lorg/xml/sax/Locator;

    move-result-object v0

    .line 73
    .local v0, "locator":Lorg/xml/sax/Locator;
    if-eqz v0, :cond_0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 76
    :cond_0
    return-object p1
.end method
