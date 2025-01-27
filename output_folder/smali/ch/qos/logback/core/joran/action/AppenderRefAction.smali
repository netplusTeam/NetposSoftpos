.class public Lch/qos/logback/core/joran/action/AppenderRefAction;
.super Lch/qos/logback/core/joran/action/Action;
.source "AppenderRefAction.java"


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
.field inError:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    .local p0, "this":Lch/qos/logback/core/joran/action/AppenderRefAction;, "Lch/qos/logback/core/joran/action/AppenderRefAction<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/joran/action/Action;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/joran/action/AppenderRefAction;->inError:Z

    return-void
.end method


# virtual methods
.method public begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 8
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "tagName"    # Ljava/lang/String;
    .param p3, "attributes"    # Lorg/xml/sax/Attributes;

    .line 32
    .local p0, "this":Lch/qos/logback/core/joran/action/AppenderRefAction;, "Lch/qos/logback/core/joran/action/AppenderRefAction<TE;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/joran/action/AppenderRefAction;->inError:Z

    .line 36
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->peekObject()Ljava/lang/Object;

    move-result-object v0

    .line 38
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Lch/qos/logback/core/spi/AppenderAttachable;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find an AppenderAttachable at the top of execution stack. Near ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] line "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lch/qos/logback/core/joran/action/AppenderRefAction;->getLineNumber(Lch/qos/logback/core/joran/spi/InterpretationContext;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "errMsg":Ljava/lang/String;
    iput-boolean v2, p0, Lch/qos/logback/core/joran/action/AppenderRefAction;->inError:Z

    .line 41
    invoke-virtual {p0, v1}, Lch/qos/logback/core/joran/action/AppenderRefAction;->addError(Ljava/lang/String;)V

    .line 42
    return-void

    .line 45
    .end local v1    # "errMsg":Ljava/lang/String;
    :cond_0
    move-object v1, v0

    check-cast v1, Lch/qos/logback/core/spi/AppenderAttachable;

    .line 47
    .local v1, "appenderAttachable":Lch/qos/logback/core/spi/AppenderAttachable;, "Lch/qos/logback/core/spi/AppenderAttachable<TE;>;"
    const-string/jumbo v3, "ref"

    invoke-interface {p3, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lch/qos/logback/core/joran/spi/InterpretationContext;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "appenderName":Ljava/lang/String;
    invoke-static {v3}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 51
    const-string v4, "Missing appender ref attribute in <appender-ref> tag."

    .line 52
    .local v4, "errMsg":Ljava/lang/String;
    iput-boolean v2, p0, Lch/qos/logback/core/joran/action/AppenderRefAction;->inError:Z

    .line 53
    invoke-virtual {p0, v4}, Lch/qos/logback/core/joran/action/AppenderRefAction;->addError(Ljava/lang/String;)V

    .line 55
    return-void

    .line 58
    .end local v4    # "errMsg":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->getObjectMap()Ljava/util/Map;

    move-result-object v4

    const-string v5, "APPENDER_BAG"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 59
    .local v4, "appenderBag":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lch/qos/logback/core/Appender<TE;>;>;"
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lch/qos/logback/core/Appender;

    .line 61
    .local v5, "appender":Lch/qos/logback/core/Appender;, "Lch/qos/logback/core/Appender<TE;>;"
    if-nez v5, :cond_2

    .line 62
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not find an appender named ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]. Did you define it below instead of above in the configuration file?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 63
    .local v6, "msg":Ljava/lang/String;
    iput-boolean v2, p0, Lch/qos/logback/core/joran/action/AppenderRefAction;->inError:Z

    .line 64
    invoke-virtual {p0, v6}, Lch/qos/logback/core/joran/action/AppenderRefAction;->addError(Ljava/lang/String;)V

    .line 65
    const-string v2, "See http://logback.qos.ch/codes.html#appender_order for more details."

    invoke-virtual {p0, v2}, Lch/qos/logback/core/joran/action/AppenderRefAction;->addError(Ljava/lang/String;)V

    .line 66
    return-void

    .line 69
    .end local v6    # "msg":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attaching appender named ["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "] to "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lch/qos/logback/core/joran/action/AppenderRefAction;->addInfo(Ljava/lang/String;)V

    .line 70
    invoke-interface {v1, v5}, Lch/qos/logback/core/spi/AppenderAttachable;->addAppender(Lch/qos/logback/core/Appender;)V

    .line 71
    return-void
.end method

.method public end(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .locals 0
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "n"    # Ljava/lang/String;

    .line 74
    .local p0, "this":Lch/qos/logback/core/joran/action/AppenderRefAction;, "Lch/qos/logback/core/joran/action/AppenderRefAction<TE;>;"
    return-void
.end method
