.class public Lch/qos/logback/classic/joran/action/ConsolePluginAction;
.super Lch/qos/logback/core/joran/action/Action;
.source "ConsolePluginAction.java"


# static fields
.field private static final DEFAULT_PORT:Ljava/lang/Integer;

.field private static final PORT_ATTR:Ljava/lang/String; = "port"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const/16 v0, 0x10e1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lch/qos/logback/classic/joran/action/ConsolePluginAction;->DEFAULT_PORT:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lch/qos/logback/core/joran/action/Action;-><init>()V

    return-void
.end method


# virtual methods
.method public begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 7
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/ActionException;
        }
    .end annotation

    .line 32
    const-string/jumbo v0, "port"

    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "portStr":Ljava/lang/String;
    const/4 v1, 0x0

    .line 35
    .local v1, "port":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 36
    sget-object v1, Lch/qos/logback/classic/joran/action/ConsolePluginAction;->DEFAULT_PORT:Ljava/lang/Integer;

    goto :goto_0

    .line 39
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 42
    goto :goto_0

    .line 40
    :catch_0
    move-exception v2

    .line 41
    .local v2, "ex":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in ConsolePlugin config is not a correct number"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lch/qos/logback/classic/joran/action/ConsolePluginAction;->addError(Ljava/lang/String;)V

    .line 45
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :goto_0
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->getContext()Lch/qos/logback/core/Context;

    move-result-object v2

    check-cast v2, Lch/qos/logback/classic/LoggerContext;

    .line 46
    .local v2, "lc":Lch/qos/logback/classic/LoggerContext;
    new-instance v3, Lch/qos/logback/classic/net/SocketAppender;

    invoke-direct {v3}, Lch/qos/logback/classic/net/SocketAppender;-><init>()V

    .line 47
    .local v3, "appender":Lch/qos/logback/classic/net/SocketAppender;
    invoke-virtual {v3, v2}, Lch/qos/logback/classic/net/SocketAppender;->setContext(Lch/qos/logback/core/Context;)V

    .line 48
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lch/qos/logback/classic/net/SocketAppender;->setIncludeCallerData(Z)V

    .line 49
    const-string v4, "localhost"

    invoke-virtual {v3, v4}, Lch/qos/logback/classic/net/SocketAppender;->setRemoteHost(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lch/qos/logback/classic/net/SocketAppender;->setPort(I)V

    .line 51
    invoke-virtual {v3}, Lch/qos/logback/classic/net/SocketAppender;->start()V

    .line 52
    const-string v4, "ROOT"

    invoke-virtual {v2, v4}, Lch/qos/logback/classic/LoggerContext;->getLogger(Ljava/lang/String;)Lch/qos/logback/classic/Logger;

    move-result-object v4

    .line 53
    .local v4, "root":Lch/qos/logback/classic/Logger;
    invoke-virtual {v4, v3}, Lch/qos/logback/classic/Logger;->addAppender(Lch/qos/logback/core/Appender;)V

    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending LoggingEvents to the plugin using port "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lch/qos/logback/classic/joran/action/ConsolePluginAction;->addInfo(Ljava/lang/String;)V

    .line 56
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

    .line 61
    return-void
.end method
