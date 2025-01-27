.class public Lorg/jpos/util/slf4j/JPOSLogger;
.super Lorg/slf4j/helpers/MarkerIgnoringBase;
.source "JPOSLogger.java"


# static fields
.field private static final LOG_LEVEL_DEBUG:I = 0xa

.field private static final LOG_LEVEL_ERROR:I = 0x28

.field private static final LOG_LEVEL_INFO:I = 0x14

.field private static final LOG_LEVEL_TRACE:I = 0x0

.field private static final LOG_LEVEL_WARN:I = 0x1e


# instance fields
.field protected DEFAULT_LOG_LEVEL:I

.field private log:Lorg/jpos/util/Log;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Lorg/slf4j/helpers/MarkerIgnoringBase;-><init>()V

    .line 41
    const/16 v0, 0x14

    iput v0, p0, Lorg/jpos/util/slf4j/JPOSLogger;->DEFAULT_LOG_LEVEL:I

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "slf4j::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Q2"

    invoke-static {v1, v0}, Lorg/jpos/util/Log;->getLog(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/util/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/util/slf4j/JPOSLogger;->log:Lorg/jpos/util/Log;

    .line 71
    return-void
.end method

.method private static stringToLevel(Ljava/lang/String;)I
    .locals 2
    .param p0, "levelStr"    # Ljava/lang/String;

    .line 45
    const-string v0, "trace"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x0

    return v0

    .line 49
    :cond_0
    const-string v0, "debug"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    const/16 v0, 0xa

    return v0

    .line 53
    :cond_1
    const-string v0, "info"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x14

    if-eqz v0, :cond_2

    .line 55
    return v1

    .line 57
    :cond_2
    const-string v0, "warn"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    const/16 v0, 0x1e

    return v0

    .line 61
    :cond_3
    const-string v0, "error"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 63
    const/16 v0, 0x28

    return v0

    .line 65
    :cond_4
    return v1
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 165
    invoke-virtual {p0}, Lorg/jpos/util/slf4j/JPOSLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lorg/jpos/util/slf4j/JPOSLogger;->log:Lorg/jpos/util/Log;

    invoke-virtual {v0, p1}, Lorg/jpos/util/Log;->debug(Ljava/lang/Object;)V

    .line 169
    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 174
    invoke-virtual {p0}, Lorg/jpos/util/slf4j/JPOSLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v0

    .line 177
    .local v0, "ft":Lorg/slf4j/helpers/FormattingTuple;
    iget-object v1, p0, Lorg/jpos/util/slf4j/JPOSLogger;->log:Lorg/jpos/util/Log;

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jpos/util/Log;->debug(Ljava/lang/Object;)V

    .line 179
    .end local v0    # "ft":Lorg/slf4j/helpers/FormattingTuple;
    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .line 184
    invoke-virtual {p0}, Lorg/jpos/util/slf4j/JPOSLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-static {p1, p2, p3}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v0

    .line 187
    .local v0, "ft":Lorg/slf4j/helpers/FormattingTuple;
    iget-object v1, p0, Lorg/jpos/util/slf4j/JPOSLogger;->log:Lorg/jpos/util/Log;

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jpos/util/Log;->debug(Ljava/lang/Object;)V

    .line 189
    .end local v0    # "ft":Lorg/slf4j/helpers/FormattingTuple;
    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 204
    invoke-virtual {p0}, Lorg/jpos/util/slf4j/JPOSLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lorg/jpos/util/slf4j/JPOSLogger;->log:Lorg/jpos/util/Log;

    invoke-virtual {v0, p1, p2}, Lorg/jpos/util/Log;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 208
    :cond_0
    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .line 194
    invoke-virtual {p0}, Lorg/jpos/util/slf4j/JPOSLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v0

    .line 197
    .local v0, "ft":Lorg/slf4j/helpers/FormattingTuple;
    iget-object v1, p0, Lorg/jpos/util/slf4j/JPOSLogger;->log:Lorg/jpos/util/Log;

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jpos/util/Log;->debug(Ljava/lang/Object;)V

    .line 199
    .end local v0    # "ft":Lorg/slf4j/helpers/FormattingTuple;
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 309
    invoke-virtual {p0}, Lorg/jpos/util/slf4j/JPOSLogger;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lorg/jpos/util/slf4j/JPOSLogger;->log:Lorg/jpos/util/Log;

    invoke-virtual {v0, p1}, Lorg/jpos/util/Log;->error(Ljava/lang/Object;)V

    .line 313
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 318
    invoke-virtual {p0}, Lorg/jpos/util/slf4j/JPOSLogger;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v0

    .line 321
    .local v0, "ft":Lorg/slf4j/helpers/FormattingTuple;
    iget-object v1, p0, Lorg/jpos/util/slf4j/JPOSLogger;->log:Lorg/jpos/util/Log;

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jpos/util/Log;->error(Ljava/lang/Object;)V

    .line 323
    .end local v0    # "ft":Lorg/slf4j/helpers/FormattingTuple;
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .line 328
    invoke-virtual {p0}, Lorg/jpos/util/slf4j/JPOSLogger;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    invoke-static {p1, p2, p3}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v0

    .line 331
    .local v0, "ft":Lorg/slf4j/helpers/FormattingTuple;
    iget-object v1, p0, Lorg/jpos/util/slf4j/JPOSLogger;->log:Lorg/jpos/util/Log;

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jpos/util/Log;->error(Ljava/lang/Object;)V

    .line 333
    .end local v0    # "ft":Lorg/slf4j/helpers/FormattingTuple;
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 348
    invoke-virtual {p0}, Lorg/jpos/util/slf4j/JPOSLogger;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lorg/jpos/util/slf4j/JPOSLogger;->log:Lorg/jpos/util/Log;

    invoke-virtual {v0, p1, p2}, Lorg/jpos/util/Log;->error(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 352
    :cond_0
    return-void
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .line 338
    invoke-virtual {p0}, Lorg/jpos/util/slf4j/JPOSLogger;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v0

    .line 341
    .local v0, "ft":Lorg/slf4j/helpers/FormattingTuple;
    iget-object v1, p0, Lorg/jpos/util/slf4j/JPOSLogger;->log:Lorg/jpos/util/Log;

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jpos/util/Log;->error(Ljava/lang/Object;)V

    .line 343
    .end local v0    # "ft":Lorg/slf4j/helpers/FormattingTuple;
    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 213
    invoke-virtual {p0}, Lorg/jpos/util/slf4j/JPOSLogger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lorg/jpos/util/slf4j/JPOSLogger;->log:Lorg/jpos/util/Log;

    invoke-virtual {v0, p1}, Lorg/jpos/util/Log;->info(Ljava/lang/Object;)V

    .line 217
    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 222
    invoke-virtual {p0}, Lorg/jpos/util/slf4j/JPOSLogger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v0

    .line 225
    .local v0, "ft":Lorg/slf4j/helpers/FormattingTuple;
    iget-object v1, p0, Lorg/jpos/util/slf4j/JPOSLogger;->log:Lorg/jpos/util/Log;

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jpos/util/Log;->info(Ljava/lang/Object;)V

    .line 227
    .end local v0    # "ft":Lorg/slf4j/helpers/FormattingTuple;
    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .line 232
    invoke-virtual {p0}, Lorg/jpos/util/slf4j/JPOSLogger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-static {p1, p2, p3}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v0

    .line 235
    .local v0, "ft":Lorg/slf4j/helpers/FormattingTuple;
    iget-object v1, p0, Lorg/jpos/util/slf4j/JPOSLogger;->log:Lorg/jpos/util/Log;

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jpos/util/Log;->info(Ljava/lang/Object;)V

    .line 237
    .end local v0    # "ft":Lorg/slf4j/helpers/FormattingTuple;
    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 252
    invoke-virtual {p0}, Lorg/jpos/util/slf4j/JPOSLogger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lorg/jpos/util/slf4j/JPOSLogger;->log:Lorg/jpos/util/Log;

    invoke-virtual {v0, p1, p2}, Lorg/jpos/util/Log;->info(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 256
    :cond_0
    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .line 242
    invoke-virtual {p0}, Lorg/jpos/util/slf4j/JPOSLogger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v0

    .line 245
    .local v0, "ft":Lorg/slf4j/helpers/FormattingTuple;
    iget-object v1, p0, Lorg/jpos/util/slf4j/JPOSLogger;->log:Lorg/jpos/util/Log;

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jpos/util/Log;->info(Ljava/lang/Object;)V

    .line 247
    .end local v0    # "ft":Lorg/slf4j/helpers/FormattingTuple;
    :cond_0
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .line 93
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/jpos/util/slf4j/JPOSLogger;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    .line 111
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lorg/jpos/util/slf4j/JPOSLogger;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    .line 99
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lorg/jpos/util/slf4j/JPOSLogger;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method protected isLevelEnabled(I)Z
    .locals 5
    .param p1, "logLevel"    # I

    .line 75
    iget-object v0, p0, Lorg/jpos/util/slf4j/JPOSLogger;->log:Lorg/jpos/util/Log;

    invoke-virtual {v0}, Lorg/jpos/util/Log;->getLogger()Lorg/jpos/util/Logger;

    move-result-object v0

    .line 76
    .local v0, "logger":Lorg/jpos/util/Logger;
    invoke-virtual {v0}, Lorg/jpos/util/Logger;->getConfiguration()Lorg/jpos/core/Configuration;

    move-result-object v1

    .line 77
    .local v1, "cfg":Lorg/jpos/core/Configuration;
    if-nez v1, :cond_0

    .line 78
    new-instance v2, Lorg/jpos/core/SimpleConfiguration;

    invoke-direct {v2}, Lorg/jpos/core/SimpleConfiguration;-><init>()V

    move-object v1, v2

    .line 79
    :cond_0
    const-string v2, "slf4j.level"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "levelString":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-static {v2}, Lorg/jpos/util/slf4j/JPOSLogger;->stringToLevel(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    :cond_1
    iget v3, p0, Lorg/jpos/util/slf4j/JPOSLogger;->DEFAULT_LOG_LEVEL:I

    .line 81
    .local v3, "currentLogLevel":I
    :goto_0
    if-lt p1, v3, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    return v4
.end method

.method public isTraceEnabled()Z
    .locals 1

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jpos/util/slf4j/JPOSLogger;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 1

    .line 105
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lorg/jpos/util/slf4j/JPOSLogger;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method public trace(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 117
    invoke-virtual {p0}, Lorg/jpos/util/slf4j/JPOSLogger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lorg/jpos/util/slf4j/JPOSLogger;->log:Lorg/jpos/util/Log;

    invoke-virtual {v0, p1}, Lorg/jpos/util/Log;->trace(Ljava/lang/Object;)V

    .line 121
    :cond_0
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 126
    invoke-virtual {p0}, Lorg/jpos/util/slf4j/JPOSLogger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v0

    .line 129
    .local v0, "ft":Lorg/slf4j/helpers/FormattingTuple;
    iget-object v1, p0, Lorg/jpos/util/slf4j/JPOSLogger;->log:Lorg/jpos/util/Log;

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jpos/util/Log;->trace(Ljava/lang/Object;)V

    .line 131
    .end local v0    # "ft":Lorg/slf4j/helpers/FormattingTuple;
    :cond_0
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .line 136
    invoke-virtual {p0}, Lorg/jpos/util/slf4j/JPOSLogger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-static {p1, p2, p3}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v0

    .line 139
    .local v0, "ft":Lorg/slf4j/helpers/FormattingTuple;
    iget-object v1, p0, Lorg/jpos/util/slf4j/JPOSLogger;->log:Lorg/jpos/util/Log;

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jpos/util/Log;->trace(Ljava/lang/Object;)V

    .line 141
    .end local v0    # "ft":Lorg/slf4j/helpers/FormattingTuple;
    :cond_0
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 156
    invoke-virtual {p0}, Lorg/jpos/util/slf4j/JPOSLogger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/jpos/util/slf4j/JPOSLogger;->log:Lorg/jpos/util/Log;

    invoke-virtual {v0, p1, p2}, Lorg/jpos/util/Log;->trace(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 160
    :cond_0
    return-void
.end method

.method public varargs trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .line 146
    invoke-virtual {p0}, Lorg/jpos/util/slf4j/JPOSLogger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v0

    .line 149
    .local v0, "ft":Lorg/slf4j/helpers/FormattingTuple;
    iget-object v1, p0, Lorg/jpos/util/slf4j/JPOSLogger;->log:Lorg/jpos/util/Log;

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jpos/util/Log;->trace(Ljava/lang/Object;)V

    .line 151
    .end local v0    # "ft":Lorg/slf4j/helpers/FormattingTuple;
    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 261
    invoke-virtual {p0}, Lorg/jpos/util/slf4j/JPOSLogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lorg/jpos/util/slf4j/JPOSLogger;->log:Lorg/jpos/util/Log;

    invoke-virtual {v0, p1}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;)V

    .line 265
    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 270
    invoke-virtual {p0}, Lorg/jpos/util/slf4j/JPOSLogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v0

    .line 273
    .local v0, "ft":Lorg/slf4j/helpers/FormattingTuple;
    iget-object v1, p0, Lorg/jpos/util/slf4j/JPOSLogger;->log:Lorg/jpos/util/Log;

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;)V

    .line 275
    .end local v0    # "ft":Lorg/slf4j/helpers/FormattingTuple;
    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .line 280
    invoke-virtual {p0}, Lorg/jpos/util/slf4j/JPOSLogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-static {p1, p2, p3}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v0

    .line 283
    .local v0, "ft":Lorg/slf4j/helpers/FormattingTuple;
    iget-object v1, p0, Lorg/jpos/util/slf4j/JPOSLogger;->log:Lorg/jpos/util/Log;

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;)V

    .line 285
    .end local v0    # "ft":Lorg/slf4j/helpers/FormattingTuple;
    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 300
    invoke-virtual {p0}, Lorg/jpos/util/slf4j/JPOSLogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lorg/jpos/util/slf4j/JPOSLogger;->log:Lorg/jpos/util/Log;

    invoke-virtual {v0, p1, p2}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 304
    :cond_0
    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .line 290
    invoke-virtual {p0}, Lorg/jpos/util/slf4j/JPOSLogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v0

    .line 293
    .local v0, "ft":Lorg/slf4j/helpers/FormattingTuple;
    iget-object v1, p0, Lorg/jpos/util/slf4j/JPOSLogger;->log:Lorg/jpos/util/Log;

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;)V

    .line 295
    .end local v0    # "ft":Lorg/slf4j/helpers/FormattingTuple;
    :cond_0
    return-void
.end method
