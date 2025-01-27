.class public Lcom/sleepycat/je/util/DbBackup;
.super Ljava/lang/Object;
.source "DbBackup.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private backupStarted:Z

.field private final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private final envIsReadOnly:Z

.field private final firstFileInBackup:J

.field private invalid:Z

.field private lastFileInBackup:J

.field private networkRestore:Z

.field private protectedFileSet:Lcom/sleepycat/je/cleaner/FileProtector$ProtectedActiveFileSet;

.field private rollbackStartedFileNumber:J

.field private snapshotFiles:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private testHook:Lcom/sleepycat/je/utilint/TestHook;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 358
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/Environment;)V
    .locals 2
    .param p1, "env"    # Lcom/sleepycat/je/Environment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 392
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/sleepycat/je/util/DbBackup;-><init>(Lcom/sleepycat/je/Environment;J)V

    .line 393
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/Environment;J)V
    .locals 1
    .param p1, "env"    # Lcom/sleepycat/je/Environment;
    .param p2, "lastFileInPrevBackup"    # J

    .line 415
    invoke-static {p1}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/sleepycat/je/util/DbBackup;-><init>(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/dbi/EnvironmentImpl;J)V

    .line 416
    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/dbi/EnvironmentImpl;J)V
    .locals 2
    .param p1, "env"    # Lcom/sleepycat/je/Environment;
    .param p2, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p3, "lastFileInPrevBackup"    # J

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/util/DbBackup;->lastFileInBackup:J

    .line 435
    if-eqz p1, :cond_0

    .line 436
    invoke-static {p1}, Lcom/sleepycat/je/DbInternal;->checkOpen(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 439
    :cond_0
    iput-object p2, p0, Lcom/sleepycat/je/util/DbBackup;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 445
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/log/FileManager;->checkEnvHomePermissions(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/util/DbBackup;->envIsReadOnly:Z

    .line 446
    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 447
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Environment handle may not be read-only when directory is read-write"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_2
    :goto_0
    const-wide/16 v0, 0x1

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/sleepycat/je/util/DbBackup;->firstFileInBackup:J

    .line 453
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 3
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 423
    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/sleepycat/je/util/DbBackup;-><init>(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/dbi/EnvironmentImpl;J)V

    .line 424
    return-void
.end method

.method private checkBackupStarted()V
    .locals 2

    .line 777
    iget-boolean v0, p0, Lcom/sleepycat/je/util/DbBackup;->backupStarted:Z

    if-eqz v0, :cond_0

    .line 780
    return-void

    .line 778
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "startBackup was not called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getFileNames(Ljava/util/NavigableSet;)[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableSet<",
            "Ljava/lang/Long;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 747
    .local p1, "fileSet":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/sleepycat/je/util/DbBackup;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v0

    .line 748
    .local v0, "fileManager":Lcom/sleepycat/je/log/FileManager;
    invoke-interface {p1}, Ljava/util/NavigableSet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 749
    .local v1, "names":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 751
    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 752
    .local v4, "file":Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/sleepycat/je/log/FileManager;->getPartialFileName(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 753
    nop

    .end local v4    # "file":Ljava/lang/Long;
    add-int/lit8 v2, v2, 0x1

    .line 754
    goto :goto_0

    .line 756
    :cond_0
    return-object v1
.end method


# virtual methods
.method public declared-synchronized backupIsOpen()Z
    .locals 1

    monitor-enter p0

    .line 788
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/je/util/DbBackup;->backupStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 788
    .end local p0    # "this":Lcom/sleepycat/je/util/DbBackup;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized endBackup()V
    .locals 4

    monitor-enter p0

    .line 614
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/util/DbBackup;->checkBackupStarted()V

    .line 615
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/util/DbBackup;->backupStarted:Z

    .line 617
    iget-object v1, p0, Lcom/sleepycat/je/util/DbBackup;->testHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v1}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 619
    iget-object v1, p0, Lcom/sleepycat/je/util/DbBackup;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileProtector()Lcom/sleepycat/je/cleaner/FileProtector;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/util/DbBackup;->protectedFileSet:Lcom/sleepycat/je/cleaner/FileProtector$ProtectedActiveFileSet;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/cleaner/FileProtector;->removeFileProtection(Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;)V

    .line 621
    iget-object v1, p0, Lcom/sleepycat/je/util/DbBackup;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1, p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->removeDbBackup(Lcom/sleepycat/je/util/DbBackup;)V

    .line 624
    iget-boolean v1, p0, Lcom/sleepycat/je/util/DbBackup;->invalid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 632
    monitor-exit p0

    return-void

    .line 625
    :cond_0
    :try_start_1
    iput-boolean v0, p0, Lcom/sleepycat/je/util/DbBackup;->invalid:Z

    .line 626
    iget-object v0, p0, Lcom/sleepycat/je/util/DbBackup;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A replication operation has overwritten log files from file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/util/DbBackup;->rollbackStartedFileNumber:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Any copied files should be considered invalid and discarded. The backup may be attempted at a later time."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 627
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->createLogOverwriteException(Ljava/lang/String;)Lcom/sleepycat/je/OperationFailureException;

    move-result-object v0

    throw v0

    .line 617
    .end local p0    # "this":Lcom/sleepycat/je/util/DbBackup;
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 613
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastFileInBackupSet()J
    .locals 2

    monitor-enter p0

    .line 644
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/util/DbBackup;->checkBackupStarted()V

    .line 645
    iget-wide v0, p0, Lcom/sleepycat/je/util/DbBackup;->lastFileInBackup:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 643
    .end local p0    # "this":Lcom/sleepycat/je/util/DbBackup;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLogFilesInBackupSet()[Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 675
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/util/DbBackup;->checkBackupStarted()V

    .line 676
    iget-object v0, p0, Lcom/sleepycat/je/util/DbBackup;->snapshotFiles:Ljava/util/NavigableSet;

    iget-wide v1, p0, Lcom/sleepycat/je/util/DbBackup;->firstFileInBackup:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sleepycat/je/util/DbBackup;->getFileNames(Ljava/util/NavigableSet;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 674
    .end local p0    # "this":Lcom/sleepycat/je/util/DbBackup;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLogFilesInBackupSet(J)[Ljava/lang/String;
    .locals 3
    .param p1, "lastFileInPrevBackup"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 704
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/util/DbBackup;->checkBackupStarted()V

    .line 706
    iget-object v0, p0, Lcom/sleepycat/je/util/DbBackup;->snapshotFiles:Ljava/util/NavigableSet;

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    .line 707
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    .line 706
    invoke-direct {p0, v0}, Lcom/sleepycat/je/util/DbBackup;->getFileNames(Ljava/util/NavigableSet;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 703
    .end local p0    # "this":Lcom/sleepycat/je/util/DbBackup;
    .end local p1    # "lastFileInPrevBackup":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getLogFilesInSnapshot()[Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 740
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/util/DbBackup;->checkBackupStarted()V

    .line 742
    iget-object v0, p0, Lcom/sleepycat/je/util/DbBackup;->snapshotFiles:Ljava/util/NavigableSet;

    invoke-direct {p0, v0}, Lcom/sleepycat/je/util/DbBackup;->getFileNames(Ljava/util/NavigableSet;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 739
    .end local p0    # "this":Lcom/sleepycat/je/util/DbBackup;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public invalidate(J)V
    .locals 1
    .param p1, "fileNumber"    # J

    .line 798
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/util/DbBackup;->invalid:Z

    .line 799
    iput-wide p1, p0, Lcom/sleepycat/je/util/DbBackup;->rollbackStartedFileNumber:J

    .line 800
    return-void
.end method

.method public declared-synchronized removeFileProtection(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    monitor-enter p0

    .line 770
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/util/DbBackup;->checkBackupStarted()V

    .line 772
    iget-object v0, p0, Lcom/sleepycat/je/util/DbBackup;->protectedFileSet:Lcom/sleepycat/je/cleaner/FileProtector$ProtectedActiveFileSet;

    iget-object v1, p0, Lcom/sleepycat/je/util/DbBackup;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 773
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/log/FileManager;->getNumFromName(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 772
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedActiveFileSet;->removeFile(Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 774
    monitor-exit p0

    return-void

    .line 769
    .end local p0    # "this":Lcom/sleepycat/je/util/DbBackup;
    .end local p1    # "fileName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setNetworkRestore()V
    .locals 1

    .line 816
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/util/DbBackup;->networkRestore:Z

    .line 817
    return-void
.end method

.method public setTestHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 0
    .param p1, "testHook"    # Lcom/sleepycat/je/utilint/TestHook;

    .line 827
    iput-object p1, p0, Lcom/sleepycat/je/util/DbBackup;->testHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 828
    return-void
.end method

.method public declared-synchronized startBackup()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 493
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/je/util/DbBackup;->backupStarted:Z

    if-nez v0, :cond_5

    .line 498
    iget-object v0, p0, Lcom/sleepycat/je/util/DbBackup;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0, p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->addDbBackup(Lcom/sleepycat/je/util/DbBackup;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 505
    iget-object v0, p0, Lcom/sleepycat/je/util/DbBackup;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileProtector()Lcom/sleepycat/je/cleaner/FileProtector;

    move-result-object v0

    .line 515
    .local v0, "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    iget-boolean v1, p0, Lcom/sleepycat/je/util/DbBackup;->networkRestore:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sleepycat/je/util/DbBackup;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 516
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getNodeSequence()Lcom/sleepycat/je/dbi/NodeSequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/NodeSequence;->getNextNetworkRestoreId()J

    move-result-wide v1

    goto :goto_0

    .end local p0    # "this":Lcom/sleepycat/je/util/DbBackup;
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/util/DbBackup;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 517
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getNodeSequence()Lcom/sleepycat/je/dbi/NodeSequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/NodeSequence;->getNextBackupId()J

    move-result-wide v1

    :goto_0
    nop

    .line 519
    .local v1, "backupId":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, p0, Lcom/sleepycat/je/util/DbBackup;->networkRestore:Z

    if-eqz v4, :cond_1

    const-string v4, "NetworkRestore"

    goto :goto_1

    :cond_1
    const-string v4, "Backup"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 525
    .local v3, "backupName":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/sleepycat/je/util/DbBackup;->networkRestore:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    goto :goto_2

    :cond_2
    move v4, v5

    .line 531
    .local v4, "nReservedFiles":I
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-init"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    .line 532
    invoke-virtual {v0, v6, v7, v8}, Lcom/sleepycat/je/cleaner/FileProtector;->protectFileRange(Ljava/lang/String;J)Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 541
    .local v6, "allFilesProtected":Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;
    :try_start_1
    iget-object v7, p0, Lcom/sleepycat/je/util/DbBackup;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v7}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDataEraser()Lcom/sleepycat/je/cleaner/DataEraser;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/sleepycat/je/cleaner/DataEraser;->abortErase(Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;)V

    .line 543
    iget-boolean v7, p0, Lcom/sleepycat/je/util/DbBackup;->envIsReadOnly:Z

    if-eqz v7, :cond_3

    .line 551
    iget-object v7, p0, Lcom/sleepycat/je/util/DbBackup;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v7}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sleepycat/je/log/FileManager;->getLastFileNum()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/sleepycat/je/util/DbBackup;->lastFileInBackup:J

    goto :goto_3

    .line 559
    :cond_3
    new-instance v7, Lcom/sleepycat/je/log/entry/SingleItemEntry;

    sget-object v8, Lcom/sleepycat/je/log/LogEntryType;->LOG_IMMUTABLE_FILE:Lcom/sleepycat/je/log/LogEntryType;

    new-instance v9, Lcom/sleepycat/je/log/entry/EmptyLogEntry;

    invoke-direct {v9}, Lcom/sleepycat/je/log/entry/EmptyLogEntry;-><init>()V

    invoke-direct {v7, v8, v9}, Lcom/sleepycat/je/log/entry/SingleItemEntry;-><init>(Lcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/log/Loggable;)V

    .line 562
    .local v7, "marker":Lcom/sleepycat/je/log/entry/LogEntry;
    iget-object v8, p0, Lcom/sleepycat/je/util/DbBackup;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v8}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v8

    sget-object v9, Lcom/sleepycat/je/log/ReplicationContext;->NO_REPLICATE:Lcom/sleepycat/je/log/ReplicationContext;

    invoke-virtual {v8, v7, v9}, Lcom/sleepycat/je/log/LogManager;->log(Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/ReplicationContext;)J

    move-result-wide v8

    .line 565
    .local v8, "markerLsn":J
    iget-object v10, p0, Lcom/sleepycat/je/util/DbBackup;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v10}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->forceLogFileFlip()J

    .line 566
    invoke-static {v8, v9}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/sleepycat/je/util/DbBackup;->lastFileInBackup:J

    .line 576
    .end local v7    # "marker":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v8    # "markerLsn":J
    :goto_3
    invoke-virtual {v0, v3, v4, v5}, Lcom/sleepycat/je/cleaner/FileProtector;->protectActiveFiles(Ljava/lang/String;IZ)Lcom/sleepycat/je/cleaner/FileProtector$ProtectedActiveFileSet;

    move-result-object v5

    iput-object v5, p0, Lcom/sleepycat/je/util/DbBackup;->protectedFileSet:Lcom/sleepycat/je/cleaner/FileProtector$ProtectedActiveFileSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 580
    :try_start_2
    invoke-virtual {v0, v6}, Lcom/sleepycat/je/cleaner/FileProtector;->removeFileProtection(Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;)V

    .line 581
    nop

    .line 584
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sleepycat/je/util/DbBackup;->backupStarted:Z

    .line 587
    iget-object v5, p0, Lcom/sleepycat/je/util/DbBackup;->protectedFileSet:Lcom/sleepycat/je/cleaner/FileProtector$ProtectedActiveFileSet;

    iget-wide v7, p0, Lcom/sleepycat/je/util/DbBackup;->lastFileInBackup:J

    invoke-virtual {v5, v7, v8}, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedActiveFileSet;->truncateTail(J)V

    .line 590
    iget-object v5, p0, Lcom/sleepycat/je/util/DbBackup;->protectedFileSet:Lcom/sleepycat/je/cleaner/FileProtector$ProtectedActiveFileSet;

    invoke-virtual {v5}, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedActiveFileSet;->getProtectedFiles()Ljava/util/NavigableSet;

    move-result-object v5

    iput-object v5, p0, Lcom/sleepycat/je/util/DbBackup;->snapshotFiles:Ljava/util/NavigableSet;

    .line 596
    iget-object v5, p0, Lcom/sleepycat/je/util/DbBackup;->protectedFileSet:Lcom/sleepycat/je/cleaner/FileProtector$ProtectedActiveFileSet;

    iget-wide v7, p0, Lcom/sleepycat/je/util/DbBackup;->firstFileInBackup:J

    invoke-virtual {v5, v7, v8}, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedActiveFileSet;->truncateHead(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 597
    monitor-exit p0

    return-void

    .line 580
    :catchall_0
    move-exception v5

    :try_start_3
    invoke-virtual {v0, v6}, Lcom/sleepycat/je/cleaner/FileProtector;->removeFileProtection(Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;)V

    throw v5

    .line 499
    .end local v0    # "fileProtector":Lcom/sleepycat/je/cleaner/FileProtector;
    .end local v1    # "backupId":J
    .end local v3    # "backupName":Ljava/lang/String;
    .end local v4    # "nReservedFiles":I
    .end local v6    # "allFilesProtected":Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/je/util/DbBackup;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const-string v1, "A replication operation is overwriting log files. The backup can not proceed because files may be invalid. The backup may be attempted at a later time."

    .line 500
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->createLogOverwriteException(Ljava/lang/String;)Lcom/sleepycat/je/OperationFailureException;

    move-result-object v0

    throw v0

    .line 494
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "startBackup was already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 492
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
