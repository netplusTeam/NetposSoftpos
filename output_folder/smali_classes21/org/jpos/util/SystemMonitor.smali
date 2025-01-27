.class public Lorg/jpos/util/SystemMonitor;
.super Ljava/lang/Object;
.source "SystemMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/jpos/util/LogSource;
.implements Lorg/jpos/util/Loggeable;


# instance fields
.field private delay:I

.field private logger:Lorg/jpos/util/Logger;

.field private realm:Ljava/lang/String;

.field private volatile shutdown:Z

.field private sleepTime:I

.field private thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/util/SystemMonitor;->logger:Lorg/jpos/util/Logger;

    .line 32
    iput-object v0, p0, Lorg/jpos/util/SystemMonitor;->realm:Ljava/lang/String;

    .line 33
    const/4 v1, 0x0

    iput v1, p0, Lorg/jpos/util/SystemMonitor;->sleepTime:I

    .line 34
    iput v1, p0, Lorg/jpos/util/SystemMonitor;->delay:I

    .line 35
    iput-object v0, p0, Lorg/jpos/util/SystemMonitor;->thread:Ljava/lang/Thread;

    .line 36
    iput-boolean v1, p0, Lorg/jpos/util/SystemMonitor;->shutdown:Z

    .line 43
    return-void
.end method

.method public constructor <init>(ILorg/jpos/util/Logger;Ljava/lang/String;)V
    .locals 2
    .param p1, "sleepTime"    # I
    .param p2, "logger"    # Lorg/jpos/util/Logger;
    .param p3, "realm"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/util/SystemMonitor;->logger:Lorg/jpos/util/Logger;

    .line 32
    iput-object v0, p0, Lorg/jpos/util/SystemMonitor;->realm:Ljava/lang/String;

    .line 33
    const/4 v1, 0x0

    iput v1, p0, Lorg/jpos/util/SystemMonitor;->sleepTime:I

    .line 34
    iput v1, p0, Lorg/jpos/util/SystemMonitor;->delay:I

    .line 35
    iput-object v0, p0, Lorg/jpos/util/SystemMonitor;->thread:Ljava/lang/Thread;

    .line 36
    iput-boolean v1, p0, Lorg/jpos/util/SystemMonitor;->shutdown:Z

    .line 50
    invoke-virtual {p0, p2, p3}, Lorg/jpos/util/SystemMonitor;->setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V

    .line 51
    iput p1, p0, Lorg/jpos/util/SystemMonitor;->sleepTime:I

    .line 52
    invoke-direct {p0}, Lorg/jpos/util/SystemMonitor;->startThread()V

    .line 53
    return-void
.end method

.method private startThread()V
    .locals 2

    .line 56
    iget-object v0, p0, Lorg/jpos/util/SystemMonitor;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 58
    :cond_0
    iget v0, p0, Lorg/jpos/util/SystemMonitor;->sleepTime:I

    if-lez v0, :cond_1

    .line 59
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "SystemMonitor"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jpos/util/SystemMonitor;->thread:Ljava/lang/Thread;

    .line 60
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 61
    iget-object v0, p0, Lorg/jpos/util/SystemMonitor;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 63
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 7
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "newIndent":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 105
    .local v1, "r":Ljava/lang/Runtime;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "--- memory ---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " freeMemory="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "totalMemory="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "inUseMemory="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 109
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--- threads ---"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "      delay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/jpos/util/SystemMonitor;->delay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    threads="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->activeCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 113
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v3

    invoke-virtual {p0, v3, p1, v0}, Lorg/jpos/util/SystemMonitor;->showThreadGroup(Ljava/lang/ThreadGroup;Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lorg/jpos/util/NameRegistrar;->getInstance()Lorg/jpos/util/NameRegistrar;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lorg/jpos/util/NameRegistrar;->dump(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method dumpThreads(Ljava/lang/ThreadGroup;Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 5
    .param p1, "g"    # Ljava/lang/ThreadGroup;
    .param p2, "p"    # Ljava/io/PrintStream;
    .param p3, "indent"    # Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    new-array v0, v0, [Ljava/lang/Thread;

    .line 75
    .local v0, "list":[Ljava/lang/Thread;
    invoke-virtual {p1, v0}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    move-result v1

    .line 76
    .local v1, "nthreads":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public getLogger()Lorg/jpos/util/Logger;
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/jpos/util/SystemMonitor;->logger:Lorg/jpos/util/Logger;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/jpos/util/SystemMonitor;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 5

    .line 88
    :goto_0
    iget-boolean v0, p0, Lorg/jpos/util/SystemMonitor;->shutdown:Z

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "SystemMonitor"

    invoke-direct {v0, p0, v1, p0}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 91
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lorg/jpos/util/SystemMonitor;->sleepTime:I

    int-to-long v3, v2

    add-long/2addr v0, v3

    .line 92
    .local v0, "expected":J
    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lorg/jpos/util/SystemMonitor;->delay:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "expected":J
    goto :goto_1

    .line 94
    :catch_0
    move-exception v0

    :goto_1
    goto :goto_0

    .line 96
    :cond_0
    return-void
.end method

.method public setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V
    .locals 0
    .param p1, "logger"    # Lorg/jpos/util/Logger;
    .param p2, "realm"    # Ljava/lang/String;

    .line 118
    iput-object p1, p0, Lorg/jpos/util/SystemMonitor;->logger:Lorg/jpos/util/Logger;

    .line 119
    iput-object p2, p0, Lorg/jpos/util/SystemMonitor;->realm:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setSleepTime(I)V
    .locals 0
    .param p1, "sleepTime"    # I

    .line 69
    iput p1, p0, Lorg/jpos/util/SystemMonitor;->sleepTime:I

    .line 70
    invoke-direct {p0}, Lorg/jpos/util/SystemMonitor;->startThread()V

    .line 71
    return-void
.end method

.method public showThreadGroup(Ljava/lang/ThreadGroup;Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 3
    .param p1, "g"    # Ljava/lang/ThreadGroup;
    .param p2, "p"    # Ljava/io/PrintStream;
    .param p3, "indent"    # Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p2, v1}, Lorg/jpos/util/SystemMonitor;->showThreadGroup(Ljava/lang/ThreadGroup;Ljava/io/PrintStream;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jpos/util/SystemMonitor;->dumpThreads(Ljava/lang/ThreadGroup;Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 85
    :goto_0
    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/util/SystemMonitor;->shutdown:Z

    .line 100
    return-void
.end method
