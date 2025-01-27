.class public Lch/qos/logback/core/joran/action/AppenderAction;
.super Lch/qos/logback/core/joran/action/Action;
.source "AppenderAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/joran/action/Action;"
    }
.end annotation


# instance fields
.field appender:Lch/qos/logback/core/Appender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/Appender<",
            "TE;>;"
        }
    .end annotation
.end field

.field private inError:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    .local p0, "this":Lch/qos/logback/core/joran/action/AppenderAction;, "Lch/qos/logback/core/joran/action/AppenderAction<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/joran/action/Action;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/joran/action/AppenderAction;->inError:Z

    return-void
.end method


# virtual methods
.method public begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 7
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/ActionException;
        }
    .end annotation

    .line 39
    .local p0, "this":Lch/qos/logback/core/joran/action/AppenderAction;, "Lch/qos/logback/core/joran/action/AppenderAction<TE;>;"
    const-string v0, "]"

    const-string v1, "]."

    const/4 v2, 0x0

    iput-object v2, p0, Lch/qos/logback/core/joran/action/AppenderAction;->appender:Lch/qos/logback/core/Appender;

    .line 40
    const/4 v2, 0x0

    iput-boolean v2, p0, Lch/qos/logback/core/joran/action/AppenderAction;->inError:Z

    .line 42
    const-string v2, "class"

    invoke-interface {p3, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "className":Ljava/lang/String;
    invoke-static {v2}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing class name for appender. Near ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lch/qos/logback/core/joran/action/AppenderAction;->getLineNumber(Lch/qos/logback/core/joran/spi/InterpretationContext;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/joran/action/AppenderAction;->addError(Ljava/lang/String;)V

    .line 45
    iput-boolean v4, p0, Lch/qos/logback/core/joran/action/AppenderAction;->inError:Z

    .line 46
    return-void

    .line 50
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "About to instantiate appender of type ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lch/qos/logback/core/joran/action/AppenderAction;->addInfo(Ljava/lang/String;)V

    .line 52
    const-class v3, Lch/qos/logback/core/Appender;

    iget-object v5, p0, Lch/qos/logback/core/joran/action/AppenderAction;->context:Lch/qos/logback/core/Context;

    invoke-static {v2, v3, v5}, Lch/qos/logback/core/util/OptionHelper;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Lch/qos/logback/core/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/qos/logback/core/Appender;

    iput-object v3, p0, Lch/qos/logback/core/joran/action/AppenderAction;->appender:Lch/qos/logback/core/Appender;

    .line 54
    iget-object v5, p0, Lch/qos/logback/core/joran/action/AppenderAction;->context:Lch/qos/logback/core/Context;

    invoke-interface {v3, v5}, Lch/qos/logback/core/Appender;->setContext(Lch/qos/logback/core/Context;)V

    .line 56
    const-string v3, "name"

    invoke-interface {p3, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lch/qos/logback/core/joran/spi/InterpretationContext;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, "appenderName":Ljava/lang/String;
    invoke-static {v3}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No appender name given for appender of type "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/joran/action/AppenderAction;->addWarn(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_1
    iget-object v5, p0, Lch/qos/logback/core/joran/action/AppenderAction;->appender:Lch/qos/logback/core/Appender;

    invoke-interface {v5, v3}, Lch/qos/logback/core/Appender;->setName(Ljava/lang/String;)V

    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Naming appender as ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/joran/action/AppenderAction;->addInfo(Ljava/lang/String;)V

    .line 67
    :goto_0
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->getObjectMap()Ljava/util/Map;

    move-result-object v0

    const-string v5, "APPENDER_BAG"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 70
    .local v0, "appenderBag":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lch/qos/logback/core/Appender<TE;>;>;"
    iget-object v5, p0, Lch/qos/logback/core/joran/action/AppenderAction;->appender:Lch/qos/logback/core/Appender;

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v5, p0, Lch/qos/logback/core/joran/action/AppenderAction;->appender:Lch/qos/logback/core/Appender;

    invoke-virtual {p1, v5}, Lch/qos/logback/core/joran/spi/InterpretationContext;->pushObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v0    # "appenderBag":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lch/qos/logback/core/Appender<TE;>;>;"
    .end local v3    # "appenderName":Ljava/lang/String;
    nop

    .line 78
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "oops":Ljava/lang/Exception;
    iput-boolean v4, p0, Lch/qos/logback/core/joran/action/AppenderAction;->inError:Z

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create an Appender of type ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lch/qos/logback/core/joran/action/AppenderAction;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    new-instance v1, Lch/qos/logback/core/joran/spi/ActionException;

    invoke-direct {v1, v0}, Lch/qos/logback/core/joran/spi/ActionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public end(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .locals 3
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "name"    # Ljava/lang/String;

    .line 85
    .local p0, "this":Lch/qos/logback/core/joran/action/AppenderAction;, "Lch/qos/logback/core/joran/action/AppenderAction<TE;>;"
    iget-boolean v0, p0, Lch/qos/logback/core/joran/action/AppenderAction;->inError:Z

    if-eqz v0, :cond_0

    .line 86
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/joran/action/AppenderAction;->appender:Lch/qos/logback/core/Appender;

    instance-of v1, v0, Lch/qos/logback/core/spi/LifeCycle;

    if-eqz v1, :cond_1

    .line 90
    invoke-interface {v0}, Lch/qos/logback/core/spi/LifeCycle;->start()V

    .line 93
    :cond_1
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->peekObject()Ljava/lang/Object;

    move-result-object v0

    .line 95
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lch/qos/logback/core/joran/action/AppenderAction;->appender:Lch/qos/logback/core/Appender;

    if-eq v0, v1, :cond_2

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The object at the of the stack is not the appender named ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/joran/action/AppenderAction;->appender:Lch/qos/logback/core/Appender;

    invoke-interface {v2}, Lch/qos/logback/core/Appender;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] pushed earlier."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/joran/action/AppenderAction;->addWarn(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->popObject()Ljava/lang/Object;

    .line 100
    :goto_0
    return-void
.end method
