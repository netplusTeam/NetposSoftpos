.class public Lch/qos/logback/core/joran/action/NestedComplexPropertyIA;
.super Lch/qos/logback/core/joran/action/ImplicitAction;
.source "NestedComplexPropertyIA.java"


# instance fields
.field actionDataStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lch/qos/logback/core/joran/action/IADataForComplexProperty;",
            ">;"
        }
    .end annotation
.end field

.field private final beanDescriptionCache:Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;


# direct methods
.method public constructor <init>(Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;)V
    .locals 1
    .param p1, "beanDescriptionCache"    # Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;

    .line 51
    invoke-direct {p0}, Lch/qos/logback/core/joran/action/ImplicitAction;-><init>()V

    .line 47
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/joran/action/NestedComplexPropertyIA;->actionDataStack:Ljava/util/Stack;

    .line 52
    iput-object p1, p0, Lch/qos/logback/core/joran/action/NestedComplexPropertyIA;->beanDescriptionCache:Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;

    .line 53
    return-void
.end method


# virtual methods
.method public begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 9
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "attributes"    # Lorg/xml/sax/Attributes;

    .line 92
    const-string v0, "]"

    iget-object v1, p0, Lch/qos/logback/core/joran/action/NestedComplexPropertyIA;->actionDataStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/core/joran/action/IADataForComplexProperty;

    .line 94
    .local v1, "actionData":Lch/qos/logback/core/joran/action/IADataForComplexProperty;
    const-string v2, "class"

    invoke-interface {p3, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "className":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lch/qos/logback/core/joran/spi/InterpretationContext;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 98
    const/4 v3, 0x0

    .line 101
    .local v3, "componentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    :try_start_0
    invoke-static {v2}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 102
    iget-object v5, p0, Lch/qos/logback/core/joran/action/NestedComplexPropertyIA;->context:Lch/qos/logback/core/Context;

    invoke-static {v2, v5}, Lch/qos/logback/core/util/Loader;->loadClass(Ljava/lang/String;Lch/qos/logback/core/Context;)Ljava/lang/Class;

    move-result-object v5

    move-object v3, v5

    goto :goto_0

    .line 105
    :cond_0
    iget-object v5, v1, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->parentBean:Lch/qos/logback/core/joran/util/PropertySetter;

    .line 106
    .local v5, "parentBean":Lch/qos/logback/core/joran/util/PropertySetter;
    invoke-virtual {v1}, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->getComplexPropertyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->getAggregationType()Lch/qos/logback/core/util/AggregationType;

    move-result-object v7

    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->getDefaultNestedComponentRegistry()Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lch/qos/logback/core/joran/util/PropertySetter;->getClassNameViaImplicitRules(Ljava/lang/String;Lch/qos/logback/core/util/AggregationType;Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;)Ljava/lang/Class;

    move-result-object v6

    move-object v3, v6

    .line 110
    .end local v5    # "parentBean":Lch/qos/logback/core/joran/util/PropertySetter;
    :goto_0
    if-nez v3, :cond_1

    .line 111
    iput-boolean v4, v1, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->inError:Z

    .line 112
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find an appropriate class for property ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 113
    .local v5, "errMsg":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lch/qos/logback/core/joran/action/NestedComplexPropertyIA;->addError(Ljava/lang/String;)V

    .line 114
    return-void

    .line 117
    .end local v5    # "errMsg":Ljava/lang/String;
    :cond_1
    invoke-static {v2}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 118
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Assuming default type ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] for ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] property"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lch/qos/logback/core/joran/action/NestedComplexPropertyIA;->addInfo(Ljava/lang/String;)V

    .line 121
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->setNestedComplexProperty(Ljava/lang/Object;)V

    .line 124
    invoke-virtual {v1}, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->getNestedComplexProperty()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lch/qos/logback/core/spi/ContextAware;

    if-eqz v5, :cond_3

    .line 125
    invoke-virtual {v1}, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->getNestedComplexProperty()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lch/qos/logback/core/spi/ContextAware;

    iget-object v6, p0, Lch/qos/logback/core/joran/action/NestedComplexPropertyIA;->context:Lch/qos/logback/core/Context;

    invoke-interface {v5, v6}, Lch/qos/logback/core/spi/ContextAware;->setContext(Lch/qos/logback/core/Context;)V

    .line 129
    :cond_3
    invoke-virtual {v1}, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->getNestedComplexProperty()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Lch/qos/logback/core/joran/spi/InterpretationContext;->pushObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    goto :goto_1

    .line 131
    :catch_0
    move-exception v5

    .line 132
    .local v5, "oops":Ljava/lang/Exception;
    iput-boolean v4, v1, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->inError:Z

    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not create component ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "] of type ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {p0, v0, v5}, Lch/qos/logback/core/joran/action/NestedComplexPropertyIA;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    .end local v0    # "msg":Ljava/lang/String;
    .end local v5    # "oops":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public end(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .locals 6
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "tagName"    # Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lch/qos/logback/core/joran/action/NestedComplexPropertyIA;->actionDataStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/core/joran/action/IADataForComplexProperty;

    .line 145
    .local v0, "actionData":Lch/qos/logback/core/joran/action/IADataForComplexProperty;
    iget-boolean v1, v0, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->inError:Z

    if-eqz v1, :cond_0

    .line 146
    return-void

    .line 149
    :cond_0
    new-instance v1, Lch/qos/logback/core/joran/util/PropertySetter;

    iget-object v2, p0, Lch/qos/logback/core/joran/action/NestedComplexPropertyIA;->beanDescriptionCache:Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;

    invoke-virtual {v0}, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->getNestedComplexProperty()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lch/qos/logback/core/joran/util/PropertySetter;-><init>(Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;Ljava/lang/Object;)V

    .line 150
    .local v1, "nestedBean":Lch/qos/logback/core/joran/util/PropertySetter;
    iget-object v2, p0, Lch/qos/logback/core/joran/action/NestedComplexPropertyIA;->context:Lch/qos/logback/core/Context;

    invoke-virtual {v1, v2}, Lch/qos/logback/core/joran/util/PropertySetter;->setContext(Lch/qos/logback/core/Context;)V

    .line 153
    const-string/jumbo v2, "parent"

    invoke-virtual {v1, v2}, Lch/qos/logback/core/joran/util/PropertySetter;->computeAggregationType(Ljava/lang/String;)Lch/qos/logback/core/util/AggregationType;

    move-result-object v3

    sget-object v4, Lch/qos/logback/core/util/AggregationType;->AS_COMPLEX_PROPERTY:Lch/qos/logback/core/util/AggregationType;

    if-ne v3, v4, :cond_1

    .line 154
    iget-object v3, v0, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->parentBean:Lch/qos/logback/core/joran/util/PropertySetter;

    invoke-virtual {v3}, Lch/qos/logback/core/joran/util/PropertySetter;->getObj()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lch/qos/logback/core/joran/util/PropertySetter;->setComplexProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    :cond_1
    invoke-virtual {v0}, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->getNestedComplexProperty()Ljava/lang/Object;

    move-result-object v2

    .line 160
    .local v2, "nestedComplexProperty":Ljava/lang/Object;
    instance-of v3, v2, Lch/qos/logback/core/spi/LifeCycle;

    if-eqz v3, :cond_2

    invoke-static {v2}, Lch/qos/logback/core/joran/spi/NoAutoStartUtil;->notMarkedWithNoAutoStart(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 161
    move-object v3, v2

    check-cast v3, Lch/qos/logback/core/spi/LifeCycle;

    invoke-interface {v3}, Lch/qos/logback/core/spi/LifeCycle;->start()V

    .line 164
    :cond_2
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->peekObject()Ljava/lang/Object;

    move-result-object v3

    .line 166
    .local v3, "o":Ljava/lang/Object;
    invoke-virtual {v0}, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->getNestedComplexProperty()Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_3

    .line 167
    const-string v4, "The object on the top the of the stack is not the component pushed earlier."

    invoke-virtual {p0, v4}, Lch/qos/logback/core/joran/action/NestedComplexPropertyIA;->addError(Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_3
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->popObject()Ljava/lang/Object;

    .line 171
    sget-object v4, Lch/qos/logback/core/joran/action/NestedComplexPropertyIA$1;->$SwitchMap$ch$qos$logback$core$util$AggregationType:[I

    iget-object v5, v0, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->aggregationType:Lch/qos/logback/core/util/AggregationType;

    invoke-virtual {v5}, Lch/qos/logback/core/util/AggregationType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected aggregationType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->aggregationType:Lch/qos/logback/core/util/AggregationType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lch/qos/logback/core/joran/action/NestedComplexPropertyIA;->addError(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :pswitch_0
    iget-object v4, v0, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->parentBean:Lch/qos/logback/core/joran/util/PropertySetter;

    invoke-virtual {v0}, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->getNestedComplexProperty()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p2, v5}, Lch/qos/logback/core/joran/util/PropertySetter;->setComplexProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    goto :goto_0

    .line 177
    :pswitch_1
    iget-object v4, v0, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->parentBean:Lch/qos/logback/core/joran/util/PropertySetter;

    invoke-virtual {v0}, Lch/qos/logback/core/joran/action/IADataForComplexProperty;->getNestedComplexProperty()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p2, v5}, Lch/qos/logback/core/joran/util/PropertySetter;->addComplexProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    nop

    .line 183
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isApplicable(Lch/qos/logback/core/joran/spi/ElementPath;Lorg/xml/sax/Attributes;Lch/qos/logback/core/joran/spi/InterpretationContext;)Z
    .locals 7
    .param p1, "elementPath"    # Lch/qos/logback/core/joran/spi/ElementPath;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .param p3, "ic"    # Lch/qos/logback/core/joran/spi/InterpretationContext;

    .line 57
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/ElementPath;->peekLast()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "nestedElementTagName":Ljava/lang/String;
    invoke-virtual {p3}, Lch/qos/logback/core/joran/spi/InterpretationContext;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 61
    return v2

    .line 64
    :cond_0
    invoke-virtual {p3}, Lch/qos/logback/core/joran/spi/InterpretationContext;->peekObject()Ljava/lang/Object;

    move-result-object v1

    .line 65
    .local v1, "o":Ljava/lang/Object;
    new-instance v3, Lch/qos/logback/core/joran/util/PropertySetter;

    iget-object v4, p0, Lch/qos/logback/core/joran/action/NestedComplexPropertyIA;->beanDescriptionCache:Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;

    invoke-direct {v3, v4, v1}, Lch/qos/logback/core/joran/util/PropertySetter;-><init>(Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;Ljava/lang/Object;)V

    .line 66
    .local v3, "parentBean":Lch/qos/logback/core/joran/util/PropertySetter;
    iget-object v4, p0, Lch/qos/logback/core/joran/action/NestedComplexPropertyIA;->context:Lch/qos/logback/core/Context;

    invoke-virtual {v3, v4}, Lch/qos/logback/core/joran/util/PropertySetter;->setContext(Lch/qos/logback/core/Context;)V

    .line 68
    invoke-virtual {v3, v0}, Lch/qos/logback/core/joran/util/PropertySetter;->computeAggregationType(Ljava/lang/String;)Lch/qos/logback/core/util/AggregationType;

    move-result-object v4

    .line 70
    .local v4, "aggregationType":Lch/qos/logback/core/util/AggregationType;
    sget-object v5, Lch/qos/logback/core/joran/action/NestedComplexPropertyIA$1;->$SwitchMap$ch$qos$logback$core$util$AggregationType:[I

    invoke-virtual {v4}, Lch/qos/logback/core/util/AggregationType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PropertySetter.computeAggregationType returned "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lch/qos/logback/core/joran/action/NestedComplexPropertyIA;->addError(Ljava/lang/String;)V

    .line 85
    return v2

    .line 79
    :pswitch_0
    new-instance v2, Lch/qos/logback/core/joran/action/IADataForComplexProperty;

    invoke-direct {v2, v3, v4, v0}, Lch/qos/logback/core/joran/action/IADataForComplexProperty;-><init>(Lch/qos/logback/core/joran/util/PropertySetter;Lch/qos/logback/core/util/AggregationType;Ljava/lang/String;)V

    .line 80
    .local v2, "ad":Lch/qos/logback/core/joran/action/IADataForComplexProperty;
    iget-object v5, p0, Lch/qos/logback/core/joran/action/NestedComplexPropertyIA;->actionDataStack:Ljava/util/Stack;

    invoke-virtual {v5, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const/4 v5, 0x1

    return v5

    .line 74
    .end local v2    # "ad":Lch/qos/logback/core/joran/action/IADataForComplexProperty;
    :pswitch_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
