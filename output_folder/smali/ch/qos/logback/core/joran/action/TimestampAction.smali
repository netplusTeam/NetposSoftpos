.class public Lch/qos/logback/core/joran/action/TimestampAction;
.super Lch/qos/logback/core/joran/action/Action;
.source "TimestampAction.java"


# static fields
.field static CONTEXT_BIRTH:Ljava/lang/String;

.field static DATE_PATTERN_ATTRIBUTE:Ljava/lang/String;

.field static TIME_REFERENCE_ATTRIBUTE:Ljava/lang/String;


# instance fields
.field inError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-string v0, "datePattern"

    sput-object v0, Lch/qos/logback/core/joran/action/TimestampAction;->DATE_PATTERN_ATTRIBUTE:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "timeReference"

    sput-object v0, Lch/qos/logback/core/joran/action/TimestampAction;->TIME_REFERENCE_ATTRIBUTE:Ljava/lang/String;

    .line 35
    const-string v0, "contextBirth"

    sput-object v0, Lch/qos/logback/core/joran/action/TimestampAction;->CONTEXT_BIRTH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lch/qos/logback/core/joran/action/Action;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/joran/action/TimestampAction;->inError:Z

    return-void
.end method


# virtual methods
.method public begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 11
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/ActionException;
        }
    .end annotation

    .line 41
    const-string v0, "key"

    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "keyStr":Ljava/lang/String;
    invoke-static {v0}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 43
    const-string v1, "Attribute named [key] cannot be empty"

    invoke-virtual {p0, v1}, Lch/qos/logback/core/joran/action/TimestampAction;->addError(Ljava/lang/String;)V

    .line 44
    iput-boolean v2, p0, Lch/qos/logback/core/joran/action/TimestampAction;->inError:Z

    .line 46
    :cond_0
    sget-object v1, Lch/qos/logback/core/joran/action/TimestampAction;->DATE_PATTERN_ATTRIBUTE:Ljava/lang/String;

    invoke-interface {p3, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "datePatternStr":Ljava/lang/String;
    invoke-static {v1}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attribute named ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lch/qos/logback/core/joran/action/TimestampAction;->DATE_PATTERN_ATTRIBUTE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] cannot be empty"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lch/qos/logback/core/joran/action/TimestampAction;->addError(Ljava/lang/String;)V

    .line 49
    iput-boolean v2, p0, Lch/qos/logback/core/joran/action/TimestampAction;->inError:Z

    .line 52
    :cond_1
    sget-object v2, Lch/qos/logback/core/joran/action/TimestampAction;->TIME_REFERENCE_ATTRIBUTE:Ljava/lang/String;

    invoke-interface {p3, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "timeReferenceStr":Ljava/lang/String;
    sget-object v3, Lch/qos/logback/core/joran/action/TimestampAction;->CONTEXT_BIRTH:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 55
    const-string v3, "Using context birth as time reference."

    invoke-virtual {p0, v3}, Lch/qos/logback/core/joran/action/TimestampAction;->addInfo(Ljava/lang/String;)V

    .line 56
    iget-object v3, p0, Lch/qos/logback/core/joran/action/TimestampAction;->context:Lch/qos/logback/core/Context;

    invoke-interface {v3}, Lch/qos/logback/core/Context;->getBirthTime()J

    move-result-wide v3

    .local v3, "timeReference":J
    goto :goto_0

    .line 58
    .end local v3    # "timeReference":J
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 59
    .restart local v3    # "timeReference":J
    const-string v5, "Using current interpretation time, i.e. now, as time reference."

    invoke-virtual {p0, v5}, Lch/qos/logback/core/joran/action/TimestampAction;->addInfo(Ljava/lang/String;)V

    .line 62
    :goto_0
    iget-boolean v5, p0, Lch/qos/logback/core/joran/action/TimestampAction;->inError:Z

    if-eqz v5, :cond_3

    .line 63
    return-void

    .line 65
    :cond_3
    const-string/jumbo v5, "scope"

    invoke-interface {p3, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "scopeStr":Ljava/lang/String;
    invoke-static {v5}, Lch/qos/logback/core/joran/action/ActionUtil;->stringToScope(Ljava/lang/String;)Lch/qos/logback/core/joran/action/ActionUtil$Scope;

    move-result-object v6

    .line 68
    .local v6, "scope":Lch/qos/logback/core/joran/action/ActionUtil$Scope;
    new-instance v7, Lch/qos/logback/core/util/CachingDateFormatter;

    invoke-direct {v7, v1}, Lch/qos/logback/core/util/CachingDateFormatter;-><init>(Ljava/lang/String;)V

    .line 69
    .local v7, "sdf":Lch/qos/logback/core/util/CachingDateFormatter;
    invoke-virtual {v7, v3, v4}, Lch/qos/logback/core/util/CachingDateFormatter;->format(J)Ljava/lang/String;

    move-result-object v8

    .line 71
    .local v8, "val":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Adding property to the context with key=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\" and value=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\" to the "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " scope"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lch/qos/logback/core/joran/action/TimestampAction;->addInfo(Ljava/lang/String;)V

    .line 72
    invoke-static {p1, v0, v8, v6}, Lch/qos/logback/core/joran/action/ActionUtil;->setProperty(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Ljava/lang/String;Lch/qos/logback/core/joran/action/ActionUtil$Scope;)V

    .line 73
    return-void
.end method

.method public end(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .locals 0
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/ActionException;
        }
    .end annotation

    .line 77
    return-void
.end method
