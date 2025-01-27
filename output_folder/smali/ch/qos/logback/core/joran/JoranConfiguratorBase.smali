.class public abstract Lch/qos/logback/core/joran/JoranConfiguratorBase;
.super Lch/qos/logback/core/joran/GenericConfigurator;
.source "JoranConfiguratorBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/joran/GenericConfigurator;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    .local p0, "this":Lch/qos/logback/core/joran/JoranConfiguratorBase;, "Lch/qos/logback/core/joran/JoranConfiguratorBase<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/joran/GenericConfigurator;-><init>()V

    return-void
.end method


# virtual methods
.method protected addImplicitRules(Lch/qos/logback/core/joran/spi/Interpreter;)V
    .locals 3
    .param p1, "interpreter"    # Lch/qos/logback/core/joran/spi/Interpreter;

    .line 84
    .local p0, "this":Lch/qos/logback/core/joran/JoranConfiguratorBase;, "Lch/qos/logback/core/joran/JoranConfiguratorBase<TE;>;"
    new-instance v0, Lch/qos/logback/core/joran/action/NestedComplexPropertyIA;

    invoke-virtual {p0}, Lch/qos/logback/core/joran/JoranConfiguratorBase;->getBeanDescriptionCache()Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/action/NestedComplexPropertyIA;-><init>(Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;)V

    .line 85
    .local v0, "nestedComplexPropertyIA":Lch/qos/logback/core/joran/action/NestedComplexPropertyIA;
    iget-object v1, p0, Lch/qos/logback/core/joran/JoranConfiguratorBase;->context:Lch/qos/logback/core/Context;

    invoke-virtual {v0, v1}, Lch/qos/logback/core/joran/action/NestedComplexPropertyIA;->setContext(Lch/qos/logback/core/Context;)V

    .line 86
    invoke-virtual {p1, v0}, Lch/qos/logback/core/joran/spi/Interpreter;->addImplicitAction(Lch/qos/logback/core/joran/action/ImplicitAction;)V

    .line 88
    new-instance v1, Lch/qos/logback/core/joran/action/NestedBasicPropertyIA;

    invoke-virtual {p0}, Lch/qos/logback/core/joran/JoranConfiguratorBase;->getBeanDescriptionCache()Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;

    move-result-object v2

    invoke-direct {v1, v2}, Lch/qos/logback/core/joran/action/NestedBasicPropertyIA;-><init>(Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;)V

    .line 89
    .local v1, "nestedBasicIA":Lch/qos/logback/core/joran/action/NestedBasicPropertyIA;
    iget-object v2, p0, Lch/qos/logback/core/joran/JoranConfiguratorBase;->context:Lch/qos/logback/core/Context;

    invoke-virtual {v1, v2}, Lch/qos/logback/core/joran/action/NestedBasicPropertyIA;->setContext(Lch/qos/logback/core/Context;)V

    .line 90
    invoke-virtual {p1, v1}, Lch/qos/logback/core/joran/spi/Interpreter;->addImplicitAction(Lch/qos/logback/core/joran/action/ImplicitAction;)V

    .line 91
    return-void
.end method

.method protected addInstanceRules(Lch/qos/logback/core/joran/spi/RuleStore;)V
    .locals 3
    .param p1, "rs"    # Lch/qos/logback/core/joran/spi/RuleStore;

    .line 58
    .local p0, "this":Lch/qos/logback/core/joran/JoranConfiguratorBase;, "Lch/qos/logback/core/joran/JoranConfiguratorBase<TE;>;"
    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/variable"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/core/joran/action/PropertyAction;

    invoke-direct {v1}, Lch/qos/logback/core/joran/action/PropertyAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    .line 59
    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/property"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/core/joran/action/PropertyAction;

    invoke-direct {v1}, Lch/qos/logback/core/joran/action/PropertyAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    .line 61
    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/substitutionProperty"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/core/joran/action/PropertyAction;

    invoke-direct {v1}, Lch/qos/logback/core/joran/action/PropertyAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    .line 63
    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/timestamp"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/core/joran/action/TimestampAction;

    invoke-direct {v1}, Lch/qos/logback/core/joran/action/TimestampAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    .line 64
    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/shutdownHook"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/core/joran/action/ShutdownHookAction;

    invoke-direct {v1}, Lch/qos/logback/core/joran/action/ShutdownHookAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    .line 65
    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/define"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/core/joran/action/DefinePropertyAction;

    invoke-direct {v1}, Lch/qos/logback/core/joran/action/DefinePropertyAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    .line 69
    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/contextProperty"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/core/joran/action/ContextPropertyAction;

    invoke-direct {v1}, Lch/qos/logback/core/joran/action/ContextPropertyAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    .line 71
    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/conversionRule"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/core/joran/action/ConversionRuleAction;

    invoke-direct {v1}, Lch/qos/logback/core/joran/action/ConversionRuleAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    .line 73
    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/statusListener"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/core/joran/action/StatusListenerAction;

    invoke-direct {v1}, Lch/qos/logback/core/joran/action/StatusListenerAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    .line 75
    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/appender"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/core/joran/action/AppenderAction;

    invoke-direct {v1}, Lch/qos/logback/core/joran/action/AppenderAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    .line 76
    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/appender/appender-ref"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/core/joran/action/AppenderRefAction;

    invoke-direct {v1}, Lch/qos/logback/core/joran/action/AppenderRefAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    .line 77
    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/newRule"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/core/joran/action/NewRuleAction;

    invoke-direct {v1}, Lch/qos/logback/core/joran/action/NewRuleAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    .line 78
    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "*/param"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/core/joran/action/ParamAction;

    invoke-virtual {p0}, Lch/qos/logback/core/joran/JoranConfiguratorBase;->getBeanDescriptionCache()Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;

    move-result-object v2

    invoke-direct {v1, v2}, Lch/qos/logback/core/joran/action/ParamAction;-><init>(Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;)V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    .line 79
    return-void
.end method

.method protected buildInterpreter()V
    .locals 3

    .line 95
    .local p0, "this":Lch/qos/logback/core/joran/JoranConfiguratorBase;, "Lch/qos/logback/core/joran/JoranConfiguratorBase<TE;>;"
    invoke-super {p0}, Lch/qos/logback/core/joran/GenericConfigurator;->buildInterpreter()V

    .line 96
    iget-object v0, p0, Lch/qos/logback/core/joran/JoranConfiguratorBase;->interpreter:Lch/qos/logback/core/joran/spi/Interpreter;

    invoke-virtual {v0}, Lch/qos/logback/core/joran/spi/Interpreter;->getInterpretationContext()Lch/qos/logback/core/joran/spi/InterpretationContext;

    move-result-object v0

    invoke-virtual {v0}, Lch/qos/logback/core/joran/spi/InterpretationContext;->getObjectMap()Ljava/util/Map;

    move-result-object v0

    .line 97
    .local v0, "omap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "APPENDER_BAG"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public getInterpretationContext()Lch/qos/logback/core/joran/spi/InterpretationContext;
    .locals 1

    .line 102
    .local p0, "this":Lch/qos/logback/core/joran/JoranConfiguratorBase;, "Lch/qos/logback/core/joran/JoranConfiguratorBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/joran/JoranConfiguratorBase;->interpreter:Lch/qos/logback/core/joran/spi/Interpreter;

    invoke-virtual {v0}, Lch/qos/logback/core/joran/spi/Interpreter;->getInterpretationContext()Lch/qos/logback/core/joran/spi/InterpretationContext;

    move-result-object v0

    return-object v0
.end method
