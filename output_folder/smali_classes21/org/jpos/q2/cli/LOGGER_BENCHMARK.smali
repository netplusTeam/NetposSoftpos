.class public Lorg/jpos/q2/cli/LOGGER_BENCHMARK;
.super Ljava/lang/Object;
.source "LOGGER_BENCHMARK.java"

# interfaces
.implements Lorg/jpos/q2/CLICommand;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)V
    .locals 12
    .param p1, "ctx"    # Lorg/jpos/q2/CLIContext;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    array-length v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 33
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v2, p2, v1

    aput-object v2, v0, v1

    const-string v1, "Usage: %s threads messages"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 34
    return-void

    .line 36
    :cond_0
    aget-object v0, p2, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 37
    .local v0, "threadCount":I
    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 38
    .local v1, "numMessages":I
    new-instance v2, Lorg/jpos/util/Profiler;

    invoke-direct {v2}, Lorg/jpos/util/Profiler;-><init>()V

    move-object v8, v2

    .line 39
    .local v8, "p":Lorg/jpos/util/Profiler;
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v7, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 40
    .local v7, "done":Ljava/util/concurrent/CountDownLatch;
    const/4 v2, 0x0

    move v9, v2

    .local v9, "i":I
    :goto_0
    if-ge v9, v0, :cond_1

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 42
    .local v10, "name":Ljava/lang/String;
    new-instance v11, Lorg/jpos/q2/cli/LOGGER_BENCHMARK$1;

    move-object v2, v11

    move-object v3, p0

    move v4, v1

    move-object v5, v10

    move-object v6, v8

    invoke-direct/range {v2 .. v7}, Lorg/jpos/q2/cli/LOGGER_BENCHMARK$1;-><init>(Lorg/jpos/q2/cli/LOGGER_BENCHMARK;ILjava/lang/String;Lorg/jpos/util/Profiler;Ljava/util/concurrent/CountDownLatch;)V

    .line 53
    invoke-virtual {v11}, Lorg/jpos/q2/cli/LOGGER_BENCHMARK$1;->start()V

    .line 40
    .end local v10    # "name":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 55
    .end local v9    # "i":I
    :cond_1
    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 56
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, ""

    invoke-virtual {v8, v2, v3}, Lorg/jpos/util/Profiler;->dump(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 57
    return-void
.end method
