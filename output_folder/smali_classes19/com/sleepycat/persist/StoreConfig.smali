.class public Lcom/sleepycat/persist/StoreConfig;
.super Ljava/lang/Object;
.source "StoreConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFAULT:Lcom/sleepycat/persist/StoreConfig;


# instance fields
.field private allowCreate:Z

.field private databaseNamer:Lcom/sleepycat/persist/DatabaseNamer;

.field private deferredWrite:Z

.field private exclusiveCreate:Z

.field private model:Lcom/sleepycat/persist/model/EntityModel;

.field private mutations:Lcom/sleepycat/persist/evolve/Mutations;

.field private readOnly:Z

.field private replicated:Z

.field private secondaryBulkLoad:Z

.field private temporary:Z

.field private transactional:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/sleepycat/persist/StoreConfig;

    invoke-direct {v0}, Lcom/sleepycat/persist/StoreConfig;-><init>()V

    sput-object v0, Lcom/sleepycat/persist/StoreConfig;->DEFAULT:Lcom/sleepycat/persist/StoreConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/persist/StoreConfig;->replicated:Z

    .line 56
    sget-object v0, Lcom/sleepycat/persist/DatabaseNamer;->DEFAULT:Lcom/sleepycat/persist/DatabaseNamer;

    iput-object v0, p0, Lcom/sleepycat/persist/StoreConfig;->databaseNamer:Lcom/sleepycat/persist/DatabaseNamer;

    .line 62
    return-void
.end method


# virtual methods
.method public clone()Lcom/sleepycat/persist/StoreConfig;
    .locals 2

    .line 85
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/StoreConfig;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "cannotHappen":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lcom/sleepycat/persist/StoreConfig;->clone()Lcom/sleepycat/persist/StoreConfig;

    move-result-object v0

    return-object v0
.end method

.method public cloneConfig()Lcom/sleepycat/persist/StoreConfig;
    .locals 2

    .line 73
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/StoreConfig;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "cannotHappen":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getAllowCreate()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/sleepycat/persist/StoreConfig;->allowCreate:Z

    return v0
.end method

.method public getDatabaseNamer()Lcom/sleepycat/persist/DatabaseNamer;
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/sleepycat/persist/StoreConfig;->databaseNamer:Lcom/sleepycat/persist/DatabaseNamer;

    return-object v0
.end method

.method public getDeferredWrite()Z
    .locals 1

    .line 332
    iget-boolean v0, p0, Lcom/sleepycat/persist/StoreConfig;->deferredWrite:Z

    return v0
.end method

.method public getExclusiveCreate()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/sleepycat/persist/StoreConfig;->exclusiveCreate:Z

    return v0
.end method

.method public getModel()Lcom/sleepycat/persist/model/EntityModel;
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/sleepycat/persist/StoreConfig;->model:Lcom/sleepycat/persist/model/EntityModel;

    return-object v0
.end method

.method public getMutations()Lcom/sleepycat/persist/evolve/Mutations;
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/sleepycat/persist/StoreConfig;->mutations:Lcom/sleepycat/persist/evolve/Mutations;

    return-object v0
.end method

.method public getReadOnly()Z
    .locals 1

    .line 240
    iget-boolean v0, p0, Lcom/sleepycat/persist/StoreConfig;->readOnly:Z

    return v0
.end method

.method public getReplicated()Z
    .locals 1

    .line 287
    iget-boolean v0, p0, Lcom/sleepycat/persist/StoreConfig;->replicated:Z

    return v0
.end method

.method public getSecondaryBulkLoad()Z
    .locals 1

    .line 432
    iget-boolean v0, p0, Lcom/sleepycat/persist/StoreConfig;->secondaryBulkLoad:Z

    return v0
.end method

.method public getTemporary()Z
    .locals 1

    .line 374
    iget-boolean v0, p0, Lcom/sleepycat/persist/StoreConfig;->temporary:Z

    return v0
.end method

