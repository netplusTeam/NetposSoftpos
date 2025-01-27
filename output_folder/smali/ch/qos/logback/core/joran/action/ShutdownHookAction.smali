.class public Lch/qos/logback/core/joran/action/ShutdownHookAction;
.super Lch/qos/logback/core/joran/action/Action;
.source "ShutdownHookAction.java"


# instance fields
.field hook:Lch/qos/logback/core/hook/ShutdownHookBase;

.field private inError:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lch/qos/logback/core/joran/action/Action;-><init>()V

    return-void
.end method


# virtual methods
.method public begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "ic"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/ActionException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/core/joran/action/ShutdownHookAction;->hook:Lch/qos/logback/core/hook/ShutdownHookBase;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/joran/action/ShutdownHookAction;->inError:Z

    .line 45
    const-string v0, "class"

    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing class name for shutdown hook. Near ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] line "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lch/qos/logback/core/joran/action/ShutdownHookAction;->getLineNumber(Lch/qos/logback/core/joran/spi/InterpretationContext;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/joran/action/ShutdownHookAction;->addError(Ljava/lang/String;)V

    .line 48
    iput-boolean v2, p0, Lch/qos/logback/core/joran/action/ShutdownHookAction;->inError:Z

    .line 49
    return-void

    .line 53
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "About to instantiate shutdown hook of type ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/joran/action/ShutdownHookAction;->addInfo(Ljava/lang/String;)V

    .line 55
    const-class v1, Lch/qos/logback/core/hook/ShutdownHookBase;

    iget-object v3, p0, Lch/qos/logback/core/joran/action/ShutdownHookAction;->context:Lch/qos/logback/core/Context;

    invoke-static {v0, v1, v3}, Lch/qos/logback/core/util/OptionHelper;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Lch/qos/logback/core/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/core/hook/ShutdownHookBase;

    iput-object v1, p0, Lch/qos/logback/core/joran/action/ShutdownHookAction;->hook:Lch/qos/logback/core/hook/ShutdownHookBase;

    .line 56
    iget-object v3, p0, Lch/qos/logback/core/joran/action/ShutdownHookAction;->context:Lch/qos/logback/core/Context;

    invoke-virtual {v1, v3}, Lch/qos/logback/core/hook/ShutdownHookBase;->setContext(Lch/qos/logback/core/Context;)V

    .line 58
    iget-object v1, p0, Lch/qos/logback/core/joran/action/ShutdownHookAction;->hook:Lch/qos/logback/core/hook/ShutdownHookBase;

    invoke-virtual {p1, v1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->pushObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    nop

    .line 64
    return-void

    .line 59
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/Exception;
    iput-boolean v2, p0, Lch/qos/logback/core/joran/action/ShutdownHookAction;->inError:Z

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create a shutdown hook of type ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lch/qos/logback/core/joran/action/ShutdownHookAction;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    new-instance v2, Lch/qos/logback/core/joran/spi/ActionException;

    invoke-direct {v2, v1}, Lch/qos/logback/core/joran/spi/ActionException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public end(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .locals 5
    .param p1, "ic"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/ActionException;
        }
    .end annotation

    .line 72
    iget-boolean v0, p0, Lch/qos/logback/core/joran/action/ShutdownHookAction;->inError:Z

    if-eqz v0, :cond_0

    .line 73
    return-void

    .line 76
    :cond_0
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->peekObject()Ljava/lang/Object;

    move-result-object v0

    .line 77
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lch/qos/logback/core/joran/action/ShutdownHookAction;->hook:Lch/qos/logback/core/hook/ShutdownHookBase;

    if-eq v0, v1, :cond_1

    .line 78
    const-string v1, "The object at the of the stack is not the hook pushed earlier."

    invoke-virtual {p0, v1}, Lch/qos/logback/core/joran/action/ShutdownHookAction;->addWarn(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->popObject()Ljava/lang/Object;

    .line 82
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lch/qos/logback/core/joran/action/ShutdownHookAction;->hook:Lch/qos/logback/core/hook/ShutdownHookBase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Logback shutdown hook ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lch/qos/logback/core/joran/action/ShutdownHookAction;->context:Lch/qos/logback/core/Context;

    invoke-interface {v4}, Lch/qos/logback/core/Context;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 84
    .local v1, "hookThread":Ljava/lang/Thread;
    iget-object v2, p0, Lch/qos/logback/core/joran/action/ShutdownHookAction;->context:Lch/qos/logback/core/Context;

    const-string v3, "SHUTDOWN_HOOK"

    invoke-interface {v2, v3, v1}, Lch/qos/logback/core/Context;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 87
    .end local v1    # "hookThread":Ljava/lang/Thread;
    :goto_0
    return-void
.end method
