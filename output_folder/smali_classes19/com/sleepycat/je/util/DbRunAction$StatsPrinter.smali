.class Lcom/sleepycat/je/util/DbRunAction$StatsPrinter;
.super Ljava/lang/Thread;
.source "DbRunAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/util/DbRunAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatsPrinter"
.end annotation


# instance fields
.field private env:Lcom/sleepycat/je/Environment;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/Environment;)V
    .locals 0
    .param p1, "env"    # Lcom/sleepycat/je/Environment;

    .line 374
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 375
    iput-object p1, p0, Lcom/sleepycat/je/util/DbRunAction$StatsPrinter;->env:Lcom/sleepycat/je/Environment;

    .line 376
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 381
    new-instance v0, Lcom/sleepycat/je/StatsConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/StatsConfig;-><init>()V

    .line 382
    .local v0, "clearConfig":Lcom/sleepycat/je/StatsConfig;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/StatsConfig;->setClear(Z)Lcom/sleepycat/je/StatsConfig;

    .line 386
    :goto_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    const-wide/16 v1, 0x7530

    :try_start_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 388
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
    :try_start_2
    iget-object v1, p0, Lcom/sleepycat/je/util/DbRunAction$StatsPrinter;->env:Lcom/sleepycat/je/Environment;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/Environment;->getStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/EnvironmentStats;

    move-result-object v1

    .line 390
    .local v1, "stats":Lcom/sleepycat/je/EnvironmentStats;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 396
    .end local v1    # "stats":Lcom/sleepycat/je/EnvironmentStats;
    goto :goto_0

    .line 388
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "clearConfig":Lcom/sleepycat/je/StatsConfig;
    :try_start_4
    throw v1
    :try_end_4
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 394
    .restart local v0    # "clearConfig":Lcom/sleepycat/je/StatsConfig;
    :catch_0
    move-exception v1

    .line 395
    .local v1, "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 391
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 392
    .local v1, "e":Lcom/sleepycat/je/DatabaseException;
    invoke-virtual {v1}, Lcom/sleepycat/je/DatabaseException;->printStackTrace()V

    .line 393
    nop

    .line 398
    .end local v1    # "e":Lcom/sleepycat/je/DatabaseException;
    :goto_1
    return-void
.end method
