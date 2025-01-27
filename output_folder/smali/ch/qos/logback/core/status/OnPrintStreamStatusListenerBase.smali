.class public abstract Lch/qos/logback/core/status/OnPrintStreamStatusListenerBase;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "OnPrintStreamStatusListenerBase.java"

# interfaces
.implements Lch/qos/logback/core/status/StatusListener;
.implements Lch/qos/logback/core/spi/LifeCycle;


# static fields
.field static final DEFAULT_RETROSPECTIVE:J = 0x12cL


# instance fields
.field isStarted:Z

.field prefix:Ljava/lang/String;

.field retrospectiveThresold:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/status/OnPrintStreamStatusListenerBase;->isStarted:Z

    .line 32
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lch/qos/logback/core/status/OnPrintStreamStatusListenerBase;->retrospectiveThresold:J

    return-void
.end method

.method private isElapsedTimeLongerThanThreshold(JJ)Z
    .locals 4
    .param p1, "now"    # J
    .param p3, "timestamp"    # J

    .line 79
    sub-long v0, p1, p3

    .line 80
    .local v0, "elapsedTime":J
    iget-wide v2, p0, Lch/qos/logback/core/status/OnPrintStreamStatusListenerBase;->retrospectiveThresold:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private print(Lch/qos/logback/core/status/Status;)V
    .locals 2
    .param p1, "status"    # Lch/qos/logback/core/status/Status;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lch/qos/logback/core/status/OnPrintStreamStatusListenerBase;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    :cond_0
    const-string v1, ""

    invoke-static {v0, v1, p1}, Lch/qos/logback/core/util/StatusPrinter;->buildStr(Ljava/lang/StringBuilder;Ljava/lang/String;Lch/qos/logback/core/status/Status;)V

    .line 52
    invoke-virtual {p0}, Lch/qos/logback/core/status/OnPrintStreamStatusListenerBase;->getPrintStream()Ljava/io/PrintStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method private retrospectivePrint()V
    .locals 9

    .line 65
    iget-object v0, p0, Lch/qos/logback/core/status/OnPrintStreamStatusListenerBase;->context:Lch/qos/logback/core/Context;

    if-nez v0, :cond_0

    .line 66
    return-void

    .line 67
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 68
    .local v0, "now":J
    iget-object v2, p0, Lch/qos/logback/core/status/OnPrintStreamStatusListenerBase;->context:Lch/qos/logback/core/Context;

    invoke-interface {v2}, Lch/qos/logback/core/Context;->getStatusManager()Lch/qos/logback/core/status/StatusManager;

    move-result-object v2

    .line 69
    .local v2, "sm":Lch/qos/logback/core/status/StatusManager;
    invoke-interface {v2}, Lch/qos/logback/core/status/StatusManager;->getCopyOfStatusList()Ljava/util/List;

    move-result-object v3

    .line 70
    .local v3, "statusList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/status/Status;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lch/qos/logback/core/status/Status;

    .line 71
    .local v5, "status":Lch/qos/logback/core/status/Status;
    invoke-interface {v5}, Lch/qos/logback/core/status/Status;->getDate()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 72
    .local v6, "timestampOfStatusMesage":J
    invoke-direct {p0, v0, v1, v6, v7}, Lch/qos/logback/core/status/OnPrintStreamStatusListenerBase;->isElapsedTimeLongerThanThreshold(JJ)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 73
    invoke-direct {p0, v5}, Lch/qos/logback/core/status/OnPrintStreamStatusListenerBase;->print(Lch/qos/logback/core/status/Status;)V

    .line 75
    .end local v5    # "status":Lch/qos/logback/core/status/Status;
    .end local v6    # "timestampOfStatusMesage":J
    :cond_1
    goto :goto_0

    .line 76
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method


# virtual methods
.method public addStatusEvent(Lch/qos/logback/core/status/Status;)V
    .locals 1
    .param p1, "status"    # Lch/qos/logback/core/status/Status;

    .line 56
    iget-boolean v0, p0, Lch/qos/logback/core/status/OnPrintStreamStatusListenerBase;->isStarted:Z

    if-nez v0, :cond_0

    .line 57
    return-void

    .line 58
    :cond_0
    invoke-direct {p0, p1}, Lch/qos/logback/core/status/OnPrintStreamStatusListenerBase;->print(Lch/qos/logback/core/status/Status;)V

    .line 59
    return-void
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lch/qos/logback/core/status/OnPrintStreamStatusListenerBase;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getPrintStream()Ljava/io/PrintStream;
.end method

.method public getRetrospective()J
    .locals 2

    .line 107
    iget-wide v0, p0, Lch/qos/logback/core/status/OnPrintStreamStatusListenerBase;->retrospectiveThresold:J

    return-wide v0
.end method

.method public isStarted()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lch/qos/logback/core/status/OnPrintStreamStatusListenerBase;->isStarted:Z

    return v0
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .line 99
    iput-object p1, p0, Lch/qos/logback/core/status/OnPrintStreamStatusListenerBase;->prefix:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setRetrospective(J)V
    .locals 0
    .param p1, "retrospective"    # J

    .line 103
    iput-wide p1, p0, Lch/qos/logback/core/status/OnPrintStreamStatusListenerBase;->retrospectiveThresold:J

    .line 104
    return-void
.end method

.method public start()V
    .locals 4

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/core/status/OnPrintStreamStatusListenerBase;->isStarted:Z

    .line 89
    iget-wide v0, p0, Lch/qos/logback/core/status/OnPrintStreamStatusListenerBase;->retrospectiveThresold:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 90
    invoke-direct {p0}, Lch/qos/logback/core/status/OnPrintStreamStatusListenerBase;->retrospectivePrint()V

    .line 92
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/status/OnPrintStreamStatusListenerBase;->isStarted:Z

    .line 112
    return-void
.end method
