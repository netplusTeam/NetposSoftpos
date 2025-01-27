.class public Lch/qos/logback/classic/boolex/JaninoEventEvaluator;
.super Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase;
.source "JaninoEventEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase<",
        "Lch/qos/logback/classic/spi/ILoggingEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_PARAM_NAME_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_PARAM_TYPE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field public static final IMPORT_LEVEL:Ljava/lang/String; = "import ch.qos.logback.classic.Level;\r\n"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lch/qos/logback/classic/boolex/JaninoEventEvaluator;->DEFAULT_PARAM_NAME_LIST:Ljava/util/List;

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lch/qos/logback/classic/boolex/JaninoEventEvaluator;->DEFAULT_PARAM_TYPE_LIST:Ljava/util/List;

    .line 39
    const-string v2, "DEBUG"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    const-string v2, "INFO"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    const-string v2, "WARN"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    const-string v2, "ERROR"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    const-string v2, "event"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    const-string v2, "message"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    const-string v2, "formattedMessage"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    const-string v2, "logger"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    const-string v2, "loggerContext"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    const-string v2, "level"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    const-string/jumbo v2, "timeStamp"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    const-string v2, "marker"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    const-string v2, "mdc"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    const-string/jumbo v2, "throwableProxy"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    const-string/jumbo v2, "throwable"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    const-class v0, Lch/qos/logback/classic/spi/ILoggingEvent;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    const-class v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    const-class v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    const-class v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    const-class v0, Lch/qos/logback/classic/spi/LoggerContextVO;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    const-class v0, Lorg/slf4j/Marker;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    const-class v0, Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    const-class v0, Lch/qos/logback/classic/spi/IThrowableProxy;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    const-class v0, Ljava/lang/Throwable;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDecoratedExpression()Ljava/lang/String;
    .locals 3

    .line 76
    invoke-virtual {p0}, Lch/qos/logback/classic/boolex/JaninoEventEvaluator;->getExpression()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "expression":Ljava/lang/String;
    const-string/jumbo v1, "return"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding [return] prefix and a semicolon suffix. Expression becomes ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/classic/boolex/JaninoEventEvaluator;->addInfo(Ljava/lang/String;)V

    .line 80
    const-string v1, "See also http://logback.qos.ch/codes.html#block"

    invoke-virtual {p0, v1}, Lch/qos/logback/classic/boolex/JaninoEventEvaluator;->addInfo(Ljava/lang/String;)V

    .line 83
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "import ch.qos.logback.classic.Level;\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getParameterNames()[Ljava/lang/String;
    .locals 4

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v0, "fullNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lch/qos/logback/classic/boolex/JaninoEventEvaluator;->DEFAULT_PARAM_NAME_LIST:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lch/qos/logback/classic/boolex/JaninoEventEvaluator;->matcherList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 91
    iget-object v2, p0, Lch/qos/logback/classic/boolex/JaninoEventEvaluator;->matcherList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/qos/logback/core/boolex/Matcher;

    .line 92
    .local v2, "m":Lch/qos/logback/core/boolex/Matcher;
    invoke-virtual {v2}, Lch/qos/logback/core/boolex/Matcher;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .end local v2    # "m":Lch/qos/logback/core/boolex/Matcher;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    .end local v1    # "i":I
    :cond_0
    sget-object v1, Lch/qos/logback/core/CoreConstants;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method protected getParameterTypes()[Ljava/lang/Class;
    .locals 3

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v0, "fullTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class;>;"
    sget-object v1, Lch/qos/logback/classic/boolex/JaninoEventEvaluator;->DEFAULT_PARAM_TYPE_LIST:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lch/qos/logback/classic/boolex/JaninoEventEvaluator;->matcherList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 102
    const-class v2, Lch/qos/logback/core/boolex/Matcher;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    .end local v1    # "i":I
    :cond_0
    sget-object v1, Lch/qos/logback/core/CoreConstants;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    check-cast v1, [Ljava/lang/Class;

    return-object v1
.end method

.method protected getParameterValues(Lch/qos/logback/classic/spi/ILoggingEvent;)[Ljava/lang/Object;
    .locals 7
    .param p1, "loggingEvent"    # Lch/qos/logback/classic/spi/ILoggingEvent;

    .line 108
    iget-object v0, p0, Lch/qos/logback/classic/boolex/JaninoEventEvaluator;->matcherList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 110
    .local v0, "matcherListSize":I
    const/4 v1, 0x0

    .line 111
    .local v1, "i":I
    sget-object v2, Lch/qos/logback/classic/boolex/JaninoEventEvaluator;->DEFAULT_PARAM_NAME_LIST:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/Object;

    .line 113
    .local v2, "values":[Ljava/lang/Object;
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    sget-object v4, Lch/qos/logback/classic/Level;->DEBUG_INTEGER:Ljava/lang/Integer;

    aput-object v4, v2, v1

    .line 114
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "i":I
    .restart local v1    # "i":I
    sget-object v4, Lch/qos/logback/classic/Level;->INFO_INTEGER:Ljava/lang/Integer;

    aput-object v4, v2, v3

    .line 115
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .restart local v3    # "i":I
    sget-object v4, Lch/qos/logback/classic/Level;->WARN_INTEGER:Ljava/lang/Integer;

    aput-object v4, v2, v1

    .line 116
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "i":I
    .restart local v1    # "i":I
    sget-object v4, Lch/qos/logback/classic/Level;->ERROR_INTEGER:Ljava/lang/Integer;

    aput-object v4, v2, v3

    .line 118
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .restart local v3    # "i":I
    aput-object p1, v2, v1

    .line 119
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "i":I
    .restart local v1    # "i":I
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 120
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .restart local v3    # "i":I
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getFormattedMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 121
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "i":I
    .restart local v1    # "i":I
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 122
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .restart local v3    # "i":I
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getLoggerContextVO()Lch/qos/logback/classic/spi/LoggerContextVO;

    move-result-object v4

    aput-object v4, v2, v1

    .line 123
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "i":I
    .restart local v1    # "i":I
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getLevel()Lch/qos/logback/classic/Level;

    move-result-object v4

    invoke-virtual {v4}, Lch/qos/logback/classic/Level;->toInteger()Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 124
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .restart local v3    # "i":I
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getTimeStamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v1

    .line 128
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "i":I
    .restart local v1    # "i":I
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getMarker()Lorg/slf4j/Marker;

    move-result-object v4

    aput-object v4, v2, v3

    .line 129
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .restart local v3    # "i":I
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getMDCPropertyMap()Ljava/util/Map;

    move-result-object v4

    aput-object v4, v2, v1

    .line 131
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getThrowableProxy()Lch/qos/logback/classic/spi/IThrowableProxy;

    move-result-object v1

    .line 133
    .local v1, "iThrowableProxy":Lch/qos/logback/classic/spi/IThrowableProxy;
    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 134
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .local v5, "i":I
    aput-object v1, v2, v3

    .line 135
    instance-of v3, v1, Lch/qos/logback/classic/spi/ThrowableProxy;

    if-eqz v3, :cond_0

    .line 136
    add-int/lit8 v3, v5, 0x1

    .end local v5    # "i":I
    .restart local v3    # "i":I
    move-object v4, v1

    check-cast v4, Lch/qos/logback/classic/spi/ThrowableProxy;

    invoke-virtual {v4}, Lch/qos/logback/classic/spi/ThrowableProxy;->getThrowable()Ljava/lang/Throwable;

    move-result-object v4

    aput-object v4, v2, v5

    goto :goto_0

    .line 138
    .end local v3    # "i":I
    .restart local v5    # "i":I
    :cond_0
    add-int/lit8 v3, v5, 0x1

    .end local v5    # "i":I
    .restart local v3    # "i":I
    aput-object v4, v2, v5

    goto :goto_0

    .line 141
    :cond_1
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .restart local v5    # "i":I
    aput-object v4, v2, v3

    .line 142
    add-int/lit8 v3, v5, 0x1

    .end local v5    # "i":I
    .restart local v3    # "i":I
    aput-object v4, v2, v5

    .line 145
    :goto_0
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v0, :cond_2

    .line 146
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .restart local v5    # "i":I
    iget-object v6, p0, Lch/qos/logback/classic/boolex/JaninoEventEvaluator;->matcherList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lch/qos/logback/core/boolex/Matcher;

    aput-object v6, v2, v3

    .line 145
    add-int/lit8 v4, v4, 0x1

    move v3, v5

    goto :goto_1

    .line 149
    .end local v4    # "j":I
    .end local v5    # "i":I
    .restart local v3    # "i":I
    :cond_2
    return-object v2
.end method

.method protected bridge synthetic getParameterValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p1, Lch/qos/logback/classic/spi/ILoggingEvent;

    invoke-virtual {p0, p1}, Lch/qos/logback/classic/boolex/JaninoEventEvaluator;->getParameterValues(Lch/qos/logback/classic/spi/ILoggingEvent;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
