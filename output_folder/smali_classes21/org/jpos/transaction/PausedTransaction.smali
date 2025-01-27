.class public Lorg/jpos/transaction/PausedTransaction;
.super Ljava/lang/Object;
.source "PausedTransaction.java"

# interfaces
.implements Lorg/jpos/util/Loggeable;


# instance fields
.field private aborting:Z

.field private evt:Lorg/jpos/util/LogEvent;

.field private expirationMonitor:Ljava/util/TimerTask;

.field private id:J

.field private iter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/jpos/transaction/TransactionParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jpos/transaction/TransactionParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private participant:Lorg/jpos/transaction/TransactionParticipant;

.field private prof:Lorg/jpos/util/Profiler;

.field private resumed:Z

.field private txnmgr:Lorg/jpos/transaction/TransactionManager;


# direct methods
.method public constructor <init>(Lorg/jpos/transaction/TransactionManager;JLorg/jpos/transaction/TransactionParticipant;Ljava/util/List;Ljava/util/Iterator;ZLjava/util/TimerTask;Lorg/jpos/util/Profiler;Lorg/jpos/util/LogEvent;)V
    .locals 0
    .param p1, "txnmgr"    # Lorg/jpos/transaction/TransactionManager;
    .param p2, "id"    # J
    .param p4, "participant"    # Lorg/jpos/transaction/TransactionParticipant;
    .param p7, "aborting"    # Z
    .param p8, "expirationMonitor"    # Ljava/util/TimerTask;
    .param p9, "prof"    # Lorg/jpos/util/Profiler;
    .param p10, "evt"    # Lorg/jpos/util/LogEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/transaction/TransactionManager;",
            "J",
            "Lorg/jpos/transaction/TransactionParticipant;",
            "Ljava/util/List<",
            "Lorg/jpos/transaction/TransactionParticipant;",
            ">;",
            "Ljava/util/Iterator<",
            "Lorg/jpos/transaction/TransactionParticipant;",
            ">;Z",
            "Ljava/util/TimerTask;",
            "Lorg/jpos/util/Profiler;",
            "Lorg/jpos/util/LogEvent;",
            ")V"
        }
    .end annotation

    .line 46
    .local p5, "members":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/transaction/TransactionParticipant;>;"
    .local p6, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jpos/transaction/TransactionParticipant;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/jpos/transaction/PausedTransaction;->txnmgr:Lorg/jpos/transaction/TransactionManager;

    .line 48
    iput-wide p2, p0, Lorg/jpos/transaction/PausedTransaction;->id:J

    .line 49
    iput-object p4, p0, Lorg/jpos/transaction/PausedTransaction;->participant:Lorg/jpos/transaction/TransactionParticipant;

    .line 50
    iput-object p5, p0, Lorg/jpos/transaction/PausedTransaction;->members:Ljava/util/List;

    .line 51
    iput-object p6, p0, Lorg/jpos/transaction/PausedTransaction;->iter:Ljava/util/Iterator;

    .line 52
    iput-boolean p7, p0, Lorg/jpos/transaction/PausedTransaction;->aborting:Z

    .line 53
    iput-object p8, p0, Lorg/jpos/transaction/PausedTransaction;->expirationMonitor:Ljava/util/TimerTask;

    .line 54
    iput-object p9, p0, Lorg/jpos/transaction/PausedTransaction;->prof:Lorg/jpos/util/Profiler;

    .line 55
    iput-object p10, p0, Lorg/jpos/transaction/PausedTransaction;->evt:Lorg/jpos/util/LogEvent;

    .line 56
    return-void
.end method


# virtual methods
.method public declared-synchronized cancelExpirationMonitor()V
    .locals 1

    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, p0, Lorg/jpos/transaction/PausedTransaction;->expirationMonitor:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .end local p0    # "this":Lorg/jpos/transaction/PausedTransaction;
    :cond_0
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dump(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 3
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/jpos/transaction/PausedTransaction;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Lorg/jpos/transaction/PausedTransaction;->isAborting()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " (aborting)"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public forceAbort()V
    .locals 1

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/transaction/PausedTransaction;->aborting:Z

    .line 81
    return-void
.end method

.method public getLogEvent()Lorg/jpos/util/LogEvent;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/jpos/transaction/PausedTransaction;->evt:Lorg/jpos/util/LogEvent;

    return-object v0
.end method

.method public getParticipant()Lorg/jpos/transaction/TransactionParticipant;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/jpos/transaction/PausedTransaction;->participant:Lorg/jpos/transaction/TransactionParticipant;

    return-object v0
.end method

.method public getProfiler()Lorg/jpos/util/Profiler;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/jpos/transaction/PausedTransaction;->prof:Lorg/jpos/util/Profiler;

    return-object v0
.end method

.method public getTransactionManager()Lorg/jpos/transaction/TransactionManager;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/jpos/transaction/PausedTransaction;->txnmgr:Lorg/jpos/transaction/TransactionManager;

    return-object v0
.end method

.method public id()J
    .locals 2

    .line 58
    iget-wide v0, p0, Lorg/jpos/transaction/PausedTransaction;->id:J

    return-wide v0
.end method

.method public isAborting()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lorg/jpos/transaction/PausedTransaction;->aborting:Z

    return v0
.end method

.method public isResumed()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lorg/jpos/transaction/PausedTransaction;->resumed:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/jpos/transaction/TransactionParticipant;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/jpos/transaction/PausedTransaction;->iter:Ljava/util/Iterator;

    return-object v0
.end method

.method public members()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jpos/transaction/TransactionParticipant;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lorg/jpos/transaction/PausedTransaction;->members:Ljava/util/List;

    return-object v0
.end method

.method public setResumed(Z)V
    .locals 0
    .param p1, "resumed"    # Z

    .line 86
    iput-boolean p1, p0, Lorg/jpos/transaction/PausedTransaction;->resumed:Z

    .line 87
    return-void
.end method
