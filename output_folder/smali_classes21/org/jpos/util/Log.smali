.class public Lorg/jpos/util/Log;
.super Ljava/lang/Object;
.source "Log.java"

# interfaces
.implements Lorg/jpos/util/LogSource;


# static fields
.field public static final DEBUG:Ljava/lang/String; = "debug"

.field public static final ERROR:Ljava/lang/String; = "error"

.field public static final FATAL:Ljava/lang/String; = "fatal"

.field public static final INFO:Ljava/lang/String; = "info"

.field public static final TRACE:Ljava/lang/String; = "trace"

.field public static final WARN:Ljava/lang/String; = "warn"


# instance fields
.field protected logger:Lorg/jpos/util/Logger;

.field protected realm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/jpos/util/Logger;Ljava/lang/String;)V
    .locals 0
    .param p1, "logger"    # Lorg/jpos/util/Logger;
    .param p2, "realm"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p0, p1, p2}, Lorg/jpos/util/Log;->setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static getLog(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/util/Log;
    .locals 2
    .param p0, "logName"    # Ljava/lang/String;
    .param p1, "realm"    # Ljava/lang/String;

    .line 43
    new-instance v0, Lorg/jpos/util/Log;

    invoke-static {p0}, Lorg/jpos/util/Logger;->getLogger(Ljava/lang/String;)Lorg/jpos/util/Logger;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/jpos/util/Log;-><init>(Lorg/jpos/util/Logger;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public createDebug()Lorg/jpos/util/LogEvent;
    .locals 1

    .line 125
    const-string v0, "debug"

    invoke-virtual {p0, v0}, Lorg/jpos/util/Log;->createLogEvent(Ljava/lang/String;)Lorg/jpos/util/LogEvent;

    move-result-object v0

    return-object v0
.end method

.method public createDebug(Ljava/lang/Object;)Lorg/jpos/util/LogEvent;
    .locals 1
    .param p1, "detail"    # Ljava/lang/Object;

    .line 128
    const-string v0, "debug"

    invoke-virtual {p0, v0, p1}, Lorg/jpos/util/Log;->createLogEvent(Ljava/lang/String;Ljava/lang/Object;)Lorg/jpos/util/LogEvent;

    move-result-object v0

    return-object v0
.end method

.method public createError()Lorg/jpos/util/LogEvent;
    .locals 1

    .line 143
    const-string v0, "error"

    invoke-virtual {p0, v0}, Lorg/jpos/util/Log;->createLogEvent(Ljava/lang/String;)Lorg/jpos/util/LogEvent;

    move-result-object v0

    return-object v0
.end method

.method public createError(Ljava/lang/Object;)Lorg/jpos/util/LogEvent;
    .locals 1
    .param p1, "detail"    # Ljava/lang/Object;

    .line 146
    const-string v0, "error"

    invoke-virtual {p0, v0, p1}, Lorg/jpos/util/Log;->createLogEvent(Ljava/lang/String;Ljava/lang/Object;)Lorg/jpos/util/LogEvent;

    move-result-object v0

    return-object v0
.end method

.method public createFatal()Lorg/jpos/util/LogEvent;
    .locals 1

    .line 149
    const-string v0, "fatal"

    invoke-virtual {p0, v0}, Lorg/jpos/util/Log;->createLogEvent(Ljava/lang/String;)Lorg/jpos/util/LogEvent;

    move-result-object v0

    return-object v0
.end method

.method public createFatal(Ljava/lang/Object;)Lorg/jpos/util/LogEvent;
    .locals 1
    .param p1, "detail"    # Ljava/lang/Object;

    .line 152
    const-string v0, "fatal"

    invoke-virtual {p0, v0, p1}, Lorg/jpos/util/Log;->createLogEvent(Ljava/lang/String;Ljava/lang/Object;)Lorg/jpos/util/LogEvent;

    move-result-object v0

    return-object v0
.end method

.method public createInfo()Lorg/jpos/util/LogEvent;
    .locals 1

    .line 131
    const-string v0, "info"

    invoke-virtual {p0, v0}, Lorg/jpos/util/Log;->createLogEvent(Ljava/lang/String;)Lorg/jpos/util/LogEvent;

    move-result-object v0

    return-object v0
.end method

.method public createInfo(Ljava/lang/Object;)Lorg/jpos/util/LogEvent;
    .locals 1
    .param p1, "detail"    # Ljava/lang/Object;

    .line 134
    const-string v0, "info"

    invoke-virtual {p0, v0, p1}, Lorg/jpos/util/Log;->createLogEvent(Ljava/lang/String;Ljava/lang/Object;)Lorg/jpos/util/LogEvent;

    move-result-object v0

    return-object v0
.end method

.method public createLogEvent(Ljava/lang/String;)Lorg/jpos/util/LogEvent;
    .locals 1
    .param p1, "level"    # Ljava/lang/String;

    .line 113
    new-instance v0, Lorg/jpos/util/LogEvent;

    invoke-direct {v0, p0, p1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    return-object v0
.end method

.method public createLogEvent(Ljava/lang/String;Ljava/lang/Object;)Lorg/jpos/util/LogEvent;
    .locals 1
    .param p1, "level"    # Ljava/lang/String;
    .param p2, "detail"    # Ljava/lang/Object;

    .line 116
    new-instance v0, Lorg/jpos/util/LogEvent;

    invoke-direct {v0, p0, p1, p2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createTrace()Lorg/jpos/util/LogEvent;
    .locals 1

    .line 119
    const-string v0, "trace"

    invoke-virtual {p0, v0}, Lorg/jpos/util/Log;->createLogEvent(Ljava/lang/String;)Lorg/jpos/util/LogEvent;

    move-result-object v0

    return-object v0
.end method

.method public createTrace(Ljava/lang/Object;)Lorg/jpos/util/LogEvent;
    .locals 1
    .param p1, "detail"    # Ljava/lang/Object;

    .line 122
    const-string v0, "trace"

    invoke-virtual {p0, v0, p1}, Lorg/jpos/util/Log;->createLogEvent(Ljava/lang/String;Ljava/lang/Object;)Lorg/jpos/util/LogEvent;

    move-result-object v0

    return-object v0
.end method

.method public createWarn()Lorg/jpos/util/LogEvent;
    .locals 1

    .line 137
    const-string v0, "warn"

    invoke-virtual {p0, v0}, Lorg/jpos/util/Log;->createLogEvent(Ljava/lang/String;)Lorg/jpos/util/LogEvent;

    move-result-object v0

    return-object v0
.end method

.method public createWarn(Ljava/lang/Object;)Lorg/jpos/util/LogEvent;
    .locals 1
    .param p1, "detail"    # Ljava/lang/Object;

    .line 140
    const-string v0, "warn"

    invoke-virtual {p0, v0, p1}, Lorg/jpos/util/Log;->createLogEvent(Ljava/lang/String;Ljava/lang/Object;)Lorg/jpos/util/LogEvent;

    move-result-object v0

    return-object v0
.end method

.method public debug(Ljava/lang/Object;)V
    .locals 1
    .param p1, "detail"    # Ljava/lang/Object;

    .line 73
    invoke-virtual {p0, p1}, Lorg/jpos/util/Log;->createDebug(Ljava/lang/Object;)Lorg/jpos/util/LogEvent;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 74
    return-void
.end method

.method public debug(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "detail"    # Ljava/lang/Object;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 76
    invoke-virtual {p0, p1}, Lorg/jpos/util/Log;->createDebug(Ljava/lang/Object;)Lorg/jpos/util/LogEvent;

    move-result-object v0

    .line 77
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    invoke-virtual {v0, p2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 78
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 79
    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .locals 1
    .param p1, "detail"    # Ljava/lang/Object;

    .line 97
    invoke-virtual {p0, p1}, Lorg/jpos/util/Log;->createError(Ljava/lang/Object;)Lorg/jpos/util/LogEvent;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 98
    return-void
.end method

.method public error(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "detail"    # Ljava/lang/Object;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 100
    invoke-virtual {p0, p1}, Lorg/jpos/util/Log;->createError(Ljava/lang/Object;)Lorg/jpos/util/LogEvent;

    move-result-object v0

    .line 101
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    invoke-virtual {v0, p2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 102
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 103
    return-void
.end method

.method public fatal(Ljava/lang/Object;)V
    .locals 1
    .param p1, "detail"    # Ljava/lang/Object;

    .line 105
    invoke-virtual {p0, p1}, Lorg/jpos/util/Log;->createFatal(Ljava/lang/Object;)Lorg/jpos/util/LogEvent;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 106
    return-void
.end method

.method public fatal(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "detail"    # Ljava/lang/Object;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 108
    invoke-virtual {p0, p1}, Lorg/jpos/util/Log;->createFatal(Ljava/lang/Object;)Lorg/jpos/util/LogEvent;

    move-result-object v0

    .line 109
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    invoke-virtual {v0, p2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 110
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 111
    return-void
.end method

.method public getLogger()Lorg/jpos/util/Logger;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/jpos/util/Log;->logger:Lorg/jpos/util/Logger;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/jpos/util/Log;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public info(Ljava/lang/Object;)V
    .locals 1
    .param p1, "detail"    # Ljava/lang/Object;

    .line 81
    invoke-virtual {p0, p1}, Lorg/jpos/util/Log;->createInfo(Ljava/lang/Object;)Lorg/jpos/util/LogEvent;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 82
    return-void
.end method

.method public info(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "detail"    # Ljava/lang/Object;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 84
    invoke-virtual {p0, p1}, Lorg/jpos/util/Log;->createInfo(Ljava/lang/Object;)Lorg/jpos/util/LogEvent;

    move-result-object v0

    .line 85
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    invoke-virtual {v0, p2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 86
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 87
    return-void
.end method

.method public setLogger(Lorg/jpos/util/Logger;)V
    .locals 0
    .param p1, "logger"    # Lorg/jpos/util/Logger;

    .line 59
    iput-object p1, p0, Lorg/jpos/util/Log;->logger:Lorg/jpos/util/Logger;

    .line 60
    return-void
.end method

.method public setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V
    .locals 0
    .param p1, "logger"    # Lorg/jpos/util/Logger;
    .param p2, "realm"    # Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lorg/jpos/util/Log;->logger:Lorg/jpos/util/Logger;

    .line 50
    iput-object p2, p0, Lorg/jpos/util/Log;->realm:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 0
    .param p1, "realm"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lorg/jpos/util/Log;->realm:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public trace(Ljava/lang/Object;)V
    .locals 1
    .param p1, "detail"    # Ljava/lang/Object;

    .line 65
    invoke-virtual {p0, p1}, Lorg/jpos/util/Log;->createTrace(Ljava/lang/Object;)Lorg/jpos/util/LogEvent;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 66
    return-void
.end method

.method public trace(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "detail"    # Ljava/lang/Object;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 68
    invoke-virtual {p0, p1}, Lorg/jpos/util/Log;->createTrace(Ljava/lang/Object;)Lorg/jpos/util/LogEvent;

    move-result-object v0

    .line 69
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    invoke-virtual {v0, p2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 70
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 71
    return-void
.end method

.method public warn(Ljava/lang/Object;)V
    .locals 1
    .param p1, "detail"    # Ljava/lang/Object;

    .line 89
    invoke-virtual {p0, p1}, Lorg/jpos/util/Log;->createWarn(Ljava/lang/Object;)Lorg/jpos/util/LogEvent;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 90
    return-void
.end method

.method public warn(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "detail"    # Ljava/lang/Object;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 92
    invoke-virtual {p0, p1}, Lorg/jpos/util/Log;->createWarn(Ljava/lang/Object;)Lorg/jpos/util/LogEvent;

    move-result-object v0

    .line 93
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    invoke-virtual {v0, p2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 94
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 95
    return-void
.end method
