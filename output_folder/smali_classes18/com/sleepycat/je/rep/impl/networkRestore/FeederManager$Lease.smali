.class Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;
.super Ljava/util/TimerTask;
.source "FeederManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Lease"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private dbBackup:Lcom/sleepycat/je/util/DbBackup;

.field private final id:I

.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 243
    const-class v0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;IJLcom/sleepycat/je/util/DbBackup;)V
    .locals 3
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;
    .param p2, "id"    # I
    .param p3, "duration"    # J
    .param p5, "dbbackup"    # Lcom/sleepycat/je/util/DbBackup;

    .line 247
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;->this$0:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    .line 248
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 249
    iput-object p5, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;->dbBackup:Lcom/sleepycat/je/util/DbBackup;

    .line 250
    iput p2, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;->id:I

    .line 251
    iget-object v0, p1, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->leases:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;

    .line 252
    .local v0, "oldLease":Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;
    if-nez v0, :cond_0

    .line 256
    iget-object v1, p1, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->leaseTimer:Ljava/util/Timer;

    invoke-virtual {v1, p0, p3, p4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 257
    return-void

    .line 253
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found an old lease for node: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public declared-synchronized getOpenDbBackup()Lcom/sleepycat/je/util/DbBackup;
    .locals 1

    monitor-enter p0

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;->dbBackup:Lcom/sleepycat/je/util/DbBackup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sleepycat/je/util/DbBackup;->backupIsOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;->dbBackup:Lcom/sleepycat/je/util/DbBackup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local p0    # "this":Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;
    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized run()V
    .locals 1

    monitor-enter p0

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;->dbBackup:Lcom/sleepycat/je/util/DbBackup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 263
    monitor-exit p0

    return-void

    .line 265
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/sleepycat/je/util/DbBackup;->endBackup()V

    .line 266
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;->terminate()Lcom/sleepycat/je/util/DbBackup;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    monitor-exit p0

    return-void

    .line 261
    .end local p0    # "this":Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized terminate()Lcom/sleepycat/je/util/DbBackup;
    .locals 3

    monitor-enter p0

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;->dbBackup:Lcom/sleepycat/je/util/DbBackup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 277
    monitor-exit p0

    return-object v1

    .line 279
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;->cancel()Z

    .line 280
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;->this$0:Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;

    iget-object v0, v0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager;->leases:Ljava/util/Map;

    iget v2, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;

    .line 281
    .local v0, "l":Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;
    if-ne v0, p0, :cond_1

    .line 282
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;->dbBackup:Lcom/sleepycat/je/util/DbBackup;

    .line 283
    .local v2, "saveDbBackup":Lcom/sleepycat/je/util/DbBackup;
    iput-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;->dbBackup:Lcom/sleepycat/je/util/DbBackup;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    monitor-exit p0

    return-object v2

    .line 281
    .end local v2    # "saveDbBackup":Lcom/sleepycat/je/util/DbBackup;
    .end local p0    # "this":Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;
    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 275
    .end local v0    # "l":Lcom/sleepycat/je/rep/impl/networkRestore/FeederManager$Lease;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
