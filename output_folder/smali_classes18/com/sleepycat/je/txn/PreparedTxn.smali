.class public Lcom/sleepycat/je/txn/PreparedTxn;
.super Lcom/sleepycat/je/txn/Txn;
.source "PreparedTxn.java"


# direct methods
.method private constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;J)V
    .locals 6
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "config"    # Lcom/sleepycat/je/TransactionConfig;
    .param p3, "mandatedId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 33
    sget-object v3, Lcom/sleepycat/je/log/ReplicationContext;->NO_REPLICATE:Lcom/sleepycat/je/log/ReplicationContext;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/txn/Txn;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;Lcom/sleepycat/je/log/ReplicationContext;J)V

    .line 34
    return-void
.end method

.method public static createPreparedTxn(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;J)Lcom/sleepycat/je/txn/PreparedTxn;
    .locals 3
    .param p0, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p1, "config"    # Lcom/sleepycat/je/TransactionConfig;
    .param p2, "mandatedId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    .line 43
    .local v0, "ret":Lcom/sleepycat/je/txn/PreparedTxn;
    :try_start_0
    new-instance v1, Lcom/sleepycat/je/txn/PreparedTxn;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sleepycat/je/txn/PreparedTxn;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;J)V
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 47
    nop

    .line 48
    return-object v0

    .line 44
    :catch_0
    move-exception v1

    .line 45
    .local v1, "DE":Lcom/sleepycat/je/DatabaseException;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/txn/PreparedTxn;->close(Z)V

    .line 46
    throw v1
.end method


# virtual methods
.method protected generateId(Lcom/sleepycat/je/txn/TxnManager;J)J
    .locals 0
    .param p1, "txnManager"    # Lcom/sleepycat/je/txn/TxnManager;
    .param p2, "mandatedId"    # J

    .line 56
    return-wide p2
.end method
