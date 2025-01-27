.class public Lcom/sleepycat/je/XAEnvironment;
.super Lcom/sleepycat/je/Environment;
.source "XAEnvironment.java"

# interfaces
.implements Ljavax/transaction/xa/XAResource;


# static fields
.field private static final DEBUG:Z = false


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/sleepycat/je/EnvironmentConfig;)V
    .locals 0
    .param p1, "envHome"    # Ljava/io/File;
    .param p2, "configuration"    # Lcom/sleepycat/je/EnvironmentConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/EnvironmentNotFoundException;,
            Lcom/sleepycat/je/EnvironmentLockedException;
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/Environment;-><init>(Ljava/io/File;Lcom/sleepycat/je/EnvironmentConfig;)V

    .line 47
    return-void
.end method

.method private getXATransactionInternal(Ljavax/transaction/xa/Xid;)Lcom/sleepycat/je/txn/Txn;
    .locals 1
    .param p1, "xid"    # Ljavax/transaction/xa/Xid;

    .line 66
    invoke-virtual {p0}, Lcom/sleepycat/je/XAEnvironment;->getNonNullEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getTxnManager()Lcom/sleepycat/je/txn/TxnManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/txn/TxnManager;->getTxnFromXid(Ljavax/transaction/xa/Xid;)Lcom/sleepycat/je/txn/Txn;

    move-result-object v0

    return-object v0
.end method

