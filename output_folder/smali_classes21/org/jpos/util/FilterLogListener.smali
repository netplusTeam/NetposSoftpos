.class public Lorg/jpos/util/FilterLogListener;
.super Ljava/lang/Object;
.source "FilterLogListener.java"

# interfaces
.implements Lorg/jpos/util/LogListener;
.implements Lorg/jpos/core/Configurable;


# static fields
.field private static final LEVELS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field p:Ljava/io/PrintStream;

.field private priority:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jpos/util/FilterLogListener;->LEVELS:Ljava/util/Map;

    .line 46
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "trace"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "debug"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "info"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "warn"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "error"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "fatal"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "info"

    iput-object v0, p0, Lorg/jpos/util/FilterLogListener;->priority:Ljava/lang/String;

    .line 59
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/jpos/util/FilterLogListener;->p:Ljava/io/PrintStream;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "p"    # Ljava/io/PrintStream;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "info"

    iput-object v0, p0, Lorg/jpos/util/FilterLogListener;->priority:Ljava/lang/String;

    .line 64
    invoke-virtual {p0, p1}, Lorg/jpos/util/FilterLogListener;->setPrintStream(Ljava/io/PrintStream;)V

    .line 65
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v0, p0, Lorg/jpos/util/FilterLogListener;->p:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/util/FilterLogListener;->p:Ljava/io/PrintStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .end local p0    # "this":Lorg/jpos/util/FilterLogListener;
    :cond_0
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPriority()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/jpos/util/FilterLogListener;->priority:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized log(Lorg/jpos/util/LogEvent;)Lorg/jpos/util/LogEvent;
    .locals 7
    .param p1, "ev"    # Lorg/jpos/util/LogEvent;

    monitor-enter p0

    .line 115
    :try_start_0
    iget-object v0, p0, Lorg/jpos/util/FilterLogListener;->p:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/jpos/util/LogEvent;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/util/FilterLogListener;->permitLogging(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 117
    .local v0, "d":Ljava/util/Date;
    iget-object v1, p0, Lorg/jpos/util/FilterLogListener;->p:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<log realm=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 118
    invoke-virtual {p1}, Lorg/jpos/util/LogEvent;->getRealm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" at=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 119
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    rem-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lorg/jpos/util/FilterLogListener;->p:Ljava/io/PrintStream;

    const-string v2, "  "

    invoke-virtual {p1, v1, v2}, Lorg/jpos/util/LogEvent;->dump(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lorg/jpos/util/FilterLogListener;->p:Ljava/io/PrintStream;

    const-string v2, "</log>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lorg/jpos/util/FilterLogListener;->p:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .end local v0    # "d":Ljava/util/Date;
    .end local p0    # "this":Lorg/jpos/util/FilterLogListener;
    :cond_0
    monitor-exit p0

    return-object p1

    .line 114
    .end local p1    # "ev":Lorg/jpos/util/LogEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public permitLogging(Ljava/lang/String;)Z
    .locals 4
    .param p1, "tagLevel"    # Ljava/lang/String;

    .line 103
    sget-object v0, Lorg/jpos/util/FilterLogListener;->LEVELS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 105
    .local v1, "i":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 106
    const-string v2, "info"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/Integer;

    .line 108
    :cond_0
    iget-object v2, p0, Lorg/jpos/util/FilterLogListener;->priority:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 110
    .local v0, "j":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 3
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 72
    :try_start_0
    const-string v0, "priority"

    invoke-interface {p1, v0}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "log_priority":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/jpos/util/FilterLogListener;->LEVELS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    iput-object v0, p0, Lorg/jpos/util/FilterLogListener;->priority:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v0    # "log_priority":Ljava/lang/String;
    :cond_0
    nop

    .line 79
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jpos/core/ConfigurationException;

    invoke-direct {v1, v0}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public declared-synchronized setPrintStream(Ljava/io/PrintStream;)V
    .locals 0
    .param p1, "p"    # Ljava/io/PrintStream;

    monitor-enter p0

    .line 84
    :try_start_0
    iput-object p1, p0, Lorg/jpos/util/FilterLogListener;->p:Ljava/io/PrintStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    .line 83
    .end local p0    # "this":Lorg/jpos/util/FilterLogListener;
    .end local p1    # "p":Ljava/io/PrintStream;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPriority(Ljava/lang/String;)V
    .locals 0
    .param p1, "priority"    # Ljava/lang/String;

    .line 99
    iput-object p1, p0, Lorg/jpos/util/FilterLogListener;->priority:Ljava/lang/String;

    .line 100
    return-void
.end method
