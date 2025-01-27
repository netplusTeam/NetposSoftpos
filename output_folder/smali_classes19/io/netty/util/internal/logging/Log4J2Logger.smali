.class Lio/netty/util/internal/logging/Log4J2Logger;
.super Lorg/apache/logging/log4j/spi/ExtendedLoggerWrapper;
.source "Log4J2Logger.java"

# interfaces
.implements Lio/netty/util/internal/logging/InternalLogger;


# static fields
.field private static final VARARGS_ONLY:Z

.field private static final serialVersionUID:J = 0x4c201ef797341125L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lio/netty/util/internal/logging/Log4J2Logger$1;

    invoke-direct {v0}, Lio/netty/util/internal/logging/Log4J2Logger$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lio/netty/util/internal/logging/Log4J2Logger;->VARARGS_ONLY:Z

    .line 53
    return-void
.end method

.method constructor <init>(Lorg/apache/logging/log4j/Logger;)V
    .locals 3
    .param p1, "logger"    # Lorg/apache/logging/log4j/Logger;

    .line 56
    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/spi/ExtendedLogger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->getMessageFactory()Lorg/apache/logging/log4j/message/MessageFactory;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/logging/log4j/spi/ExtendedLoggerWrapper;-><init>(Lorg/apache/logging/log4j/spi/ExtendedLogger;Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)V

    .line 57
    sget-boolean v0, Lio/netty/util/internal/logging/Log4J2Logger;->VARARGS_ONLY:Z

    if-nez v0, :cond_0

    .line 60
    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Log4J2 version mismatch"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toLevel(Lio/netty/util/internal/logging/InternalLogLevel;)Lorg/apache/logging/log4j/Level;
    .locals 2
    .param p0, "level"    # Lio/netty/util/internal/logging/InternalLogLevel;

    .line 128
    sget-object v0, Lio/netty/util/internal/logging/Log4J2Logger$2;->$SwitchMap$io$netty$util$internal$logging$InternalLogLevel:[I

    invoke-virtual {p0}, Lio/netty/util/internal/logging/InternalLogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 140
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 138
    :pswitch_0
    sget-object v0, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    return-object v0

    .line 136
    :pswitch_1
    sget-object v0, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    return-object v0

    .line 134
    :pswitch_2
    sget-object v0, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    return-object v0

    .line 132
    :pswitch_3
    sget-object v0, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    return-object v0

    .line 130
    :pswitch_4
    sget-object v0, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public debug(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 74
    sget-object v0, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    const-string v1, "Unexpected exception:"

    invoke-virtual {p0, v0, v1, p1}, Lio/netty/util/internal/logging/Log4J2Logger;->log(Lorg/apache/logging/log4j/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    return-void
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 89
    sget-object v0, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    const-string v1, "Unexpected exception:"

    invoke-virtual {p0, v0, v1, p1}, Lio/netty/util/internal/logging/Log4J2Logger;->log(Lorg/apache/logging/log4j/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    return-void
.end method

.method public info(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 79
    sget-object v0, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    const-string v1, "Unexpected exception:"

    invoke-virtual {p0, v0, v1, p1}, Lio/netty/util/internal/logging/Log4J2Logger;->log(Lorg/apache/logging/log4j/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    return-void
.end method

.method public isEnabled(Lio/netty/util/internal/logging/InternalLogLevel;)Z
    .locals 1
    .param p1, "level"    # Lio/netty/util/internal/logging/InternalLogLevel;

    .line 94
    invoke-static {p1}, Lio/netty/util/internal/logging/Log4J2Logger;->toLevel(Lio/netty/util/internal/logging/InternalLogLevel;)Lorg/apache/logging/log4j/Level;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/util/internal/logging/Log4J2Logger;->isEnabled(Lorg/apache/logging/log4j/Level;)Z

    move-result v0

    return v0
.end method

.method public log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;)V
    .locals 1
    .param p1, "level"    # Lio/netty/util/internal/logging/InternalLogLevel;
    .param p2, "msg"    # Ljava/lang/String;

    .line 99
    invoke-static {p1}, Lio/netty/util/internal/logging/Log4J2Logger;->toLevel(Lio/netty/util/internal/logging/InternalLogLevel;)Lorg/apache/logging/log4j/Level;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lio/netty/util/internal/logging/Log4J2Logger;->log(Lorg/apache/logging/log4j/Level;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "level"    # Lio/netty/util/internal/logging/InternalLogLevel;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;

    .line 104
    invoke-static {p1}, Lio/netty/util/internal/logging/Log4J2Logger;->toLevel(Lio/netty/util/internal/logging/InternalLogLevel;)Lorg/apache/logging/log4j/Level;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lio/netty/util/internal/logging/Log4J2Logger;->log(Lorg/apache/logging/log4j/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "level"    # Lio/netty/util/internal/logging/InternalLogLevel;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "argA"    # Ljava/lang/Object;
    .param p4, "argB"    # Ljava/lang/Object;

    .line 109
    invoke-static {p1}, Lio/netty/util/internal/logging/Log4J2Logger;->toLevel(Lio/netty/util/internal/logging/InternalLogLevel;)Lorg/apache/logging/log4j/Level;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lio/netty/util/internal/logging/Log4J2Logger;->log(Lorg/apache/logging/log4j/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method public log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "level"    # Lio/netty/util/internal/logging/InternalLogLevel;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .line 119
    invoke-static {p1}, Lio/netty/util/internal/logging/Log4J2Logger;->toLevel(Lio/netty/util/internal/logging/InternalLogLevel;)Lorg/apache/logging/log4j/Level;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lio/netty/util/internal/logging/Log4J2Logger;->log(Lorg/apache/logging/log4j/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    return-void
.end method

.method public varargs log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "level"    # Lio/netty/util/internal/logging/InternalLogLevel;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/Object;

    .line 114
    invoke-static {p1}, Lio/netty/util/internal/logging/Log4J2Logger;->toLevel(Lio/netty/util/internal/logging/InternalLogLevel;)Lorg/apache/logging/log4j/Level;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lio/netty/util/internal/logging/Log4J2Logger;->log(Lorg/apache/logging/log4j/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method public log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "level"    # Lio/netty/util/internal/logging/InternalLogLevel;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 124
    invoke-static {p1}, Lio/netty/util/internal/logging/Log4J2Logger;->toLevel(Lio/netty/util/internal/logging/InternalLogLevel;)Lorg/apache/logging/log4j/Level;

    move-result-object v0

    const-string v1, "Unexpected exception:"

    invoke-virtual {p0, v0, v1, p2}, Lio/netty/util/internal/logging/Log4J2Logger;->log(Lorg/apache/logging/log4j/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lio/netty/util/internal/logging/Log4J2Logger;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trace(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 69
    sget-object v0, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    const-string v1, "Unexpected exception:"

    invoke-virtual {p0, v0, v1, p1}, Lio/netty/util/internal/logging/Log4J2Logger;->log(Lorg/apache/logging/log4j/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    return-void
.end method

.method public warn(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 84
    sget-object v0, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    const-string v1, "Unexpected exception:"

    invoke-virtual {p0, v0, v1, p1}, Lio/netty/util/internal/logging/Log4J2Logger;->log(Lorg/apache/logging/log4j/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    return-void
.end method
