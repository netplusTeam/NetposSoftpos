.class Lio/netty/util/internal/logging/CommonsLogger;
.super Lio/netty/util/internal/logging/AbstractInternalLogger;
.source "CommonsLogger.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x78034b75b4394b85L


# instance fields
.field private final transient logger:Lorg/apache/commons/logging/Log;


# direct methods
.method constructor <init>(Lorg/apache/commons/logging/Log;Ljava/lang/String;)V
    .locals 1
    .param p1, "logger"    # Lorg/apache/commons/logging/Log;
    .param p2, "name"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0, p2}, Lio/netty/util/internal/logging/AbstractInternalLogger;-><init>(Ljava/lang/String;)V

    .line 61
    const-string v0, "logger"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/logging/Log;

    iput-object v0, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    .line 62
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 184
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 202
    iget-object v0, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-static {p1, p2}, Lio/netty/util/internal/logging/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/util/internal/logging/FormattingTuple;

    move-result-object v0

    .line 204
    .local v0, "ft":Lio/netty/util/internal/logging/FormattingTuple;
    iget-object v1, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 206
    .end local v0    # "ft":Lio/netty/util/internal/logging/FormattingTuple;
    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argA"    # Ljava/lang/Object;
    .param p3, "argB"    # Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-static {p1, p2, p3}, Lio/netty/util/internal/logging/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/util/internal/logging/FormattingTuple;

    move-result-object v0

    .line 228
    .local v0, "ft":Lio/netty/util/internal/logging/FormattingTuple;
    iget-object v1, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 230
    .end local v0    # "ft":Lio/netty/util/internal/logging/FormattingTuple;
    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 263
    iget-object v0, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 264
    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .line 246
    iget-object v0, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-static {p1, p2}, Lio/netty/util/internal/logging/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/util/internal/logging/FormattingTuple;

    move-result-object v0

    .line 248
    .local v0, "ft":Lio/netty/util/internal/logging/FormattingTuple;
    iget-object v1, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 250
    .end local v0    # "ft":Lio/netty/util/internal/logging/FormattingTuple;
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 484
    iget-object v0, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 485
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 503
    iget-object v0, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    invoke-static {p1, p2}, Lio/netty/util/internal/logging/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/util/internal/logging/FormattingTuple;

    move-result-object v0

    .line 505
    .local v0, "ft":Lio/netty/util/internal/logging/FormattingTuple;
    iget-object v1, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 507
    .end local v0    # "ft":Lio/netty/util/internal/logging/FormattingTuple;
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argA"    # Ljava/lang/Object;
    .param p3, "argB"    # Ljava/lang/Object;

    .line 527
    iget-object v0, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    invoke-static {p1, p2, p3}, Lio/netty/util/internal/logging/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/util/internal/logging/FormattingTuple;

    move-result-object v0

    .line 529
    .local v0, "ft":Lio/netty/util/internal/logging/FormattingTuple;
    iget-object v1, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 531
    .end local v0    # "ft":Lio/netty/util/internal/logging/FormattingTuple;
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 564
    iget-object v0, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 565
    return-void
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .line 547
    iget-object v0, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    invoke-static {p1, p2}, Lio/netty/util/internal/logging/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/util/internal/logging/FormattingTuple;

    move-result-object v0

    .line 549
    .local v0, "ft":Lio/netty/util/internal/logging/FormattingTuple;
    iget-object v1, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 551
    .end local v0    # "ft":Lio/netty/util/internal/logging/FormattingTuple;
    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 283
    iget-object v0, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 284
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 303
    iget-object v0, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-static {p1, p2}, Lio/netty/util/internal/logging/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/util/internal/logging/FormattingTuple;

    move-result-object v0

    .line 305
    .local v0, "ft":Lio/netty/util/internal/logging/FormattingTuple;
    iget-object v1, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 307
    .end local v0    # "ft":Lio/netty/util/internal/logging/FormattingTuple;
    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argA"    # Ljava/lang/Object;
    .param p3, "argB"    # Ljava/lang/Object;

    .line 326
    iget-object v0, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    invoke-static {p1, p2, p3}, Lio/netty/util/internal/logging/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/util/internal/logging/FormattingTuple;

    move-result-object v0

    .line 328
    .local v0, "ft":Lio/netty/util/internal/logging/FormattingTuple;
    iget-object v1, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 330
    .end local v0    # "ft":Lio/netty/util/internal/logging/FormattingTuple;
    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 363
    iget-object v0, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 364
    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .line 346
    iget-object v0, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    invoke-static {p1, p2}, Lio/netty/util/internal/logging/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/util/internal/logging/FormattingTuple;

    move-result-object v0

    .line 348
    .local v0, "ft":Lio/netty/util/internal/logging/FormattingTuple;
    iget-object v1, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 350
    .end local v0    # "ft":Lio/netty/util/internal/logging/FormattingTuple;
    :cond_0
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .line 170
    iget-object v0, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    .line 473
    iget-object v0, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    .line 272
    iget-object v0, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 1

    .line 372
    iget-object v0, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v0

    return v0
