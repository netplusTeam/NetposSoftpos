.class public Lcom/sleepycat/je/txn/LockerFactory;
.super Ljava/lang/Object;
.source "LockerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInternalReadOperationLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/txn/Locker;
    .locals 1
    .param p0, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 220
    invoke-static {p0}, Lcom/sleepycat/je/txn/BasicLocker;->createBasicLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/txn/BasicLocker;

    move-result-object v0

    return-object v0
.end method

.method public static getReadableLocker(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/Transaction;Z)Lcom/sleepycat/je/txn/Locker;
    .locals 1
    .param p0, "dbHandle"    # Lcom/sleepycat/je/Database;
    .param p1, "userTxn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "readCommittedIsolation"    # Z

    .line 130
    if-eqz p1, :cond_0

    .line 132
    invoke-static {p1}, Lcom/sleepycat/je/DbInternal;->getLocker(Lcom/sleepycat/je/Transaction;)Lcom/sleepycat/je/txn/Locker;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 130
    :goto_0
    invoke-static {p0, v0, p2}, Lcom/sleepycat/je/txn/LockerFactory;->getReadableLocker(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/txn/Locker;Z)Lcom/sleepycat/je/txn/Locker;

    move-result-object v0

    return-object v0
.end method

.method public static getReadableLocker(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/txn/Locker;Z)Lcom/sleepycat/je/txn/Locker;
    .locals 3
    .param p0, "dbHandle"    # Lcom/sleepycat/je/Database;
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "readCommittedIsolation"    # Z

    .line 144
    invoke-static {p0}, Lcom/sleepycat/je/DbInternal;->getDbImpl(Lcom/sleepycat/je/Database;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    .line 146
    .local v0, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isTransactional()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 148
    invoke-virtual {p1}, Lcom/sleepycat/je/txn/Locker;->isTransactional()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A Transaction cannot be used because the database was opened non-transactionally"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sleepycat/je/txn/Locker;->isTransactional()Z

    move-result v1

    if-nez v1, :cond_2

    .line 156
    const/4 p1, 0x0

    .line 164
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/sleepycat/je/txn/Locker;->isReadCommittedIsolation()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 165
    const/4 p2, 0x1

    .line 168
    :cond_3
    nop

    .line 169
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isReplicated()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 170
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReplicated()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 172
    .local v1, "autoTxnIsReplicated":Z
    :goto_1
    nop

    .line 173
    invoke-virtual {p0}, Lcom/sleepycat/je/Database;->getEnvironment()Lcom/sleepycat/je/Environment;

    move-result-object v2

    .line 172
    invoke-static {v2, p1, v1, p2}, Lcom/sleepycat/je/txn/LockerFactory;->getReadableLocker(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/txn/Locker;ZZ)Lcom/sleepycat/je/txn/Locker;

    move-result-object v2

    return-object v2
.end method

.method private static getReadableLocker(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/txn/Locker;ZZ)Lcom/sleepycat/je/txn/Locker;
    .locals 3
    .param p0, "env"    # Lcom/sleepycat/je/Environment;
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "autoTxnIsReplicated"    # Z
    .param p3, "readCommittedIsolation"    # Z

    .line 186
    invoke-static {p0}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 188
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    if-nez p1, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->getThreadTransaction()Lcom/sleepycat/je/Transaction;

    move-result-object v1

    .line 190
    .local v1, "xaTxn":Lcom/sleepycat/je/Transaction;
    if-eqz v1, :cond_0

    .line 191
    invoke-static {v1}, Lcom/sleepycat/je/DbInternal;->getLocker(Lcom/sleepycat/je/Transaction;)Lcom/sleepycat/je/txn/Locker;

    move-result-object v2

    return-object v2

    .line 194
    :cond_0
    nop

    .line 195
    invoke-static {v0, p2}, Lcom/sleepycat/je/txn/ThreadLocker;->createThreadLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)Lcom/sleepycat/je/txn/ThreadLocker;

    move-result-object v2

    .line 194
    return-object v2

    .line 202
    .end local v1    # "xaTxn":Lcom/sleepycat/je/Transaction;
    :cond_1
    if-eqz p3, :cond_2

    .line 203
    invoke-static {v0, p1}, Lcom/sleepycat/je/txn/ReadCommittedLocker;->createReadCommittedLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/txn/Locker;)Lcom/sleepycat/je/txn/ReadCommittedLocker;

    move-result-object v1

    return-object v1

    .line 207
    :cond_2
    return-object p1
