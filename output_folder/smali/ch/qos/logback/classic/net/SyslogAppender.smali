.class public Lch/qos/logback/classic/net/SyslogAppender;
.super Lch/qos/logback/core/net/SyslogAppenderBase;
.source "SyslogAppender.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lch/qos/logback/core/net/SyslogAppenderBase<",
        "Lch/qos/logback/classic/spi/ILoggingEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_STACKTRACE_PATTERN:Ljava/lang/String; = "\t"

.field public static final DEFAULT_SUFFIX_PATTERN:Ljava/lang/String; = "[%thread] %logger %msg"


# instance fields
.field stackTraceLayout:Lch/qos/logback/classic/PatternLayout;

.field stackTracePattern:Ljava/lang/String;

.field throwableExcluded:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lch/qos/logback/core/net/SyslogAppenderBase;-><init>()V

    .line 44
    new-instance v0, Lch/qos/logback/classic/PatternLayout;

    invoke-direct {v0}, Lch/qos/logback/classic/PatternLayout;-><init>()V

    iput-object v0, p0, Lch/qos/logback/classic/net/SyslogAppender;->stackTraceLayout:Lch/qos/logback/classic/PatternLayout;

    .line 45
    const-string v0, "\t"

    iput-object v0, p0, Lch/qos/logback/classic/net/SyslogAppender;->stackTracePattern:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/classic/net/SyslogAppender;->throwableExcluded:Z

    return-void
.end method

