.class public abstract Lcom/sleepycat/collections/StoredContainer;
.super Ljava/lang/Object;
.source "StoredContainer.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field view:Lcom/sleepycat/collections/DataView;


# direct methods
.method constructor <init>(Lcom/sleepycat/collections/DataView;)V
    .locals 0
    .param p1, "view"    # Lcom/sleepycat/collections/DataView;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/sleepycat/collections/StoredContainer;->view:Lcom/sleepycat/collections/DataView;

    .line 59
    return-void
.end method

.method static convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;

    .line 474
    invoke-static {p0}, Lcom/sleepycat/util/RuntimeExceptionWrapper;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final areDuplicatesAllowed()Z
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/sleepycat/collections/StoredContainer;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v0, v0, Lcom/sleepycat/collections/DataView;->dupsAllowed:Z

    return v0
.end method

.method public final areDuplicatesOrdered()Z
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/sleepycat/collections/StoredContainer;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v0, v0, Lcom/sleepycat/collections/DataView;->dupsOrdered:Z

    return v0
.end method

.method public final areKeyRangesAllowed()Z
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/sleepycat/collections/StoredContainer;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v0, v0, Lcom/sleepycat/collections/DataView;->keyRangesAllowed:Z

    return v0
.end method

.method public final areKeysRenumbered()Z
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/sleepycat/collections/StoredContainer;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v0, v0, Lcom/sleepycat/collections/DataView;->keysRenumbered:Z

    return v0
.end method

