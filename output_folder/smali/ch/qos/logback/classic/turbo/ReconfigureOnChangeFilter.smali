.class public Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;
.super Lch/qos/logback/classic/turbo/TurboFilter;
.source "ReconfigureOnChangeFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter$ReconfiguringThread;
    }
.end annotation


# static fields
.field public static final DEFAULT_REFRESH_PERIOD:J = 0xea60L

.field private static final MASK_DECREASE_THRESHOLD:J = 0x320L

.field private static final MASK_INCREASE_THRESHOLD:J = 0x64L

.field private static final MAX_MASK:I = 0xffff


# instance fields
.field configurationWatchList:Lch/qos/logback/core/joran/spi/ConfigurationWatchList;

.field private invocationCounter:J

.field private volatile lastMaskCheck:J

.field mainConfigurationURL:Ljava/net/URL;

.field private volatile mask:J

.field protected volatile nextCheck:J

.field refreshPeriod:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Lch/qos/logback/classic/turbo/TurboFilter;-><init>()V

    .line 51
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->refreshPeriod:J

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->invocationCounter:J

    .line 91
    const-wide/16 v0, 0xf

    iput-wide v0, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->mask:J

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->lastMaskCheck:J

    .line 179
    return-void
.end method

.method static synthetic access$000(Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;)Lch/qos/logback/core/Context;
    .locals 1
    .param p0, "x0"    # Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;

    .line 43
    iget-object v0, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->context:Lch/qos/logback/core/Context;

    return-object v0
.end method

.method static synthetic access$100(Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;)Lch/qos/logback/core/Context;
    .locals 1
    .param p0, "x0"    # Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;

    .line 43
    iget-object v0, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->context:Lch/qos/logback/core/Context;

    return-object v0
.end method

.method static synthetic access$200(Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;)Lch/qos/logback/core/Context;
    .locals 1
    .param p0, "x0"    # Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;

    .line 43
    iget-object v0, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->context:Lch/qos/logback/core/Context;

    return-object v0
.end method

.method static synthetic access$300(Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;)Lch/qos/logback/core/Context;
    .locals 1
    .param p0, "x0"    # Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;

    .line 43
    iget-object v0, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->context:Lch/qos/logback/core/Context;

    return-object v0
.end method

.method static synthetic access$400(Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;)Lch/qos/logback/core/Context;
    .locals 1
    .param p0, "x0"    # Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;

    .line 43
    iget-object v0, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->context:Lch/qos/logback/core/Context;

    return-object v0
.end method

.method static synthetic access$500(Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;)Lch/qos/logback/core/Context;
    .locals 1
    .param p0, "x0"    # Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;

    .line 43
    iget-object v0, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->context:Lch/qos/logback/core/Context;

    return-object v0
.end method

.method static synthetic access$600(Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;)Lch/qos/logback/core/Context;
    .locals 1
    .param p0, "x0"    # Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;

    .line 43
    iget-object v0, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->context:Lch/qos/logback/core/Context;

    return-object v0
.end method

