.class public Lch/qos/logback/core/joran/action/NestedBasicPropertyIA;
.super Lch/qos/logback/core/joran/action/ImplicitAction;
.source "NestedBasicPropertyIA.java"


# instance fields
.field actionDataStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lch/qos/logback/core/joran/action/IADataForBasicProperty;",
            ">;"
        }
    .end annotation
.end field

.field private final beanDescriptionCache:Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;


# direct methods
.method public constructor <init>(Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;)V
    .locals 1
    .param p1, "beanDescriptionCache"    # Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;

    .line 46
    invoke-direct {p0}, Lch/qos/logback/core/joran/action/ImplicitAction;-><init>()V

    .line 42
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/joran/action/NestedBasicPropertyIA;->actionDataStack:Ljava/util/Stack;

    .line 47
    iput-object p1, p0, Lch/qos/logback/core/joran/action/NestedBasicPropertyIA;->beanDescriptionCache:Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;

    .line 48
    return-void
.end method


# virtual methods
.method public begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "attributes"    # Lorg/xml/sax/Attributes;

    .line 86
    return-void
.end method

.method public body(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .locals 4
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "body"    # Ljava/lang/String;

    .line 90
    invoke-virtual {p1, p2}, Lch/qos/logback/core/joran/spi/InterpretationContext;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "finalBody":Ljava/lang/String;
    iget-object v1, p0, Lch/qos/logback/core/joran/action/NestedBasicPropertyIA;->actionDataStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/core/joran/action/IADataForBasicProperty;

    .line 93
    .local v1, "actionData":Lch/qos/logback/core/joran/action/IADataForBasicProperty;
    sget-object v2, Lch/qos/logback/core/joran/action/NestedBasicPropertyIA$1;->$SwitchMap$ch$qos$logback$core$util$AggregationType:[I

    iget-object v3, v1, Lch/qos/logback/core/joran/action/IADataForBasicProperty;->aggregationType:Lch/qos/logback/core/util/AggregationType;

    invoke-virtual {v3}, Lch/qos/logback/core/util/AggregationType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected aggregationType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lch/qos/logback/core/joran/action/IADataForBasicProperty;->aggregationType:Lch/qos/logback/core/util/AggregationType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lch/qos/logback/core/joran/action/NestedBasicPropertyIA;->addError(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :pswitch_0
    iget-object v2, v1, Lch/qos/logback/core/joran/action/IADataForBasicProperty;->parentBean:Lch/qos/logback/core/joran/util/PropertySetter;

    iget-object v3, v1, Lch/qos/logback/core/joran/action/IADataForBasicProperty;->propertyName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lch/qos/logback/core/joran/util/PropertySetter;->addBasicProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    goto :goto_0

    .line 95
    :pswitch_1
    iget-object v2, v1, Lch/qos/logback/core/joran/action/IADataForBasicProperty;->parentBean:Lch/qos/logback/core/joran/util/PropertySetter;

    iget-object v3, v1, Lch/qos/logback/core/joran/action/IADataForBasicProperty;->propertyName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lch/qos/logback/core/joran/util/PropertySetter;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    nop

    .line 103
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public end(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .locals 1
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "tagName"    # Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lch/qos/logback/core/joran/action/NestedBasicPropertyIA;->actionDataStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 108
    return-void
.end method

.method public isApplicable(Lch/qos/logback/core/joran/spi/ElementPath;Lorg/xml/sax/Attributes;Lch/qos/logback/core/joran/spi/InterpretationContext;)Z
    .locals 7
    .param p1, "elementPath"    # Lch/qos/logback/core/joran/spi/ElementPath;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .param p3, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;

    .line 53
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/ElementPath;->peekLast()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "nestedElementTagName":Ljava/lang/String;
    invoke-virtual {p3}, Lch/qos/logback/core/joran/spi/InterpretationContext;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 57
    return v2

    .line 60
    :cond_0
    invoke-virtual {p3}, Lch/qos/logback/core/joran/spi/InterpretationContext;->peekObject()Ljava/lang/Object;

    move-result-object v1

    .line 61
    .local v1, "o":Ljava/lang/Object;
    new-instance v3, Lch/qos/logback/core/joran/util/PropertySetter;

    iget-object v4, p0, Lch/qos/logback/core/joran/action/NestedBasicPropertyIA;->beanDescriptionCache:Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;

    invoke-direct {v3, v4, v1}, Lch/qos/logback/core/joran/util/PropertySetter;-><init>(Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;Ljava/lang/Object;)V

    .line 62
    .local v3, "parentBean":Lch/qos/logback/core/joran/util/PropertySetter;
    iget-object v4, p0, Lch/qos/logback/core/joran/action/NestedBasicPropertyIA;->context:Lch/qos/logback/core/Context;

    invoke-virtual {v3, v4}, Lch/qos/logback/core/joran/util/PropertySetter;->setContext(Lch/qos/logback/core/Context;)V

    .line 64
    invoke-virtual {v3, v0}, Lch/qos/logback/core/joran/util/PropertySetter;->computeAggregationType(Ljava/lang/String;)Lch/qos/logback/core/util/AggregationType;

    move-result-object v4

    .line 66
    .local v4, "aggregationType":Lch/qos/logback/core/util/AggregationType;
    sget-object v5, Lch/qos/logback/core/joran/action/NestedBasicPropertyIA$1;->$SwitchMap$ch$qos$logback$core$util$AggregationType:[I

    invoke-virtual {v4}, Lch/qos/logback/core/util/AggregationType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PropertySetter.canContainComponent returned "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lch/qos/logback/core/joran/action/NestedBasicPropertyIA;->addError(Ljava/lang/String;)V

    .line 80
    return v2

    .line 74
    :pswitch_0
    new-instance v2, Lch/qos/logback/core/joran/action/IADataForBasicProperty;

    invoke-direct {v2, v3, v4, v0}, Lch/qos/logback/core/joran/action/IADataForBasicProperty;-><init>(Lch/qos/logback/core/joran/util/PropertySetter;Lch/qos/logback/core/util/AggregationType;Ljava/lang/String;)V

    .line 75
    .local v2, "ad":Lch/qos/logback/core/joran/action/IADataForBasicProperty;
    iget-object v5, p0, Lch/qos/logback/core/joran/action/NestedBasicPropertyIA;->actionDataStack:Ljava/util/Stack;

    invoke-virtual {v5, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const/4 v5, 0x1

    return v5

    .line 70
    .end local v2    # "ad":Lch/qos/logback/core/joran/action/IADataForBasicProperty;
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
