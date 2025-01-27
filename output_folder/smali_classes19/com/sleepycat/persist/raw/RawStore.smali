.class public Lcom/sleepycat/persist/raw/RawStore;
.super Ljava/lang/Object;
.source "RawStore.java"

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
            Lcom/sleepycat/persist/StoreNotFoundException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    :try_start_0
    new-instance v0, Lcom/sleepycat/persist/impl/Store;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sleepycat/persist/impl/Store;-><init>(Lcom/sleepycat/je/Environment;Ljava/lang/String;Lcom/sleepycat/persist/StoreConfig;Z)V

    iput-object v0, p0, Lcom/sleepycat/persist/raw/RawStore;->store:Lcom/sleepycat/persist/impl/Store;
    :try_end_0
    .catch Lcom/sleepycat/persist/StoreExistsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/persist/evolve/IncompatibleClassException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    nop

    .line 95
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Lcom/sleepycat/persist/evolve/IncompatibleClassException;
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 88
    .end local v0    # "e":Lcom/sleepycat/persist/evolve/IncompatibleClassException;
    :catch_1
    move-exception v0

    .line 90
    .local v0, "e":Lcom/sleepycat/persist/StoreExistsException;
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/sleepycat/persist/raw/RawStore;->store:Lcom/sleepycat/persist/impl/Store;

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Store;->close()V

    .line 196
    return-void
.end method

.method public getConfig()Lcom/sleepycat/persist/StoreConfig;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/sleepycat/persist/raw/RawStore;->store:Lcom/sleepycat/persist/impl/Store;

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Store;->getConfig()Lcom/sleepycat/persist/StoreConfig;

    move-result-object v0

    return-object v0
.end method

.method public getEnvironment()Lcom/sleepycat/je/Environment;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/sleepycat/persist/raw/RawStore;->store:Lcom/sleepycat/persist/impl/Store;

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Store;->getEnvironment()Lcom/sleepycat/je/Environment;

    move-result-object v0

    return-object v0
.end method

.method public getModel()Lcom/sleepycat/persist/model/EntityModel;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/sleepycat/persist/raw/RawStore;->store:Lcom/sleepycat/persist/impl/Store;

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Store;->getModel()Lcom/sleepycat/persist/model/EntityModel;

    move-result-object v0

    return-object v0
.end method

.method public getMutations()Lcom/sleepycat/persist/evolve/Mutations;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/sleepycat/persist/raw/RawStore;->store:Lcom/sleepycat/persist/impl/Store;

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Store;->getMutations()Lcom/sleepycat/persist/evolve/Mutations;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryIndex(Ljava/lang/String;)Lcom/sleepycat/persist/PrimaryIndex;
    .locals 4
    .param p1, "entityClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/sleepycat/persist/PrimaryIndex<",
            "Ljava/lang/Object;",
            "Lcom/sleepycat/persist/raw/RawObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/sleepycat/persist/raw/RawStore;->store:Lcom/sleepycat/persist/impl/Store;

    const-class v1, Ljava/lang/Object;

    const-class v2, Lcom/sleepycat/persist/raw/RawObject;

    .line 110
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, p1}, Lcom/sleepycat/persist/impl/Store;->getPrimaryIndex(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/sleepycat/persist/PrimaryIndex;

    move-result-object v0

    .line 109
    return-object v0
.end method

.method public getSecondaryIndex(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/persist/SecondaryIndex;
    .locals 7
    .param p1, "entityClass"    # Ljava/lang/String;
    .param p2, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sleepycat/persist/SecondaryIndex<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/sleepycat/persist/raw/RawObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/sleepycat/persist/raw/RawStore;->store:Lcom/sleepycat/persist/impl/Store;

    .line 130
    invoke-virtual {p0, p1}, Lcom/sleepycat/persist/raw/RawStore;->getPrimaryIndex(Ljava/lang/String;)Lcom/sleepycat/persist/PrimaryIndex;

    move-result-object v1

    const-class v2, Lcom/sleepycat/persist/raw/RawObject;

    const-class v4, Ljava/lang/Object;

    const/4 v5, 0x0

    move-object v3, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/persist/impl/Store;->getSecondaryIndex(Lcom/sleepycat/persist/PrimaryIndex;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/persist/SecondaryIndex;

    move-result-object v0

    .line 129
    return-object v0
.end method

.method public getStoreName()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/sleepycat/persist/raw/RawStore;->store:Lcom/sleepycat/persist/impl/Store;

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Store;->getStoreName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