.method private throwNewXAException(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "E"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 408
    new-instance v0, Ljavax/transaction/xa/XAException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/transaction/xa/XAException;-><init>(Ljava/lang/String;)V

    .line 409
    .local v0, "ret":Ljavax/transaction/xa/XAException;
    invoke-virtual {v0, p1}, Ljavax/transaction/xa/XAException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 410
    throw v0
.end method


# virtual methods
.method public commit(Ljavax/transaction/xa/Xid;Z)V
    .locals 4
    .param p1, "xid"    # Ljavax/transaction/xa/Xid;
    .param p2, "ignore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 92
    if-nez p1, :cond_0

    .line 93
    return-void

    .line 97
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/XAEnvironment;->checkOpen()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 98
    invoke-direct {p0, p1}, Lcom/sleepycat/je/XAEnvironment;->getXATransactionInternal(Ljavax/transaction/xa/Xid;)Lcom/sleepycat/je/txn/Txn;

    move-result-object v0

    .line 99
    .local v0, "txn":Lcom/sleepycat/je/txn/Txn;
    if-eqz v0, :cond_2

    .line 103
    new-instance v1, Lcom/sleepycat/je/Transaction;

    invoke-direct {v1, p0, v0}, Lcom/sleepycat/je/Transaction;-><init>(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/txn/Txn;)V

    invoke-virtual {p0, v1}, Lcom/sleepycat/je/XAEnvironment;->removeReferringHandle(Lcom/sleepycat/je/Transaction;)V

    .line 104
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Txn;->isOnlyAbortable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 107
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/txn/Txn;->commit(Ljavax/transaction/xa/Xid;)V

    .line 110
    .end local v0    # "txn":Lcom/sleepycat/je/txn/Txn;
    goto :goto_0

    .line 105
    .restart local v0    # "txn":Lcom/sleepycat/je/txn/Txn;
    :cond_1
    new-instance v1, Ljavax/transaction/xa/XAException;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljavax/transaction/xa/XAException;-><init>(I)V

    .end local p1    # "xid":Ljavax/transaction/xa/Xid;
    .end local p2    # "ignore":Z
    throw v1

    .line 100
    .restart local p1    # "xid":Ljavax/transaction/xa/Xid;
    .restart local p2    # "ignore":Z
    :cond_2
    new-instance v1, Ljavax/transaction/xa/XAException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No transaction found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " during commit."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/transaction/xa/XAException;-><init>(Ljava/lang/String;)V

    .end local p1    # "xid":Ljavax/transaction/xa/Xid;
    .end local p2    # "ignore":Z
    throw v1
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v0    # "txn":Lcom/sleepycat/je/txn/Txn;
    .restart local p1    # "xid":Ljavax/transaction/xa/Xid;
    .restart local p2    # "ignore":Z
    :catch_0
    move-exception v0

    .line 109
    .local v0, "DE":Lcom/sleepycat/je/DatabaseException;
    invoke-direct {p0, v0}, Lcom/sleepycat/je/XAEnvironment;->throwNewXAException(Ljava/lang/Exception;)V

    .line 114
    .end local v0    # "DE":Lcom/sleepycat/je/DatabaseException;
    :goto_0
    return-void
.end method

.method public end(Ljavax/transaction/xa/Xid;I)V
    .locals 8
    .param p1, "xid"    # Ljavax/transaction/xa/Xid;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 126
    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 127
    .local v0, "tmFail":Z
    :goto_0
    const/high16 v3, 0x4000000

    and-int/2addr v3, p2

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 128
    .local v3, "tmSuccess":Z
    :goto_1
    const/high16 v4, 0x2000000

    and-int/2addr v4, p2

    if-eqz v4, :cond_2

    move v1, v2

    .line 129
    .local v1, "tmSuspend":Z
    :cond_2
    if-nez v0, :cond_3

    if-nez v3, :cond_3

    if-eqz v1, :cond_d

    :cond_3
    if-eqz v0, :cond_4

    if-nez v3, :cond_d

    :cond_4
    if-nez v0, :cond_5

    if-eqz v3, :cond_6

    :cond_5
    if-nez v1, :cond_d

    .line 135
    :cond_6
    invoke-virtual {p0}, Lcom/sleepycat/je/XAEnvironment;->getNonNullEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v4

    .line 143
    .local v4, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getTxnManager()Lcom/sleepycat/je/txn/TxnManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/txn/TxnManager;->unsetTxnForThread()Lcom/sleepycat/je/Transaction;

    move-result-object v5

    .line 144
    .local v5, "transaction":Lcom/sleepycat/je/Transaction;
    if-nez v5, :cond_7

    .line 145
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/XAEnvironment;->getXATransaction(Ljavax/transaction/xa/Xid;)Lcom/sleepycat/je/Transaction;

    move-result-object v5

    .line 147
    :cond_7
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/sleepycat/je/Transaction;->getTxn()Lcom/sleepycat/je/txn/Txn;

    move-result-object v6

    goto :goto_2

    :cond_8
    const/4 v6, 0x0

    .line 148
    .local v6, "txn":Lcom/sleepycat/je/txn/Txn;
    :goto_2
    if-eqz v6, :cond_c

    .line 152
    if-eqz v0, :cond_9

    .line 160
    new-instance v7, Lcom/sleepycat/je/XAFailureException;

    invoke-direct {v7, v6}, Lcom/sleepycat/je/XAFailureException;-><init>(Lcom/sleepycat/je/txn/Locker;)V

    .line 163
    :cond_9
    if-eqz v1, :cond_b

    .line 164
    invoke-virtual {v6}, Lcom/sleepycat/je/txn/Txn;->isSuspended()Z

    move-result v7

    if-nez v7, :cond_a

    .line 167
    invoke-virtual {v6, v2}, Lcom/sleepycat/je/txn/Txn;->setSuspended(Z)V

    goto :goto_3

    .line 165
    :cond_a
    new-instance v2, Ljavax/transaction/xa/XAException;

    const/4 v7, -0x6

    invoke-direct {v2, v7}, Ljavax/transaction/xa/XAException;-><init>(I)V

    throw v2

    .line 171
    :cond_b
    :goto_3
    return-void

    .line 149
    :cond_c
    new-instance v2, Ljavax/transaction/xa/XAException;

    const/4 v7, -0x4

    invoke-direct {v2, v7}, Ljavax/transaction/xa/XAException;-><init>(I)V

    throw v2

    .line 132
    .end local v4    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v5    # "transaction":Lcom/sleepycat/je/Transaction;
    .end local v6    # "txn":Lcom/sleepycat/je/txn/Txn;
    :cond_d
    new-instance v2, Ljavax/transaction/xa/XAException;

    const/4 v4, -0x5

    invoke-direct {v2, v4}, Ljavax/transaction/xa/XAException;-><init>(I)V

    throw v2
.end method

.method public forget(Ljavax/transaction/xa/Xid;)V
    .locals 2
    .param p1, "xid"    # Ljavax/transaction/xa/Xid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 181
    new-instance v0, Ljavax/transaction/xa/XAException;

    const/4 v1, -0x4

    invoke-direct {v0, v1}, Ljavax/transaction/xa/XAException;-><init>(I)V

    throw v0
.end method

.method public getTransactionTimeout()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 314
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/XAEnvironment;->getConfig()Lcom/sleepycat/je/EnvironmentConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentConfig;->getTxnTimeout()J

    move-result-wide v0

    const-wide/32 v2, 0xf423f

    add-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v0, v0

    return v0

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "DE":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/sleepycat/je/XAEnvironment;->throwNewXAException(Ljava/lang/Exception;)V

    .line 318
    .end local v0    # "DE":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public getXATransaction(Ljavax/transaction/xa/Xid;)Lcom/sleepycat/je/Transaction;
    .locals 2
    .param p1, "xid"    # Ljavax/transaction/xa/Xid;

    .line 55
    invoke-direct {p0, p1}, Lcom/sleepycat/je/XAEnvironment;->getXATransactionInternal(Ljavax/transaction/xa/Xid;)Lcom/sleepycat/je/txn/Txn;

    move-result-object v0

    .line 56
    .local v0, "ret":Lcom/sleepycat/je/txn/Txn;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sleepycat/je/txn/PreparedTxn;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    new-instance v1, Lcom/sleepycat/je/Transaction;

    invoke-direct {v1, p0, v0}, Lcom/sleepycat/je/Transaction;-><init>(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/txn/Txn;)V

    return-object v1

    .line 58
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public isSameRM(Ljavax/transaction/xa/XAResource;)Z
    .locals 3
    .param p1, "rm"    # Ljavax/transaction/xa/XAResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 192
    const/4 v0, 0x0

    .line 194
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/XAEnvironment;->checkOpen()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 197
    goto :goto_0

    .line 195
    :catch_0
    move-exception v1

    .line 196
    .local v1, "DE":Lcom/sleepycat/je/DatabaseException;
    invoke-direct {p0, v1}, Lcom/sleepycat/je/XAEnvironment;->throwNewXAException(Ljava/lang/Exception;)V

    .line 199
    .end local v1    # "DE":Lcom/sleepycat/je/DatabaseException;
    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 200
    return v1

    .line 203
    :cond_0
    instance-of v2, p1, Lcom/sleepycat/je/XAEnvironment;

    if-nez v2, :cond_1

    .line 204
    return v1

    .line 207
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/sleepycat/je/XAEnvironment;

    .line 208
    invoke-static {v2}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    .line 207
    :cond_2
    return v1
.end method

.method public prepare(Ljavax/transaction/xa/Xid;)I
    .locals 4
    .param p1, "xid"    # Ljavax/transaction/xa/Xid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 220
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/XAEnvironment;->checkOpen()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 221
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/XAEnvironment;->getXATransaction(Ljavax/transaction/xa/Xid;)Lcom/sleepycat/je/Transaction;

    move-result-object v0

    .line 222
    .local v0, "txn":Lcom/sleepycat/je/Transaction;
    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {v0}, Lcom/sleepycat/je/Transaction;->getTxn()Lcom/sleepycat/je/txn/Txn;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/txn/Txn;->prepare(Ljavax/transaction/xa/Xid;)I

    move-result v1

    .line 237
    .local v1, "ret":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 238
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/sleepycat/je/XAEnvironment;->commit(Ljavax/transaction/xa/Xid;Z)V

    .line 241
    :cond_0
    return v1

    .line 223
    .end local v1    # "ret":I
    :cond_1
    new-instance v1, Ljavax/transaction/xa/XAException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No transaction found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " during prepare."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/transaction/xa/XAException;-><init>(Ljava/lang/String;)V

    .end local p1    # "xid":Ljavax/transaction/xa/Xid;
    throw v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .end local v0    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local p1    # "xid":Ljavax/transaction/xa/Xid;
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, v0}, Lcom/sleepycat/je/XAEnvironment;->throwNewXAException(Ljava/lang/Exception;)V

    .line 245
    .end local v0    # "e":Ljava/lang/RuntimeException;
    const/4 v0, 0x0

    return v0