.method final beginAutoCommit()Z
    .locals 3

    .line 438
    iget-object v0, p0, Lcom/sleepycat/collections/StoredContainer;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v0, v0, Lcom/sleepycat/collections/DataView;->transactional:Z

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/sleepycat/collections/StoredContainer;->view:Lcom/sleepycat/collections/DataView;

    invoke-virtual {v0}, Lcom/sleepycat/collections/DataView;->getCurrentTxn()Lcom/sleepycat/collections/CurrentTransaction;

    move-result-object v0

    .line 441
    .local v0, "currentTxn":Lcom/sleepycat/collections/CurrentTransaction;
    :try_start_0
    invoke-virtual {v0}, Lcom/sleepycat/collections/CurrentTransaction;->isAutoCommitAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepycat/collections/CurrentTransaction;->beginTransaction(Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/Transaction;
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    const/4 v1, 0x1

    return v1

    .line 447
    :cond_0
    goto :goto_0

    .line 445
    :catch_0
    move-exception v1

    .line 446
    .local v1, "e":Lcom/sleepycat/je/DatabaseException;
    invoke-static {v1}, Lcom/sleepycat/util/RuntimeExceptionWrapper;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 449
    .end local v0    # "currentTxn":Lcom/sleepycat/collections/CurrentTransaction;
    .end local v1    # "e":Lcom/sleepycat/je/DatabaseException;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 3

    .line 295
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredContainer;->beginAutoCommit()Z

    move-result v0

    .line 297
    .local v0, "doAutoCommit":Z
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/collections/StoredContainer;->view:Lcom/sleepycat/collections/DataView;

    invoke-virtual {v1}, Lcom/sleepycat/collections/DataView;->clear()V

    .line 298
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredContainer;->commitAutoCommit(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    nop

    .line 302
    return-void

    .line 299
    :catch_0
    move-exception v1

    .line 300
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1, v0}, Lcom/sleepycat/collections/StoredContainer;->handleException(Ljava/lang/Exception;Z)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method final closeCursor(Lcom/sleepycat/collections/DataCursor;)V
    .locals 2
    .param p1, "cursor"    # Lcom/sleepycat/collections/DataCursor;

    .line 428
    if-eqz p1, :cond_0

    .line 430
    :try_start_0
    invoke-virtual {p1}, Lcom/sleepycat/collections/DataCursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    goto :goto_0

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 435
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method final commitAutoCommit(Z)V
    .locals 1
    .param p1, "doAutoCommit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 455
    if-eqz p1, :cond_0

    .line 456
    iget-object v0, p0, Lcom/sleepycat/collections/StoredContainer;->view:Lcom/sleepycat/collections/DataView;

    invoke-virtual {v0}, Lcom/sleepycat/collections/DataView;->getCurrentTxn()Lcom/sleepycat/collections/CurrentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/collections/CurrentTransaction;->commitTransaction()Lcom/sleepycat/je/Transaction;

    .line 458
    :cond_0
    return-void
.end method

.method final configuredClone(Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/collections/StoredContainer;
    .locals 2
    .param p1, "config"    # Lcom/sleepycat/je/CursorConfig;

    .line 112
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/collections/StoredContainer;

    .line 113
    .local v0, "cont":Lcom/sleepycat/collections/StoredContainer;
    iget-object v1, v0, Lcom/sleepycat/collections/StoredContainer;->view:Lcom/sleepycat/collections/DataView;

    invoke-virtual {v1, p1}, Lcom/sleepycat/collections/DataView;->configuredView(Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/collections/DataView;

    move-result-object v1

    iput-object v1, v0, Lcom/sleepycat/collections/StoredContainer;->view:Lcom/sleepycat/collections/DataView;

    .line 114
    invoke-virtual {v0}, Lcom/sleepycat/collections/StoredContainer;->initAfterClone()V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    return-object v0

    .line 116
    .end local v0    # "cont":Lcom/sleepycat/collections/StoredContainer;
    :catch_0
    move-exception v0

    .local v0, "willNeverOccur":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    return-object v1
.end method

.method containsKey(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    .line 367
    const/4 v0, 0x0

    .line 369
    .local v0, "cursor":Lcom/sleepycat/collections/DataCursor;
    :try_start_0
    new-instance v1, Lcom/sleepycat/collections/DataCursor;

    iget-object v2, p0, Lcom/sleepycat/collections/StoredContainer;->view:Lcom/sleepycat/collections/DataView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/collections/DataCursor;-><init>(Lcom/sleepycat/collections/DataView;Z)V

    move-object v0, v1

    .line 370
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    const/4 v2, 0x0

    .line 371
    invoke-virtual {v0, p1, v2, v3}, Lcom/sleepycat/collections/DataCursor;->getSearchKey(Ljava/lang/Object;Ljava/lang/Object;Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    const/4 v3, 0x1

    .line 375
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredContainer;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 370
    return v3

    .line 375
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 372
    :catch_0
    move-exception v1

    .line 373
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v1}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "cursor":Lcom/sleepycat/collections/DataCursor;
    .end local p1    # "key":Ljava/lang/Object;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cursor":Lcom/sleepycat/collections/DataCursor;
    .restart local p1    # "key":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredContainer;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    throw v1
.end method

.method containsValue(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;

    .line 400
    const/4 v0, 0x0

    .line 402
    .local v0, "cursor":Lcom/sleepycat/collections/DataCursor;
    :try_start_0
    new-instance v1, Lcom/sleepycat/collections/DataCursor;

    iget-object v2, p0, Lcom/sleepycat/collections/StoredContainer;->view:Lcom/sleepycat/collections/DataView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/collections/DataCursor;-><init>(Lcom/sleepycat/collections/DataView;Z)V

    move-object v0, v1

    .line 403
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sleepycat/collections/DataCursor;->findValue(Ljava/lang/Object;Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v2

    .line 404
    .local v2, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v4, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v4, :cond_0

    move v3, v1

    .line 408
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredContainer;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 404
    return v3

    .line 408
    .end local v2    # "status":Lcom/sleepycat/je/OperationStatus;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 405
    :catch_0
    move-exception v1

    .line 406
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v1}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "cursor":Lcom/sleepycat/collections/DataCursor;
    .end local p1    # "value":Ljava/lang/Object;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cursor":Lcom/sleepycat/collections/DataCursor;
    .restart local p1    # "value":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredContainer;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    throw v1
.end method

.method public final getCursorConfig()Lcom/sleepycat/je/CursorConfig;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/sleepycat/collections/StoredContainer;->view:Lcom/sleepycat/collections/DataView;

    iget-object v0, v0, Lcom/sleepycat/collections/DataView;->cursorConfig:Lcom/sleepycat/je/CursorConfig;

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->cloneCursorConfig(Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/CursorConfig;

    move-result-object v0

    return-object v0
.end method

.method getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    .line 306
    const/4 v0, 0x0

    .line 308
    .local v0, "cursor":Lcom/sleepycat/collections/DataCursor;
    :try_start_0
    new-instance v1, Lcom/sleepycat/collections/DataCursor;

    iget-object v2, p0, Lcom/sleepycat/collections/StoredContainer;->view:Lcom/sleepycat/collections/DataView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/collections/DataCursor;-><init>(Lcom/sleepycat/collections/DataView;Z)V

    move-object v0, v1

    .line 309
    sget-object v1, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    .line 310
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v3}, Lcom/sleepycat/collections/DataCursor;->getSearchKey(Ljava/lang/Object;Ljava/lang/Object;Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v3

    if-ne v1, v3, :cond_0

    .line 311
    invoke-virtual {v0}, Lcom/sleepycat/collections/DataCursor;->getCurrentValue()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredContainer;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 311
    return-object v1

    .line 313
    :cond_0
    nop

    .line 318
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredContainer;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 313
    return-object v2

    .line 318
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 315
    :catch_0
    move-exception v1

    .line 316
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v1}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "cursor":Lcom/sleepycat/collections/DataCursor;
    .end local p1    # "key":Ljava/lang/Object;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cursor":Lcom/sleepycat/collections/DataCursor;
    .restart local p1    # "key":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredContainer;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    throw v1
.end method

.method final handleException(Ljava/lang/Exception;Z)Ljava/lang/RuntimeException;
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "doAutoCommit"    # Z

    .line 462
    if-eqz p2, :cond_0

    .line 464
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/collections/StoredContainer;->view:Lcom/sleepycat/collections/DataView;

    invoke-virtual {v0}, Lcom/sleepycat/collections/DataView;->getCurrentTxn()Lcom/sleepycat/collections/CurrentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/collections/CurrentTransaction;->abortTransaction()Lcom/sleepycat/je/Transaction;
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    goto :goto_0

    .line 465
    :catch_0
    move-exception v0

    .line 469
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method initAfterClone()V
    .locals 0

    .line 123
    return-void
.end method

.method public isEmpty()Z
    .locals 2

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/collections/StoredContainer;->view:Lcom/sleepycat/collections/DataView;

    invoke-virtual {v0}, Lcom/sleepycat/collections/DataView;->isEmpty()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public final isOrdered()Z
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/sleepycat/collections/StoredContainer;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v0, v0, Lcom/sleepycat/collections/DataView;->ordered:Z

    return v0
.end method

.method public final isSecondary()Z
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/sleepycat/collections/StoredContainer;->view:Lcom/sleepycat/collections/DataView;

    invoke-virtual {v0}, Lcom/sleepycat/collections/DataView;->isSecondary()Z

    move-result v0

    return v0
.end method

.method public final isTransactional()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/sleepycat/collections/StoredContainer;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v0, v0, Lcom/sleepycat/collections/DataView;->transactional:Z

    return v0
.end method

.method public final isWriteAllowed()Z
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/sleepycat/collections/StoredContainer;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v0, v0, Lcom/sleepycat/collections/DataView;->writeAllowed:Z

    return v0
.end method

.method putKeyValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, "cursor":Lcom/sleepycat/collections/DataCursor;
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredContainer;->beginAutoCommit()Z

    move-result v1

    .line 327
    .local v1, "doAutoCommit":Z
    :try_start_0
    new-instance v2, Lcom/sleepycat/collections/DataCursor;

    iget-object v3, p0, Lcom/sleepycat/collections/StoredContainer;->view:Lcom/sleepycat/collections/DataView;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/sleepycat/collections/DataCursor;-><init>(Lcom/sleepycat/collections/DataView;Z)V

    move-object v0, v2

    .line 328
    new-array v2, v4, [Ljava/lang/Object;

    .line 329
    .local v2, "oldValue":[Ljava/lang/Object;
    const/4 v3, 0x0

    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/sleepycat/collections/DataCursor;->put(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Z)Lcom/sleepycat/je/OperationStatus;

    .line 330
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredContainer;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 331
    invoke-virtual {p0, v1}, Lcom/sleepycat/collections/StoredContainer;->commitAutoCommit(Z)V

    .line 332
    aget-object v3, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 333
    .end local v2    # "oldValue":[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 334
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredContainer;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 335
    invoke-virtual {p0, v2, v1}, Lcom/sleepycat/collections/StoredContainer;->handleException(Ljava/lang/Exception;Z)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method final removeKey(Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "oldVal"    # [Ljava/lang/Object;

    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, "cursor":Lcom/sleepycat/collections/DataCursor;
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredContainer;->beginAutoCommit()Z

    move-result v1

    .line 344
    .local v1, "doAutoCommit":Z
    :try_start_0
    new-instance v2, Lcom/sleepycat/collections/DataCursor;

    iget-object v3, p0, Lcom/sleepycat/collections/StoredContainer;->view:Lcom/sleepycat/collections/DataView;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/sleepycat/collections/DataCursor;-><init>(Lcom/sleepycat/collections/DataView;Z)V

    move-object v0, v2

    .line 345
    const/4 v2, 0x0

    .line 346
    .local v2, "found":Z
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v4}, Lcom/sleepycat/collections/DataCursor;->getSearchKey(Ljava/lang/Object;Ljava/lang/Object;Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v3

    .line 347
    .local v3, "status":Lcom/sleepycat/je/OperationStatus;
    :goto_0
    sget-object v5, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v3, v5, :cond_2

    .line 348
    invoke-virtual {v0}, Lcom/sleepycat/collections/DataCursor;->delete()Lcom/sleepycat/je/OperationStatus;

    .line 349
    const/4 v2, 0x1

    .line 350
    if-eqz p2, :cond_0

    const/4 v5, 0x0

    aget-object v6, p2, v5

    if-nez v6, :cond_0

    .line 351
    invoke-virtual {v0}, Lcom/sleepycat/collections/DataCursor;->getCurrentValue()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, p2, v5

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredContainer;->areDuplicatesAllowed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 354
    invoke-virtual {v0, v4}, Lcom/sleepycat/collections/DataCursor;->getNextDup(Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v5

    goto :goto_1

    :cond_1
    sget-object v5, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    :goto_1
    move-object v3, v5

    goto :goto_0

    .line 356
    :cond_2
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredContainer;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 357
    invoke-virtual {p0, v1}, Lcom/sleepycat/collections/StoredContainer;->commitAutoCommit(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    return v2

    .line 359
    .end local v2    # "found":Z
    .end local v3    # "status":Lcom/sleepycat/je/OperationStatus;
    :catch_0
    move-exception v2

    .line 360
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredContainer;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 361
    invoke-virtual {p0, v2, v1}, Lcom/sleepycat/collections/StoredContainer;->handleException(Ljava/lang/Exception;Z)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method final removeValue(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;

    .line 381
    const/4 v0, 0x0

    .line 382
    .local v0, "cursor":Lcom/sleepycat/collections/DataCursor;
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredContainer;->beginAutoCommit()Z

    move-result v1

    .line 384
    .local v1, "doAutoCommit":Z
    :try_start_0
    new-instance v2, Lcom/sleepycat/collections/DataCursor;

    iget-object v3, p0, Lcom/sleepycat/collections/StoredContainer;->view:Lcom/sleepycat/collections/DataView;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/sleepycat/collections/DataCursor;-><init>(Lcom/sleepycat/collections/DataView;Z)V

    move-object v0, v2

    .line 385
    invoke-virtual {v0, p1, v4}, Lcom/sleepycat/collections/DataCursor;->findValue(Ljava/lang/Object;Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v2

    .line 386
    .local v2, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v3, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v2, v3, :cond_0

    .line 387
    invoke-virtual {v0}, Lcom/sleepycat/collections/DataCursor;->delete()Lcom/sleepycat/je/OperationStatus;

    .line 389
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredContainer;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 390
    invoke-virtual {p0, v1}, Lcom/sleepycat/collections/StoredContainer;->commitAutoCommit(Z)V

    .line 391
    sget-object v3, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    return v4

    .line 392
    .end local v2    # "status":Lcom/sleepycat/je/OperationStatus;
    :catch_0
    move-exception v2

    .line 393
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredContainer;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 394
    invoke-virtual {p0, v2, v1}, Lcom/sleepycat/collections/StoredContainer;->handleException(Ljava/lang/Exception;Z)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public abstract size()I
.end method

.method final storedOrExternalIterator(Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 1
    .param p1, "coll"    # Ljava/util/Collection;

    .line 419
    instance-of v0, p1, Lcom/sleepycat/collections/StoredCollection;

    if-eqz v0, :cond_0

    .line 420
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v0}, Lcom/sleepycat/collections/StoredCollection;->storedIterator()Lcom/sleepycat/collections/StoredIterator;

    move-result-object v0

    return-object v0

    .line 422
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
