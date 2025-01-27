.class public Lch/qos/logback/classic/joran/action/ReceiverAction;
.super Lch/qos/logback/core/joran/action/Action;
.source "ReceiverAction.java"


# instance fields
.field private inError:Z

.field private receiver:Lch/qos/logback/classic/net/ReceiverBase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
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

    .line 38
    const-string v0, "class"

    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing class name for receiver. Near ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] line "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lch/qos/logback/classic/joran/action/ReceiverAction;->getLineNumber(Lch/qos/logback/core/joran/spi/InterpretationContext;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/classic/joran/action/ReceiverAction;->addError(Ljava/lang/String;)V

    .line 41
    iput-boolean v2, p0, Lch/qos/logback/classic/joran/action/ReceiverAction;->inError:Z

    .line 42
    return-void

    .line 46
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "About to instantiate receiver of type ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/classic/joran/action/ReceiverAction;->addInfo(Ljava/lang/String;)V

    .line 48
    const-class v1, Lch/qos/logback/classic/net/ReceiverBase;

    iget-object v3, p0, Lch/qos/logback/classic/joran/action/ReceiverAction;->context:Lch/qos/logback/core/Context;

    invoke-static {v0, v1, v3}, Lch/qos/logback/core/util/OptionHelper;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Lch/qos/logback/core/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/classic/net/ReceiverBase;

    iput-object v1, p0, Lch/qos/logback/classic/joran/action/ReceiverAction;->receiver:Lch/qos/logback/classic/net/ReceiverBase;

    .line 49
    iget-object v3, p0, Lch/qos/logback/classic/joran/action/ReceiverAction;->context:Lch/qos/logback/core/Context;

    invoke-virtual {v1, v3}, Lch/qos/logback/classic/net/ReceiverBase;->setContext(Lch/qos/logback/core/Context;)V

    .line 51
    iget-object v1, p0, Lch/qos/logback/classic/joran/action/ReceiverAction;->receiver:Lch/qos/logback/classic/net/ReceiverBase;

    invoke-virtual {p1, v1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->pushObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    nop

    .line 57
    return-void

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, "ex":Ljava/lang/Exception;
    iput-boolean v2, p0, Lch/qos/logback/classic/joran/action/ReceiverAction;->inError:Z

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create a receiver of type ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lch/qos/logback/classic/joran/action/ReceiverAction;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    new-instance v2, Lch/qos/logback/core/joran/spi/ActionException;

    invoke-direct {v2, v1}, Lch/qos/logback/core/joran/spi/ActionException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public end(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .locals 2
    .param p1, "ic"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/ActionException;
        }
    .end annotation

    .line 62
    iget-boolean v0, p0, Lch/qos/logback/classic/joran/action/ReceiverAction;->inError:Z

    if-eqz v0, :cond_0

    .line 63
    return-void

    .line 65
    :cond_0
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->getContext()Lch/qos/logback/core/Context;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/classic/joran/action/ReceiverAction;->receiver:Lch/qos/logback/classic/net/ReceiverBase;

    invoke-interface {v0, v1}, Lch/qos/logback/core/Context;->register(Lch/qos/logback/core/spi/LifeCycle;)V

    .line 66
    iget-object v0, p0, Lch/qos/logback/classic/joran/action/ReceiverAction;->receiver:Lch/qos/logback/classic/net/ReceiverBase;

    invoke-virtual {v0}, Lch/qos/logback/classic/net/ReceiverBase;->start()V

    .line 68
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->peekObject()Ljava/lang/Object;

    move-result-object v0

    .line 69
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lch/qos/logback/classic/joran/action/ReceiverAction;->receiver:Lch/qos/logback/classic/net/ReceiverBase;

    if-eq v0, v1, :cond_1

    .line 70
    const-string v1, "The object at the of the stack is not the remote pushed earlier."

    invoke-virtual {p0, v1}, Lch/qos/logback/classic/joran/action/ReceiverAction;->addWarn(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->popObject()Ljava/lang/Object;

    .line 74
    :goto_0
    return-void
.end method
