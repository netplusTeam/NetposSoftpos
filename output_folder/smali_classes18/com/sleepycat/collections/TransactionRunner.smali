.class public Lcom/sleepycat/collections/TransactionRunner;
.super Ljava/lang/Object;
.source "TransactionRunner.java"


# static fields
.field public static final DEFAULT_MAX_RETRIES:I = 0xa


# instance fields
.field private allowNestedTxn:Z

.field private config:Lcom/sleepycat/je/TransactionConfig;

.field private currentTxn:Lcom/sleepycat/collections/CurrentTransaction;

.field private maxRetries:I


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/Environment;)V
    .locals 2
    .param p1, "env"    # Lcom/sleepycat/je/Environment;

    .line 98
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sleepycat/collections/TransactionRunner;-><init>(Lcom/sleepycat/je/Environment;ILcom/sleepycat/je/TransactionConfig;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/Environment;ILcom/sleepycat/je/TransactionConfig;)V
    .locals 1
    .param p1, "env"    # Lcom/sleepycat/je/Environment;
    .param p2, "maxRetries"    # I
    .param p3, "config"    # Lcom/sleepycat/je/TransactionConfig;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-static {p1}, Lcom/sleepycat/collections/CurrentTransaction;->getInstance(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/collections/CurrentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/collections/TransactionRunner;->currentTxn:Lcom/sleepycat/collections/CurrentTransaction;

    .line 120
    iput p2, p0, Lcom/sleepycat/collections/TransactionRunner;->maxRetries:I

    .line 121
    iput-object p3, p0, Lcom/sleepycat/collections/TransactionRunner;->config:Lcom/sleepycat/je/TransactionConfig;

    .line 122
    return-void
.end method


# virtual methods
.method public getAllowNestedTransactions()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/sleepycat/collections/TransactionRunner;->allowNestedTxn:Z

    return v0
.end method

.method public getMaxRetries()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/sleepycat/collections/TransactionRunner;->maxRetries:I

    return v0
.end method

.method public getTransactionConfig()Lcom/sleepycat/je/TransactionConfig;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/sleepycat/collections/TransactionRunner;->config:Lcom/sleepycat/je/TransactionConfig;

    return-object v0
.end method

.method public handleException(Ljava/lang/Exception;II)I
    .locals 1
    .param p1, "exception"    # Ljava/lang/Exception;
    .param p2, "retries"    # I
    .param p3, "maxRetries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 343
    instance-of v0, p1, Lcom/sleepycat/je/LockConflictException;

    if-eqz v0, :cond_0

    .line 344
    return p3

    .line 346
    :cond_0
    throw p1
.end method

