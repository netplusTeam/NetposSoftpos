.class public Lcom/sleepycat/je/utilint/FormatterRedirectHandler;
.super Ljava/util/logging/ConsoleHandler;
.source "FormatterRedirectHandler.java"


# static fields
.field private static final HANDLER_LEVEL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sleepycat/je/util/ConsoleHandler;

    .line 37
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".level"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/utilint/FormatterRedirectHandler;->HANDLER_LEVEL:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/util/logging/ConsoleHandler;-><init>()V

    .line 42
    sget-object v0, Lcom/sleepycat/je/utilint/FormatterRedirectHandler;->HANDLER_LEVEL:Ljava/lang/String;

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLoggerProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "level":Ljava/lang/String;
    if-nez v0, :cond_0

    sget-object v1, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/utilint/FormatterRedirectHandler;->setLevel(Ljava/util/logging/Level;)V

    .line 44
    return-void
.end method


# virtual methods
.method public publish(Ljava/util/logging/LogRecord;)V
    .locals 2
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 48
    sget-object v0, Lcom/sleepycat/je/utilint/LoggerUtils;->formatterMap:Ljava/util/Map;

    .line 49
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/Formatter;

    .line 50
    .local v0, "formatter":Ljava/util/logging/Formatter;
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/utilint/FormatterRedirectHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 53
    :cond_0
    invoke-super {p0, p1}, Ljava/util/logging/ConsoleHandler;->publish(Ljava/util/logging/LogRecord;)V

    .line 54
    return-void
.end method
