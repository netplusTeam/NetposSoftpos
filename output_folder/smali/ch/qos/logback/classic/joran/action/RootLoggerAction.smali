.class public Lch/qos/logback/classic/joran/action/RootLoggerAction;
.super Lch/qos/logback/core/joran/action/Action;
.source "RootLoggerAction.java"


# instance fields
.field inError:Z

.field root:Lch/qos/logback/classic/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lch/qos/logback/core/joran/action/Action;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/classic/joran/action/RootLoggerAction;->inError:Z

    return-void
.end method


# virtual methods
.method public begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attributes"    # Lorg/xml/sax/Attributes;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/classic/joran/action/RootLoggerAction;->inError:Z

    .line 34
    iget-object v0, p0, Lch/qos/logback/classic/joran/action/RootLoggerAction;->context:Lch/qos/logback/core/Context;

    check-cast v0, Lch/qos/logback/classic/LoggerContext;

    .line 35
    .local v0, "loggerContext":Lch/qos/logback/classic/LoggerContext;
    const-string v1, "ROOT"

    invoke-virtual {v0, v1}, Lch/qos/logback/classic/LoggerContext;->getLogger(Ljava/lang/String;)Lch/qos/logback/classic/Logger;

    move-result-object v1

    iput-object v1, p0, Lch/qos/logback/classic/joran/action/RootLoggerAction;->root:Lch/qos/logback/classic/Logger;

    .line 37
    const-string v1, "level"

    invoke-interface {p3, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "levelStr":Ljava/lang/String;
    invoke-static {v1}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 39
    invoke-static {v1}, Lch/qos/logback/classic/Level;->toLevel(Ljava/lang/String;)Lch/qos/logback/classic/Level;

    move-result-object v2

    .line 40
    .local v2, "level":Lch/qos/logback/classic/Level;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting level of ROOT logger to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lch/qos/logback/classic/joran/action/RootLoggerAction;->addInfo(Ljava/lang/String;)V

    .line 41
    iget-object v3, p0, Lch/qos/logback/classic/joran/action/RootLoggerAction;->root:Lch/qos/logback/classic/Logger;

    invoke-virtual {v3, v2}, Lch/qos/logback/classic/Logger;->setLevel(Lch/qos/logback/classic/Level;)V

    .line 43
    .end local v2    # "level":Lch/qos/logback/classic/Level;
    :cond_0
    iget-object v2, p0, Lch/qos/logback/classic/joran/action/RootLoggerAction;->root:Lch/qos/logback/classic/Logger;

    invoke-virtual {p1, v2}, Lch/qos/logback/core/joran/spi/InterpretationContext;->pushObject(Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public end(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .locals 3
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "name"    # Ljava/lang/String;

    .line 47
    iget-boolean v0, p0, Lch/qos/logback/classic/joran/action/RootLoggerAction;->inError:Z

    if-eqz v0, :cond_0

    .line 48
    return-void

    .line 50
    :cond_0
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->peekObject()Ljava/lang/Object;

    move-result-object v0

    .line 51
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lch/qos/logback/classic/joran/action/RootLoggerAction;->root:Lch/qos/logback/classic/Logger;

    if-eq v0, v1, :cond_1

    .line 52
    const-string v1, "The object on the top the of the stack is not the root logger"

    invoke-virtual {p0, v1}, Lch/qos/logback/classic/joran/action/RootLoggerAction;->addWarn(Ljava/lang/String;)V

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "It is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/classic/joran/action/RootLoggerAction;->addWarn(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->popObject()Ljava/lang/Object;

    .line 57
    :goto_0
    return-void
.end method

.method public finish(Lch/qos/logback/core/joran/spi/InterpretationContext;)V
    .locals 0
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;

    .line 60
    return-void
.end method
