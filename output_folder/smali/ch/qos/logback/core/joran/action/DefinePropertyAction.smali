.class public Lch/qos/logback/core/joran/action/DefinePropertyAction;
.super Lch/qos/logback/core/joran/action/Action;
.source "DefinePropertyAction.java"


# instance fields
.field definer:Lch/qos/logback/core/spi/PropertyDefiner;

.field inError:Z

.field propertyName:Ljava/lang/String;

.field scope:Lch/qos/logback/core/joran/action/ActionUtil$Scope;

.field scopeStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lch/qos/logback/core/joran/action/Action;-><init>()V

    return-void
.end method


# virtual methods
.method public begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/ActionException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->scopeStr:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->scope:Lch/qos/logback/core/joran/action/ActionUtil$Scope;

    .line 43
    iput-object v0, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->propertyName:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->definer:Lch/qos/logback/core/spi/PropertyDefiner;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->inError:Z

    .line 48
    const-string v0, "name"

    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->propertyName:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "scope"

    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->scopeStr:Ljava/lang/String;

    .line 51
    invoke-static {v0}, Lch/qos/logback/core/joran/action/ActionUtil;->stringToScope(Ljava/lang/String;)Lch/qos/logback/core/joran/action/ActionUtil$Scope;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->scope:Lch/qos/logback/core/joran/action/ActionUtil$Scope;

    .line 52
    iget-object v0, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->propertyName:Ljava/lang/String;

    invoke-static {v0}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "] line "

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing property name for property definer. Near ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lch/qos/logback/core/joran/action/DefinePropertyAction;->getLineNumber(Lch/qos/logback/core/joran/spi/InterpretationContext;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/joran/action/DefinePropertyAction;->addError(Ljava/lang/String;)V

    .line 54
    iput-boolean v2, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->inError:Z

    .line 55
    return-void

    .line 59
    :cond_0
    const-string v0, "class"

    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing class name for property definer. Near ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lch/qos/logback/core/joran/action/DefinePropertyAction;->getLineNumber(Lch/qos/logback/core/joran/spi/InterpretationContext;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/joran/action/DefinePropertyAction;->addError(Ljava/lang/String;)V

    .line 62
    iput-boolean v2, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->inError:Z

    .line 63
    return-void

    .line 68
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "About to instantiate property definer of type ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/joran/action/DefinePropertyAction;->addInfo(Ljava/lang/String;)V

    .line 69
    const-class v1, Lch/qos/logback/core/spi/PropertyDefiner;

    iget-object v3, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->context:Lch/qos/logback/core/Context;

    invoke-static {v0, v1, v3}, Lch/qos/logback/core/util/OptionHelper;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Lch/qos/logback/core/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/core/spi/PropertyDefiner;

    iput-object v1, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->definer:Lch/qos/logback/core/spi/PropertyDefiner;

    .line 70
    iget-object v3, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->context:Lch/qos/logback/core/Context;

    invoke-interface {v1, v3}, Lch/qos/logback/core/spi/PropertyDefiner;->setContext(Lch/qos/logback/core/Context;)V

    .line 71
    iget-object v1, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->definer:Lch/qos/logback/core/spi/PropertyDefiner;

    instance-of v3, v1, Lch/qos/logback/core/spi/LifeCycle;

    if-eqz v3, :cond_2

    .line 72
    check-cast v1, Lch/qos/logback/core/spi/LifeCycle;

    invoke-interface {v1}, Lch/qos/logback/core/spi/LifeCycle;->start()V

    .line 74
    :cond_2
    iget-object v1, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->definer:Lch/qos/logback/core/spi/PropertyDefiner;

    invoke-virtual {p1, v1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->pushObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    nop

    .line 80
    return-void

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "oops":Ljava/lang/Exception;
    iput-boolean v2, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->inError:Z

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create an PropertyDefiner of type ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lch/qos/logback/core/joran/action/DefinePropertyAction;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    new-instance v2, Lch/qos/logback/core/joran/spi/ActionException;

    invoke-direct {v2, v1}, Lch/qos/logback/core/joran/spi/ActionException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public end(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .locals 4
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "name"    # Ljava/lang/String;

    .line 87
    iget-boolean v0, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->inError:Z

    if-eqz v0, :cond_0

    .line 88
    return-void

    .line 91
    :cond_0
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->peekObject()Ljava/lang/Object;

    move-result-object v0

    .line 93
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->definer:Lch/qos/logback/core/spi/PropertyDefiner;

    if-eq v0, v1, :cond_1

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The object at the of the stack is not the property definer for property named ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->propertyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] pushed earlier."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/joran/action/DefinePropertyAction;->addWarn(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Popping property definer for property named ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->propertyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] from the object stack"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/joran/action/DefinePropertyAction;->addInfo(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->popObject()Ljava/lang/Object;

    .line 100
    iget-object v1, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->definer:Lch/qos/logback/core/spi/PropertyDefiner;

    invoke-interface {v1}, Lch/qos/logback/core/spi/PropertyDefiner;->getPropertyValue()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "propertyValue":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 102
    iget-object v2, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->propertyName:Ljava/lang/String;

    iget-object v3, p0, Lch/qos/logback/core/joran/action/DefinePropertyAction;->scope:Lch/qos/logback/core/joran/action/ActionUtil$Scope;

    invoke-static {p1, v2, v1, v3}, Lch/qos/logback/core/joran/action/ActionUtil;->setProperty(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Ljava/lang/String;Lch/qos/logback/core/joran/action/ActionUtil$Scope;)V

    .line 105
    .end local v1    # "propertyValue":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void
.end method
