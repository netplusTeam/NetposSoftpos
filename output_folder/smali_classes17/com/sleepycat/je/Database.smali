.class public Lcom/sleepycat/je/Database;
.super Ljava/lang/Object;
.source "Database.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/Database$DbState;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final DEFAULT_CURSOR_CONFIG:Lcom/sleepycat/je/CursorConfig;

.field static final READ_COMMITTED_CURSOR_CONFIG:Lcom/sleepycat/je/CursorConfig;


# instance fields
.field configuration:Lcom/sleepycat/je/DatabaseConfig;

.field private volatile corruptedCause:Lcom/sleepycat/je/SecondaryIntegrityException;

.field private databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

.field envHandle:Lcom/sleepycat/je/Environment;

.field foreignKeySecondaries:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/sleepycat/je/SecondaryDatabase;",
            ">;"
        }
    .end annotation
.end field

.field private handleLocker:Lcom/sleepycat/je/txn/HandleLocker;

.field private isWritable:Z

.field final logger:Ljava/util/logging/Logger;

.field private name:Ljava/lang/String;

.field private final openCursors:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile preemptedCause:Lcom/sleepycat/je/OperationFailureException;

.field secAssoc:Lcom/sleepycat/je/SecondaryAssociation;

.field simpleAssocSecondaries:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/sleepycat/je/SecondaryDatabase;",
            ">;"
        }
    .end annotation
.end field

.field private volatile state:Lcom/sleepycat/je/Database$DbState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65
    nop

    .line 67
    sget-object v0, Lcom/sleepycat/je/CursorConfig;->DEFAULT:Lcom/sleepycat/je/CursorConfig;

    .line 68
    invoke-virtual {v0}, Lcom/sleepycat/je/CursorConfig;->clone()Lcom/sleepycat/je/CursorConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/CursorConfig;->setNonSticky(Z)Lcom/sleepycat/je/CursorConfig;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/Database;->DEFAULT_CURSOR_CONFIG:Lcom/sleepycat/je/CursorConfig;

    .line 70
    sget-object v0, Lcom/sleepycat/je/CursorConfig;->READ_COMMITTED:Lcom/sleepycat/je/CursorConfig;

    .line 71
    invoke-virtual {v0}, Lcom/sleepycat/je/CursorConfig;->clone()Lcom/sleepycat/je/CursorConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/CursorConfig;->setNonSticky(Z)Lcom/sleepycat/je/CursorConfig;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/Database;->READ_COMMITTED_CURSOR_CONFIG:Lcom/sleepycat/je/CursorConfig;

    .line 70
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/Environment;)V
    .locals 1
    .param p1, "env"    # Lcom/sleepycat/je/Environment;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/Database;->openCursors:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 157
    iput-object p1, p0, Lcom/sleepycat/je/Database;->envHandle:Lcom/sleepycat/je/Environment;

    .line 158
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/Database;->logger:Ljava/util/logging/Logger;

    .line 159
    return-void
.end method

.method private closeInternal(ZZLcom/sleepycat/je/Database$DbState;Lcom/sleepycat/je/OperationFailureException;)V
    .locals 3
    .param p1, "doSyncDw"    # Z
    .param p2, "deleteTempDb"    # Z
    .param p3, "newState"    # Lcom/sleepycat/je/Database$DbState;
    .param p4, "preemptedException"    # Lcom/sleepycat/je/OperationFailureException;

    .line 602
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 604
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :try_start_1
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getSecondaryAssociationLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    .line 605
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lockInterruptibly()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 608
    nop

    .line 610
    :try_start_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/Database;->closeInternalWork(ZZLcom/sleepycat/je/Database$DbState;Lcom/sleepycat/je/OperationFailureException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 613
    :try_start_3
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getSecondaryAssociationLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 614
    nop

    .line 616
    .end local v0    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {p0, p3, p4}, Lcom/sleepycat/je/Database;->minimalClose(Lcom/sleepycat/je/Database$DbState;Lcom/sleepycat/je/OperationFailureException;)V

    .line 617
    nop

    .line 618
    return-void

    .line 613
    .restart local v0    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :catchall_0
    move-exception v1

    :try_start_4
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getSecondaryAssociationLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .end local p1    # "doSyncDw":Z
    .end local p2    # "deleteTempDb":Z
    .end local p3    # "newState":Lcom/sleepycat/je/Database$DbState;
    .end local p4    # "preemptedException":Lcom/sleepycat/je/OperationFailureException;
    throw v1

    .line 606
    .restart local p1    # "doSyncDw":Z
    .restart local p2    # "deleteTempDb":Z
    .restart local p3    # "newState":Lcom/sleepycat/je/Database$DbState;
    .restart local p4    # "preemptedException":Lcom/sleepycat/je/OperationFailureException;
    :catch_0
    move-exception v1

    .line 607
    .local v1, "e":Ljava/lang/InterruptedException;
    new-instance v2, Lcom/sleepycat/je/ThreadInterruptedException;

    invoke-direct {v2, v0, v1}, Lcom/sleepycat/je/ThreadInterruptedException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Throwable;)V

    .end local p1    # "doSyncDw":Z
    .end local p2    # "deleteTempDb":Z
    .end local p3    # "newState":Lcom/sleepycat/je/Database$DbState;
    .end local p4    # "preemptedException":Lcom/sleepycat/je/OperationFailureException;
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 616
    .end local v0    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local p1    # "doSyncDw":Z
    .restart local p2    # "deleteTempDb":Z
    .restart local p3    # "newState":Lcom/sleepycat/je/Database$DbState;
    .restart local p4    # "preemptedException":Lcom/sleepycat/je/OperationFailureException;
    :catchall_1
    move-exception v0

    invoke-virtual {p0, p3, p4}, Lcom/sleepycat/je/Database;->minimalClose(Lcom/sleepycat/je/Database$DbState;Lcom/sleepycat/je/OperationFailureException;)V

    throw v0
.end method