.method private handleThrowableFirstLine(Ljava/io/OutputStream;Lch/qos/logback/classic/spi/IThrowableProxy;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "sw"    # Ljava/io/OutputStream;
    .param p2, "tp"    # Lch/qos/logback/classic/spi/IThrowableProxy;
    .param p3, "stackTracePrefix"    # Ljava/lang/String;
    .param p4, "isRootException"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 110
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-nez p4, :cond_0

    .line 111
    const-string v1, "Caused by: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :cond_0
    invoke-interface {p2}, Lch/qos/logback/classic/spi/IThrowableProxy;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lch/qos/logback/classic/spi/IThrowableProxy;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 115
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 116
    return-void
.end method

.method private setupStackTraceLayout()V
    .locals 3

    .line 136
    iget-object v0, p0, Lch/qos/logback/classic/net/SyslogAppender;->stackTraceLayout:Lch/qos/logback/classic/PatternLayout;

    invoke-virtual {v0}, Lch/qos/logback/classic/PatternLayout;->getInstanceConverterMap()Ljava/util/Map;

    move-result-object v0

    const-class v1, Lch/qos/logback/classic/pattern/SyslogStartConverter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "syslogStart"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lch/qos/logback/classic/net/SyslogAppender;->stackTraceLayout:Lch/qos/logback/classic/PatternLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lch/qos/logback/classic/net/SyslogAppender;->getPrefixPattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/classic/net/SyslogAppender;->stackTracePattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/qos/logback/classic/PatternLayout;->setPattern(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lch/qos/logback/classic/net/SyslogAppender;->stackTraceLayout:Lch/qos/logback/classic/PatternLayout;

    invoke-virtual {p0}, Lch/qos/logback/classic/net/SyslogAppender;->getContext()Lch/qos/logback/core/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/qos/logback/classic/PatternLayout;->setContext(Lch/qos/logback/core/Context;)V

    .line 140
    iget-object v0, p0, Lch/qos/logback/classic/net/SyslogAppender;->stackTraceLayout:Lch/qos/logback/classic/PatternLayout;

    invoke-virtual {v0}, Lch/qos/logback/classic/PatternLayout;->start()V

    .line 141
    return-void
.end method


# virtual methods
.method public buildLayout()Lch/qos/logback/core/Layout;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lch/qos/logback/core/Layout<",
            "Lch/qos/logback/classic/spi/ILoggingEvent;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Lch/qos/logback/classic/PatternLayout;

    invoke-direct {v0}, Lch/qos/logback/classic/PatternLayout;-><init>()V

    .line 125
    .local v0, "layout":Lch/qos/logback/classic/PatternLayout;
    invoke-virtual {v0}, Lch/qos/logback/classic/PatternLayout;->getInstanceConverterMap()Ljava/util/Map;

    move-result-object v1

    const-class v2, Lch/qos/logback/classic/pattern/SyslogStartConverter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "syslogStart"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v1, p0, Lch/qos/logback/classic/net/SyslogAppender;->suffixPattern:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 127
    const-string v1, "[%thread] %logger %msg"

    iput-object v1, p0, Lch/qos/logback/classic/net/SyslogAppender;->suffixPattern:Ljava/lang/String;

    .line 129
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lch/qos/logback/classic/net/SyslogAppender;->getPrefixPattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/classic/net/SyslogAppender;->suffixPattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/qos/logback/classic/PatternLayout;->setPattern(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lch/qos/logback/classic/net/SyslogAppender;->getContext()Lch/qos/logback/core/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/qos/logback/classic/PatternLayout;->setContext(Lch/qos/logback/core/Context;)V

    .line 131
    invoke-virtual {v0}, Lch/qos/logback/classic/PatternLayout;->start()V

    .line 132
    return-object v0
.end method

.method public createOutputStream()Lch/qos/logback/core/net/SyslogOutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 60
    new-instance v0, Lch/qos/logback/core/net/SyslogOutputStream;

    invoke-virtual {p0}, Lch/qos/logback/classic/net/SyslogAppender;->getSyslogHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lch/qos/logback/classic/net/SyslogAppender;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lch/qos/logback/core/net/SyslogOutputStream;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method getPrefixPattern()Ljava/lang/String;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%syslogStart{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lch/qos/logback/classic/net/SyslogAppender;->getFacility()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}%nopex{}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSeverityForEvent(Ljava/lang/Object;)I
    .locals 2
    .param p1, "eventObject"    # Ljava/lang/Object;

    .line 71
    move-object v0, p1

    check-cast v0, Lch/qos/logback/classic/spi/ILoggingEvent;

    .line 72
    .local v0, "event":Lch/qos/logback/classic/spi/ILoggingEvent;
    invoke-static {v0}, Lch/qos/logback/classic/util/LevelToSyslogSeverity;->convert(Lch/qos/logback/classic/spi/ILoggingEvent;)I

    move-result v1

    return v1
.end method

.method public getStackTracePattern()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lch/qos/logback/classic/net/SyslogAppender;->stackTracePattern:Ljava/lang/String;

    return-object v0
.end method

.method public isThrowableExcluded()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lch/qos/logback/classic/net/SyslogAppender;->throwableExcluded:Z

    return v0
.end method

.method protected postProcess(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 11
    .param p1, "eventObject"    # Ljava/lang/Object;
    .param p2, "sw"    # Ljava/io/OutputStream;

    .line 77
    iget-boolean v0, p0, Lch/qos/logback/classic/net/SyslogAppender;->throwableExcluded:Z

    if-eqz v0, :cond_0

    .line 78
    return-void

    .line 80
    :cond_0
    move-object v0, p1

    check-cast v0, Lch/qos/logback/classic/spi/ILoggingEvent;

    .line 81
    .local v0, "event":Lch/qos/logback/classic/spi/ILoggingEvent;
    invoke-interface {v0}, Lch/qos/logback/classic/spi/ILoggingEvent;->getThrowableProxy()Lch/qos/logback/classic/spi/IThrowableProxy;

    move-result-object v1

    .line 83
    .local v1, "tp":Lch/qos/logback/classic/spi/IThrowableProxy;
    if-nez v1, :cond_1

    .line 84
    return-void

    .line 86
    :cond_1
    iget-object v2, p0, Lch/qos/logback/classic/net/SyslogAppender;->stackTraceLayout:Lch/qos/logback/classic/PatternLayout;

    invoke-virtual {v2, v0}, Lch/qos/logback/classic/PatternLayout;->doLayout(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "stackTracePrefix":Ljava/lang/String;
    const/4 v3, 0x1

    .line 88
    .local v3, "isRootException":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 89
    invoke-interface {v1}, Lch/qos/logback/classic/spi/IThrowableProxy;->getStackTraceElementProxyArray()[Lch/qos/logback/classic/spi/StackTraceElementProxy;

    move-result-object v4

    .line 91
    .local v4, "stepArray":[Lch/qos/logback/classic/spi/StackTraceElementProxy;
    :try_start_0
    invoke-direct {p0, p2, v1, v2, v3}, Lch/qos/logback/classic/net/SyslogAppender;->handleThrowableFirstLine(Ljava/io/OutputStream;Lch/qos/logback/classic/spi/IThrowableProxy;Ljava/lang/String;Z)V

    .line 92
    const/4 v3, 0x0

    .line 93
    move-object v5, v4

    .local v5, "arr$":[Lch/qos/logback/classic/spi/StackTraceElementProxy;
    array-length v6, v5

    .local v6, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 94
    .local v8, "step":Lch/qos/logback/classic/spi/StackTraceElementProxy;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v9, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/OutputStream;->write([B)V

    .line 97
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v8    # "step":Lch/qos/logback/classic/spi/StackTraceElementProxy;
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 101
    .end local v5    # "arr$":[Lch/qos/logback/classic/spi/StackTraceElementProxy;
    .end local v6    # "len$":I
    .end local v7    # "i$":I
    :cond_2
    nop

    .line 102
    invoke-interface {v1}, Lch/qos/logback/classic/spi/IThrowableProxy;->getCause()Lch/qos/logback/classic/spi/IThrowableProxy;

    move-result-object v1

    .line 103
    .end local v4    # "stepArray":[Lch/qos/logback/classic/spi/StackTraceElementProxy;
    goto :goto_0

    .line 99
    .restart local v4    # "stepArray":[Lch/qos/logback/classic/spi/StackTraceElementProxy;
    :catch_0
    move-exception v5

    .line 104
    .end local v4    # "stepArray":[Lch/qos/logback/classic/spi/StackTraceElementProxy;
    :cond_3
    return-void
.end method

.method public setStackTracePattern(Ljava/lang/String;)V
    .locals 0
    .param p1, "stackTracePattern"    # Ljava/lang/String;

    .line 178
    iput-object p1, p0, Lch/qos/logback/classic/net/SyslogAppender;->stackTracePattern:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setThrowableExcluded(Z)V
    .locals 0
    .param p1, "throwableExcluded"    # Z

    .line 155
    iput-boolean p1, p0, Lch/qos/logback/classic/net/SyslogAppender;->throwableExcluded:Z

    .line 156
    return-void
.end method

.method stackTraceHeaderLine(Ljava/lang/StringBuilder;Z)Z
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "topException"    # Z

    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public start()V
    .locals 0

    .line 50
    invoke-super {p0}, Lch/qos/logback/core/net/SyslogAppenderBase;->start()V

    .line 51
    invoke-direct {p0}, Lch/qos/logback/classic/net/SyslogAppender;->setupStackTraceLayout()V

    .line 52
    return-void
.end method