.end method

.method public recover(I)[Ljavax/transaction/xa/Xid;
    .locals 4
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 258
    const/high16 v0, 0x1000000

    and-int/2addr v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 259
    .local v0, "tmStartRScan":Z
    :goto_0
    const/high16 v3, 0x800000

    and-int/2addr v3, p1

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 260
    .local v1, "tmEndRScan":Z
    :goto_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_3

    :cond_2
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    if-nez p1, :cond_3

    goto :goto_2

    .line 262
    :cond_3
    new-instance v2, Ljavax/transaction/xa/XAException;

    const/4 v3, -0x5

    invoke-direct {v2, v3}, Ljavax/transaction/xa/XAException;-><init>(I)V

    throw v2

    .line 270
    :cond_4
    :goto_2
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/XAEnvironment;->checkOpen()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    .line 276
    .local v2, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getTxnManager()Lcom/sleepycat/je/txn/TxnManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/txn/TxnManager;->XARecover()[Ljavax/transaction/xa/Xid;

    move-result-object v3
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 277
    .end local v2    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :catch_0
    move-exception v2

    .line 278
    .local v2, "DE":Lcom/sleepycat/je/DatabaseException;
    invoke-direct {p0, v2}, Lcom/sleepycat/je/XAEnvironment;->throwNewXAException(Ljava/lang/Exception;)V

    .line 280
    .end local v2    # "DE":Lcom/sleepycat/je/DatabaseException;
    const/4 v2, 0x0

    return-object v2
.end method

.method public rollback(Ljavax/transaction/xa/Xid;)V
    .locals 4
    .param p1, "xid"    # Ljavax/transaction/xa/Xid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 292
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/XAEnvironment;->checkOpen()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 293
    invoke-direct {p0, p1}, Lcom/sleepycat/je/XAEnvironment;->getXATransactionInternal(Ljavax/transaction/xa/Xid;)Lcom/sleepycat/je/txn/Txn;

    move-result-object v0

    .line 294
    .local v0, "txn":Lcom/sleepycat/je/txn/Txn;
    if-eqz v0, :cond_0

    .line 298
    new-instance v1, Lcom/sleepycat/je/Transaction;

    invoke-direct {v1, p0, v0}, Lcom/sleepycat/je/Transaction;-><init>(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/txn/Txn;)V

    invoke-virtual {p0, v1}, Lcom/sleepycat/je/XAEnvironment;->removeReferringHandle(Lcom/sleepycat/je/Transaction;)V

    .line 299
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/txn/Txn;->abort(Ljavax/transaction/xa/Xid;)V

    .line 302
    .end local v0    # "txn":Lcom/sleepycat/je/txn/Txn;
    goto :goto_0

    .line 295
    .restart local v0    # "txn":Lcom/sleepycat/je/txn/Txn;
    :cond_0
    new-instance v1, Ljavax/transaction/xa/XAException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No transaction found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " during rollback."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/transaction/xa/XAException;-><init>(Ljava/lang/String;)V

    .end local p1    # "xid":Ljavax/transaction/xa/Xid;
    throw v1
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .end local v0    # "txn":Lcom/sleepycat/je/txn/Txn;
    .restart local p1    # "xid":Ljavax/transaction/xa/Xid;
    :catch_0
    move-exception v0

    .line 301
    .local v0, "DE":Lcom/sleepycat/je/DatabaseException;
    invoke-direct {p0, v0}, Lcom/sleepycat/je/XAEnvironment;->throwNewXAException(Ljava/lang/Exception;)V

    .line 307
    .end local v0    # "DE":Lcom/sleepycat/je/DatabaseException;
    :goto_0
    return-void
.end method

.method public setTransactionTimeout(I)Z
    .locals 1
    .param p1, "timeout"    # I

    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method public setXATransaction(Ljavax/transaction/xa/Xid;Lcom/sleepycat/je/Transaction;)V
    .locals 3
    .param p1, "xid"    # Ljavax/transaction/xa/Xid;
    .param p2, "txn"    # Lcom/sleepycat/je/Transaction;

    .line 76
    invoke-virtual {p0}, Lcom/sleepycat/je/XAEnvironment;->getNonNullEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getTxnManager()Lcom/sleepycat/je/txn/TxnManager;

    move-result-object v0

    .line 77
    invoke-virtual {p2}, Lcom/sleepycat/je/Transaction;->getTxn()Lcom/sleepycat/je/txn/Txn;

    move-result-object v1

    .line 76
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/sleepycat/je/txn/TxnManager;->registerXATxn(Ljavax/transaction/xa/Xid;Lcom/sleepycat/je/txn/Txn;Z)V

    .line 78
    return-void
.end method

.method public start(Ljavax/transaction/xa/Xid;I)V
    .locals 7
    .param p1, "xid"    # Ljavax/transaction/xa/Xid;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/transaction/xa/XAException;
        }
    .end annotation

    .line 334
    const/high16 v0, 0x200000

    and-int/2addr v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 335
    .local v0, "tmJoin":Z
    :goto_0
    const/high16 v3, 0x8000000

    and-int/2addr v3, p2

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 338
    .local v1, "tmResume":Z
    :goto_1
    if-eqz p1, :cond_c

    if-eqz v0, :cond_2

    if-nez v1, :cond_c

    :cond_2
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    if-nez p2, :cond_c

    .line 347
    :cond_3
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/XAEnvironment;->getXATransaction(Ljavax/transaction/xa/Xid;)Lcom/sleepycat/je/Transaction;

    move-result-object v3

    .line 348
    .local v3, "txn":Lcom/sleepycat/je/Transaction;
    invoke-virtual {p0}, Lcom/sleepycat/je/XAEnvironment;->getNonNullEnvImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getTxnManager()Lcom/sleepycat/je/txn/TxnManager;

    move-result-object v4

    .line 350
    .local v4, "txnMgr":Lcom/sleepycat/je/txn/TxnManager;
    if-nez p2, :cond_5

    .line 356
    if-nez v3, :cond_4

    .line 362
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2}, Lcom/sleepycat/je/XAEnvironment;->beginTransaction(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/Transaction;

    move-result-object v2

    move-object v3, v2

    .line 363
    invoke-virtual {p0, p1, v3}, Lcom/sleepycat/je/XAEnvironment;->setXATransaction(Ljavax/transaction/xa/Xid;Lcom/sleepycat/je/Transaction;)V

    goto :goto_2

    .line 366
    :cond_4
    new-instance v2, Ljavax/transaction/xa/XAException;

    const/4 v5, -0x8

    invoke-direct {v2, v5}, Ljavax/transaction/xa/XAException;-><init>(I)V

    .end local v0    # "tmJoin":Z
    .end local v1    # "tmResume":Z
    .end local p1    # "xid":Ljavax/transaction/xa/Xid;
    .end local p2    # "flags":I
    throw v2

    .line 368
    .restart local v0    # "tmJoin":Z
    .restart local v1    # "tmResume":Z
    .restart local p1    # "xid":Ljavax/transaction/xa/Xid;
    .restart local p2    # "flags":I
    :cond_5
    const/4 v5, -0x6

    const/4 v6, -0x4

    if-eqz v0, :cond_8

    .line 369
    if-eqz v3, :cond_7

    .line 373
    invoke-virtual {v4}, Lcom/sleepycat/je/txn/TxnManager;->getTxnForThread()Lcom/sleepycat/je/Transaction;

    move-result-object v2

    if-nez v2, :cond_6

    .line 374
    invoke-virtual {v3}, Lcom/sleepycat/je/Transaction;->getPrepared()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    .line 375
    :cond_6
    new-instance v2, Ljavax/transaction/xa/XAException;

    invoke-direct {v2, v5}, Ljavax/transaction/xa/XAException;-><init>(I)V

    .end local v0    # "tmJoin":Z
    .end local v1    # "tmResume":Z
    .end local p1    # "xid":Ljavax/transaction/xa/Xid;
    .end local p2    # "flags":I
    throw v2

    .line 370
    .restart local v0    # "tmJoin":Z
    .restart local v1    # "tmResume":Z
    .restart local p1    # "xid":Ljavax/transaction/xa/Xid;
    .restart local p2    # "flags":I
    :cond_7
    new-instance v2, Ljavax/transaction/xa/XAException;

    invoke-direct {v2, v6}, Ljavax/transaction/xa/XAException;-><init>(I)V

    .end local v0    # "tmJoin":Z
    .end local v1    # "tmResume":Z
    .end local p1    # "xid":Ljavax/transaction/xa/Xid;
    .end local p2    # "flags":I
    throw v2

    .line 377
    .restart local v0    # "tmJoin":Z
    .restart local v1    # "tmResume":Z
    .restart local p1    # "xid":Ljavax/transaction/xa/Xid;
    .restart local p2    # "flags":I
    :cond_8
    if-eqz v1, :cond_b

    .line 378
    if-eqz v3, :cond_a

    .line 382
    invoke-virtual {v3}, Lcom/sleepycat/je/Transaction;->getTxn()Lcom/sleepycat/je/txn/Txn;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sleepycat/je/txn/Txn;->isSuspended()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 385
    invoke-virtual {v3}, Lcom/sleepycat/je/Transaction;->getTxn()Lcom/sleepycat/je/txn/Txn;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/sleepycat/je/txn/Txn;->setSuspended(Z)V

    goto :goto_2

    .line 383
    :cond_9
    new-instance v2, Ljavax/transaction/xa/XAException;

    invoke-direct {v2, v5}, Ljavax/transaction/xa/XAException;-><init>(I)V

    .end local v0    # "tmJoin":Z
    .end local v1    # "tmResume":Z
    .end local p1    # "xid":Ljavax/transaction/xa/Xid;
    .end local p2    # "flags":I
    throw v2

    .line 379
    .restart local v0    # "tmJoin":Z
    .restart local v1    # "tmResume":Z
    .restart local p1    # "xid":Ljavax/transaction/xa/Xid;
    .restart local p2    # "flags":I
    :cond_a
    new-instance v2, Ljavax/transaction/xa/XAException;

    invoke-direct {v2, v6}, Ljavax/transaction/xa/XAException;-><init>(I)V

    .end local v0    # "tmJoin":Z
    .end local v1    # "tmResume":Z
    .end local p1    # "xid":Ljavax/transaction/xa/Xid;
    .end local p2    # "flags":I
    throw v2

    .line 392
    .restart local v0    # "tmJoin":Z
    .restart local v1    # "tmResume":Z
    .restart local p1    # "xid":Ljavax/transaction/xa/Xid;
    .restart local p2    # "flags":I
    :cond_b
    :goto_2
    invoke-virtual {v4, v3}, Lcom/sleepycat/je/txn/TxnManager;->setTxnForThread(Lcom/sleepycat/je/Transaction;)V
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .end local v3    # "txn":Lcom/sleepycat/je/Transaction;
    .end local v4    # "txnMgr":Lcom/sleepycat/je/txn/TxnManager;
    goto :goto_3

    .line 393
    :catch_0
    move-exception v2

    .line 397
    .local v2, "DE":Lcom/sleepycat/je/DatabaseException;
    invoke-direct {p0, v2}, Lcom/sleepycat/je/XAEnvironment;->throwNewXAException(Ljava/lang/Exception;)V

    .line 403
    .end local v2    # "DE":Lcom/sleepycat/je/DatabaseException;
    :goto_3
    return-void

    .line 343
    :cond_c
    new-instance v2, Ljavax/transaction/xa/XAException;

    const/4 v3, -0x5

    invoke-direct {v2, v3}, Ljavax/transaction/xa/XAException;-><init>(I)V

    throw v2
.end method
