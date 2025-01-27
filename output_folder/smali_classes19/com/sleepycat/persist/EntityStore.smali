.class public Lcom/sleepycat/persist/EntityStore;
.super Ljava/lang/Object;
.source "EntityStore.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private store:Lcom/sleepycat/persist/impl/Store;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/Environment;Ljava/lang/String;Lcom/sleepycat/persist/StoreConfig;)V
    .locals 2
    .param p1, "env"    # Lcom/sleepycat/je/Environment;
    .param p2, "storeName"    # Ljava/lang/String;
    .param p3, "config"    # Lcom/sleepycat/persist/StoreConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/StoreExistsException;,
            Lcom/sleepycat/persist/StoreNotFoundException;,
            Lcom/sleepycat/persist/evolve/IncompatibleClassException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    new-instance v0, Lcom/sleepycat/persist/impl/Store;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sleepycat/persist/impl/Store;-><init>(Lcom/sleepycat/je/Environment;Ljava/lang/String;Lcom/sleepycat/persist/StoreConfig;Z)V

    iput-object v0, p0, Lcom/sleepycat/persist/EntityStore;->store:Lcom/sleepycat/persist/impl/Store;

    .line 205
    return-void
.end method

.method public static getStoreNames(Lcom/sleepycat/je/Environment;)Ljava/util/Set;
    .locals 1
    .param p0, "env"    # Lcom/sleepycat/je/Environment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Environment;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 253
    invoke-static {p0}, Lcom/sleepycat/persist/impl/Store;->getStoreNames(Lcom/sleepycat/je/Environment;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 703
    iget-object v0, p0, Lcom/sleepycat/persist/EntityStore;->store:Lcom/sleepycat/persist/impl/Store;

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Store;->close()V

    .line 704
    return-void
.end method

.method public closeClass(Ljava/lang/Class;)V
    .locals 1
    .param p1, "entityClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 677
    iget-object v0, p0, Lcom/sleepycat/persist/EntityStore;->store:Lcom/sleepycat/persist/impl/Store;

    invoke-virtual {v0, p1}, Lcom/sleepycat/persist/impl/Store;->closeClass(Ljava/lang/Class;)V

    .line 678
    return-void
.end method

.method public evolve(Lcom/sleepycat/persist/evolve/EvolveConfig;)Lcom/sleepycat/persist/evolve/EvolveStats;
    .locals 1
    .param p1, "config"    # Lcom/sleepycat/persist/evolve/EvolveConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 546
    iget-object v0, p0, Lcom/sleepycat/persist/EntityStore;->store:Lcom/sleepycat/persist/impl/Store;

    invoke-virtual {v0, p1}, Lcom/sleepycat/persist/impl/Store;->evolve(Lcom/sleepycat/persist/evolve/EvolveConfig;)Lcom/sleepycat/persist/evolve/EvolveStats;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lcom/sleepycat/persist/StoreConfig;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/sleepycat/persist/EntityStore;->store:Lcom/sleepycat/persist/impl/Store;

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Store;->getConfig()Lcom/sleepycat/persist/StoreConfig;

    move-result-object v0

    return-object v0
.end method

.method public getEnvironment()Lcom/sleepycat/je/Environment;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/sleepycat/persist/EntityStore;->store:Lcom/sleepycat/persist/impl/Store;

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Store;->getEnvironment()Lcom/sleepycat/je/Environment;

    move-result-object v0

    return-object v0
.end method

.method public getModel()Lcom/sleepycat/persist/model/EntityModel;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/sleepycat/persist/EntityStore;->store:Lcom/sleepycat/persist/impl/Store;

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Store;->getModel()Lcom/sleepycat/persist/model/EntityModel;

    move-result-object v0

    return-object v0
.end method

.method public getMutations()Lcom/sleepycat/persist/evolve/Mutations;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/sleepycat/persist/EntityStore;->store:Lcom/sleepycat/persist/impl/Store;

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Store;->getMutations()Lcom/sleepycat/persist/evolve/Mutations;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryConfig(Ljava/lang/Class;)Lcom/sleepycat/je/DatabaseConfig;
    .locals 1
    .param p1, "entityClass"    # Ljava/lang/Class;

    .line 808
    iget-object v0, p0, Lcom/sleepycat/persist/EntityStore;->store:Lcom/sleepycat/persist/impl/Store;

    invoke-virtual {v0, p1}, Lcom/sleepycat/persist/impl/Store;->getPrimaryConfig(Ljava/lang/Class;)Lcom/sleepycat/je/DatabaseConfig;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryIndex(Ljava/lang/Class;Ljava/lang/Class;)Lcom/sleepycat/persist/PrimaryIndex;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<PK:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TPK;>;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lcom/sleepycat/persist/PrimaryIndex<",
            "TPK;TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 338
    .local p1, "primaryKeyClass":Ljava/lang/Class;, "Ljava/lang/Class<TPK;>;"
    .local p2, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/persist/EntityStore;->store:Lcom/sleepycat/persist/impl/Store;

    .line 339
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 340
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 339
    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/sleepycat/persist/impl/Store;->getPrimaryIndex(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/sleepycat/persist/PrimaryIndex;

    move-result-object v0
    :try_end_0
    .catch Lcom/sleepycat/persist/IndexNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    return-object v0

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Lcom/sleepycat/persist/IndexNotAvailableException;
    iget-object v1, p0, Lcom/sleepycat/persist/EntityStore;->store:Lcom/sleepycat/persist/impl/Store;

    invoke-virtual {v1}, Lcom/sleepycat/persist/impl/Store;->attemptRefresh()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    iget-object v1, p0, Lcom/sleepycat/persist/EntityStore;->store:Lcom/sleepycat/persist/impl/Store;

    .line 346
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 347
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 346
    invoke-virtual {v1, p1, v2, p2, v3}, Lcom/sleepycat/persist/impl/Store;->getPrimaryIndex(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/sleepycat/persist/PrimaryIndex;

    move-result-object v1

    .line 345
    return-object v1

    .line 343
    :cond_0
    throw v0
.end method

.method public getSecondaryConfig(Ljava/lang/Class;Ljava/lang/String;)Lcom/sleepycat/je/SecondaryConfig;
    .locals 1
    .param p1, "entityClass"    # Ljava/lang/Class;
    .param p2, "keyName"    # Ljava/lang/String;

    .line 887
    iget-object v0, p0, Lcom/sleepycat/persist/EntityStore;->store:Lcom/sleepycat/persist/impl/Store;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/persist/impl/Store;->getSecondaryConfig(Ljava/lang/Class;Ljava/lang/String;)Lcom/sleepycat/je/SecondaryConfig;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryIndex(Lcom/sleepycat/persist/PrimaryIndex;Ljava/lang/Class;Ljava/lang/String;)Lcom/sleepycat/persist/SecondaryIndex;
    .locals 9
    .param p3, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<SK:",
            "Ljava/lang/Object;",
            "PK:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sleepycat/persist/PrimaryIndex<",
            "TPK;TE;>;",
            "Ljava/lang/Class<",
            "TSK;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sleepycat/persist/SecondaryIndex<",
            "TSK;TPK;TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 412
    .local p1, "primaryIndex":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE;>;"
    .local p2, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<TSK;>;"
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/persist/EntityStore;->store:Lcom/sleepycat/persist/impl/Store;

    .line 413
    invoke-virtual {p1}, Lcom/sleepycat/persist/PrimaryIndex;->getEntityClass()Ljava/lang/Class;

    move-result-object v2

    .line 414
    invoke-virtual {p1}, Lcom/sleepycat/persist/PrimaryIndex;->getEntityClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 415
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 413
    move-object v1, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/persist/impl/Store;->getSecondaryIndex(Lcom/sleepycat/persist/PrimaryIndex;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/persist/SecondaryIndex;

    move-result-object v0
    :try_end_0
    .catch Lcom/sleepycat/persist/IndexNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    return-object v0

    .line 416
    :catch_0
    move-exception v0

    .line 417
    .local v0, "e":Lcom/sleepycat/persist/IndexNotAvailableException;
    iget-object v1, p0, Lcom/sleepycat/persist/EntityStore;->store:Lcom/sleepycat/persist/impl/Store;

    invoke-virtual {v1}, Lcom/sleepycat/persist/impl/Store;->attemptRefresh()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    iget-object v2, p0, Lcom/sleepycat/persist/EntityStore;->store:Lcom/sleepycat/persist/impl/Store;

    .line 421
    invoke-virtual {p1}, Lcom/sleepycat/persist/PrimaryIndex;->getEntityClass()Ljava/lang/Class;

    move-result-object v4

    .line 422
    invoke-virtual {p1}, Lcom/sleepycat/persist/PrimaryIndex;->getEntityClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 423
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 421
    move-object v3, p1

    move-object v6, p2

    move-object v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/sleepycat/persist/impl/Store;->getSecondaryIndex(Lcom/sleepycat/persist/PrimaryIndex;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/persist/SecondaryIndex;

    move-result-object v1

    .line 420
    return-object v1

    .line 418
    :cond_0
    throw v0
.end method

.method public getSequence(Ljava/lang/String;)Lcom/sleepycat/je/Sequence;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 720
    iget-object v0, p0, Lcom/sleepycat/persist/EntityStore;->store:Lcom/sleepycat/persist/impl/Store;

    invoke-virtual {v0, p1}, Lcom/sleepycat/persist/impl/Store;->getSequence(Ljava/lang/String;)Lcom/sleepycat/je/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public getSequenceConfig(Ljava/lang/String;)Lcom/sleepycat/je/SequenceConfig;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 746
    iget-object v0, p0, Lcom/sleepycat/persist/EntityStore;->store:Lcom/sleepycat/persist/impl/Store;

    invoke-virtual {v0, p1}, Lcom/sleepycat/persist/impl/Store;->getSequenceConfig(Ljava/lang/String;)Lcom/sleepycat/je/SequenceConfig;

    move-result-object v0

    return-object v0
.end method

.method public getStoreName()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/sleepycat/persist/EntityStore;->store:Lcom/sleepycat/persist/impl/Store;

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Store;->getStoreName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubclassIndex(Lcom/sleepycat/persist/PrimaryIndex;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Lcom/sleepycat/persist/SecondaryIndex;
    .locals 9
    .param p4, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<SK:",
            "Ljava/lang/Object;",
            "PK:",
            "Ljava/lang/Object;",
            "E1:",
            "Ljava/lang/Object;",
            "E2:TE1;>(",
            "Lcom/sleepycat/persist/PrimaryIndex<",
            "TPK;TE1;>;",
            "Ljava/lang/Class<",
            "TE2;>;",
            "Ljava/lang/Class<",
            "TSK;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sleepycat/persist/SecondaryIndex<",
            "TSK;TPK;TE2;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 492
    .local p1, "primaryIndex":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE1;>;"
    .local p2, "entitySubclass":Ljava/lang/Class;, "Ljava/lang/Class<TE2;>;"
    .local p3, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<TSK;>;"
    invoke-virtual {p0}, Lcom/sleepycat/persist/EntityStore;->getModel()Lcom/sleepycat/persist/model/EntityModel;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/persist/model/EntityModel;->getClassMetadata(Ljava/lang/String;)Lcom/sleepycat/persist/model/ClassMetadata;

    .line 495
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/persist/EntityStore;->store:Lcom/sleepycat/persist/impl/Store;

    .line 497
    invoke-virtual {p1}, Lcom/sleepycat/persist/PrimaryIndex;->getEntityClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 498
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 496
    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/sleepycat/persist/impl/Store;->getSecondaryIndex(Lcom/sleepycat/persist/PrimaryIndex;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/persist/SecondaryIndex;

    move-result-object v0
    :try_end_0
    .catch Lcom/sleepycat/persist/IndexNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    return-object v0

    .line 499
    :catch_0
    move-exception v0

    .line 500
    .local v0, "e":Lcom/sleepycat/persist/IndexNotAvailableException;
    iget-object v1, p0, Lcom/sleepycat/persist/EntityStore;->store:Lcom/sleepycat/persist/impl/Store;

    invoke-virtual {v1}, Lcom/sleepycat/persist/impl/Store;->attemptRefresh()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    iget-object v2, p0, Lcom/sleepycat/persist/EntityStore;->store:Lcom/sleepycat/persist/impl/Store;

    .line 505
    invoke-virtual {p1}, Lcom/sleepycat/persist/PrimaryIndex;->getEntityClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 506
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 504
    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/sleepycat/persist/impl/Store;->getSecondaryIndex(Lcom/sleepycat/persist/PrimaryIndex;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/persist/SecondaryIndex;

    move-result-object v1

    .line 503
    return-object v1

    .line 501
    :cond_0
    throw v0
.end method

.method public isReplicaUpgradeMode()Z
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/sleepycat/persist/EntityStore;->store:Lcom/sleepycat/persist/impl/Store;

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Store;->isReplicaUpgradeMode()Z

    move-result v0

    return v0
.end method

.method public setPrimaryConfig(Ljava/lang/Class;Lcom/sleepycat/je/DatabaseConfig;)V
    .locals 1
    .param p1, "entityClass"    # Ljava/lang/Class;
    .param p2, "config"    # Lcom/sleepycat/je/DatabaseConfig;

    .line 840
    iget-object v0, p0, Lcom/sleepycat/persist/EntityStore;->store:Lcom/sleepycat/persist/impl/Store;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/persist/impl/Store;->setPrimaryConfig(Ljava/lang/Class;Lcom/sleepycat/je/DatabaseConfig;)V

    .line 841
    return-void
.end method

.method public setSecondaryConfig(Ljava/lang/Class;Ljava/lang/String;Lcom/sleepycat/je/SecondaryConfig;)V
    .locals 1
    .param p1, "entityClass"    # Ljava/lang/Class;
    .param p2, "keyName"    # Ljava/lang/String;
    .param p3, "config"    # Lcom/sleepycat/je/SecondaryConfig;

    .line 939
    iget-object v0, p0, Lcom/sleepycat/persist/EntityStore;->store:Lcom/sleepycat/persist/impl/Store;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/persist/impl/Store;->setSecondaryConfig(Ljava/lang/Class;Ljava/lang/String;Lcom/sleepycat/je/SecondaryConfig;)V

    .line 940
    return-void
.end method

.method public setSequenceConfig(Ljava/lang/String;Lcom/sleepycat/je/SequenceConfig;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/sleepycat/je/SequenceConfig;

    .line 776
    iget-object v0, p0, Lcom/sleepycat/persist/EntityStore;->store:Lcom/sleepycat/persist/impl/Store;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/persist/impl/Store;->setSequenceConfig(Ljava/lang/String;Lcom/sleepycat/je/SequenceConfig;)V

    .line 777
    return-void
.end method

.method public sync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 654
    iget-object v0, p0, Lcom/sleepycat/persist/EntityStore;->store:Lcom/sleepycat/persist/impl/Store;

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Store;->sync()V

    .line 655
    return-void
.end method

.method public truncateClass(Lcom/sleepycat/je/Transaction;Ljava/lang/Class;)V
    .locals 1
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "entityClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 621
    iget-object v0, p0, Lcom/sleepycat/persist/EntityStore;->store:Lcom/sleepycat/persist/impl/Store;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/persist/impl/Store;->truncateClass(Lcom/sleepycat/je/Transaction;Ljava/lang/Class;)V

    .line 622
    return-void
.end method

.method public truncateClass(Ljava/lang/Class;)V
    .locals 2
    .param p1, "entityClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 583
    iget-object v0, p0, Lcom/sleepycat/persist/EntityStore;->store:Lcom/sleepycat/persist/impl/Store;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/sleepycat/persist/impl/Store;->truncateClass(Lcom/sleepycat/je/Transaction;Ljava/lang/Class;)V

    .line 584
    return-void
.end method
