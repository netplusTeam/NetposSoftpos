.class public Lch/qos/logback/core/joran/action/NewRuleAction;
.super Lch/qos/logback/core/joran/action/Action;
.source "NewRuleAction.java"


# instance fields
.field inError:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lch/qos/logback/core/joran/action/Action;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/joran/action/NewRuleAction;->inError:Z

    return-void
.end method


# virtual methods
.method public begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "attributes"    # Lorg/xml/sax/Attributes;

    .line 30
    const-string v0, ","

    const/4 v1, 0x0

    iput-boolean v1, p0, Lch/qos/logback/core/joran/action/NewRuleAction;->inError:Z

    .line 32
    const-string/jumbo v1, "pattern"

    invoke-interface {p3, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "pattern":Ljava/lang/String;
    const-string v2, "actionClass"

    invoke-interface {p3, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, "actionClass":Ljava/lang/String;
    invoke-static {v1}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 36
    iput-boolean v4, p0, Lch/qos/logback/core/joran/action/NewRuleAction;->inError:Z

    .line 37
    const-string v0, "No \'pattern\' attribute in <newRule>"

    .line 38
    .local v0, "errorMsg":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lch/qos/logback/core/joran/action/NewRuleAction;->addError(Ljava/lang/String;)V

    .line 39
    return-void

    .line 42
    .end local v0    # "errorMsg":Ljava/lang/String;
    :cond_0
    invoke-static {v2}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 43
    iput-boolean v4, p0, Lch/qos/logback/core/joran/action/NewRuleAction;->inError:Z

    .line 44
    const-string v0, "No \'actionClass\' attribute in <newRule>"

    .line 45
    .restart local v0    # "errorMsg":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lch/qos/logback/core/joran/action/NewRuleAction;->addError(Ljava/lang/String;)V

    .line 46
    return-void

    .line 50
    .end local v0    # "errorMsg":Ljava/lang/String;
    :cond_1
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "About to add new Joran parsing rule ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lch/qos/logback/core/joran/action/NewRuleAction;->addInfo(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->getJoranInterpreter()Lch/qos/logback/core/joran/spi/Interpreter;

    move-result-object v3

    invoke-virtual {v3}, Lch/qos/logback/core/joran/spi/Interpreter;->getRuleStore()Lch/qos/logback/core/joran/spi/RuleStore;

    move-result-object v3

    new-instance v5, Lch/qos/logback/core/joran/spi/ElementSelector;

    invoke-direct {v5, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v5, v2}, Lch/qos/logback/core/joran/spi/RuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_0

    .line 52
    :catch_0
    move-exception v3

    .line 53
    .local v3, "oops":Ljava/lang/Exception;
    iput-boolean v4, p0, Lch/qos/logback/core/joran/action/NewRuleAction;->inError:Z

    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not add new Joran parsing rule ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .restart local v0    # "errorMsg":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lch/qos/logback/core/joran/action/NewRuleAction;->addError(Ljava/lang/String;)V

    .line 57
    .end local v0    # "errorMsg":Ljava/lang/String;
    .end local v3    # "oops":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public end(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .locals 0
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "n"    # Ljava/lang/String;

    .line 64
    return-void
.end method

.method public finish(Lch/qos/logback/core/joran/spi/InterpretationContext;)V
    .locals 0
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;

    .line 67
    return-void
.end method