.method public getTransactional()Z
    .locals 1

    .line 202
    iget-boolean v0, p0, Lcom/sleepycat/persist/StoreConfig;->transactional:Z

    return v0
.end method

.method public setAllowCreate(Z)Lcom/sleepycat/persist/StoreConfig;
    .locals 0
    .param p1, "allowCreate"    # Z

    .line 104
    invoke-virtual {p0, p1}, Lcom/sleepycat/persist/StoreConfig;->setAllowCreateVoid(Z)V

    .line 105
    return-object p0
.end method

.method public setAllowCreateVoid(Z)V
    .locals 0
    .param p1, "allowCreate"    # Z

    .line 117
    iput-boolean p1, p0, Lcom/sleepycat/persist/StoreConfig;->allowCreate:Z

    .line 118
    return-void
.end method

.method public setDatabaseNamer(Lcom/sleepycat/persist/DatabaseNamer;)Lcom/sleepycat/persist/StoreConfig;
    .locals 0
    .param p1, "databaseNamer"    # Lcom/sleepycat/persist/DatabaseNamer;

    .line 537
    invoke-virtual {p0, p1}, Lcom/sleepycat/persist/StoreConfig;->setDatabaseNamerVoid(Lcom/sleepycat/persist/DatabaseNamer;)V

    .line 538
    return-object p0
.end method

.method public setDatabaseNamerVoid(Lcom/sleepycat/persist/DatabaseNamer;)V
    .locals 1
    .param p1, "databaseNamer"    # Lcom/sleepycat/persist/DatabaseNamer;

    .line 550
    if-eqz p1, :cond_0

    .line 553
    iput-object p1, p0, Lcom/sleepycat/persist/StoreConfig;->databaseNamer:Lcom/sleepycat/persist/DatabaseNamer;

    .line 554
    return-void

    .line 551
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setDeferredWrite(Z)Lcom/sleepycat/persist/StoreConfig;
    .locals 0
    .param p1, "deferredWrite"    # Z

    .line 312
    invoke-virtual {p0, p1}, Lcom/sleepycat/persist/StoreConfig;->setDeferredWriteVoid(Z)V

    .line 313
    return-object p0
.end method

.method public setDeferredWriteVoid(Z)V
    .locals 0
    .param p1, "deferredWrite"    # Z

    .line 323
    iput-boolean p1, p0, Lcom/sleepycat/persist/StoreConfig;->deferredWrite:Z

    .line 324
    return-void
.end method

.method public setExclusiveCreate(Z)Lcom/sleepycat/persist/StoreConfig;
    .locals 0
    .param p1, "exclusiveCreate"    # Z

    .line 142
    invoke-virtual {p0, p1}, Lcom/sleepycat/persist/StoreConfig;->setExclusiveCreateVoid(Z)V

    .line 143
    return-object p0
.end method

.method public setExclusiveCreateVoid(Z)V
    .locals 0
    .param p1, "exclusiveCreate"    # Z

    .line 155
    iput-boolean p1, p0, Lcom/sleepycat/persist/StoreConfig;->exclusiveCreate:Z

    .line 156
    return-void
.end method

.method public setModel(Lcom/sleepycat/persist/model/EntityModel;)Lcom/sleepycat/persist/StoreConfig;
    .locals 0
    .param p1, "model"    # Lcom/sleepycat/persist/model/EntityModel;

    .line 446
    invoke-virtual {p0, p1}, Lcom/sleepycat/persist/StoreConfig;->setModelVoid(Lcom/sleepycat/persist/model/EntityModel;)V

    .line 447
    return-object p0
.end method

.method public setModelVoid(Lcom/sleepycat/persist/model/EntityModel;)V
    .locals 0
    .param p1, "model"    # Lcom/sleepycat/persist/model/EntityModel;

    .line 459
    iput-object p1, p0, Lcom/sleepycat/persist/StoreConfig;->model:Lcom/sleepycat/persist/model/EntityModel;

    .line 460
    return-void
.end method

