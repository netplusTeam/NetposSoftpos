.class public Lorg/jpos/q2/cli/TAIL;
.super Ljava/lang/Object;
.source "TAIL.java"

# interfaces
.implements Lorg/jpos/q2/CLICommand;
.implements Lorg/jpos/util/LogListener;


# instance fields
.field ansi:Z

.field cli:Lorg/jpos/q2/CLIContext;

.field p:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private showLoggers(Lorg/jpos/q2/CLIContext;)V
    .locals 7
    .param p1, "cli"    # Lorg/jpos/q2/CLIContext;

    .line 90
    invoke-static {}, Lorg/jpos/util/NameRegistrar;->getInstance()Lorg/jpos/util/NameRegistrar;

    move-result-object v0

    .line 91
    .local v0, "nr":Lorg/jpos/util/NameRegistrar;
    const/4 v1, 0x0

    .line 92
    .local v1, "maxw":I
    invoke-static {}, Lorg/jpos/util/NameRegistrar;->getAsMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 93
    .local v2, "iter":Ljava/util/Iterator;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "available loggers:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .local v3, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 95
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 96
    .local v4, "entry":Ljava/util/Map$Entry;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 97
    .local v5, "key":Ljava/lang/String;
    const-string v6, "logger."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lorg/jpos/util/Logger;

    if-eqz v6, :cond_0

    .line 98
    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .end local v4    # "entry":Ljava/util/Map$Entry;
    .end local v5    # "key":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 103
    return-void
.end method


# virtual methods
.method public exec(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)V
    .locals 4
    .param p1, "cli"    # Lorg/jpos/q2/CLIContext;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/jpos/q2/CLIContext;->getReader()Lorg/jline/reader/LineReader;

    move-result-object v1

    invoke-interface {v1}, Lorg/jline/reader/LineReader;->getTerminal()Lorg/jline/terminal/Terminal;

    move-result-object v1

    invoke-interface {v1}, Lorg/jline/terminal/Terminal;->output()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/jpos/q2/cli/TAIL;->p:Ljava/io/PrintStream;

    .line 40
    iput-object p1, p0, Lorg/jpos/q2/cli/TAIL;->cli:Lorg/jpos/q2/CLIContext;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jpos/q2/cli/TAIL;->ansi:Z

    .line 42
    array-length v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 43
    invoke-virtual {p0, p1}, Lorg/jpos/q2/cli/TAIL;->usage(Lorg/jpos/q2/CLIContext;)V

    .line 44
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    const-string v2, "logger."

    if-ge v0, v1, :cond_1

    .line 48
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jpos/util/NameRegistrar;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jpos/util/Logger;

    .line 49
    .local v1, "logger":Lorg/jpos/util/Logger;
    invoke-virtual {v1, p0}, Lorg/jpos/util/Logger;->addListener(Lorg/jpos/util/LogListener;)V
    :try_end_0
    .catch Lorg/jpos/util/NameRegistrar$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v1    # "logger":Lorg/jpos/util/Logger;
    goto :goto_1

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Lorg/jpos/util/NameRegistrar$NotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Logger "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found -- ignored."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 46
    .end local v1    # "e":Lorg/jpos/util/NameRegistrar$NotFoundException;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p1}, Lorg/jpos/q2/CLIContext;->getReader()Lorg/jline/reader/LineReader;

    move-result-object v0

    invoke-interface {v0}, Lorg/jline/reader/LineReader;->readLine()Ljava/lang/String;

    .line 56
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_2
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 58
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, p2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jpos/util/NameRegistrar;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jpos/util/Logger;

    .line 59
    .local v1, "logger":Lorg/jpos/util/Logger;
    invoke-virtual {v1, p0}, Lorg/jpos/util/Logger;->removeListener(Lorg/jpos/util/LogListener;)V
    :try_end_1
    .catch Lorg/jpos/util/NameRegistrar$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 62
    .end local v1    # "logger":Lorg/jpos/util/Logger;
    goto :goto_3

    .line 60
    :catch_1
    move-exception v1

    .line 56
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 64
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public declared-synchronized log(Lorg/jpos/util/LogEvent;)Lorg/jpos/util/LogEvent;
    .locals 7
    .param p1, "ev"    # Lorg/jpos/util/LogEvent;

    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lorg/jpos/q2/cli/TAIL;->p:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 76
    .local v0, "d":Ljava/util/Date;
    iget-object v1, p0, Lorg/jpos/q2/cli/TAIL;->cli:Lorg/jpos/q2/CLIContext;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    invoke-virtual {p1}, Lorg/jpos/util/LogEvent;->getSource()Lorg/jpos/util/LogSource;

    move-result-object v3

    invoke-interface {v3}, Lorg/jpos/util/LogSource;->getLogger()Lorg/jpos/util/Logger;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jpos/util/Logger;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 78
    invoke-virtual {p1}, Lorg/jpos/util/LogEvent;->getRealm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    rem-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {v1, v2}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lorg/jpos/q2/cli/TAIL;->p:Ljava/io/PrintStream;

    const-string v2, " "

    invoke-virtual {p1, v1, v2}, Lorg/jpos/util/LogEvent;->dump(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lorg/jpos/q2/cli/TAIL;->p:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .end local v0    # "d":Ljava/util/Date;
    .end local p0    # "this":Lorg/jpos/q2/cli/TAIL;
    :cond_0
    monitor-exit p0

    return-object p1

    .line 71
    .end local p1    # "ev":Lorg/jpos/util/LogEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public usage(Lorg/jpos/q2/CLIContext;)V
    .locals 1
    .param p1, "cli"    # Lorg/jpos/q2/CLIContext;

    .line 67
    const-string v0, "Usage: tail [log-name] [log-name] ..."

    invoke-virtual {p1, v0}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 68
    invoke-direct {p0, p1}, Lorg/jpos/q2/cli/TAIL;->showLoggers(Lorg/jpos/q2/CLIContext;)V

    .line 69
    return-void
.end method