.method public run(Lcom/sleepycat/collections/TransactionWorker;)V
    .locals 6
    .param p1, "worker"    # Lcom/sleepycat/collections/TransactionWorker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/sleepycat/collections/TransactionRunner;->currentTxn:Lcom/sleepycat/collections/CurrentTransaction;

    if-eqz v0, :cond_6

    iget-boolean v1, p0, Lcom/sleepycat/collections/TransactionRunner;->allowNestedTxn:Z

    if-nez v1, :cond_0

    .line 235
    invoke-virtual {v0}, Lcom/sleepycat/collections/CurrentTransaction;->getTransaction()Lcom/sleepycat/je/Transaction;

    move-result-object v0

    if-nez v0, :cond_6

    .line 237
    :cond_0
    iget v0, p0, Lcom/sleepycat/collections/TransactionRunner;->maxRetries:I

    .line 238
    .local v0, "useMaxRetries":I
    const/4 v1, 0x0

    .line 239
    .local v1, "retries":I
    :goto_0
    const/4 v2, 0x0

    .line 241
    .local v2, "txn":Lcom/sleepycat/je/Transaction;
    :try_start_0
    iget-object v3, p0, Lcom/sleepycat/collections/TransactionRunner;->currentTxn:Lcom/sleepycat/collections/CurrentTransaction;

    iget-object v4, p0, Lcom/sleepycat/collections/TransactionRunner;->config:Lcom/sleepycat/je/TransactionConfig;

    invoke-virtual {v3, v4}, Lcom/sleepycat/collections/CurrentTransaction;->beginTransaction(Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/Transaction;

    move-result-object v3

    move-object v2, v3

    .line 242
    invoke-interface {p1}, Lcom/sleepycat/collections/TransactionWorker;->doWork()V

    .line 243
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/sleepycat/collections/TransactionRunner;->currentTxn:Lcom/sleepycat/collections/CurrentTransaction;

    invoke-virtual {v3}, Lcom/sleepycat/collections/CurrentTransaction;->getTransaction()Lcom/sleepycat/je/Transaction;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 244
    iget-object v3, p0, Lcom/sleepycat/collections/TransactionRunner;->currentTxn:Lcom/sleepycat/collections/CurrentTransaction;

    invoke-virtual {v3}, Lcom/sleepycat/collections/CurrentTransaction;->commitTransaction()Lcom/sleepycat/je/Transaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    :cond_1
    return-void

    .line 247
    :catchall_0
    move-exception v3

    .line 248
    .local v3, "e":Ljava/lang/Throwable;
    invoke-static {v3}, Lcom/sleepycat/util/ExceptionUnwrapper;->unwrapAny(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    .line 249
    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/sleepycat/collections/TransactionRunner;->currentTxn:Lcom/sleepycat/collections/CurrentTransaction;

    invoke-virtual {v4}, Lcom/sleepycat/collections/CurrentTransaction;->getTransaction()Lcom/sleepycat/je/Transaction;

    move-result-object v4

    if-ne v2, v4, :cond_3

    .line 251
    :try_start_1
    iget-object v4, p0, Lcom/sleepycat/collections/TransactionRunner;->currentTxn:Lcom/sleepycat/collections/CurrentTransaction;

    invoke-virtual {v4}, Lcom/sleepycat/collections/CurrentTransaction;->abortTransaction()Lcom/sleepycat/je/Transaction;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 265
    goto :goto_1

    .line 252
    :catchall_1
    move-exception v4

    .line 259
    .local v4, "e2":Ljava/lang/Throwable;
    sget-boolean v5, Lcom/sleepycat/compat/DbCompat;->TRANSACTION_RUNNER_PRINT_STACK_TRACES:Z

    if-eqz v5, :cond_2

    .line 261
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 264
    :cond_2
    move v1, v0

    .line 268
    .end local v4    # "e2":Ljava/lang/Throwable;
    :cond_3
    :goto_1
    instance-of v4, v3, Ljava/lang/Error;

    if-nez v4, :cond_5

    .line 272
    move-object v4, v3

    check-cast v4, Ljava/lang/Exception;

    .line 273
    .local v4, "ex":Ljava/lang/Exception;
    nop

    .line 274
    invoke-virtual {p0, v4, v1, v0}, Lcom/sleepycat/collections/TransactionRunner;->handleException(Ljava/lang/Exception;II)I

    move-result v0

    .line 275
    if-ge v1, v0, :cond_4

    .line 238
    .end local v2    # "txn":Lcom/sleepycat/je/Transaction;
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v4    # "ex":Ljava/lang/Exception;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 276
    .restart local v2    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local v3    # "e":Ljava/lang/Throwable;
    .restart local v4    # "ex":Ljava/lang/Exception;
    :cond_4
    throw v4

    .line 269
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_5
    move-object v4, v3

    check-cast v4, Ljava/lang/Error;

    throw v4

    .line 283
    .end local v0    # "useMaxRetries":I
    .end local v1    # "retries":I
    .end local v2    # "txn":Lcom/sleepycat/je/Transaction;
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_6
    :try_start_2
    invoke-interface {p1}, Lcom/sleepycat/collections/TransactionWorker;->doWork()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 286
    nop

    .line 288
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sleepycat/util/ExceptionUnwrapper;->unwrap(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v1

    throw v1
.end method

.method public setAllowNestedTransactions(Z)V
    .locals 2
    .param p1, "allowNestedTxn"    # Z

    .line 176
    if-nez p1, :cond_0

    .line 180
    iput-boolean p1, p0, Lcom/sleepycat/collections/TransactionRunner;->allowNestedTxn:Z

    .line 181
    return-void

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Nested transactions are not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxRetries(I)V
    .locals 0
    .param p1, "maxRetries"    # I

    .line 144
    iput p1, p0, Lcom/sleepycat/collections/TransactionRunner;->maxRetries:I

    .line 145
    return-void
.end method

.method public setTransactionConfig(Lcom/sleepycat/je/TransactionConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/sleepycat/je/TransactionConfig;

    .line 210
    iput-object p1, p0, Lcom/sleepycat/collections/TransactionRunner;->config:Lcom/sleepycat/je/TransactionConfig;

    .line 211
    return-void
.end method
