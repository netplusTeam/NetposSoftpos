.class public Lch/qos/logback/classic/joran/action/LevelAction;
.super Lch/qos/logback/core/joran/action/Action;
.source "LevelAction.java"


# instance fields
.field inError:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lch/qos/logback/core/joran/action/Action;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/classic/joran/action/LevelAction;->inError:Z

    return-void
.end method


# virtual methods
.method public begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attributes"    # Lorg/xml/sax/Attributes;

    .line 37
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->peekObject()Ljava/lang/Object;

    move-result-object v0

    .line 39
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Lch/qos/logback/classic/Logger;

    if-nez v1, :cond_0

    .line 40
    const/4 v1, 0x1

    iput-boolean v1, p0, Lch/qos/logback/classic/joran/action/LevelAction;->inError:Z

    .line 41
    const-string v1, "For element <level>, could not find a logger at the top of execution stack."

    invoke-virtual {p0, v1}, Lch/qos/logback/classic/joran/action/LevelAction;->addError(Ljava/lang/String;)V

    .line 42
    return-void

    .line 45
    :cond_0
    move-object v1, v0

    check-cast v1, Lch/qos/logback/classic/Logger;

    .line 47
    .local v1, "l":Lch/qos/logback/classic/Logger;
    invoke-virtual {v1}, Lch/qos/logback/classic/Logger;->getName()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "loggerName":Ljava/lang/String;
    const-string/jumbo v3, "value"

    invoke-interface {p3, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lch/qos/logback/core/joran/spi/InterpretationContext;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "levelStr":Ljava/lang/String;
    const-string v4, "INHERITED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "NULL"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 56
    :cond_1
    sget-object v4, Lch/qos/logback/classic/Level;->DEBUG:Lch/qos/logback/classic/Level;

    invoke-static {v3, v4}, Lch/qos/logback/classic/Level;->toLevel(Ljava/lang/String;Lch/qos/logback/classic/Level;)Lch/qos/logback/classic/Level;

    move-result-object v4

    invoke-virtual {v1, v4}, Lch/qos/logback/classic/Logger;->setLevel(Lch/qos/logback/classic/Level;)V

    goto :goto_1

    .line 54
    :cond_2
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lch/qos/logback/classic/Logger;->setLevel(Lch/qos/logback/classic/Level;)V

    .line 59
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " level set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lch/qos/logback/classic/Logger;->getLevel()Lch/qos/logback/classic/Level;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lch/qos/logback/classic/joran/action/LevelAction;->addInfo(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public end(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .locals 0
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "e"    # Ljava/lang/String;

    .line 66
    return-void
.end method

.method public finish(Lch/qos/logback/core/joran/spi/InterpretationContext;)V
    .locals 0
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;

    .line 63
    return-void
.end method