.end method

.method public trace(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-static {p1, p2}, Lio/netty/util/internal/logging/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/util/internal/logging/FormattingTuple;

    move-result-object v0

    .line 102
    .local v0, "ft":Lio/netty/util/internal/logging/FormattingTuple;
    iget-object v1, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 104
    .end local v0    # "ft":Lio/netty/util/internal/logging/FormattingTuple;
    :cond_0
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argA"    # Ljava/lang/Object;
    .param p3, "argB"    # Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {p1, p2, p3}, Lio/netty/util/internal/logging/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/util/internal/logging/FormattingTuple;

    move-result-object v0

    .line 126
    .local v0, "ft":Lio/netty/util/internal/logging/FormattingTuple;
    iget-object v1, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 128
    .end local v0    # "ft":Lio/netty/util/internal/logging/FormattingTuple;
    :cond_0
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 161
    iget-object v0, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 162
    return-void
.end method

.method public varargs trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-static {p1, p2}, Lio/netty/util/internal/logging/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/util/internal/logging/FormattingTuple;

    move-result-object v0

    .line 146
    .local v0, "ft":Lio/netty/util/internal/logging/FormattingTuple;
    iget-object v1, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 148
    .end local v0    # "ft":Lio/netty/util/internal/logging/FormattingTuple;
    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 383
    iget-object v0, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 384
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 402
    iget-object v0, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    invoke-static {p1, p2}, Lio/netty/util/internal/logging/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/util/internal/logging/FormattingTuple;

    move-result-object v0

    .line 404
    .local v0, "ft":Lio/netty/util/internal/logging/FormattingTuple;
    iget-object v1, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 406
    .end local v0    # "ft":Lio/netty/util/internal/logging/FormattingTuple;
    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argA"    # Ljava/lang/Object;
    .param p3, "argB"    # Ljava/lang/Object;

    .line 426
    iget-object v0, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    invoke-static {p1, p2, p3}, Lio/netty/util/internal/logging/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/util/internal/logging/FormattingTuple;

    move-result-object v0

    .line 428
    .local v0, "ft":Lio/netty/util/internal/logging/FormattingTuple;
    iget-object v1, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 430
    .end local v0    # "ft":Lio/netty/util/internal/logging/FormattingTuple;
    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 464
    iget-object v0, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 465
    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .line 446
    iget-object v0, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    invoke-static {p1, p2}, Lio/netty/util/internal/logging/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/util/internal/logging/FormattingTuple;

    move-result-object v0

    .line 448
    .local v0, "ft":Lio/netty/util/internal/logging/FormattingTuple;
    iget-object v1, p0, Lio/netty/util/internal/logging/CommonsLogger;->logger:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lio/netty/util/internal/logging/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 450
    .end local v0    # "ft":Lio/netty/util/internal/logging/FormattingTuple;
    :cond_0
    return-void
.end method
