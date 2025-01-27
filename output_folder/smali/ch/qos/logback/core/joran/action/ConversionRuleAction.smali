.class public Lch/qos/logback/core/joran/action/ConversionRuleAction;
.super Lch/qos/logback/core/joran/action/Action;
.source "ConversionRuleAction.java"


# instance fields
.field inError:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lch/qos/logback/core/joran/action/Action;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/joran/action/ConversionRuleAction;->inError:Z

    return-void
.end method


# virtual methods
.method public begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "attributes"    # Lorg/xml/sax/Attributes;

    .line 35
    const-string v0, "PATTERN_RULE_REGISTRY"

    const/4 v1, 0x0

    iput-boolean v1, p0, Lch/qos/logback/core/joran/action/ConversionRuleAction;->inError:Z

    .line 38
    const-string v1, "conversionWord"

    invoke-interface {p3, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "conversionWord":Ljava/lang/String;
    const-string v2, "converterClass"

    invoke-interface {p3, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, "converterClass":Ljava/lang/String;
    invoke-static {v1}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 42
    iput-boolean v4, p0, Lch/qos/logback/core/joran/action/ConversionRuleAction;->inError:Z

    .line 43
    const-string v0, "No \'conversionWord\' attribute in <conversionRule>"

    .line 44
    .local v0, "errorMsg":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lch/qos/logback/core/joran/action/ConversionRuleAction;->addError(Ljava/lang/String;)V

    .line 46
    return-void

    .line 49
    .end local v0    # "errorMsg":Ljava/lang/String;
    :cond_0
    invoke-static {v2}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    iput-boolean v4, p0, Lch/qos/logback/core/joran/action/ConversionRuleAction;->inError:Z

    .line 51
    const-string v0, "No \'converterClass\' attribute in <conversionRule>"

    .line 52
    .restart local v0    # "errorMsg":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lch/qos/logback/core/joran/spi/InterpretationContext;->addError(Ljava/lang/String;)V

    .line 54
    return-void

    .line 58
    .end local v0    # "errorMsg":Ljava/lang/String;
    :cond_1
    :try_start_0
    iget-object v3, p0, Lch/qos/logback/core/joran/action/ConversionRuleAction;->context:Lch/qos/logback/core/Context;

    invoke-interface {v3, v0}, Lch/qos/logback/core/Context;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 59
    .local v3, "ruleRegistry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v3, :cond_2

    .line 60
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v3, v5

    .line 61
    iget-object v5, p0, Lch/qos/logback/core/joran/action/ConversionRuleAction;->context:Lch/qos/logback/core/Context;

    invoke-interface {v5, v0, v3}, Lch/qos/logback/core/Context;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registering conversion word "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " with class ["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/joran/action/ConversionRuleAction;->addInfo(Ljava/lang/String;)V

    .line 65
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    nop

    .end local v3    # "ruleRegistry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "oops":Ljava/lang/Exception;
    iput-boolean v4, p0, Lch/qos/logback/core/joran/action/ConversionRuleAction;->inError:Z

    .line 68
    const-string v3, "Could not add conversion rule to PatternLayout."

    .line 69
    .local v3, "errorMsg":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lch/qos/logback/core/joran/action/ConversionRuleAction;->addError(Ljava/lang/String;)V

    .line 71
    .end local v0    # "oops":Ljava/lang/Exception;
    .end local v3    # "errorMsg":Ljava/lang/String;
    :goto_0
    return-void
.end method

.method public end(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .locals 0
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "n"    # Ljava/lang/String;

    .line 78
    return-void
.end method

.method public finish(Lch/qos/logback/core/joran/spi/InterpretationContext;)V
    .locals 0
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;

    .line 81
    return-void
.end method