.method public setMutations(Lcom/sleepycat/persist/evolve/Mutations;)Lcom/sleepycat/persist/StoreConfig;
    .locals 0
    .param p1, "mutations"    # Lcom/sleepycat/persist/evolve/Mutations;

    .line 496
    invoke-virtual {p0, p1}, Lcom/sleepycat/persist/StoreConfig;->setMutationsVoid(Lcom/sleepycat/persist/evolve/Mutations;)V

    .line 497
    return-object p0
.end method

.method public setMutationsVoid(Lcom/sleepycat/persist/evolve/Mutations;)V
    .locals 0
    .param p1, "mutations"    # Lcom/sleepycat/persist/evolve/Mutations;

    .line 509
    iput-object p1, p0, Lcom/sleepycat/persist/StoreConfig;->mutations:Lcom/sleepycat/persist/evolve/Mutations;

    .line 510
    return-void
.end method

.method public setReadOnly(Z)Lcom/sleepycat/persist/StoreConfig;
    .locals 0
    .param p1, "readOnly"    # Z

    .line 218
    invoke-virtual {p0, p1}, Lcom/sleepycat/persist/StoreConfig;->setReadOnlyVoid(Z)V

    .line 219
    return-object p0
.end method

.method public setReadOnlyVoid(Z)V
    .locals 0
    .param p1, "readOnly"    # Z

    .line 231
    iput-boolean p1, p0, Lcom/sleepycat/persist/StoreConfig;->readOnly:Z

    .line 232
    return-void
.end method

.method public setReplicated(Z)Lcom/sleepycat/persist/StoreConfig;
    .locals 0
    .param p1, "replicated"    # Z

    .line 261
    invoke-virtual {p0, p1}, Lcom/sleepycat/persist/StoreConfig;->setReplicatedVoid(Z)V

    .line 262
    return-object p0
.end method

.method public setReplicatedVoid(Z)V
    .locals 0
    .param p1, "replicated"    # Z

    .line 272
    iput-boolean p1, p0, Lcom/sleepycat/persist/StoreConfig;->replicated:Z

    .line 273
    return-void
.end method

.method public setSecondaryBulkLoad(Z)Lcom/sleepycat/persist/StoreConfig;
    .locals 0
    .param p1, "secondaryBulkLoad"    # Z

    .line 410
    invoke-virtual {p0, p1}, Lcom/sleepycat/persist/StoreConfig;->setSecondaryBulkLoadVoid(Z)V

    .line 411
    return-object p0
.end method

.method public setSecondaryBulkLoadVoid(Z)V
    .locals 0
    .param p1, "secondaryBulkLoad"    # Z

    .line 423
    iput-boolean p1, p0, Lcom/sleepycat/persist/StoreConfig;->secondaryBulkLoad:Z

    .line 424
    return-void
.end method

.method public setTemporary(Z)Lcom/sleepycat/persist/StoreConfig;
    .locals 0
    .param p1, "temporary"    # Z

    .line 354
    invoke-virtual {p0, p1}, Lcom/sleepycat/persist/StoreConfig;->setTemporaryVoid(Z)V

    .line 355
    return-object p0
.end method

.method public setTemporaryVoid(Z)V
    .locals 0
    .param p1, "temporary"    # Z

    .line 365
    iput-boolean p1, p0, Lcom/sleepycat/persist/StoreConfig;->temporary:Z

    .line 366
    return-void
.end method

.method public setTransactional(Z)Lcom/sleepycat/persist/StoreConfig;
    .locals 0
    .param p1, "transactional"    # Z

    .line 180
    invoke-virtual {p0, p1}, Lcom/sleepycat/persist/StoreConfig;->setTransactionalVoid(Z)V

    .line 181
    return-object p0
.end method

.method public setTransactionalVoid(Z)V
    .locals 0
    .param p1, "transactional"    # Z

    .line 193
    iput-boolean p1, p0, Lcom/sleepycat/persist/StoreConfig;->transactional:Z

    .line 194
    return-void
.end method