.end method

.method public static getWritableLocker(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Transaction;ZZZ)Lcom/sleepycat/je/txn/Locker;
    .locals 6
    .param p0, "env"    # Lcom/sleepycat/je/Environment;
    .param p1, "userTxn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "isInternalDb"    # Z
    .param p3, "dbIsTransactional"    # Z
    .param p4, "autoTxnIsReplicated"    # Z

    .line 40
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/je/txn/LockerFactory;->getWritableLocker(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Transaction;ZZZLcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/txn/Locker;

    move-result-object v0

    return-object v0
.end method

.method public static getWritableLocker(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Transaction;ZZZLcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/txn/Locker;
    .locals 4
    .param p0, "env"    # Lcom/sleepycat/je/Environment;
    .param p1, "userTxn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "isInternalDb"    # Z
    .param p3, "dbIsTransactional"    # Z
    .param p4, "autoTxnIsReplicated"    # Z
    .param p5, "autoCommitConfig"    # Lcom/sleepycat/je/TransactionConfig;

    .line 63
    invoke-static {p0}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 64
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isTransactional()Z

    move-result v1

    .line 66
    .local v1, "envIsTransactional":Z
    if-nez p1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->getThreadTransaction()Lcom/sleepycat/je/Transaction;

    move-result-object v2

    .line 68
    .local v2, "xaLocker":Lcom/sleepycat/je/Transaction;
    if-eqz v2, :cond_0

    .line 69
    invoke-static {v2}, Lcom/sleepycat/je/DbInternal;->getLocker(Lcom/sleepycat/je/Transaction;)Lcom/sleepycat/je/txn/Locker;

    move-result-object v3

    return-object v3

    .line 73
    .end local v2    # "xaLocker":Lcom/sleepycat/je/Transaction;
    :cond_0
    if-eqz p3, :cond_3

    if-nez p1, :cond_3

    .line 75
    if-nez p5, :cond_1

    .line 76
    invoke-static {p0}, Lcom/sleepycat/je/DbInternal;->getDefaultTxnConfig(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/TransactionConfig;

    move-result-object p5

    .line 79
    :cond_1
    if-eqz p4, :cond_2

    sget-object v2, Lcom/sleepycat/je/log/ReplicationContext;->MASTER:Lcom/sleepycat/je/log/ReplicationContext;

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/sleepycat/je/log/ReplicationContext;->NO_REPLICATE:Lcom/sleepycat/je/log/ReplicationContext;

    :goto_0
    invoke-static {v0, p5, v2}, Lcom/sleepycat/je/txn/Txn;->createAutoTxn(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/txn/Txn;

    move-result-object v2

    return-object v2

    .line 87
    :cond_3
    if-nez p1, :cond_4

    .line 89
    nop

    .line 90
    invoke-static {v0, p4}, Lcom/sleepycat/je/txn/ThreadLocker;->createThreadLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)Lcom/sleepycat/je/txn/ThreadLocker;

    move-result-object v2

    .line 89
    return-object v2

    .line 97
    :cond_4
    if-nez p2, :cond_6

    if-eqz v1, :cond_5

    goto :goto_1

    .line 98
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "A Transaction cannot be used because the environment was opened non-transactionally"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 102
    :cond_6
    :goto_1
    if-eqz p3, :cond_8

    .line 113
    invoke-static {p1}, Lcom/sleepycat/je/DbInternal;->getLocker(Lcom/sleepycat/je/Transaction;)Lcom/sleepycat/je/txn/Locker;

    move-result-object v2

    .line 114
    .local v2, "locker":Lcom/sleepycat/je/txn/Locker;
    invoke-virtual {v2}, Lcom/sleepycat/je/txn/Locker;->isReadCommittedIsolation()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 115
    invoke-static {v0, v2}, Lcom/sleepycat/je/txn/ReadCommittedLocker;->createReadCommittedLocker(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/txn/Locker;)Lcom/sleepycat/je/txn/ReadCommittedLocker;

    move-result-object v3

    return-object v3

    .line 119
    :cond_7
    return-object v2

    .line 103
    .end local v2    # "locker":Lcom/sleepycat/je/txn/Locker;
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "A Transaction cannot be used because the database was opened non-transactionally"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