.method private closeInternalWork(ZZLcom/sleepycat/je/Database$DbState;Lcom/sleepycat/je/OperationFailureException;)V
    .locals 7
    .param p1, "doSyncDw"    # Z
    .param p2, "deleteTempDb"    # Z
    .param p3, "newState"    # Lcom/sleepycat/je/Database$DbState;
    .param p4, "preemptedException"    # Lcom/sleepycat/je/OperationFailureException;

    .line 653
    sget-object v0, Lcom/sleepycat/je/Database$DbState;->OPEN:Lcom/sleepycat/je/Database$DbState;

    if-eq p3, v0, :cond_c

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 656
    .local v0, "handleRefErrors":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 659
    .local v1, "triggerException":Ljava/lang/RuntimeException;
    monitor-enter p0

    .line 675
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/Database;->state:Lcom/sleepycat/je/Database$DbState;

    sget-object v3, Lcom/sleepycat/je/Database$DbState;->CLOSED:Lcom/sleepycat/je/Database$DbState;

    if-eq v2, v3, :cond_b

    iget-object v2, p0, Lcom/sleepycat/je/Database;->state:Lcom/sleepycat/je/Database$DbState;

    sget-object v3, Lcom/sleepycat/je/Database$DbState;->INVALID:Lcom/sleepycat/je/Database$DbState;

    if-eq v2, v3, :cond_b

    iget-object v2, p0, Lcom/sleepycat/je/Database;->state:Lcom/sleepycat/je/Database$DbState;

    sget-object v3, Lcom/sleepycat/je/Database$DbState;->PREEMPTED:Lcom/sleepycat/je/Database$DbState;

    if-eq v2, v3, :cond_b

    iget-object v2, p0, Lcom/sleepycat/je/Database;->state:Lcom/sleepycat/je/Database$DbState;

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 685
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/Database;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 686
    .local v2, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    if-eqz v2, :cond_a

    .line 687
    iget-object v3, p0, Lcom/sleepycat/je/Database;->handleLocker:Lcom/sleepycat/je/txn/HandleLocker;

    if-eqz v3, :cond_9

    .line 694
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->checkEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v3

    .line 700
    .local v3, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    iput-object p3, p0, Lcom/sleepycat/je/Database;->state:Lcom/sleepycat/je/Database$DbState;

    .line 701
    iput-object p4, p0, Lcom/sleepycat/je/Database;->preemptedCause:Lcom/sleepycat/je/OperationFailureException;

    .line 707
    sget-object v4, Lcom/sleepycat/je/Database$DbState;->CLOSED:Lcom/sleepycat/je/Database$DbState;

    if-ne p3, v4, :cond_3

    .line 708
    iget-object v4, p0, Lcom/sleepycat/je/Database;->openCursors:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-eqz v4, :cond_1

    .line 709
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/Database;->openCursors:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 710
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " open cursors."

    .line 711
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    :cond_1
    iget-object v4, p0, Lcom/sleepycat/je/Database;->simpleAssocSecondaries:Ljava/util/Collection;

    if-eqz v4, :cond_2

    .line 714
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 715
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/Database;->simpleAssocSecondaries:Ljava/util/Collection;

    .line 716
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " associated SecondaryDatabases."

    .line 717
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    :cond_2
    iget-object v4, p0, Lcom/sleepycat/je/Database;->foreignKeySecondaries:Ljava/util/Collection;

    if-eqz v4, :cond_3

    .line 720
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 721
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/Database;->foreignKeySecondaries:Ljava/util/Collection;

    .line 722
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " associated foreign key SecondaryDatabases."

    .line 723
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    :cond_3
    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v5, "Database.close: "

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6, v6}, Lcom/sleepycat/je/Database;->trace(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/je/Transaction;Ljava/lang/Object;)V

    .line 730
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->removeReferringAssociations()V

    .line 732
    invoke-virtual {v2, p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->removeReferringHandle(Lcom/sleepycat/je/Database;)V

    .line 733
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 743
    sget-object v4, Lcom/sleepycat/je/Database$DbState;->PREEMPTED:Lcom/sleepycat/je/Database$DbState;

    if-ne p3, v4, :cond_4

    .line 744
    iget-object v4, p0, Lcom/sleepycat/je/Database;->handleLocker:Lcom/sleepycat/je/txn/HandleLocker;

    invoke-virtual {v4, p4}, Lcom/sleepycat/je/txn/HandleLocker;->setOnlyAbortable(Lcom/sleepycat/je/OperationFailureException;)V

    .line 752
    :cond_4
    sget-object v4, Lcom/sleepycat/je/Database$DbState;->CLOSED:Lcom/sleepycat/je/Database$DbState;

    if-ne p3, v4, :cond_6

    .line 753
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->isWritable()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->noteWriteHandleClose()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_5

    .line 755
    :try_start_1
    iget-object v4, p0, Lcom/sleepycat/je/Database;->handleLocker:Lcom/sleepycat/je/txn/HandleLocker;

    invoke-static {v4, v2}, Lcom/sleepycat/je/dbi/TriggerManager;->runCloseTriggers(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 758
    goto :goto_0

    .line 756
    :catch_0
    move-exception v4

    .line 757
    .local v4, "e":Ljava/lang/RuntimeException;
    move-object v1, v4

    .line 760
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :cond_5
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/sleepycat/je/Database;->handleLocker:Lcom/sleepycat/je/txn/HandleLocker;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/txn/HandleLocker;->operationEnd(Z)V

    goto :goto_1

    .line 762
    :cond_6
    iget-object v4, p0, Lcom/sleepycat/je/Database;->handleLocker:Lcom/sleepycat/je/txn/HandleLocker;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/txn/HandleLocker;->operationEnd(Z)V

    .line 764
    .end local v3    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 775
    invoke-virtual {v2, p1, p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->handleClosed(ZZ)V

    .line 778
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-gtz v3, :cond_8

    .line 783
    if-nez v1, :cond_7

    .line 786
    return-void

    .line 784
    :cond_7
    throw v1

    .line 779
    :cond_8
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Database closed while still referenced by other handles."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 781
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 687
    :cond_9
    :try_start_3
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "handleRefErrors":Ljava/lang/StringBuilder;
    .end local v1    # "triggerException":Ljava/lang/RuntimeException;
    .end local p1    # "doSyncDw":Z
    .end local p2    # "deleteTempDb":Z
    .end local p3    # "newState":Lcom/sleepycat/je/Database$DbState;
    .end local p4    # "preemptedException":Lcom/sleepycat/je/OperationFailureException;
    throw v3

    .line 686
    .restart local v0    # "handleRefErrors":Ljava/lang/StringBuilder;
    .restart local v1    # "triggerException":Ljava/lang/RuntimeException;
    .restart local p1    # "doSyncDw":Z
    .restart local p2    # "deleteTempDb":Z
    .restart local p3    # "newState":Lcom/sleepycat/je/Database$DbState;
    .restart local p4    # "preemptedException":Lcom/sleepycat/je/OperationFailureException;
    :cond_a
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "handleRefErrors":Ljava/lang/StringBuilder;
    .end local v1    # "triggerException":Ljava/lang/RuntimeException;
    .end local p1    # "doSyncDw":Z
    .end local p2    # "deleteTempDb":Z
    .end local p3    # "newState":Lcom/sleepycat/je/Database$DbState;
    .end local p4    # "preemptedException":Lcom/sleepycat/je/OperationFailureException;
    throw v3

    .line 677
    .end local v2    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v0    # "handleRefErrors":Ljava/lang/StringBuilder;
    .restart local v1    # "triggerException":Ljava/lang/RuntimeException;
    .restart local p1    # "doSyncDw":Z
    .restart local p2    # "deleteTempDb":Z
    .restart local p3    # "newState":Lcom/sleepycat/je/Database$DbState;
    .restart local p4    # "preemptedException":Lcom/sleepycat/je/OperationFailureException;
    :cond_b
    :goto_2
    monitor-exit p0

    return-void

    .line 764
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 653
    .end local v0    # "handleRefErrors":Ljava/lang/StringBuilder;
    .end local v1    # "triggerException":Ljava/lang/RuntimeException;
    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private closeNoSync()V
    .locals 4

    .line 522
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/sleepycat/je/Database$DbState;->CLOSED:Lcom/sleepycat/je/Database$DbState;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sleepycat/je/Database;->closeInternal(ZZLcom/sleepycat/je/Database$DbState;Lcom/sleepycat/je/OperationFailureException;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    nop

    .line 528
    return-void

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, "E":Ljava/lang/Error;
    iget-object v1, p0, Lcom/sleepycat/je/Database;->envHandle:Lcom/sleepycat/je/Environment;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/Environment;->invalidate(Ljava/lang/Error;)V

    .line 526
    throw v0
.end method

.method private doCompareKeys(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Z)I
    .locals 4
    .param p1, "entry1"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "entry2"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "duplicates"    # Z

    .line 2299
    const-string v0, "entry2"

    const-string v1, "entry1"

    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->checkEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 2300
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->checkOpen()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v2

    .line 2301
    .local v2, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    const/4 v3, 0x1

    invoke-static {p1, v1, v3}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForNullDbt(Lcom/sleepycat/je/DatabaseEntry;Ljava/lang/String;Z)V

    .line 2302
    invoke-static {p2, v0, v3}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForNullDbt(Lcom/sleepycat/je/DatabaseEntry;Ljava/lang/String;Z)V

    .line 2303
    invoke-static {p1, v1}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForPartial(Lcom/sleepycat/je/DatabaseEntry;Ljava/lang/String;)V

    .line 2304
    invoke-static {p2, v0}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForPartial(Lcom/sleepycat/je/DatabaseEntry;Ljava/lang/String;)V

    .line 2306
    invoke-virtual {v2, p1, p2, p3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->compareEntries(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Z)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2308
    .end local v2    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :catch_0
    move-exception v0

    .line 2309
    .local v0, "E":Ljava/lang/Error;
    iget-object v1, p0, Lcom/sleepycat/je/Database;->envHandle:Lcom/sleepycat/je/Environment;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/Environment;->invalidate(Ljava/lang/Error;)V

    .line 2310
    throw v0
.end method

.method private init(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/DatabaseConfig;Ljava/lang/String;)V
    .locals 1
    .param p1, "env"    # Lcom/sleepycat/je/Environment;
    .param p2, "config"    # Lcom/sleepycat/je/DatabaseConfig;
    .param p3, "databaseName"    # Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/sleepycat/je/Database;->handleLocker:Lcom/sleepycat/je/txn/HandleLocker;

    if-eqz v0, :cond_0

    .line 205
    iput-object p1, p0, Lcom/sleepycat/je/Database;->envHandle:Lcom/sleepycat/je/Environment;

    .line 206
    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseConfig;->clone()Lcom/sleepycat/je/DatabaseConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/Database;->configuration:Lcom/sleepycat/je/DatabaseConfig;

    .line 207
    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseConfig;->getReadOnly()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/Database;->isWritable:Z

    .line 208
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->makeSecondaryAssociation()Lcom/sleepycat/je/SecondaryAssociation;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/Database;->secAssoc:Lcom/sleepycat/je/SecondaryAssociation;

    .line 209
    sget-object v0, Lcom/sleepycat/je/Database$DbState;->OPEN:Lcom/sleepycat/je/Database$DbState;

    iput-object v0, p0, Lcom/sleepycat/je/Database;->state:Lcom/sleepycat/je/Database$DbState;

    .line 210
    iput-object p3, p0, Lcom/sleepycat/je/Database;->name:Ljava/lang/String;

    .line 211
    return-void

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private mutateDeferredWriteBINDeltas(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 6
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 408
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getOffHeapCache()Lcom/sleepycat/je/evictor/OffHeapCache;

    move-result-object v0

    .line 410
    .local v0, "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getInMemoryINs()Lcom/sleepycat/je/dbi/INList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/INList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/tree/IN;

    .line 411
    .local v2, "in":Lcom/sleepycat/je/tree/IN;
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v3

    if-eq v3, p1, :cond_0

    .line 412
    goto :goto_0

    .line 414
    :cond_0
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->latchNoUpdateLRU()V

    .line 416
    :try_start_0
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 417
    invoke-virtual {v2, v4}, Lcom/sleepycat/je/tree/IN;->mutateToFullBIN(Z)V

    goto :goto_3

    .line 420
    :cond_1
    if-eqz v0, :cond_6

    .line 421
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->getNormalizedLevel()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    goto :goto_3

    .line 424
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->getNEntries()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 425
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/tree/IN;->getOffHeapBINId(I)I

    move-result v5

    if-gez v5, :cond_3

    .line 426
    goto :goto_2

    .line 428
    :cond_3
    sget-object v5, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v2, v3, v5}, Lcom/sleepycat/je/tree/IN;->loadIN(ILcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/tree/IN;

    move-result-object v5

    .line 429
    .local v5, "child":Lcom/sleepycat/je/tree/IN;
    if-nez v5, :cond_4

    .line 430
    goto :goto_2

    .line 432
    :cond_4
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/IN;->latchNoUpdateLRU()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 434
    :try_start_1
    invoke-virtual {v5, v4}, Lcom/sleepycat/je/tree/IN;->mutateToFullBIN(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 436
    :try_start_2
    invoke-virtual {v5}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 437
    nop

    .line 424
    .end local v5    # "child":Lcom/sleepycat/je/tree/IN;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 436
    .restart local v5    # "child":Lcom/sleepycat/je/tree/IN;
    :catchall_0
    move-exception v1

    invoke-virtual {v5}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .end local v0    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .end local v2    # "in":Lcom/sleepycat/je/tree/IN;
    .end local p1    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 440
    .end local v3    # "i":I
    .end local v5    # "child":Lcom/sleepycat/je/tree/IN;
    .restart local v0    # "ohCache":Lcom/sleepycat/je/evictor/OffHeapCache;
    .restart local v2    # "in":Lcom/sleepycat/je/tree/IN;
    .restart local p1    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :cond_5
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 441
    nop

    .line 442
    .end local v2    # "in":Lcom/sleepycat/je/tree/IN;
    goto :goto_0

    .line 440
    .restart local v2    # "in":Lcom/sleepycat/je/tree/IN;
    :cond_6
    :goto_3
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    goto :goto_0

    :catchall_1
    move-exception v1

    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    throw v1

    .line 443
    .end local v2    # "in":Lcom/sleepycat/je/tree/IN;
    :cond_7
    return-void
.end method

.method private validateConfigAgainstExistingDb(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 7
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "databaseName"    # Ljava/lang/String;
    .param p3, "config"    # Lcom/sleepycat/je/DatabaseConfig;
    .param p4, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 269
    invoke-virtual {p3}, Lcom/sleepycat/je/DatabaseConfig;->getUseExistingConfig()Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    nop

    .line 271
    invoke-virtual {p4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v0

    .line 272
    invoke-virtual {p3}, Lcom/sleepycat/je/DatabaseConfig;->getSortedDuplicates()Z

    move-result v1

    .line 270
    const-string v2, "sortedDuplicates"

    invoke-direct {p0, v2, v0, v1}, Lcom/sleepycat/je/Database;->validatePropertyMatches(Ljava/lang/String;ZZ)V

    .line 273
    nop

    .line 274
    invoke-virtual {p4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isTemporary()Z

    move-result v0

    .line 275
    invoke-virtual {p3}, Lcom/sleepycat/je/DatabaseConfig;->getTemporary()Z

    move-result v1

    .line 273
    const-string v2, "temporary"

    invoke-direct {p0, v2, v0, v1}, Lcom/sleepycat/je/Database;->validatePropertyMatches(Ljava/lang/String;ZZ)V

    .line 277
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReplicated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    nop

    .line 279
    invoke-virtual {p4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isReplicated()Z

    move-result v0

    .line 280
    invoke-virtual {p3}, Lcom/sleepycat/je/DatabaseConfig;->getReplicated()Z

    move-result v1

    .line 278
    const-string v2, "replicated"

    invoke-direct {p0, v2, v0, v1}, Lcom/sleepycat/je/Database;->validatePropertyMatches(Ljava/lang/String;ZZ)V

    .line 290
    :cond_0
    invoke-virtual {p4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->hasOpenHandles()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    invoke-virtual {p3}, Lcom/sleepycat/je/DatabaseConfig;->getUseExistingConfig()Z

    move-result v0

    if-nez v0, :cond_2

    .line 292
    nop

    .line 293
    invoke-virtual {p4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isTransactional()Z

    move-result v0

    .line 294
    invoke-virtual {p3}, Lcom/sleepycat/je/DatabaseConfig;->getTransactional()Z

    move-result v1

    .line 292
    const-string v2, "transactional"

    invoke-direct {p0, v2, v0, v1}, Lcom/sleepycat/je/Database;->validatePropertyMatches(Ljava/lang/String;ZZ)V

    .line 295
    nop

    .line 296
    invoke-virtual {p4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDurableDeferredWrite()Z

    move-result v0

    .line 297
    invoke-virtual {p3}, Lcom/sleepycat/je/DatabaseConfig;->getDeferredWrite()Z

    move-result v1

    .line 295
    const-string v2, "deferredWrite"

    invoke-direct {p0, v2, v0, v1}, Lcom/sleepycat/je/Database;->validatePropertyMatches(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 300
    :cond_1
    invoke-virtual {p3}, Lcom/sleepycat/je/DatabaseConfig;->getTransactional()Z

    move-result v0

    invoke-virtual {p4, v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setTransactional(Z)V

    .line 301
    invoke-virtual {p3}, Lcom/sleepycat/je/DatabaseConfig;->getDeferredWrite()Z

    move-result v0

    invoke-virtual {p4, v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setDeferredWrite(Z)V

    .line 302
    invoke-virtual {p3}, Lcom/sleepycat/je/DatabaseConfig;->getDeferredWrite()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    invoke-direct {p0, p4}, Lcom/sleepycat/je/Database;->mutateDeferredWriteBINDeltas(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 311
    :cond_2
    :goto_0
    invoke-virtual {p3}, Lcom/sleepycat/je/DatabaseConfig;->getUseExistingConfig()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 312
    return-void

    .line 316
    :cond_3
    const/4 v0, 0x0

    .line 319
    .local v0, "dbImplModified":Z
    invoke-virtual {p3}, Lcom/sleepycat/je/DatabaseConfig;->getOverrideBtreeComparator()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 320
    nop

    .line 321
    invoke-virtual {p3}, Lcom/sleepycat/je/DatabaseConfig;->getBtreeComparator()Ljava/util/Comparator;

    move-result-object v1

    .line 322
    invoke-virtual {p3}, Lcom/sleepycat/je/DatabaseConfig;->getBtreeComparatorByClassName()Z

    move-result v2

    .line 320
    invoke-virtual {p4, v1, v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setBtreeComparator(Ljava/util/Comparator;Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 325
    :cond_4
    invoke-virtual {p3}, Lcom/sleepycat/je/DatabaseConfig;->getOverrideDuplicateComparator()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 326
    nop

    .line 327
    invoke-virtual {p3}, Lcom/sleepycat/je/DatabaseConfig;->getDuplicateComparator()Ljava/util/Comparator;

    move-result-object v1

    .line 328
    invoke-virtual {p3}, Lcom/sleepycat/je/DatabaseConfig;->getDuplicateComparatorByClassName()Z

    move-result v2

    .line 326
    invoke-virtual {p4, v1, v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setDuplicateComparator(Ljava/util/Comparator;Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 331
    :cond_5
    nop

    .line 333
    invoke-virtual {p3}, Lcom/sleepycat/je/DatabaseConfig;->getTriggers()Ljava/util/List;

    move-result-object v1

    .line 334
    invoke-virtual {p3}, Lcom/sleepycat/je/DatabaseConfig;->getOverrideTriggers()Z

    move-result v2

    .line 331
    invoke-virtual {p4, p1, p2, v1, v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setTriggers(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Ljava/util/List;Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 337
    invoke-virtual {p3}, Lcom/sleepycat/je/DatabaseConfig;->getKeyPrefixing()Z

    move-result v1

    .line 338
    .local v1, "newKeyPrefixing":Z
    invoke-virtual {p4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getKeyPrefixing()Z

    move-result v2

    if-eq v1, v2, :cond_7

    .line 339
    const/4 v0, 0x1

    .line 340
    if-eqz v1, :cond_6

    .line 341
    invoke-virtual {p4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setKeyPrefixing()V

    goto :goto_1

    .line 343
    :cond_6
    invoke-virtual {p4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->clearKeyPrefixing()V

    .line 350
    :cond_7
    :goto_1
    invoke-virtual {p3}, Lcom/sleepycat/je/DatabaseConfig;->getNodeMaxEntries()I

    move-result v2

    .line 351
    .local v2, "newNodeMaxEntries":I
    if-eqz v2, :cond_8

    .line 352
    invoke-virtual {p4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getNodeMaxTreeEntries()I

    move-result v3

    if-eq v2, v3, :cond_8

    .line 353
    const/4 v0, 0x1

    .line 354
    invoke-virtual {p4, v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setNodeMaxTreeEntries(I)V

    .line 358
    :cond_8
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v3

    .line 359
    .local v3, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    if-eqz v0, :cond_9

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly()Z

    move-result v4

    if-nez v4, :cond_9

    .line 363
    :try_start_0
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v4

    invoke-virtual {p4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v5, v6}, Lcom/sleepycat/je/dbi/DbTree;->updateNameLN(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/log/DbOpReplicationContext;)V
    :try_end_0
    .catch Lcom/sleepycat/je/LockConflictException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    nop

    .line 373
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v4

    invoke-virtual {v4, p4}, Lcom/sleepycat/je/dbi/DbTree;->modifyDbRoot(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    goto :goto_2

    .line 365
    :catch_0
    move-exception v4

    .line 366
    .local v4, "e":Lcom/sleepycat/je/LockConflictException;
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "DatabaseConfig properties may not be updated when the database is already open; first close other open handles for this database."

    invoke-direct {v5, v6, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 377
    .end local v4    # "e":Lcom/sleepycat/je/LockConflictException;
    :cond_9
    :goto_2
    invoke-virtual {p3}, Lcom/sleepycat/je/DatabaseConfig;->getCacheMode()Lcom/sleepycat/je/CacheMode;

    move-result-object v4

    invoke-virtual {p4, v4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setCacheMode(Lcom/sleepycat/je/CacheMode;)V

    .line 378
    return-void
.end method

.method private validatePropertyMatches(Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "propName"    # Ljava/lang/String;
    .param p2, "existingValue"    # Z
    .param p3, "newValue"    # Z

    .line 452
    if-ne p3, p2, :cond_0

    .line 459
    return-void

    .line 453
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You can\'t open a Database with a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " configuration of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " if the underlying database was created with a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " setting of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method addCursor(Lcom/sleepycat/je/ForwardCursor;)V
    .locals 1
    .param p1, "ignore"    # Lcom/sleepycat/je/ForwardCursor;

    .line 2384
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->checkOpen()Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 2385
    iget-object v0, p0, Lcom/sleepycat/je/Database;->openCursors:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 2386
    return-void
.end method

.method checkEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .locals 1

    .line 2413
    iget-object v0, p0, Lcom/sleepycat/je/Database;->envHandle:Lcom/sleepycat/je/Environment;

    invoke-virtual {v0}, Lcom/sleepycat/je/Environment;->checkOpen()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    return-object v0
.end method

.method checkLockModeWithoutTxn(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/LockMode;)V
    .locals 3
    .param p1, "userTxn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 2418
    if-nez p1, :cond_1

    sget-object v0, Lcom/sleepycat/je/LockMode;->RMW:Lcom/sleepycat/je/LockMode;

    invoke-virtual {v0, p2}, Lcom/sleepycat/je/LockMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2419
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is meaningless and can not be specified when a null (autocommit) transaction is used. There will never be a follow on operation which will promote the lock to WRITE."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2425
    :cond_1
    :goto_0
    return-void
.end method

.method checkOpen()Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 2

    .line 2389
    sget-object v0, Lcom/sleepycat/je/Database$2;->$SwitchMap$com$sleepycat$je$Database$DbState:[I

    iget-object v1, p0, Lcom/sleepycat/je/Database;->state:Lcom/sleepycat/je/Database$DbState;

    invoke-virtual {v1}, Lcom/sleepycat/je/Database$DbState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2402
    goto :goto_0

    .line 2400
    :pswitch_0
    iget-object v0, p0, Lcom/sleepycat/je/Database;->corruptedCause:Lcom/sleepycat/je/SecondaryIntegrityException;

    iget-object v1, p0, Lcom/sleepycat/je/Database;->corruptedCause:Lcom/sleepycat/je/SecondaryIntegrityException;

    invoke-virtual {v1}, Lcom/sleepycat/je/SecondaryIntegrityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/SecondaryIntegrityException;->wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/OperationFailureException;

    move-result-object v0

    throw v0

    .line 2398
    :pswitch_1
    iget-object v0, p0, Lcom/sleepycat/je/Database;->preemptedCause:Lcom/sleepycat/je/OperationFailureException;

    iget-object v1, p0, Lcom/sleepycat/je/Database;->preemptedCause:Lcom/sleepycat/je/OperationFailureException;

    invoke-virtual {v1}, Lcom/sleepycat/je/OperationFailureException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/OperationFailureException;->wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/OperationFailureException;

    move-result-object v0

    throw v0

    .line 2395
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The Transaction used to open the Database was aborted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2393
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Database was closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2391
    :pswitch_4
    iget-object v0, p0, Lcom/sleepycat/je/Database;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    return-object v0

    .line 2402
    :goto_0
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lcom/sleepycat/je/Database;->state:Lcom/sleepycat/je/Database$DbState;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public close()V
    .locals 3

    .line 506
    :try_start_0
    sget-object v0, Lcom/sleepycat/je/Database$DbState;->CLOSED:Lcom/sleepycat/je/Database$DbState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/sleepycat/je/Database;->closeInternal(ZZLcom/sleepycat/je/Database$DbState;Lcom/sleepycat/je/OperationFailureException;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    nop

    .line 512
    return-void

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, "E":Ljava/lang/Error;
    iget-object v1, p0, Lcom/sleepycat/je/Database;->envHandle:Lcom/sleepycat/je/Environment;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/Environment;->invalidate(Ljava/lang/Error;)V

    .line 510
    throw v0
.end method

.method public compareDuplicates(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)I
    .locals 1
    .param p1, "entry1"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "entry2"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 2292
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/je/Database;->doCompareKeys(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Z)I

    move-result v0

    return v0
.end method

.method public compareKeys(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)I
    .locals 1
    .param p1, "entry1"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "entry2"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 2273
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/je/Database;->doCompareKeys(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Z)I

    move-result v0

    return v0
.end method

.method public count()J
    .locals 3

    .line 2039
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->checkEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 2040
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->checkOpen()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    .line 2042
    .local v0, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->count(J)J

    move-result-wide v1

    return-wide v1
.end method

.method public count(J)J
    .locals 3
    .param p1, "memoryLimit"    # J

    .line 2081
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->checkEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 2082
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->checkOpen()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    .line 2084
    .local v0, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->count(J)J

    move-result-wide v1

    return-wide v1
.end method

.method public delete(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;
    .locals 8
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "options"    # Lcom/sleepycat/je/WriteOptions;

    .line 1168
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->checkEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1169
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->checkOpen()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    .line 1171
    .local v0, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v3, "Database.delete"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v7}, Lcom/sleepycat/je/Database;->trace(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)V

    .line 1173
    if-eqz p3, :cond_0

    .line 1174
    invoke-virtual {p3}, Lcom/sleepycat/je/WriteOptions;->getCacheMode()Lcom/sleepycat/je/CacheMode;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1176
    .local v1, "cacheMode":Lcom/sleepycat/je/CacheMode;
    :goto_0
    const/4 v2, 0x0

    .line 1178
    .local v2, "result":Lcom/sleepycat/je/OperationResult;
    iget-object v3, p0, Lcom/sleepycat/je/Database;->envHandle:Lcom/sleepycat/je/Environment;

    .line 1180
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isInternalDb()Z

    move-result v4

    .line 1181
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->isTransactional()Z

    move-result v5

    .line 1182
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isReplicated()Z

    move-result v6

    .line 1178
    invoke-static {v3, p1, v4, v5, v6}, Lcom/sleepycat/je/txn/LockerFactory;->getWritableLocker(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Transaction;ZZZ)Lcom/sleepycat/je/txn/Locker;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 1185
    .local v3, "locker":Lcom/sleepycat/je/txn/Locker;
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {p0, v3, p2, v1}, Lcom/sleepycat/je/Database;->deleteInternal(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v6

    .line 1187
    if-eqz v3, :cond_2

    .line 1188
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    :try_start_2
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    .line 1192
    :cond_2
    return-object v2

    .line 1187
    :catchall_0
    move-exception v6

    if-eqz v3, :cond_4

    .line 1188
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v4, v5

    :goto_2
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    :cond_4
    nop

    .end local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "options":Lcom/sleepycat/je/WriteOptions;
    throw v6
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    .line 1193
    .end local v0    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v1    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .end local v2    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v3    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local p2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "options":Lcom/sleepycat/je/WriteOptions;
    :catch_0
    move-exception v0

    .line 1194
    .local v0, "E":Ljava/lang/Error;
    iget-object v1, p0, Lcom/sleepycat/je/Database;->envHandle:Lcom/sleepycat/je/Environment;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/Environment;->invalidate(Ljava/lang/Error;)V

    .line 1195
    throw v0
.end method

.method public delete(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;
    .locals 2
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 1291
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sleepycat/je/Database;->delete(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1292
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method deleteInternal(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;
    .locals 16
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 1208
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v11, v0

    .line 1209
    .local v11, "noData":Lcom/sleepycat/je/DatabaseEntry;
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {v11, v0, v0, v1}, Lcom/sleepycat/je/DatabaseEntry;->setPartial(IIZ)V

    .line 1211
    new-instance v0, Lcom/sleepycat/je/Cursor;

    const/4 v2, 0x0

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    invoke-direct {v0, v12, v13, v2}, Lcom/sleepycat/je/Cursor;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;)V

    move-object v14, v0

    .line 1212
    .local v14, "cursor":Lcom/sleepycat/je/Cursor;
    :try_start_0
    invoke-virtual {v14, v1}, Lcom/sleepycat/je/Cursor;->setNonSticky(Z)V

    .line 1215
    invoke-virtual {v14}, Lcom/sleepycat/je/Cursor;->excludeFromOpStats()V

    .line 1217
    sget-object v0, Lcom/sleepycat/je/LockMode;->RMW:Lcom/sleepycat/je/LockMode;

    .line 1218
    invoke-virtual {v14, v0}, Lcom/sleepycat/je/Cursor;->isSerializableIsolation(Lcom/sleepycat/je/LockMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sleepycat/je/LockMode;->RMW:Lcom/sleepycat/je/LockMode;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sleepycat/je/LockMode;->READ_UNCOMMITTED_ALL:Lcom/sleepycat/je/LockMode;

    :goto_0
    move-object v4, v0

    .line 1221
    .local v4, "lockMode":Lcom/sleepycat/je/LockMode;
    sget-object v6, Lcom/sleepycat/je/dbi/SearchMode;->SET:Lcom/sleepycat/je/dbi/SearchMode;

    const/4 v7, 0x0

    move-object v1, v14

    move-object/from16 v2, p2

    move-object v3, v11

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/sleepycat/je/Cursor;->search(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/SearchMode;Z)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1224
    .local v0, "searchResult":Lcom/sleepycat/je/OperationResult;
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/Database;->getDbImpl()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v1

    .line 1225
    .local v1, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    const/4 v2, 0x0

    .line 1227
    .local v2, "anyResult":Lcom/sleepycat/je/OperationResult;
    :goto_1
    if-eqz v0, :cond_3

    .line 1229
    nop

    .line 1230
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getRepContext()Lcom/sleepycat/je/log/ReplicationContext;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1229
    move-object/from16 v15, p3

    :try_start_1
    invoke-virtual {v14, v3, v15}, Lcom/sleepycat/je/Cursor;->deleteInternal(Lcom/sleepycat/je/log/ReplicationContext;Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v3

    .line 1232
    .local v3, "deleteResult":Lcom/sleepycat/je/OperationResult;
    if-eqz v3, :cond_1

    .line 1233
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incDeleteOps(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 1234
    move-object v2, v3

    .line 1237
    :cond_1
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1238
    goto :goto_2

    .line 1241
    :cond_2
    sget-object v10, Lcom/sleepycat/je/dbi/GetMode;->NEXT_DUP:Lcom/sleepycat/je/dbi/GetMode;

    move-object v5, v14

    move-object/from16 v6, p2

    move-object v7, v11

    move-object v8, v4

    move-object/from16 v9, p3

    invoke-virtual/range {v5 .. v10}, Lcom/sleepycat/je/Cursor;->retrieveNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;Lcom/sleepycat/je/CacheMode;Lcom/sleepycat/je/dbi/GetMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v5

    move-object v0, v5

    .line 1243
    .end local v3    # "deleteResult":Lcom/sleepycat/je/OperationResult;
    goto :goto_1

    .line 1227
    :cond_3
    move-object/from16 v15, p3

    .line 1245
    :goto_2
    if-nez v2, :cond_4

    .line 1246
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->incDeleteFailOps(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 1211
    .end local v0    # "searchResult":Lcom/sleepycat/je/OperationResult;
    .end local v1    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v2    # "anyResult":Lcom/sleepycat/je/OperationResult;
    .end local v4    # "lockMode":Lcom/sleepycat/je/LockMode;
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 1249
    .restart local v0    # "searchResult":Lcom/sleepycat/je/OperationResult;
    .restart local v1    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v2    # "anyResult":Lcom/sleepycat/je/OperationResult;
    .restart local v4    # "lockMode":Lcom/sleepycat/je/LockMode;
    :cond_4
    :goto_3
    nop

    .line 1250
    invoke-virtual {v14}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1249
    return-object v2

    .line 1211
    .end local v0    # "searchResult":Lcom/sleepycat/je/OperationResult;
    .end local v1    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v2    # "anyResult":Lcom/sleepycat/je/OperationResult;
    .end local v4    # "lockMode":Lcom/sleepycat/je/LockMode;
    :catchall_1
    move-exception v0

    move-object/from16 v15, p3

    :goto_4
    move-object v1, v0

    .end local v11    # "noData":Lcom/sleepycat/je/DatabaseEntry;
    .end local v14    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local p1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1250
    .restart local v11    # "noData":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v14    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local p1    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_3
    invoke-virtual {v14}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v2
.end method

.method public get(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;
    .locals 16
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "getType"    # Lcom/sleepycat/je/Get;
    .param p5, "options"    # Lcom/sleepycat/je/ReadOptions;

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 1370
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/Database;->checkEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1371
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/Database;->checkOpen()Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1373
    if-nez p5, :cond_0

    .line 1374
    sget-object v0, Lcom/sleepycat/je/Cursor;->DEFAULT_READ_OPTIONS:Lcom/sleepycat/je/ReadOptions;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-object v11, v0

    .end local p5    # "options":Lcom/sleepycat/je/ReadOptions;
    .local v0, "options":Lcom/sleepycat/je/ReadOptions;
    goto :goto_0

    .line 1373
    .end local v0    # "options":Lcom/sleepycat/je/ReadOptions;
    .restart local p5    # "options":Lcom/sleepycat/je/ReadOptions;
    :cond_0
    move-object/from16 v11, p5

    .line 1377
    .end local p5    # "options":Lcom/sleepycat/je/ReadOptions;
    .local v11, "options":Lcom/sleepycat/je/ReadOptions;
    :goto_0
    :try_start_1
    invoke-virtual {v11}, Lcom/sleepycat/je/ReadOptions;->getLockMode()Lcom/sleepycat/je/LockMode;

    move-result-object v0

    .line 1379
    .local v0, "lockMode":Lcom/sleepycat/je/LockMode;
    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v3, "Database.get"

    .line 1380
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    .line 1379
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object v8, v0

    invoke-virtual/range {v1 .. v8}, Lcom/sleepycat/je/Database;->trace(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)V

    .line 1383
    invoke-virtual {v9, v10, v0}, Lcom/sleepycat/je/Database;->checkLockModeWithoutTxn(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/LockMode;)V

    .line 1387
    sget-object v1, Lcom/sleepycat/je/LockMode;->READ_COMMITTED:Lcom/sleepycat/je/LockMode;

    if-ne v0, v1, :cond_1

    .line 1388
    sget-object v1, Lcom/sleepycat/je/Database;->READ_COMMITTED_CURSOR_CONFIG:Lcom/sleepycat/je/CursorConfig;

    .line 1389
    .local v1, "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    const/4 v0, 0x0

    move-object v7, v0

    move-object v8, v1

    goto :goto_1

    .line 1391
    .end local v1    # "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    :cond_1
    sget-object v1, Lcom/sleepycat/je/Database;->DEFAULT_CURSOR_CONFIG:Lcom/sleepycat/je/CursorConfig;

    move-object v7, v0

    move-object v8, v1

    .line 1394
    .end local v0    # "lockMode":Lcom/sleepycat/je/LockMode;
    .local v7, "lockMode":Lcom/sleepycat/je/LockMode;
    .local v8, "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    :goto_1
    const/4 v12, 0x0

    .line 1396
    .local v12, "result":Lcom/sleepycat/je/OperationResult;
    nop

    .line 1397
    invoke-virtual {v8}, Lcom/sleepycat/je/CursorConfig;->getReadCommitted()Z

    move-result v0

    .line 1396
    invoke-static {v9, v10, v0}, Lcom/sleepycat/je/txn/LockerFactory;->getReadableLocker(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/Transaction;Z)Lcom/sleepycat/je/txn/Locker;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    move-object v13, v0

    .line 1400
    .local v13, "locker":Lcom/sleepycat/je/txn/Locker;
    const/4 v14, 0x1

    const/4 v15, 0x0

    :try_start_2
    new-instance v1, Lcom/sleepycat/je/Cursor;

    invoke-direct {v1, v9, v13, v8}, Lcom/sleepycat/je/Cursor;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1403
    .local v1, "cursor":Lcom/sleepycat/je/Cursor;
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v11

    move-object v6, v7

    :try_start_3
    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/je/Cursor;->getInternal(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v12, v0

    .line 1405
    :try_start_4
    invoke-virtual {v1}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1407
    .end local v1    # "cursor":Lcom/sleepycat/je/Cursor;
    if-eqz v12, :cond_2

    goto :goto_2

    :cond_2
    move v14, v15

    :goto_2
    :try_start_5
    invoke-virtual {v13, v14}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V
    :try_end_5
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_0

    .line 1408
    nop

    .line 1410
    return-object v12

    .line 1400
    .restart local v1    # "cursor":Lcom/sleepycat/je/Cursor;
    :catchall_0
    move-exception v0

    move-object v2, v0

    .end local v1    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v7    # "lockMode":Lcom/sleepycat/je/LockMode;
    .end local v8    # "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    .end local v11    # "options":Lcom/sleepycat/je/ReadOptions;
    .end local v12    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v13    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local p4    # "getType":Lcom/sleepycat/je/Get;
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1405
    .restart local v1    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v7    # "lockMode":Lcom/sleepycat/je/LockMode;
    .restart local v8    # "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    .restart local v11    # "options":Lcom/sleepycat/je/ReadOptions;
    .restart local v12    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v13    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local p2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p4    # "getType":Lcom/sleepycat/je/Get;
    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_7
    invoke-virtual {v1}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v4, v0

    :try_start_8
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v7    # "lockMode":Lcom/sleepycat/je/LockMode;
    .end local v8    # "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    .end local v11    # "options":Lcom/sleepycat/je/ReadOptions;
    .end local v12    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v13    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local p4    # "getType":Lcom/sleepycat/je/Get;
    :goto_3
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1407
    .end local v1    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v7    # "lockMode":Lcom/sleepycat/je/LockMode;
    .restart local v8    # "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    .restart local v11    # "options":Lcom/sleepycat/je/ReadOptions;
    .restart local v12    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v13    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local p2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p4    # "getType":Lcom/sleepycat/je/Get;
    :catchall_3
    move-exception v0

    if-eqz v12, :cond_3

    goto :goto_4

    :cond_3
    move v14, v15

    :goto_4
    :try_start_9
    invoke-virtual {v13, v14}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    .end local v11    # "options":Lcom/sleepycat/je/ReadOptions;
    .end local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local p4    # "getType":Lcom/sleepycat/je/Get;
    throw v0
    :try_end_9
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_0

    .line 1412
    .end local v7    # "lockMode":Lcom/sleepycat/je/LockMode;
    .end local v8    # "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    .end local v12    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v13    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v11    # "options":Lcom/sleepycat/je/ReadOptions;
    .restart local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local p2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p4    # "getType":Lcom/sleepycat/je/Get;
    :catch_0
    move-exception v0

    goto :goto_5

    .end local v11    # "options":Lcom/sleepycat/je/ReadOptions;
    .restart local p5    # "options":Lcom/sleepycat/je/ReadOptions;
    :catch_1
    move-exception v0

    move-object/from16 v11, p5

    .line 1413
    .end local p5    # "options":Lcom/sleepycat/je/ReadOptions;
    .local v0, "E":Ljava/lang/Error;
    .restart local v11    # "options":Lcom/sleepycat/je/ReadOptions;
    :goto_5
    iget-object v1, v9, Lcom/sleepycat/je/Database;->envHandle:Lcom/sleepycat/je/Environment;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/Environment;->invalidate(Ljava/lang/Error;)V

    .line 1414
    throw v0
.end method

.method public get(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 6
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 1462
    sget-object v4, Lcom/sleepycat/je/Get;->SEARCH:Lcom/sleepycat/je/Get;

    .line 1463
    invoke-static {p4}, Lcom/sleepycat/je/DbInternal;->getReadOptions(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v5

    .line 1462
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/Database;->get(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1465
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method public getConfig()Lcom/sleepycat/je/DatabaseConfig;
    .locals 3

    .line 2206
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->checkEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 2207
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->checkOpen()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    .line 2210
    .local v0, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/Database;->configuration:Lcom/sleepycat/je/DatabaseConfig;

    invoke-static {v0, v1}, Lcom/sleepycat/je/DatabaseConfig;->combineConfig(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/DatabaseConfig;)Lcom/sleepycat/je/DatabaseConfig;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2211
    :catch_0
    move-exception v1

    .line 2212
    .local v1, "E":Ljava/lang/Error;
    iget-object v2, p0, Lcom/sleepycat/je/Database;->envHandle:Lcom/sleepycat/je/Environment;

    invoke-virtual {v2, v1}, Lcom/sleepycat/je/Environment;->invalidate(Ljava/lang/Error;)V

    .line 2213
    throw v1
.end method

.method getCorruptedCause()Lcom/sleepycat/je/SecondaryIntegrityException;
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/sleepycat/je/Database;->corruptedCause:Lcom/sleepycat/je/SecondaryIntegrityException;

    return-object v0
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    .line 2185
    iget-object v0, p0, Lcom/sleepycat/je/Database;->name:Ljava/lang/String;

    return-object v0
.end method

.method getDbImpl()Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 4

    .line 2343
    iget-object v0, p0, Lcom/sleepycat/je/Database;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 2345
    .local v0, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    if-eqz v0, :cond_0

    .line 2346
    return-object v0

    .line 2349
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->checkOpen()Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 2355
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Database is closed. State="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/Database;->state:Lcom/sleepycat/je/Database$DbState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/sleepycat/je/Database;->envHandle:Lcom/sleepycat/je/Environment;

    invoke-virtual {v0}, Lcom/sleepycat/je/Environment;->getNonNullEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    return-object v0
.end method

.method public getEnvironment()Lcom/sleepycat/je/Environment;
    .locals 1

    .line 2238
    iget-object v0, p0, Lcom/sleepycat/je/Database;->envHandle:Lcom/sleepycat/je/Environment;

    return-object v0
.end method

.method public getSearchBoth(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;
    .locals 6
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 1511
    sget-object v4, Lcom/sleepycat/je/Get;->SEARCH_BOTH:Lcom/sleepycat/je/Get;

    .line 1513
    invoke-static {p4}, Lcom/sleepycat/je/DbInternal;->getReadOptions(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object v5

    .line 1511
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/Database;->get(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1515
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method getSecondaryAssociation()Lcom/sleepycat/je/SecondaryAssociation;
    .locals 1

    .line 2519
    iget-object v0, p0, Lcom/sleepycat/je/Database;->secAssoc:Lcom/sleepycat/je/SecondaryAssociation;

    return-object v0
.end method

.method public getSecondaryDatabases()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/SecondaryDatabase;",
            ">;"
        }
    .end annotation

    .line 2255
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sleepycat/je/Database;->simpleAssocSecondaries:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/DatabaseStats;
    .locals 2
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;

    .line 2122
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->checkEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 2123
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->checkOpen()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    .line 2125
    .local v0, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    if-nez p1, :cond_0

    .line 2126
    sget-object p1, Lcom/sleepycat/je/StatsConfig;->DEFAULT:Lcom/sleepycat/je/StatsConfig;

    .line 2129
    :cond_0
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->stat(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/BtreeStats;

    move-result-object v1

    return-object v1
.end method

.method hasSecondaryOrForeignKeyAssociations()Z
    .locals 1

    .line 2515
    iget-object v0, p0, Lcom/sleepycat/je/Database;->secAssoc:Lcom/sleepycat/je/SecondaryAssociation;

    invoke-interface {v0}, Lcom/sleepycat/je/SecondaryAssociation;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/je/Database;->foreignKeySecondaries:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method initExisting(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/DatabaseImpl;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;)V
    .locals 0
    .param p1, "env"    # Lcom/sleepycat/je/Environment;
    .param p2, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p3, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p4, "databaseName"    # Ljava/lang/String;
    .param p5, "dbConfig"    # Lcom/sleepycat/je/DatabaseConfig;

    .line 193
    invoke-direct {p0, p2, p4, p5, p3}, Lcom/sleepycat/je/Database;->validateConfigAgainstExistingDb(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 196
    invoke-direct {p0, p1, p5, p4}, Lcom/sleepycat/je/Database;->init(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/DatabaseConfig;Ljava/lang/String;)V

    .line 197
    iput-object p3, p0, Lcom/sleepycat/je/Database;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 198
    invoke-virtual {p3, p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->addReferringHandle(Lcom/sleepycat/je/Database;)V

    .line 199
    return-void
.end method

.method initHandleLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/txn/Locker;)Lcom/sleepycat/je/txn/HandleLocker;
    .locals 1
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "openDbLocker"    # Lcom/sleepycat/je/txn/Locker;

    .line 2364
    invoke-static {p1, p2}, Lcom/sleepycat/je/txn/HandleLocker;->createHandleLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/txn/Locker;)Lcom/sleepycat/je/txn/HandleLocker;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/Database;->handleLocker:Lcom/sleepycat/je/txn/HandleLocker;

    .line 2365
    return-object v0
.end method

.method initNew(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;)Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 2
    .param p1, "env"    # Lcom/sleepycat/je/Environment;
    .param p2, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p3, "databaseName"    # Ljava/lang/String;
    .param p4, "dbConfig"    # Lcom/sleepycat/je/DatabaseConfig;

    .line 169
    invoke-virtual {p4}, Lcom/sleepycat/je/DatabaseConfig;->validateForNewDb()V

    .line 171
    invoke-direct {p0, p1, p4, p3}, Lcom/sleepycat/je/Database;->init(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/DatabaseConfig;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/Database;->handleLocker:Lcom/sleepycat/je/txn/HandleLocker;

    invoke-virtual {v0, p2, p3, p4, v1}, Lcom/sleepycat/je/dbi/DbTree;->createDb(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;Lcom/sleepycat/je/txn/HandleLocker;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/Database;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 176
    invoke-virtual {v0, p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->addReferringHandle(Lcom/sleepycat/je/Database;)V

    .line 177
    iget-object v0, p0, Lcom/sleepycat/je/Database;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    return-object v0
.end method

.method declared-synchronized invalidate()V
    .locals 3

    monitor-enter p0

    .line 581
    :try_start_0
    sget-object v0, Lcom/sleepycat/je/Database$DbState;->INVALID:Lcom/sleepycat/je/Database$DbState;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/sleepycat/je/Database;->closeInternal(ZZLcom/sleepycat/je/Database$DbState;Lcom/sleepycat/je/OperationFailureException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    monitor-exit p0

    return-void

    .line 580
    .end local p0    # "this":Lcom/sleepycat/je/Database;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isCorrupted()Z
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/sleepycat/je/Database;->corruptedCause:Lcom/sleepycat/je/SecondaryIntegrityException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTransactional()Z
    .locals 2

    .line 2221
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->checkOpen()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    .line 2222
    .local v0, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isTransactional()Z

    move-result v1

    return v1
.end method

.method isWritable()Z
    .locals 1

    .line 2324
    iget-boolean v0, p0, Lcom/sleepycat/je/Database;->isWritable:Z

    return v0
.end method

.method public join([Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/JoinConfig;)Lcom/sleepycat/je/JoinCursor;
    .locals 7
    .param p1, "cursors"    # [Lcom/sleepycat/je/Cursor;
    .param p2, "config"    # Lcom/sleepycat/je/JoinConfig;

    .line 1832
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->checkEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 1833
    .local v0, "env":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->checkOpen()Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1834
    const-string v1, "cursors"

    invoke-static {p1, v1}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForNullParam(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1835
    array-length v1, p1

    if-eqz v1, :cond_6

    .line 1845
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lcom/sleepycat/je/Cursor;->getCursorImpl()Lcom/sleepycat/je/dbi/CursorImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/CursorImpl;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v1

    .line 1846
    .local v1, "locker":Lcom/sleepycat/je/txn/Locker;
    invoke-virtual {v1}, Lcom/sleepycat/je/txn/Locker;->isTransactional()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "All cursors must use the same transaction."

    if-nez v2, :cond_3

    .line 1847
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    :try_start_1
    array-length v4, p1

    if-ge v2, v4, :cond_2

    .line 1848
    aget-object v4, p1, v2

    invoke-virtual {v4}, Lcom/sleepycat/je/Cursor;->getCursorImpl()Lcom/sleepycat/je/dbi/CursorImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/CursorImpl;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v4

    .line 1849
    .local v4, "locker2":Lcom/sleepycat/je/txn/Locker;
    invoke-virtual {v4}, Lcom/sleepycat/je/txn/Locker;->isTransactional()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1853
    aget-object v5, p1, v2

    .line 1854
    invoke-virtual {v5}, Lcom/sleepycat/je/Cursor;->getDatabaseImpl()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v5

    .line 1855
    .local v5, "env2":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    if-ne v0, v5, :cond_0

    .line 1847
    .end local v4    # "locker2":Lcom/sleepycat/je/txn/Locker;
    .end local v5    # "env2":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1856
    .restart local v4    # "locker2":Lcom/sleepycat/je/txn/Locker;
    .restart local v5    # "env2":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v6, "All cursors must use the same environment."

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "cursors":[Lcom/sleepycat/je/Cursor;
    .end local p2    # "config":Lcom/sleepycat/je/JoinConfig;
    throw v3

    .line 1850
    .end local v5    # "env2":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local p1    # "cursors":[Lcom/sleepycat/je/Cursor;
    .restart local p2    # "config":Lcom/sleepycat/je/JoinConfig;
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "cursors":[Lcom/sleepycat/je/Cursor;
    .end local p2    # "config":Lcom/sleepycat/je/JoinConfig;
    throw v5

    .line 1847
    .end local v2    # "i":I
    .end local v4    # "locker2":Lcom/sleepycat/je/txn/Locker;
    .restart local p1    # "cursors":[Lcom/sleepycat/je/Cursor;
    .restart local p2    # "config":Lcom/sleepycat/je/JoinConfig;
    :cond_2
    goto :goto_2

    .line 1861
    :cond_3
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_5

    .line 1862
    aget-object v4, p1, v2

    invoke-virtual {v4}, Lcom/sleepycat/je/Cursor;->getCursorImpl()Lcom/sleepycat/je/dbi/CursorImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/CursorImpl;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v4

    .line 1863
    .restart local v4    # "locker2":Lcom/sleepycat/je/txn/Locker;
    invoke-virtual {v1}, Lcom/sleepycat/je/txn/Locker;->getTxnLocker()Lcom/sleepycat/je/txn/Txn;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sleepycat/je/txn/Locker;->getTxnLocker()Lcom/sleepycat/je/txn/Txn;

    move-result-object v6

    if-ne v5, v6, :cond_4

    .line 1861
    .end local v4    # "locker2":Lcom/sleepycat/je/txn/Locker;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1864
    .restart local v4    # "locker2":Lcom/sleepycat/je/txn/Locker;
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "cursors":[Lcom/sleepycat/je/Cursor;
    .end local p2    # "config":Lcom/sleepycat/je/JoinConfig;
    throw v5

    .line 1871
    .end local v2    # "i":I
    .end local v4    # "locker2":Lcom/sleepycat/je/txn/Locker;
    .restart local p1    # "cursors":[Lcom/sleepycat/je/Cursor;
    .restart local p2    # "config":Lcom/sleepycat/je/JoinConfig;
    :cond_5
    :goto_2
    new-instance v2, Lcom/sleepycat/je/JoinCursor;

    invoke-direct {v2, p0, p1, p2}, Lcom/sleepycat/je/JoinCursor;-><init>(Lcom/sleepycat/je/Database;[Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/JoinConfig;)V

    return-object v2

    .line 1836
    .end local v1    # "locker":Lcom/sleepycat/je/txn/Locker;
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "At least one cursor is required."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "cursors":[Lcom/sleepycat/je/Cursor;
    .end local p2    # "config":Lcom/sleepycat/je/JoinConfig;
    throw v1
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    .line 1872
    .end local v0    # "env":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local p1    # "cursors":[Lcom/sleepycat/je/Cursor;
    .restart local p2    # "config":Lcom/sleepycat/je/JoinConfig;
    :catch_0
    move-exception v0

    .line 1873
    .local v0, "E":Ljava/lang/Error;
    iget-object v1, p0, Lcom/sleepycat/je/Database;->envHandle:Lcom/sleepycat/je/Environment;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/Environment;->invalidate(Ljava/lang/Error;)V

    .line 1874
    throw v0
.end method

.method makeSecondaryAssociation()Lcom/sleepycat/je/SecondaryAssociation;
    .locals 2

    .line 214
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/Database;->foreignKeySecondaries:Ljava/util/Collection;

    .line 216
    iget-object v0, p0, Lcom/sleepycat/je/Database;->configuration:Lcom/sleepycat/je/DatabaseConfig;

    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseConfig;->getSecondaryAssociation()Lcom/sleepycat/je/SecondaryAssociation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/sleepycat/je/Database;->configuration:Lcom/sleepycat/je/DatabaseConfig;

    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseConfig;->getSortedDuplicates()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/Database;->simpleAssocSecondaries:Ljava/util/Collection;

    .line 222
    iget-object v0, p0, Lcom/sleepycat/je/Database;->configuration:Lcom/sleepycat/je/DatabaseConfig;

    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseConfig;->getSecondaryAssociation()Lcom/sleepycat/je/SecondaryAssociation;

    move-result-object v0

    return-object v0

    .line 218
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Duplicates not allowed for a primary database"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/Database;->simpleAssocSecondaries:Ljava/util/Collection;

    .line 227
    new-instance v0, Lcom/sleepycat/je/Database$1;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/Database$1;-><init>(Lcom/sleepycat/je/Database;)V

    return-object v0
.end method

.method declared-synchronized minimalClose(Lcom/sleepycat/je/Database$DbState;Lcom/sleepycat/je/OperationFailureException;)V
    .locals 2
    .param p1, "newState"    # Lcom/sleepycat/je/Database$DbState;
    .param p2, "preemptedException"    # Lcom/sleepycat/je/OperationFailureException;

    monitor-enter p0

    .line 636
    :try_start_0
    sget-object v0, Lcom/sleepycat/je/Database$DbState;->OPEN:Lcom/sleepycat/je/Database$DbState;

    if-eq p1, v0, :cond_1

    .line 638
    iget-object v0, p0, Lcom/sleepycat/je/Database;->state:Lcom/sleepycat/je/Database$DbState;

    sget-object v1, Lcom/sleepycat/je/Database$DbState;->OPEN:Lcom/sleepycat/je/Database$DbState;

    if-ne v0, v1, :cond_0

    .line 639
    iput-object p1, p0, Lcom/sleepycat/je/Database;->state:Lcom/sleepycat/je/Database$DbState;

    .line 640
    iput-object p2, p0, Lcom/sleepycat/je/Database;->preemptedCause:Lcom/sleepycat/je/OperationFailureException;

    .line 643
    .end local p0    # "this":Lcom/sleepycat/je/Database;
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/Database;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 644
    iput-object v0, p0, Lcom/sleepycat/je/Database;->handleLocker:Lcom/sleepycat/je/txn/HandleLocker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    monitor-exit p0

    return-void

    .line 635
    .end local p1    # "newState":Lcom/sleepycat/je/Database$DbState;
    .end local p2    # "preemptedException":Lcom/sleepycat/je/OperationFailureException;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 636
    .restart local p1    # "newState":Lcom/sleepycat/je/Database$DbState;
    .restart local p2    # "preemptedException":Lcom/sleepycat/je/OperationFailureException;
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 635
    .end local p1    # "newState":Lcom/sleepycat/je/Database$DbState;
    .end local p2    # "preemptedException":Lcom/sleepycat/je/OperationFailureException;
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method newDbcInstance(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;
    .locals 1
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "cursorConfig"    # Lcom/sleepycat/je/CursorConfig;

    .line 1004
    new-instance v0, Lcom/sleepycat/je/Cursor;

    invoke-direct {v0, p0, p1, p2}, Lcom/sleepycat/je/Cursor;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)V

    return-object v0
.end method

.method public openCursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;
    .locals 2
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "cursorConfig"    # Lcom/sleepycat/je/CursorConfig;

    .line 939
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->checkEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 940
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->checkOpen()Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 942
    if-nez p2, :cond_0

    .line 943
    sget-object v0, Lcom/sleepycat/je/CursorConfig;->DEFAULT:Lcom/sleepycat/je/CursorConfig;

    move-object p2, v0

    .line 946
    :cond_0
    invoke-virtual {p2}, Lcom/sleepycat/je/CursorConfig;->getReadUncommitted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 947
    invoke-virtual {p2}, Lcom/sleepycat/je/CursorConfig;->getReadCommitted()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 948
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only one may be specified: ReadCommitted or ReadUncommitted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p2    # "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    throw v0

    .line 953
    .restart local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local p2    # "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    :cond_2
    :goto_0
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v1, "Database.openCursor"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sleepycat/je/Database;->trace(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/je/Transaction;Ljava/lang/Object;)V

    .line 954
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/Database;->newDbcInstance(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 955
    :catch_0
    move-exception v0

    .line 956
    .local v0, "E":Ljava/lang/Error;
    iget-object v1, p0, Lcom/sleepycat/je/Database;->envHandle:Lcom/sleepycat/je/Environment;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/Environment;->invalidate(Ljava/lang/Error;)V

    .line 957
    throw v0
.end method

.method public openCursor(Lcom/sleepycat/je/DiskOrderedCursorConfig;)Lcom/sleepycat/je/DiskOrderedCursor;
    .locals 3
    .param p1, "cursorConfig"    # Lcom/sleepycat/je/DiskOrderedCursorConfig;

    .line 979
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->checkEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 980
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->checkOpen()Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 982
    if-nez p1, :cond_0

    .line 983
    sget-object v0, Lcom/sleepycat/je/DiskOrderedCursorConfig;->DEFAULT:Lcom/sleepycat/je/DiskOrderedCursorConfig;

    move-object p1, v0

    .line 986
    :cond_0
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v1, "Database.openForwardCursor"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/sleepycat/je/Database;->trace(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/je/Transaction;Ljava/lang/Object;)V

    .line 989
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sleepycat/je/Database;

    .line 990
    .local v0, "dbs":[Lcom/sleepycat/je/Database;
    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 992
    new-instance v1, Lcom/sleepycat/je/DiskOrderedCursor;

    invoke-direct {v1, v0, p1}, Lcom/sleepycat/je/DiskOrderedCursor;-><init>([Lcom/sleepycat/je/Database;Lcom/sleepycat/je/DiskOrderedCursorConfig;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 993
    .end local v0    # "dbs":[Lcom/sleepycat/je/Database;
    :catch_0
    move-exception v0

    .line 994
    .local v0, "E":Ljava/lang/Error;
    iget-object v1, p0, Lcom/sleepycat/je/Database;->envHandle:Lcom/sleepycat/je/Environment;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/Environment;->invalidate(Ljava/lang/Error;)V

    .line 995
    throw v0
.end method

.method public openSequence(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/SequenceConfig;)Lcom/sleepycat/je/Sequence;
    .locals 9
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "config"    # Lcom/sleepycat/je/SequenceConfig;

    .line 865
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->checkEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 866
    const-string v0, "key"

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForNullDbt(Lcom/sleepycat/je/DatabaseEntry;Ljava/lang/String;Z)V

    .line 867
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->checkOpen()Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 868
    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v4, "Database.openSequence"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v8}, Lcom/sleepycat/je/Database;->trace(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)V

    .line 870
    new-instance v0, Lcom/sleepycat/je/Sequence;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sleepycat/je/Sequence;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/SequenceConfig;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 871
    :catch_0
    move-exception v0

    .line 872
    .local v0, "E":Ljava/lang/Error;
    iget-object v1, p0, Lcom/sleepycat/je/Database;->envHandle:Lcom/sleepycat/je/Environment;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/Environment;->invalidate(Ljava/lang/Error;)V

    .line 873
    throw v0
.end method

.method public populateSecondaries(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 7
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 1018
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/je/Database;->populateSecondaries(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;JLcom/sleepycat/je/CacheMode;)V

    .line 1019
    return-void
.end method

.method public populateSecondaries(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;JLcom/sleepycat/je/CacheMode;)V
    .locals 23
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "expirationTime"    # J
    .param p6, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    move-object/from16 v8, p0

    move-object/from16 v15, p2

    .line 1088
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/Database;->checkEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1089
    const-string v0, "key"

    const/4 v1, 0x1

    invoke-static {v15, v0, v1}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForNullDbt(Lcom/sleepycat/je/DatabaseEntry;Ljava/lang/String;Z)V

    .line 1090
    const-string v0, "true"

    move-object/from16 v14, p3

    invoke-static {v14, v0, v1}, Lcom/sleepycat/je/utilint/DatabaseUtil;->checkForNullDbt(Lcom/sleepycat/je/DatabaseEntry;Ljava/lang/String;Z)V

    .line 1091
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/Database;->checkOpen()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v12

    .line 1092
    .local v12, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v3, "populateSecondaries"

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/sleepycat/je/Database;->trace(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)V

    .line 1094
    iget-object v0, v8, Lcom/sleepycat/je/Database;->secAssoc:Lcom/sleepycat/je/SecondaryAssociation;

    .line 1095
    invoke-interface {v0, v15}, Lcom/sleepycat/je/SecondaryAssociation;->getSecondaries(Lcom/sleepycat/je/DatabaseEntry;)Ljava/util/Collection;

    move-result-object v0

    move-object v1, v0

    .line 1097
    .local v1, "secondaries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/SecondaryDatabase;>;"
    iget-object v0, v8, Lcom/sleepycat/je/Database;->envHandle:Lcom/sleepycat/je/Environment;

    .line 1098
    invoke-virtual {v12}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isInternalDb()Z

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/Database;->isTransactional()Z

    move-result v3

    .line 1099
    invoke-virtual {v12}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isReplicated()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    .line 1097
    move-object/from16 v5, p1

    :try_start_1
    invoke-static {v0, v5, v2, v3, v4}, Lcom/sleepycat/je/txn/LockerFactory;->getWritableLocker(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Transaction;ZZZ)Lcom/sleepycat/je/txn/Locker;

    move-result-object v0

    move-object v2, v0

    .line 1101
    .local v2, "locker":Lcom/sleepycat/je/txn/Locker;
    const/4 v3, 0x0

    .line 1103
    .local v3, "success":Z
    if-nez p6, :cond_0

    .line 1104
    invoke-virtual {v12}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getDefaultCacheMode()Lcom/sleepycat/je/CacheMode;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v0

    .end local p6    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .local v0, "cacheMode":Lcom/sleepycat/je/CacheMode;
    goto :goto_0

    .line 1103
    .end local v0    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local p6    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    :cond_0
    move-object/from16 v4, p6

    .line 1108
    .end local p6    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .local v4, "cacheMode":Lcom/sleepycat/je/CacheMode;
    :goto_0
    :try_start_2
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Lcom/sleepycat/je/SecondaryDatabase;

    .line 1109
    .local v9, "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    invoke-virtual {v9}, Lcom/sleepycat/je/SecondaryDatabase;->isIncrementalPopulationEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1111
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v6, 0x0

    const/16 v20, 0x0

    move-object v10, v2

    move-object/from16 v14, p2

    move-object v15, v6

    move-object/from16 v16, p3

    move-object/from16 v17, v4

    move-wide/from16 v18, p4

    move-wide/from16 v21, p4

    invoke-virtual/range {v9 .. v22}, Lcom/sleepycat/je/SecondaryDatabase;->updateSecondary(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/dbi/CursorImpl;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/CacheMode;JZJ)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1118
    .end local v9    # "secDb":Lcom/sleepycat/je/SecondaryDatabase;
    :cond_1
    move-object/from16 v15, p2

    move-object/from16 v14, p3

    goto :goto_1

    .line 1119
    :cond_2
    const/4 v0, 0x1

    .line 1121
    .end local v3    # "success":Z
    .local v0, "success":Z
    :try_start_3
    invoke-virtual {v2, v0}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    .line 1122
    nop

    .line 1126
    .end local v0    # "success":Z
    .end local v1    # "secondaries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/SecondaryDatabase;>;"
    .end local v2    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v12    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    nop

    .line 1127
    return-void

    .line 1121
    .restart local v1    # "secondaries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/SecondaryDatabase;>;"
    .restart local v2    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v3    # "success":Z
    .restart local v12    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :catchall_0
    move-exception v0

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    .end local v4    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .end local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local p4    # "expirationTime":J
    throw v0
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_0

    .line 1123
    .end local v1    # "secondaries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/je/SecondaryDatabase;>;"
    .end local v2    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v3    # "success":Z
    .end local v12    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v4    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local p2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p4    # "expirationTime":J
    :catch_0
    move-exception v0

    goto :goto_3

    .end local v4    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .restart local p6    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v5, p1

    :goto_2
    move-object/from16 v4, p6

    .line 1124
    .end local p6    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    .local v0, "E":Ljava/lang/Error;
    .restart local v4    # "cacheMode":Lcom/sleepycat/je/CacheMode;
    :goto_3
    iget-object v1, v8, Lcom/sleepycat/je/Database;->envHandle:Lcom/sleepycat/je/Environment;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/Environment;->invalidate(Ljava/lang/Error;)V

    .line 1125
    throw v0
.end method

.method public preload(Lcom/sleepycat/je/PreloadConfig;)Lcom/sleepycat/je/PreloadStats;
    .locals 3
    .param p1, "config"    # Lcom/sleepycat/je/PreloadConfig;

    .line 1991
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->checkEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1992
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->checkOpen()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    .line 1994
    .local v0, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    if-nez p1, :cond_0

    new-instance v1, Lcom/sleepycat/je/PreloadConfig;

    invoke-direct {v1}, Lcom/sleepycat/je/PreloadConfig;-><init>()V

    goto :goto_0

    :cond_0
    move-object v1, p1

    .line 1997
    .local v1, "useConfig":Lcom/sleepycat/je/PreloadConfig;
    :goto_0
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->preload(Lcom/sleepycat/je/PreloadConfig;)Lcom/sleepycat/je/PreloadStats;

    move-result-object v2

    return-object v2
.end method

.method public preload(J)V
    .locals 2
    .param p1, "maxBytes"    # J

    .line 1904
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->checkEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1905
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->checkOpen()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    .line 1907
    .local v0, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    new-instance v1, Lcom/sleepycat/je/PreloadConfig;

    invoke-direct {v1}, Lcom/sleepycat/je/PreloadConfig;-><init>()V

    .line 1908
    .local v1, "config":Lcom/sleepycat/je/PreloadConfig;
    invoke-virtual {v1, p1, p2}, Lcom/sleepycat/je/PreloadConfig;->setMaxBytes(J)Lcom/sleepycat/je/PreloadConfig;

    .line 1910
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->preload(Lcom/sleepycat/je/PreloadConfig;)Lcom/sleepycat/je/PreloadStats;

    .line 1911
    return-void
.end method

.method public preload(JJ)V
    .locals 2
    .param p1, "maxBytes"    # J
    .param p3, "maxMillisecs"    # J

    .line 1944
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->checkEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1945
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->checkOpen()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    .line 1947
    .local v0, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    new-instance v1, Lcom/sleepycat/je/PreloadConfig;

    invoke-direct {v1}, Lcom/sleepycat/je/PreloadConfig;-><init>()V

    .line 1948
    .local v1, "config":Lcom/sleepycat/je/PreloadConfig;
    invoke-virtual {v1, p1, p2}, Lcom/sleepycat/je/PreloadConfig;->setMaxBytes(J)Lcom/sleepycat/je/PreloadConfig;

    .line 1949
    invoke-virtual {v1, p3, p4}, Lcom/sleepycat/je/PreloadConfig;->setMaxMillisecs(J)Lcom/sleepycat/je/PreloadConfig;

    .line 1951
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->preload(Lcom/sleepycat/je/PreloadConfig;)Lcom/sleepycat/je/PreloadStats;

    .line 1952
    return-void
.end method

.method public put(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Put;Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;
    .locals 10
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "putType"    # Lcom/sleepycat/je/Put;
    .param p5, "options"    # Lcom/sleepycat/je/WriteOptions;

    .line 1611
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->checkEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1612
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->checkOpen()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    .line 1614
    .local v0, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    sget-object v1, Lcom/sleepycat/je/Put;->CURRENT:Lcom/sleepycat/je/Put;

    if-eq p4, v1, :cond_2

    .line 1619
    const/4 v1, 0x0

    .line 1621
    .local v1, "result":Lcom/sleepycat/je/OperationResult;
    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v4, "Database.put"

    .line 1622
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    .line 1621
    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-virtual/range {v2 .. v9}, Lcom/sleepycat/je/Database;->trace(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)V

    .line 1625
    iget-object v2, p0, Lcom/sleepycat/je/Database;->envHandle:Lcom/sleepycat/je/Environment;

    .line 1627
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isInternalDb()Z

    move-result v3

    .line 1628
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->isTransactional()Z

    move-result v4

    .line 1629
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isReplicated()Z

    move-result v5

    .line 1625
    invoke-static {v2, p1, v3, v4, v5}, Lcom/sleepycat/je/txn/LockerFactory;->getWritableLocker(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Transaction;ZZZ)Lcom/sleepycat/je/txn/Locker;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 1632
    .local v2, "locker":Lcom/sleepycat/je/txn/Locker;
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_1
    new-instance v5, Lcom/sleepycat/je/Cursor;

    sget-object v6, Lcom/sleepycat/je/Database;->DEFAULT_CURSOR_CONFIG:Lcom/sleepycat/je/CursorConfig;

    invoke-direct {v5, p0, v2, v6}, Lcom/sleepycat/je/Cursor;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/CursorConfig;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1635
    .local v5, "cursor":Lcom/sleepycat/je/Cursor;
    :try_start_2
    invoke-virtual {v5, p2, p3, p4, p5}, Lcom/sleepycat/je/Cursor;->putInternal(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Put;Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v6

    .line 1636
    :try_start_3
    invoke-virtual {v5}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1638
    .end local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    :try_start_4
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V
    :try_end_4
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0

    .line 1639
    nop

    .line 1641
    return-object v1

    .line 1632
    .restart local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    :catchall_0
    move-exception v6

    .end local v0    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v1    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v2    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local p4    # "putType":Lcom/sleepycat/je/Put;
    .end local p5    # "options":Lcom/sleepycat/je/WriteOptions;
    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1636
    .restart local v0    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v1    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v2    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local p2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p4    # "putType":Lcom/sleepycat/je/Put;
    .restart local p5    # "options":Lcom/sleepycat/je/WriteOptions;
    :catchall_1
    move-exception v7

    :try_start_6
    invoke-virtual {v5}, Lcom/sleepycat/je/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v8

    :try_start_7
    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v1    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v2    # "locker":Lcom/sleepycat/je/txn/Locker;
    .end local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local p4    # "putType":Lcom/sleepycat/je/Put;
    .end local p5    # "options":Lcom/sleepycat/je/WriteOptions;
    :goto_1
    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1638
    .end local v5    # "cursor":Lcom/sleepycat/je/Cursor;
    .restart local v0    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local v1    # "result":Lcom/sleepycat/je/OperationResult;
    .restart local v2    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local p2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p4    # "putType":Lcom/sleepycat/je/Put;
    .restart local p5    # "options":Lcom/sleepycat/je/WriteOptions;
    :catchall_3
    move-exception v5

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    move v3, v4

    :goto_2
    :try_start_8
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/txn/Locker;->operationEnd(Z)V

    .end local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local p4    # "putType":Lcom/sleepycat/je/Put;
    .end local p5    # "options":Lcom/sleepycat/je/WriteOptions;
    throw v5

    .line 1615
    .end local v1    # "result":Lcom/sleepycat/je/OperationResult;
    .end local v2    # "locker":Lcom/sleepycat/je/txn/Locker;
    .restart local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local p2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p4    # "putType":Lcom/sleepycat/je/Put;
    .restart local p5    # "options":Lcom/sleepycat/je/WriteOptions;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "putType may not be Put.CURRENT"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local p3    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local p4    # "putType":Lcom/sleepycat/je/Put;
    .end local p5    # "options":Lcom/sleepycat/je/WriteOptions;
    throw v1
    :try_end_8
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_0

    .line 1642
    .end local v0    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local p2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p3    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local p4    # "putType":Lcom/sleepycat/je/Put;
    .restart local p5    # "options":Lcom/sleepycat/je/WriteOptions;
    :catch_0
    move-exception v0

    .line 1643
    .local v0, "E":Ljava/lang/Error;
    iget-object v1, p0, Lcom/sleepycat/je/Database;->envHandle:Lcom/sleepycat/je/Environment;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/Environment;->invalidate(Ljava/lang/Error;)V

    .line 1644
    throw v0
.end method

.method public put(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;
    .locals 6
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 1688
    sget-object v4, Lcom/sleepycat/je/Put;->OVERWRITE:Lcom/sleepycat/je/Put;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/Database;->put(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Put;Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1691
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->assertState(Z)V

    .line 1692
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    return-object v1
.end method

.method public putNoDupData(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;
    .locals 6
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 1785
    sget-object v4, Lcom/sleepycat/je/Put;->NO_DUP_DATA:Lcom/sleepycat/je/Put;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/Database;->put(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Put;Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1788
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->KEYEXIST:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method public putNoOverwrite(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;
    .locals 6
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 1737
    sget-object v4, Lcom/sleepycat/je/Put;->NO_OVERWRITE:Lcom/sleepycat/je/Put;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/Database;->put(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Put;Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1740
    .local v0, "result":Lcom/sleepycat/je/OperationResult;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/OperationStatus;->KEYEXIST:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v1
.end method

.method removeCursor(Lcom/sleepycat/je/ForwardCursor;)V
    .locals 2
    .param p1, "ignore"    # Lcom/sleepycat/je/ForwardCursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2376
    iget-object v0, p0, Lcom/sleepycat/je/Database;->state:Lcom/sleepycat/je/Database$DbState;

    sget-object v1, Lcom/sleepycat/je/Database$DbState;->PREEMPTED:Lcom/sleepycat/je/Database$DbState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/Database;->state:Lcom/sleepycat/je/Database$DbState;

    sget-object v1, Lcom/sleepycat/je/Database$DbState;->CORRUPTED:Lcom/sleepycat/je/Database$DbState;

    if-eq v0, v1, :cond_0

    .line 2377
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->checkOpen()Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 2379
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/Database;->openCursors:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 2380
    return-void
.end method

.method removeReferringAssociations()V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/sleepycat/je/Database;->envHandle:Lcom/sleepycat/je/Environment;

    invoke-virtual {v0, p0}, Lcom/sleepycat/je/Environment;->removeReferringHandle(Lcom/sleepycat/je/Database;)V

    .line 254
    return-void
.end method

.method public removeSequence(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 2
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 900
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/Database;->delete(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 904
    nop

    .line 905
    return-void

    .line 901
    :catch_0
    move-exception v0

    .line 902
    .local v0, "E":Ljava/lang/Error;
    iget-object v1, p0, Lcom/sleepycat/je/Database;->envHandle:Lcom/sleepycat/je/Environment;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/Environment;->invalidate(Ljava/lang/Error;)V

    .line 903
    throw v0
.end method

.method secondaryRefersToMissingPrimaryKey(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/Database;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;J)Lcom/sleepycat/je/SecondaryIntegrityException;
    .locals 14
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "priDb"    # Lcom/sleepycat/je/Database;
    .param p3, "secKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "priKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p5, "expirationTime"    # J

    .line 2535
    new-instance v13, Lcom/sleepycat/je/SecondaryIntegrityException;

    .line 2539
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->getDatabaseName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/Database;->getDatabaseName()Ljava/lang/String;

    move-result-object v5

    const-string v3, "Secondary refers to a missing key in the primary database"

    const-wide/16 v8, -0x1

    const/4 v12, 0x0

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v10, p5

    invoke-direct/range {v0 .. v12}, Lcom/sleepycat/je/SecondaryIntegrityException;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;JJLcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;)V

    .line 2535
    return-object v13
.end method

.method declared-synchronized setCorrupted(Lcom/sleepycat/je/SecondaryIntegrityException;)V
    .locals 2
    .param p1, "sie"    # Lcom/sleepycat/je/SecondaryIntegrityException;

    monitor-enter p0

    .line 558
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/Database;->state:Lcom/sleepycat/je/Database$DbState;

    sget-object v1, Lcom/sleepycat/je/Database$DbState;->OPEN:Lcom/sleepycat/je/Database$DbState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    .line 559
    monitor-exit p0

    return-void

    .line 561
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/sleepycat/je/Database;->corruptedCause:Lcom/sleepycat/je/SecondaryIntegrityException;

    .line 562
    sget-object v0, Lcom/sleepycat/je/Database$DbState;->CORRUPTED:Lcom/sleepycat/je/Database$DbState;

    iput-object v0, p0, Lcom/sleepycat/je/Database;->state:Lcom/sleepycat/je/Database$DbState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 563
    monitor-exit p0

    return-void

    .line 557
    .end local p0    # "this":Lcom/sleepycat/je/Database;
    .end local p1    # "sie":Lcom/sleepycat/je/SecondaryIntegrityException;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setPreempted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    monitor-enter p0

    .line 543
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/Database;->databaseImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    .local v0, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    if-nez v0, :cond_0

    .line 546
    monitor-exit p0

    return-void

    .line 549
    :cond_0
    nop

    .line 550
    :try_start_1
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-virtual {v1, p2, p1, p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->createDatabasePreemptedException(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/Database;)Lcom/sleepycat/je/OperationFailureException;

    move-result-object v1

    .line 553
    .local v1, "preemptedException":Lcom/sleepycat/je/OperationFailureException;
    sget-object v2, Lcom/sleepycat/je/Database$DbState;->PREEMPTED:Lcom/sleepycat/je/Database$DbState;

    const/4 v3, 0x0

    invoke-direct {p0, v3, v3, v2, v1}, Lcom/sleepycat/je/Database;->closeInternal(ZZLcom/sleepycat/je/Database$DbState;Lcom/sleepycat/je/OperationFailureException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 555
    monitor-exit p0

    return-void

    .line 542
    .end local v0    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local v1    # "preemptedException":Lcom/sleepycat/je/OperationFailureException;
    .end local p0    # "this":Lcom/sleepycat/je/Database;
    .end local p1    # "dbName":Ljava/lang/String;
    .end local p2    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public sync()V
    .locals 8

    .line 813
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->checkEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 814
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->checkOpen()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    .line 815
    .local v0, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v3, "Database.sync"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/sleepycat/je/Database;->trace(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)V

    .line 817
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->sync(Z)V

    .line 818
    return-void
.end method

.method trace(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)V
    .locals 4
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p4, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p5, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p6, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 2471
    iget-object v0, p0, Lcom/sleepycat/je/Database;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2473
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2474
    if-eqz p3, :cond_0

    .line 2475
    const-string v1, " txnId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/sleepycat/je/Transaction;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2477
    :cond_0
    const-string v1, " key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/sleepycat/je/DatabaseEntry;->dumpData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2478
    if-eqz p5, :cond_1

    .line 2479
    const-string v1, " data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p5}, Lcom/sleepycat/je/DatabaseEntry;->dumpData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2481
    :cond_1
    if-eqz p6, :cond_2

    .line 2482
    const-string v1, " lockMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2484
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/je/Database;->logger:Ljava/util/logging/Logger;

    .line 2485
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2484
    invoke-static {v1, v2, p1, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2487
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    return-void
.end method

.method trace(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/je/Transaction;Ljava/lang/Object;)V
    .locals 4
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p4, "config"    # Ljava/lang/Object;

    .line 2499
    iget-object v0, p0, Lcom/sleepycat/je/Database;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2501
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2502
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2503
    if-eqz p3, :cond_0

    .line 2504
    const-string v1, " txnId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/sleepycat/je/Transaction;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2506
    :cond_0
    if-eqz p4, :cond_1

    .line 2507
    const-string v1, " config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2509
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/je/Database;->logger:Ljava/util/logging/Logger;

    .line 2510
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2509
    invoke-static {v1, v2, p1, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2512
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    return-void
.end method

.method trace(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)V
    .locals 4
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "getOrPutType"    # Ljava/lang/String;
    .param p4, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p5, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p6, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p7, "lockMode"    # Lcom/sleepycat/je/LockMode;

    .line 2440
    iget-object v0, p0, Lcom/sleepycat/je/Database;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2442
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2443
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2444
    if-eqz p4, :cond_0

    .line 2445
    const-string v1, " txnId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/sleepycat/je/Transaction;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2447
    :cond_0
    const-string v1, " key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p5}, Lcom/sleepycat/je/DatabaseEntry;->dumpData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2448
    if-eqz p6, :cond_1

    .line 2449
    const-string v1, " data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p6}, Lcom/sleepycat/je/DatabaseEntry;->dumpData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2451
    :cond_1
    if-eqz p7, :cond_2

    .line 2452
    const-string v1, " lockMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2454
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/je/Database;->logger:Ljava/util/logging/Logger;

    .line 2455
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2454
    invoke-static {v1, v2, p1, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2457
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    return-void
.end method

.method public verify(Lcom/sleepycat/je/VerifyConfig;)Lcom/sleepycat/je/DatabaseStats;
    .locals 2
    .param p1, "config"    # Lcom/sleepycat/je/VerifyConfig;

    .line 2163
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->checkEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 2164
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->checkOpen()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    .line 2166
    .local v0, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    if-nez p1, :cond_0

    .line 2167
    sget-object v1, Lcom/sleepycat/je/VerifyConfig;->DEFAULT:Lcom/sleepycat/je/VerifyConfig;

    move-object p1, v1

    .line 2170
    :cond_0
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->verify(Lcom/sleepycat/je/VerifyConfig;)Lcom/sleepycat/je/BtreeStats;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2171
    .end local v0    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    :catch_0
    move-exception v0

    .line 2172
    .local v0, "E":Ljava/lang/Error;
    iget-object v1, p0, Lcom/sleepycat/je/Database;->envHandle:Lcom/sleepycat/je/Environment;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/Environment;->invalidate(Ljava/lang/Error;)V

    .line 2173
    throw v0
.end method
