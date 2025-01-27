.class public Lch/qos/logback/classic/joran/action/LoggerAction;
.super Lch/qos/logback/core/joran/action/Action;
.source "LoggerAction.java"


# static fields
.field public static final LEVEL_ATTRIBUTE:Ljava/lang/String; = "level"


# instance fields
.field inError:Z

.field logger:Lch/qos/logback/classic/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lch/qos/logback/core/joran/action/Action;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/classic/joran/action/LoggerAction;->inError:Z

    return-void
.end method


# virtual methods
.method public begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 8
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attributes"    # Lorg/xml/sax/Attributes;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/classic/joran/action/LoggerAction;->inError:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/classic/joran/action/LoggerAction;->logger:Lch/qos/logback/classic/Logger;

    .line 42
    iget-object v1, p0, Lch/qos/logback/classic/joran/action/LoggerAction;->context:Lch/qos/logback/core/Context;

    check-cast v1, Lch/qos/logback/classic/LoggerContext;

    .line 44
    .local v1, "loggerContext":Lch/qos/logback/classic/LoggerContext;
    const-string v2, "name"

    invoke-interface {p3, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lch/qos/logback/core/joran/spi/InterpretationContext;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "loggerName":Ljava/lang/String;
    invoke-static {v2}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 47
    iput-boolean v4, p0, Lch/qos/logback/classic/joran/action/LoggerAction;->inError:Z

    .line 48
    invoke-virtual {p0, p1}, Lch/qos/logback/classic/joran/action/LoggerAction;->getLineColStr(Lch/qos/logback/core/joran/spi/InterpretationContext;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "aroundLine":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No \'name\' attribute in element "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", around "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "errorMsg":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lch/qos/logback/classic/joran/action/LoggerAction;->addError(Ljava/lang/String;)V

    .line 51
    return-void

    .line 54
    .end local v0    # "aroundLine":Ljava/lang/String;
    .end local v3    # "errorMsg":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v2}, Lch/qos/logback/classic/LoggerContext;->getLogger(Ljava/lang/String;)Lch/qos/logback/classic/Logger;

    move-result-object v3

    iput-object v3, p0, Lch/qos/logback/classic/joran/action/LoggerAction;->logger:Lch/qos/logback/classic/Logger;

    .line 56
    const-string v3, "level"

    invoke-interface {p3, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lch/qos/logback/core/joran/spi/InterpretationContext;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, "levelStr":Ljava/lang/String;
    invoke-static {v3}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "] to "

    if-nez v5, :cond_3

    .line 59
    const-string v5, "INHERITED"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const-string v7, "Setting level of logger ["

    if-nez v5, :cond_2

    const-string v5, "NULL"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 63
    :cond_1
    invoke-static {v3}, Lch/qos/logback/classic/Level;->toLevel(Ljava/lang/String;)Lch/qos/logback/classic/Level;

    move-result-object v0

    .line 64
    .local v0, "level":Lch/qos/logback/classic/Level;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lch/qos/logback/classic/joran/action/LoggerAction;->addInfo(Ljava/lang/String;)V

    .line 65
    iget-object v5, p0, Lch/qos/logback/classic/joran/action/LoggerAction;->logger:Lch/qos/logback/classic/Logger;

    invoke-virtual {v5, v0}, Lch/qos/logback/classic/Logger;->setLevel(Lch/qos/logback/classic/Level;)V

    goto :goto_1

    .line 60
    .end local v0    # "level":Lch/qos/logback/classic/Level;
    :cond_2
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] to null, i.e. INHERITED"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lch/qos/logback/classic/joran/action/LoggerAction;->addInfo(Ljava/lang/String;)V

    .line 61
    iget-object v5, p0, Lch/qos/logback/classic/joran/action/LoggerAction;->logger:Lch/qos/logback/classic/Logger;

    invoke-virtual {v5, v0}, Lch/qos/logback/classic/Logger;->setLevel(Lch/qos/logback/classic/Level;)V

    .line 69
    :cond_3
    :goto_1
    const-string v0, "additivity"

    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lch/qos/logback/core/joran/spi/InterpretationContext;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "additivityStr":Ljava/lang/String;
    invoke-static {v0}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 71
    invoke-static {v0, v4}, Lch/qos/logback/core/util/OptionHelper;->toBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 72
    .local v4, "additive":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting additivity of logger ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lch/qos/logback/classic/joran/action/LoggerAction;->addInfo(Ljava/lang/String;)V

    .line 73
    iget-object v5, p0, Lch/qos/logback/classic/joran/action/LoggerAction;->logger:Lch/qos/logback/classic/Logger;

    invoke-virtual {v5, v4}, Lch/qos/logback/classic/Logger;->setAdditive(Z)V

    .line 75
    .end local v4    # "additive":Z
    :cond_4
    iget-object v4, p0, Lch/qos/logback/classic/joran/action/LoggerAction;->logger:Lch/qos/logback/classic/Logger;

    invoke-virtual {p1, v4}, Lch/qos/logback/core/joran/spi/InterpretationContext;->pushObject(Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public end(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .locals 3
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "e"    # Ljava/lang/String;

    .line 79
    iget-boolean v0, p0, Lch/qos/logback/classic/joran/action/LoggerAction;->inError:Z

    if-eqz v0, :cond_0

    .line 80
    return-void

    .line 82
    :cond_0
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->peekObject()Ljava/lang/Object;

    move-result-object v0

    .line 83
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lch/qos/logback/classic/joran/action/LoggerAction;->logger:Lch/qos/logback/classic/Logger;

    if-eq v0, v1, :cond_1

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The object on the top the of the stack is not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/classic/joran/action/LoggerAction;->logger:Lch/qos/logback/classic/Logger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pushed earlier"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/classic/joran/action/LoggerAction;->addWarn(Ljava/lang/String;)V

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "It is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/classic/joran/action/LoggerAction;->addWarn(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->popObject()Ljava/lang/Object;

    .line 89
    :goto_0
    return-void
.end method

.method public finish(Lch/qos/logback/core/joran/spi/InterpretationContext;)V
    .locals 0
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;

    .line 92
    return-void
.end method
