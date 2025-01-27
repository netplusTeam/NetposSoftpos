.class final Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;
.super Lio/netty/util/internal/logging/AbstractInternalLogger;
.source "LocationAwareSlf4JLogger.java"


# static fields
.field static final FQCN:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x7313356d78149884L


# instance fields
.field private final transient logger:Lorg/slf4j/spi/LocationAwareLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->FQCN:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/slf4j/spi/LocationAwareLogger;)V
    .locals 1
    .param p1, "logger"    # Lorg/slf4j/spi/LocationAwareLogger;

    .line 37
    invoke-interface {p1}, Lorg/slf4j/spi/LocationAwareLogger;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/util/internal/logging/AbstractInternalLogger;-><init>(Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->logger:Lorg/slf4j/spi/LocationAwareLogger;

    .line 39
    return-void
.end method

.method private log(ILjava/lang/String;)V
    .locals 7
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->logger:Lorg/slf4j/spi/LocationAwareLogger;

    sget-object v2, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->FQCN:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v6}, Lorg/slf4j/spi/LocationAwareLogger;->log(Lorg/slf4j/Marker;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 43
    return-void
.end method

.method private log(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 46
    iget-object v0, p0, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->logger:Lorg/slf4j/spi/LocationAwareLogger;

    sget-object v2, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->FQCN:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v5, 0x0

    move v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lorg/slf4j/spi/LocationAwareLogger;->log(Lorg/slf4j/Marker;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 47
    return-void
.end method

.method private log(ILorg/slf4j/helpers/FormattingTuple;)V
    .locals 7
    .param p1, "level"    # I
    .param p2, "tuple"    # Lorg/slf4j/helpers/FormattingTuple;

    .line 50
    iget-object v0, p0, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->logger:Lorg/slf4j/spi/LocationAwareLogger;

    sget-object v2, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->FQCN:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lorg/slf4j/helpers/FormattingTuple;->getArgArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2}, Lorg/slf4j/helpers/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v6

    const/4 v1, 0x0

    move v3, p1

    invoke-interface/range {v0 .. v6}, Lorg/slf4j/spi/LocationAwareLogger;->log(Lorg/slf4j/Marker;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 51
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->log(ILjava/lang/String;)V

    .line 103
    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 107
    invoke-virtual {p0}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const/16 v0, 0xa

    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->log(ILorg/slf4j/helpers/FormattingTuple;)V

    .line 110
    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argA"    # Ljava/lang/Object;
    .param p3, "argB"    # Ljava/lang/Object;

    .line 114
    invoke-virtual {p0}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const/16 v0, 0xa

    invoke-static {p1, p2, p3}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->log(ILorg/slf4j/helpers/FormattingTuple;)V

    .line 117
    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 128
    invoke-virtual {p0}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1, p2}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    :cond_0
    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argArray"    # [Ljava/lang/Object;

    .line 121
    invoke-virtual {p0}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const/16 v0, 0xa

    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->log(ILorg/slf4j/helpers/FormattingTuple;)V

    .line 124
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 220
    invoke-virtual {p0}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->log(ILjava/lang/String;)V

    .line 223
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 227
    invoke-virtual {p0}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    const/16 v0, 0x28

    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->log(ILorg/slf4j/helpers/FormattingTuple;)V

    .line 230
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argA"    # Ljava/lang/Object;
    .param p3, "argB"    # Ljava/lang/Object;

    .line 234
    invoke-virtual {p0}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    const/16 v0, 0x28

    invoke-static {p1, p2, p3}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->log(ILorg/slf4j/helpers/FormattingTuple;)V

    .line 237
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 248
    invoke-virtual {p0}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    const/16 v0, 0x28

    invoke-direct {p0, v0, p1, p2}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 251
    :cond_0
    return-void
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argArray"    # [Ljava/lang/Object;

    .line 241
    invoke-virtual {p0}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    const/16 v0, 0x28

    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->log(ILorg/slf4j/helpers/FormattingTuple;)V

    .line 244
    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 140
    invoke-virtual {p0}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const/16 v0, 0x14

    invoke-direct {p0, v0, p1}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->log(ILjava/lang/String;)V

    .line 143
    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 147
    invoke-virtual {p0}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const/16 v0, 0x14

    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->log(ILorg/slf4j/helpers/FormattingTuple;)V

    .line 150
    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argA"    # Ljava/lang/Object;
    .param p3, "argB"    # Ljava/lang/Object;

    .line 154
    invoke-virtual {p0}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const/16 v0, 0x14

    invoke-static {p1, p2, p3}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->log(ILorg/slf4j/helpers/FormattingTuple;)V

    .line 157
    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 168
    invoke-virtual {p0}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const/16 v0, 0x14

    invoke-direct {p0, v0, p1, p2}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    :cond_0
    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argArray"    # [Ljava/lang/Object;

    .line 161
    invoke-virtual {p0}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const/16 v0, 0x14

    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->log(ILorg/slf4j/helpers/FormattingTuple;)V

    .line 164
    :cond_0
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .line 95
    iget-object v0, p0, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    .line 215
    iget-object v0, p0, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    .line 135
    iget-object v0, p0, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 1

    .line 55
    iget-object v0, p0, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isTraceEnabled()Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 1

    .line 175
    iget-object v0, p0, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isWarnEnabled()Z

    move-result v0

    return v0
.end method

.method public trace(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->log(ILjava/lang/String;)V

    .line 63
    :cond_0
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 67
    invoke-virtual {p0}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const/4 v0, 0x0

    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->log(ILorg/slf4j/helpers/FormattingTuple;)V

    .line 70
    :cond_0
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argA"    # Ljava/lang/Object;
    .param p3, "argB"    # Ljava/lang/Object;

    .line 74
    invoke-virtual {p0}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x0

    invoke-static {p1, p2, p3}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->log(ILorg/slf4j/helpers/FormattingTuple;)V

    .line 77
    :cond_0
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 88
    invoke-virtual {p0}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    :cond_0
    return-void
.end method

.method public varargs trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argArray"    # [Ljava/lang/Object;

    .line 81
    invoke-virtual {p0}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x0

    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->log(ILorg/slf4j/helpers/FormattingTuple;)V

    .line 84
    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 180
    invoke-virtual {p0}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const/16 v0, 0x1e

    invoke-direct {p0, v0, p1}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->log(ILjava/lang/String;)V

    .line 183
    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 187
    invoke-virtual {p0}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    const/16 v0, 0x1e

    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->log(ILorg/slf4j/helpers/FormattingTuple;)V

    .line 190
    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argA"    # Ljava/lang/Object;
    .param p3, "argB"    # Ljava/lang/Object;

    .line 201
    invoke-virtual {p0}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    const/16 v0, 0x1e

    invoke-static {p1, p2, p3}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->log(ILorg/slf4j/helpers/FormattingTuple;)V

    .line 204
    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 208
    invoke-virtual {p0}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    const/16 v0, 0x1e

    invoke-direct {p0, v0, p1, p2}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    :cond_0
    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argArray"    # [Ljava/lang/Object;

    .line 194
    invoke-virtual {p0}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    const/16 v0, 0x1e

    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/netty/util/internal/logging/LocationAwareSlf4JLogger;->log(ILorg/slf4j/helpers/FormattingTuple;)V

    .line 197
    :cond_0
    return-void
.end method