.method private updateMaskIfNecessary(J)V
    .locals 6
    .param p1, "now"    # J

    .line 138
    iget-wide v0, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->lastMaskCheck:J

    sub-long v0, p1, v0

    .line 139
    .local v0, "timeElapsedSinceLastMaskUpdateCheck":J
    iput-wide p1, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->lastMaskCheck:J

    .line 140
    const-wide/16 v2, 0x64

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    iget-wide v2, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->mask:J

    const-wide/32 v4, 0xffff

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 141
    iget-wide v2, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->mask:J

    const/4 v4, 0x1

    shl-long/2addr v2, v4

    const-wide/16 v4, 0x1

    or-long/2addr v2, v4

    iput-wide v2, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->mask:J

    goto :goto_0

    .line 142
    :cond_0
    const-wide/16 v2, 0x320

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 143
    iget-wide v2, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->mask:J

    const/4 v4, 0x2

    ushr-long/2addr v2, v4

    iput-wide v2, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->mask:J

    .line 145
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected changeDetected(J)Z
    .locals 2
    .param p1, "now"    # J

    .line 160
    iget-wide v0, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->nextCheck:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 161
    invoke-virtual {p0, p1, p2}, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->updateNextCheck(J)V

    .line 162
    iget-object v0, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->configurationWatchList:Lch/qos/logback/core/joran/spi/ConfigurationWatchList;

    invoke-virtual {v0}, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->changeDetected()Z

    move-result v0

    return v0

    .line 164
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public decide(Lorg/slf4j/Marker;Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lch/qos/logback/core/spi/FilterReply;
    .locals 4
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "logger"    # Lch/qos/logback/classic/Logger;
    .param p3, "level"    # Lch/qos/logback/classic/Level;
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "params"    # [Ljava/lang/Object;
    .param p6, "t"    # Ljava/lang/Throwable;

    .line 96
    invoke-virtual {p0}, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    sget-object v0, Lch/qos/logback/core/spi/FilterReply;->NEUTRAL:Lch/qos/logback/core/spi/FilterReply;

    return-object v0

    .line 103
    :cond_0
    iget-wide v0, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->invocationCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->invocationCounter:J

    iget-wide v2, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->mask:J

    and-long/2addr v0, v2

    iget-wide v2, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->mask:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 104
    sget-object v0, Lch/qos/logback/core/spi/FilterReply;->NEUTRAL:Lch/qos/logback/core/spi/FilterReply;

    return-object v0

    .line 107
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 109
    .local v0, "now":J
    iget-object v2, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->configurationWatchList:Lch/qos/logback/core/joran/spi/ConfigurationWatchList;

    monitor-enter v2

    .line 110
    :try_start_0
    invoke-direct {p0, v0, v1}, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->updateMaskIfNecessary(J)V

    .line 111
    invoke-virtual {p0, v0, v1}, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->changeDetected(J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 116
    invoke-virtual {p0}, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->disableSubsequentReconfiguration()V

    .line 117
    invoke-virtual {p0}, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->detachReconfigurationToNewThread()V

    .line 119
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    sget-object v2, Lch/qos/logback/core/spi/FilterReply;->NEUTRAL:Lch/qos/logback/core/spi/FilterReply;

    return-object v2

    .line 119
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method detachReconfigurationToNewThread()V
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Detected change in ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->configurationWatchList:Lch/qos/logback/core/joran/spi/ConfigurationWatchList;

    invoke-virtual {v1}, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->getCopyOfFileWatchList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->addInfo(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->context:Lch/qos/logback/core/Context;

    invoke-interface {v0}, Lch/qos/logback/core/Context;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter$ReconfiguringThread;

    invoke-direct {v1, p0}, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter$ReconfiguringThread;-><init>(Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 153
    return-void
.end method

.method disableSubsequentReconfiguration()V
    .locals 2

    .line 168
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->nextCheck:J

    .line 169
    return-void
.end method

.method public getRefreshPeriod()J
    .locals 2

    .line 172
    iget-wide v0, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->refreshPeriod:J

    return-wide v0
.end method

.method public setRefreshPeriod(J)V
    .locals 0
    .param p1, "refreshPeriod"    # J

    .line 176
    iput-wide p1, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->refreshPeriod:J

    .line 177
    return-void
.end method

.method public start()V
    .locals 6

    .line 59
    iget-object v0, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->context:Lch/qos/logback/core/Context;

    invoke-static {v0}, Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;->getConfigurationWatchList(Lch/qos/logback/core/Context;)Lch/qos/logback/core/joran/spi/ConfigurationWatchList;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->configurationWatchList:Lch/qos/logback/core/joran/spi/ConfigurationWatchList;

    .line 60
    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {v0}, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->getMainURL()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->mainConfigurationURL:Ljava/net/URL;

    .line 62
    if-nez v0, :cond_0

    .line 63
    const-string v0, "Due to missing top level configuration file, automatic reconfiguration is impossible."

    invoke-virtual {p0, v0}, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->addWarn(Ljava/lang/String;)V

    .line 64
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->configurationWatchList:Lch/qos/logback/core/joran/spi/ConfigurationWatchList;

    invoke-virtual {v0}, Lch/qos/logback/core/joran/spi/ConfigurationWatchList;->getCopyOfFileWatchList()Ljava/util/List;

    move-result-object v0

    .line 67
    .local v0, "watchList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iget-wide v1, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->refreshPeriod:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 68
    .local v1, "inSeconds":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Will scan for changes in ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] every "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " seconds. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->addInfo(Ljava/lang/String;)V

    .line 69
    iget-object v3, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->configurationWatchList:Lch/qos/logback/core/joran/spi/ConfigurationWatchList;

    monitor-enter v3

    .line 70
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->updateNextCheck(J)V

    .line 71
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-super {p0}, Lch/qos/logback/classic/turbo/TurboFilter;->start()V

    .line 73
    .end local v0    # "watchList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v1    # "inSeconds":J
    goto :goto_0

    .line 71
    .restart local v0    # "watchList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v1    # "inSeconds":J
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 74
    .end local v0    # "watchList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v1    # "inSeconds":J
    :cond_1
    const-string v0, "Empty ConfigurationWatchList in context"

    invoke-virtual {p0, v0}, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->addWarn(Ljava/lang/String;)V

    .line 76
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReconfigureOnChangeFilter{invocationCounter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->invocationCounter:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateNextCheck(J)V
    .locals 2
    .param p1, "now"    # J

    .line 156
    iget-wide v0, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->refreshPeriod:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lch/qos/logback/classic/turbo/ReconfigureOnChangeFilter;->nextCheck:J

    .line 157
    return-void
.end method
