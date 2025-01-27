.class public Lorg/jpos/q2/qbean/QExec;
.super Lorg/jpos/q2/QBeanSupport;
.source "QExec.java"

# interfaces
.implements Lorg/jpos/q2/qbean/QExecMBean;


# instance fields
.field shutdownScript:Ljava/lang/String;

.field startScript:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/jpos/q2/QBeanSupport;-><init>()V

    return-void
.end method

.method private exec(Ljava/lang/String;)V
    .locals 5
    .param p1, "script"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    if-eqz p1, :cond_1

    .line 72
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 73
    .local v0, "p":Ljava/lang/Process;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 74
    .local v1, "in":Ljava/io/BufferedReader;
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/QExec;->getLog()Lorg/jpos/util/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ---"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jpos/util/Log;->createInfo(Ljava/lang/Object;)Lorg/jpos/util/LogEvent;

    move-result-object v2

    .line 76
    .local v2, "evt":Lorg/jpos/util/LogEvent;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 77
    invoke-virtual {v2, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {v2}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 81
    .end local v0    # "p":Ljava/lang/Process;
    .end local v1    # "in":Ljava/io/BufferedReader;
    .end local v2    # "evt":Lorg/jpos/util/LogEvent;
    .end local v4    # "line":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public getShutdownScript()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/jpos/q2/qbean/QExec;->shutdownScript:Ljava/lang/String;

    return-object v0
.end method

.method public getStartScript()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/jpos/q2/qbean/QExec;->startScript:Ljava/lang/String;

    return-object v0
.end method

.method public setShutdownScript(Ljava/lang/String;)V
    .locals 0
    .param p1, "scriptPath"    # Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lorg/jpos/q2/qbean/QExec;->shutdownScript:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setStartScript(Ljava/lang/String;)V
    .locals 0
    .param p1, "scriptPath"    # Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lorg/jpos/q2/qbean/QExec;->startScript:Ljava/lang/String;

    .line 56
    return-void
.end method

.method protected startService()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lorg/jpos/q2/qbean/QExec;->startScript:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jpos/q2/qbean/QExec;->exec(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method protected stopService()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lorg/jpos/q2/qbean/QExec;->shutdownScript:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jpos/q2/qbean/QExec;->exec(Ljava/lang/String;)V

    .line 52
    return-void
.end method
