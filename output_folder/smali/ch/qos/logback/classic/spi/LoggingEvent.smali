.class public Lch/qos/logback/classic/spi/LoggingEvent;
.super Ljava/lang/Object;
.source "LoggingEvent.java"

# interfaces
.implements Lch/qos/logback/classic/spi/ILoggingEvent;


# instance fields
.field private transient argumentArray:[Ljava/lang/Object;

.field private callerDataArray:[Ljava/lang/StackTraceElement;

.field transient formattedMessage:Ljava/lang/String;

.field transient fqnOfLoggerClass:Ljava/lang/String;

.field private transient level:Lch/qos/logback/classic/Level;

.field private loggerContext:Lch/qos/logback/classic/LoggerContext;

.field private loggerContextVO:Lch/qos/logback/classic/spi/LoggerContextVO;

.field private loggerName:Ljava/lang/String;

.field private marker:Lorg/slf4j/Marker;

.field private mdcPropertyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;

.field private threadName:Ljava/lang/String;

.field private throwableProxy:Lch/qos/logback/classic/spi/ThrowableProxy;

.field private timeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/Level;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "logger"    # Lch/qos/logback/classic/Logger;
    .param p3, "level"    # Lch/qos/logback/classic/Level;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "throwable"    # Ljava/lang/Throwable;
    .param p6, "argArray"    # [Ljava/lang/Object;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lch/qos/logback/classic/spi/LoggingEvent;->fqnOfLoggerClass:Ljava/lang/String;

    .line 106
    invoke-virtual {p2}, Lch/qos/logback/classic/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/classic/spi/LoggingEvent;->loggerName:Ljava/lang/String;

    .line 107
    invoke-virtual {p2}, Lch/qos/logback/classic/Logger;->getLoggerContext()Lch/qos/logback/classic/LoggerContext;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/classic/spi/LoggingEvent;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    .line 108
    invoke-virtual {v0}, Lch/qos/logback/classic/LoggerContext;->getLoggerContextRemoteView()Lch/qos/logback/classic/spi/LoggerContextVO;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/classic/spi/LoggingEvent;->loggerContextVO:Lch/qos/logback/classic/spi/LoggerContextVO;

    .line 109
    iput-object p3, p0, Lch/qos/logback/classic/spi/LoggingEvent;->level:Lch/qos/logback/classic/Level;

    .line 111
    iput-object p4, p0, Lch/qos/logback/classic/spi/LoggingEvent;->message:Ljava/lang/String;

    .line 112
    iput-object p6, p0, Lch/qos/logback/classic/spi/LoggingEvent;->argumentArray:[Ljava/lang/Object;

    .line 114
    if-nez p5, :cond_0

    .line 115
    invoke-direct {p0, p6}, Lch/qos/logback/classic/spi/LoggingEvent;->extractThrowableAnRearrangeArguments([Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p5

    .line 118
    :cond_0
    if-eqz p5, :cond_1

    .line 119
    new-instance v0, Lch/qos/logback/classic/spi/ThrowableProxy;

    invoke-direct {v0, p5}, Lch/qos/logback/classic/spi/ThrowableProxy;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lch/qos/logback/classic/spi/LoggingEvent;->throwableProxy:Lch/qos/logback/classic/spi/ThrowableProxy;

    .line 120
    invoke-virtual {p2}, Lch/qos/logback/classic/Logger;->getLoggerContext()Lch/qos/logback/classic/LoggerContext;

    move-result-object v0

    .line 121
    .local v0, "lc":Lch/qos/logback/classic/LoggerContext;
    invoke-virtual {v0}, Lch/qos/logback/classic/LoggerContext;->isPackagingDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p0, Lch/qos/logback/classic/spi/LoggingEvent;->throwableProxy:Lch/qos/logback/classic/spi/ThrowableProxy;

    invoke-virtual {v1}, Lch/qos/logback/classic/spi/ThrowableProxy;->calculatePackagingData()V

    .line 126
    .end local v0    # "lc":Lch/qos/logback/classic/LoggerContext;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lch/qos/logback/classic/spi/LoggingEvent;->timeStamp:J

    .line 127
    return-void
.end method

.method private extractThrowableAnRearrangeArguments([Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2
    .param p1, "argArray"    # [Ljava/lang/Object;

    .line 130
    invoke-static {p1}, Lch/qos/logback/classic/spi/EventArgUtil;->extractThrowable([Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    .line 131
    .local v0, "extractedThrowable":Ljava/lang/Throwable;
    invoke-static {v0}, Lch/qos/logback/classic/spi/EventArgUtil;->successfulExtraction(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    invoke-static {p1}, Lch/qos/logback/classic/spi/EventArgUtil;->trimmedCopy([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lch/qos/logback/classic/spi/LoggingEvent;->argumentArray:[Ljava/lang/Object;

    .line 134
    :cond_0
    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support serialization. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Use LoggerEventVO instance instead. See also LoggerEventVO.build method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getArgumentArray()[Ljava/lang/Object;
    .locals 1

    .line 145
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEvent;->argumentArray:[Ljava/lang/Object;

    return-object v0
.end method

.method public getCallerData()[Ljava/lang/StackTraceElement;
    .locals 4

    .line 257
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEvent;->callerDataArray:[Ljava/lang/StackTraceElement;

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    iget-object v1, p0, Lch/qos/logback/classic/spi/LoggingEvent;->fqnOfLoggerClass:Ljava/lang/String;

    iget-object v2, p0, Lch/qos/logback/classic/spi/LoggingEvent;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-virtual {v2}, Lch/qos/logback/classic/LoggerContext;->getMaxCallerDataDepth()I

    move-result v2

    iget-object v3, p0, Lch/qos/logback/classic/spi/LoggingEvent;->loggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-virtual {v3}, Lch/qos/logback/classic/LoggerContext;->getFrameworkPackages()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lch/qos/logback/classic/spi/CallerData;->extract(Ljava/lang/Throwable;Ljava/lang/String;ILjava/util/List;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/classic/spi/LoggingEvent;->callerDataArray:[Ljava/lang/StackTraceElement;

    .line 261
    :cond_0
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEvent;->callerDataArray:[Ljava/lang/StackTraceElement;

    return-object v0
.end method

.method public getContextBirthTime()J
    .locals 2

    .line 284
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEvent;->loggerContextVO:Lch/qos/logback/classic/spi/LoggerContextVO;

    invoke-virtual {v0}, Lch/qos/logback/classic/spi/LoggerContextVO;->getBirthTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFormattedMessage()Ljava/lang/String;
    .locals 2

    .line 289
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEvent;->formattedMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 290
    return-object v0

    .line 292
    :cond_0
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEvent;->argumentArray:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 293
    iget-object v1, p0, Lch/qos/logback/classic/spi/LoggingEvent;->message:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v0

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/classic/spi/LoggingEvent;->formattedMessage:Ljava/lang/String;

    goto :goto_0

    .line 295
    :cond_1
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEvent;->message:Ljava/lang/String;

    iput-object v0, p0, Lch/qos/logback/classic/spi/LoggingEvent;->formattedMessage:Ljava/lang/String;

    .line 298
    :goto_0
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEvent;->formattedMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Lch/qos/logback/classic/Level;
    .locals 1

    .line 149
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEvent;->level:Lch/qos/logback/classic/Level;

    return-object v0
.end method

.method public getLoggerContextVO()Lch/qos/logback/classic/spi/LoggerContextVO;
    .locals 1

    .line 213
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEvent;->loggerContextVO:Lch/qos/logback/classic/spi/LoggerContextVO;

    return-object v0
.end method

.method public getLoggerName()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEvent;->loggerName:Ljava/lang/String;

    return-object v0
.end method

.method public getMDCPropertyMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEvent;->mdcPropertyMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 304
    invoke-static {}, Lorg/slf4j/MDC;->getMDCAdapter()Lorg/slf4j/spi/MDCAdapter;

    move-result-object v0

    .line 305
    .local v0, "mdc":Lorg/slf4j/spi/MDCAdapter;
    instance-of v1, v0, Lch/qos/logback/classic/util/LogbackMDCAdapter;

    if-eqz v1, :cond_0

    .line 306
    move-object v1, v0

    check-cast v1, Lch/qos/logback/classic/util/LogbackMDCAdapter;

    invoke-virtual {v1}, Lch/qos/logback/classic/util/LogbackMDCAdapter;->getPropertyMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lch/qos/logback/classic/spi/LoggingEvent;->mdcPropertyMap:Ljava/util/Map;

    goto :goto_0

    .line 308
    :cond_0
    invoke-interface {v0}, Lorg/slf4j/spi/MDCAdapter;->getCopyOfContextMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lch/qos/logback/classic/spi/LoggingEvent;->mdcPropertyMap:Ljava/util/Map;

    .line 311
    .end local v0    # "mdc":Lorg/slf4j/spi/MDCAdapter;
    :cond_1
    :goto_0
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEvent;->mdcPropertyMap:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 312
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/classic/spi/LoggingEvent;->mdcPropertyMap:Ljava/util/Map;

    .line 314
    :cond_2
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEvent;->mdcPropertyMap:Ljava/util/Map;

    return-object v0
.end method

.method public getMarker()Lorg/slf4j/Marker;
    .locals 1

    .line 273
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEvent;->marker:Lorg/slf4j/Marker;

    return-object v0
.end method

.method public getMdc()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 337
    invoke-virtual {p0}, Lch/qos/logback/classic/spi/LoggingEvent;->getMDCPropertyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEvent;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadName()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEvent;->threadName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 162
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/classic/spi/LoggingEvent;->threadName:Ljava/lang/String;

    .line 164
    :cond_0
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEvent;->threadName:Ljava/lang/String;

    return-object v0
.end method

.method public getThrowableProxy()Lch/qos/logback/classic/spi/IThrowableProxy;
    .locals 1

    .line 183
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEvent;->throwableProxy:Lch/qos/logback/classic/spi/ThrowableProxy;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 232
    iget-wide v0, p0, Lch/qos/logback/classic/spi/LoggingEvent;->timeStamp:J

    return-wide v0
.end method

.method public hasCallerData()Z
    .locals 1

    .line 265
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEvent;->callerDataArray:[Ljava/lang/StackTraceElement;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public prepareForDeferredProcessing()V
    .locals 0

    .line 206
    invoke-virtual {p0}, Lch/qos/logback/classic/spi/LoggingEvent;->getFormattedMessage()Ljava/lang/String;

    .line 207
    invoke-virtual {p0}, Lch/qos/logback/classic/spi/LoggingEvent;->getThreadName()Ljava/lang/String;

    .line 209
    invoke-virtual {p0}, Lch/qos/logback/classic/spi/LoggingEvent;->getMDCPropertyMap()Ljava/util/Map;

    .line 210
    return-void
.end method

.method public setArgumentArray([Ljava/lang/Object;)V
    .locals 2
    .param p1, "argArray"    # [Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEvent;->argumentArray:[Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 141
    iput-object p1, p0, Lch/qos/logback/classic/spi/LoggingEvent;->argumentArray:[Ljava/lang/Object;

    .line 142
    return-void

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "argArray has been already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCallerData([Ljava/lang/StackTraceElement;)V
    .locals 0
    .param p1, "callerDataArray"    # [Ljava/lang/StackTraceElement;

    .line 269
    iput-object p1, p0, Lch/qos/logback/classic/spi/LoggingEvent;->callerDataArray:[Ljava/lang/StackTraceElement;

    .line 270
    return-void
.end method

.method public setLevel(Lch/qos/logback/classic/Level;)V
    .locals 2
    .param p1, "level"    # Lch/qos/logback/classic/Level;

    .line 240
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEvent;->level:Lch/qos/logback/classic/Level;

    if-nez v0, :cond_0

    .line 243
    iput-object p1, p0, Lch/qos/logback/classic/spi/LoggingEvent;->level:Lch/qos/logback/classic/Level;

    .line 244
    return-void

    .line 241
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The level has been already set for this event."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLoggerContextRemoteView(Lch/qos/logback/classic/spi/LoggerContextVO;)V
    .locals 0
    .param p1, "loggerContextVO"    # Lch/qos/logback/classic/spi/LoggerContextVO;

    .line 217
    iput-object p1, p0, Lch/qos/logback/classic/spi/LoggingEvent;->loggerContextVO:Lch/qos/logback/classic/spi/LoggerContextVO;

    .line 218
    return-void
.end method

.method public setLoggerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "loggerName"    # Ljava/lang/String;

    .line 157
    iput-object p1, p0, Lch/qos/logback/classic/spi/LoggingEvent;->loggerName:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setMDCPropertyMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 324
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEvent;->mdcPropertyMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 327
    iput-object p1, p0, Lch/qos/logback/classic/spi/LoggingEvent;->mdcPropertyMap:Ljava/util/Map;

    .line 329
    return-void

    .line 325
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The MDCPropertyMap has been already set for this event."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMarker(Lorg/slf4j/Marker;)V
    .locals 2
    .param p1, "marker"    # Lorg/slf4j/Marker;

    .line 277
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEvent;->marker:Lorg/slf4j/Marker;

    if-nez v0, :cond_0

    .line 280
    iput-object p1, p0, Lch/qos/logback/classic/spi/LoggingEvent;->marker:Lorg/slf4j/Marker;

    .line 281
    return-void

    .line 278
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The marker has been already set for this event."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEvent;->message:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 228
    iput-object p1, p0, Lch/qos/logback/classic/spi/LoggingEvent;->message:Ljava/lang/String;

    .line 229
    return-void

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The message for this event has been set already."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setThreadName(Ljava/lang/String;)V
    .locals 2
    .param p1, "threadName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEvent;->threadName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 175
    iput-object p1, p0, Lch/qos/logback/classic/spi/LoggingEvent;->threadName:Ljava/lang/String;

    .line 176
    return-void

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "threadName has been already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setThrowableProxy(Lch/qos/logback/classic/spi/ThrowableProxy;)V
    .locals 2
    .param p1, "tp"    # Lch/qos/logback/classic/spi/ThrowableProxy;

    .line 190
    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggingEvent;->throwableProxy:Lch/qos/logback/classic/spi/ThrowableProxy;

    if-nez v0, :cond_0

    .line 193
    iput-object p1, p0, Lch/qos/logback/classic/spi/LoggingEvent;->throwableProxy:Lch/qos/logback/classic/spi/ThrowableProxy;

    .line 195
    return-void

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ThrowableProxy has been already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTimeStamp(J)V
    .locals 0
    .param p1, "timeStamp"    # J

    .line 236
    iput-wide p1, p0, Lch/qos/logback/classic/spi/LoggingEvent;->timeStamp:J

    .line 237
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 344
    iget-object v1, p0, Lch/qos/logback/classic/spi/LoggingEvent;->level:Lch/qos/logback/classic/Level;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {p0}, Lch/qos/logback/classic/spi/LoggingEvent;->getFormattedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
