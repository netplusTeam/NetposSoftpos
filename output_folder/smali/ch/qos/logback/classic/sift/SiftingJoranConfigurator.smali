.class public Lch/qos/logback/classic/sift/SiftingJoranConfigurator;
.super Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;
.source "SiftingJoranConfigurator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase<",
        "Lch/qos/logback/classic/spi/ILoggingEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 34
    .local p3, "parentPropertyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3}, Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected addDefaultNestedComponentRegistryRules(Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;)V
    .locals 0
    .param p1, "registry"    # Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;

    .line 50
    invoke-static {p1}, Lch/qos/logback/classic/util/DefaultNestedComponentRules;->addDefaultNestedComponentRegistryRules(Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;)V

    .line 51
    return-void
.end method

.method protected addInstanceRules(Lch/qos/logback/core/joran/spi/RuleStore;)V
    .locals 2
    .param p1, "rs"    # Lch/qos/logback/core/joran/spi/RuleStore;

    .line 44
    invoke-super {p0, p1}, Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;->addInstanceRules(Lch/qos/logback/core/joran/spi/RuleStore;)V

    .line 45
    new-instance v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    const-string v1, "configuration/appender"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/core/joran/action/AppenderAction;

    invoke-direct {v1}, Lch/qos/logback/core/joran/action/AppenderAction;-><init>()V

    invoke-interface {p1, v0, v1}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    .line 46
    return-void
.end method

.method protected buildInterpreter()V
    .locals 4

    .line 55
    invoke-super {p0}, Lch/qos/logback/core/sift/SiftingJoranConfiguratorBase;->buildInterpreter()V

    .line 56
    iget-object v0, p0, Lch/qos/logback/classic/sift/SiftingJoranConfigurator;->interpreter:Lch/qos/logback/core/joran/spi/Interpreter;

    invoke-virtual {v0}, Lch/qos/logback/core/joran/spi/Interpreter;->getInterpretationContext()Lch/qos/logback/core/joran/spi/InterpretationContext;

    move-result-object v0

    invoke-virtual {v0}, Lch/qos/logback/core/joran/spi/InterpretationContext;->getObjectMap()Ljava/util/Map;

    move-result-object v0

    .line 57
    .local v0, "omap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "APPENDER_BAG"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 60
    .local v1, "propertiesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lch/qos/logback/classic/sift/SiftingJoranConfigurator;->parentPropertyMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 61
    iget-object v2, p0, Lch/qos/logback/classic/sift/SiftingJoranConfigurator;->key:Ljava/lang/String;

    iget-object v3, p0, Lch/qos/logback/classic/sift/SiftingJoranConfigurator;->value:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v2, p0, Lch/qos/logback/classic/sift/SiftingJoranConfigurator;->interpreter:Lch/qos/logback/core/joran/spi/Interpreter;

    invoke-virtual {v2, v1}, Lch/qos/logback/core/joran/spi/Interpreter;->setInterpretationContextPropertiesMap(Ljava/util/Map;)V

    .line 63
    return-void
.end method

.method public getAppender()Lch/qos/logback/core/Appender;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lch/qos/logback/core/Appender<",
            "Lch/qos/logback/classic/spi/ILoggingEvent;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lch/qos/logback/classic/sift/SiftingJoranConfigurator;->interpreter:Lch/qos/logback/core/joran/spi/Interpreter;

    invoke-virtual {v0}, Lch/qos/logback/core/joran/spi/Interpreter;->getInterpretationContext()Lch/qos/logback/core/joran/spi/InterpretationContext;

    move-result-object v0

    invoke-virtual {v0}, Lch/qos/logback/core/joran/spi/InterpretationContext;->getObjectMap()Ljava/util/Map;

    move-result-object v0

    .line 68
    .local v0, "omap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "APPENDER_BAG"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 69
    .local v1, "appenderMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lch/qos/logback/core/Appender<*>;>;"
    invoke-virtual {p0, v1}, Lch/qos/logback/classic/sift/SiftingJoranConfigurator;->oneAndOnlyOneCheck(Ljava/util/Map;)V

    .line 70
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 71
    .local v2, "values":Ljava/util/Collection;, "Ljava/util/Collection<Lch/qos/logback/core/Appender<*>;>;"
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 72
    const/4 v3, 0x0

    return-object v3

    .line 74
    :cond_0
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/qos/logback/core/Appender;

    return-object v3
.end method

.method protected initialElementPath()Lch/qos/logback/core/joran/spi/ElementPath;
    .locals 2

    .line 39
    new-instance v0, Lch/qos/logback/core/joran/spi/ElementPath;

    const-string v1, "configuration"

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/ElementPath;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
