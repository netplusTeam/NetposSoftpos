.class public Lcom/sleepycat/persist/impl/Store;
.super Ljava/lang/Object;
.source "Store.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/persist/impl/Store$InternalSecondaryIndex;,
        Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;,
        Lcom/sleepycat/persist/impl/Store$SyncHook;,
        Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CATALOG_DB:Ljava/lang/String; = "com.sleepycat.persist.formats"

.field private static final DB_NAME_PREFIX:Ljava/lang/String; = "com.sleepycat.persist."

.field private static final NAME_PREFIX:Ljava/lang/String; = "persist#"

.field public static final NAME_SEPARATOR:Ljava/lang/String; = "#"

.field private static final SEQUENCE_DB:Ljava/lang/String; = "com.sleepycat.persist.sequences"

.field private static catalogPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sleepycat/je/Environment;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/impl/PersistCatalog;",
            ">;>;"
        }
    .end annotation
.end field

.field public static expectFlush:Z

.field private static syncHook:Lcom/sleepycat/persist/impl/Store$SyncHook;


# instance fields
.field private final autoCommitNoWaitTxnConfig:Lcom/sleepycat/je/TransactionConfig;

.field private final autoCommitTxnConfig:Lcom/sleepycat/je/TransactionConfig;

.field private volatile catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

.field private final deferredWriteDatabases:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/sleepycat/je/Database;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final env:Lcom/sleepycat/je/Environment;

.field private final inverseRelatedEntityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final keyBindingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/impl/PersistKeyBinding;",
            ">;"
        }
    .end annotation
.end field

.field private model:Lcom/sleepycat/persist/model/EntityModel;

.field private final priConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/DatabaseConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final priIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;",
            ">;"
        }
    .end annotation
.end field

.field private final rawAccess:Z

.field private final secConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/SecondaryConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final secIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/impl/Store$InternalSecondaryIndex;",
            ">;"
        }
    .end annotation
.end field

.field private final sequenceConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/SequenceConfig;",
            ">;"
        }
    .end annotation
.end field

.field private sequenceDb:Lcom/sleepycat/je/Database;

.field private final sequenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/Sequence;",
            ">;"
        }
    .end annotation
.end field

.field private final storeConfig:Lcom/sleepycat/persist/StoreConfig;

.field private final storeName:Ljava/lang/String;

.field private final storePrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    nop

    .line 96
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/sleepycat/persist/impl/Store;->catalogPool:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/Environment;Ljava/lang/String;Lcom/sleepycat/persist/StoreConfig;Z)V
    .locals 17
    .param p1, "env"    # Lcom/sleepycat/je/Environment;
    .param p2, "storeName"    # Ljava/lang/String;
    .param p3, "config"    # Lcom/sleepycat/persist/StoreConfig;
    .param p4, "rawAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/StoreExistsException;,
            Lcom/sleepycat/persist/StoreNotFoundException;,
            Lcom/sleepycat/persist/evolve/IncompatibleClassException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 130
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object v11, v10, Lcom/sleepycat/persist/impl/Store;->env:Lcom/sleepycat/je/Environment;

    .line 133
    iput-object v12, v10, Lcom/sleepycat/persist/impl/Store;->storeName:Ljava/lang/String;

    .line 134
    iput-boolean v13, v10, Lcom/sleepycat/persist/impl/Store;->rawAccess:Z

    .line 136
    if-eqz v11, :cond_a

    if-eqz v12, :cond_a

    .line 141
    if-eqz p3, :cond_0

    .line 142
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/persist/StoreConfig;->clone()Lcom/sleepycat/persist/StoreConfig;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sleepycat/persist/StoreConfig;->DEFAULT:Lcom/sleepycat/persist/StoreConfig;

    :goto_0
    iput-object v0, v10, Lcom/sleepycat/persist/impl/Store;->storeConfig:Lcom/sleepycat/persist/StoreConfig;

    .line 145
    new-instance v1, Lcom/sleepycat/je/TransactionConfig;

    invoke-direct {v1}, Lcom/sleepycat/je/TransactionConfig;-><init>()V

    iput-object v1, v10, Lcom/sleepycat/persist/impl/Store;->autoCommitTxnConfig:Lcom/sleepycat/je/TransactionConfig;

    .line 146
    new-instance v2, Lcom/sleepycat/je/TransactionConfig;

    invoke-direct {v2}, Lcom/sleepycat/je/TransactionConfig;-><init>()V

    iput-object v2, v10, Lcom/sleepycat/persist/impl/Store;->autoCommitNoWaitTxnConfig:Lcom/sleepycat/je/TransactionConfig;

    .line 147
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/TransactionConfig;->setNoWait(Z)Lcom/sleepycat/je/TransactionConfig;

    .line 149
    invoke-virtual {v0}, Lcom/sleepycat/persist/StoreConfig;->getReplicated()Z

    move-result v4

    if-nez v4, :cond_1

    .line 150
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/Environment;->getConfig()Lcom/sleepycat/je/EnvironmentConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/EnvironmentConfig;->getDurability()Lcom/sleepycat/je/Durability;

    move-result-object v4

    .line 151
    .local v4, "envDurability":Lcom/sleepycat/je/Durability;
    invoke-static {v1, v4}, Lcom/sleepycat/persist/impl/Store;->configForNonRepDb(Lcom/sleepycat/je/TransactionConfig;Lcom/sleepycat/je/Durability;)V

    .line 152
    invoke-static {v2, v4}, Lcom/sleepycat/persist/impl/Store;->configForNonRepDb(Lcom/sleepycat/je/TransactionConfig;Lcom/sleepycat/je/Durability;)V

    .line 156
    .end local v4    # "envDurability":Lcom/sleepycat/je/Durability;
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/persist/StoreConfig;->getModel()Lcom/sleepycat/persist/model/EntityModel;

    move-result-object v1

    iput-object v1, v10, Lcom/sleepycat/persist/impl/Store;->model:Lcom/sleepycat/persist/model/EntityModel;

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persist#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Lcom/sleepycat/persist/impl/Store;->storePrefix:Ljava/lang/String;

    .line 159
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v10, Lcom/sleepycat/persist/impl/Store;->priIndexMap:Ljava/util/Map;

    .line 160
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v10, Lcom/sleepycat/persist/impl/Store;->secIndexMap:Ljava/util/Map;

    .line 161
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v10, Lcom/sleepycat/persist/impl/Store;->priConfigMap:Ljava/util/Map;

    .line 162
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v10, Lcom/sleepycat/persist/impl/Store;->secConfigMap:Ljava/util/Map;

    .line 163
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v10, Lcom/sleepycat/persist/impl/Store;->keyBindingMap:Ljava/util/Map;

    .line 164
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v10, Lcom/sleepycat/persist/impl/Store;->sequenceMap:Ljava/util/Map;

    .line 165
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v10, Lcom/sleepycat/persist/impl/Store;->sequenceConfigMap:Ljava/util/Map;

    .line 166
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v1, v10, Lcom/sleepycat/persist/impl/Store;->deferredWriteDatabases:Ljava/util/IdentityHashMap;

    .line 168
    if-eqz v13, :cond_3

    .line 170
    iget-object v1, v10, Lcom/sleepycat/persist/impl/Store;->model:Lcom/sleepycat/persist/model/EntityModel;

    if-nez v1, :cond_2

    .line 174
    new-instance v1, Lcom/sleepycat/je/DatabaseConfig;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseConfig;-><init>()V

    move-object v14, v1

    .line 176
    .local v14, "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    invoke-virtual {v0}, Lcom/sleepycat/persist/StoreConfig;->getReplicated()Z

    move-result v1

    invoke-virtual {v14, v1}, Lcom/sleepycat/je/DatabaseConfig;->setReplicated(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 178
    invoke-virtual {v14, v3}, Lcom/sleepycat/je/DatabaseConfig;->setReadOnly(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 179
    nop

    .line 180
    invoke-virtual {v0}, Lcom/sleepycat/persist/StoreConfig;->getTransactional()Z

    move-result v0

    invoke-virtual {v14, v0}, Lcom/sleepycat/je/DatabaseConfig;->setTransactional(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 181
    new-instance v0, Lcom/sleepycat/persist/impl/PersistCatalog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "com.sleepycat.persist.formats"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 183
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/persist/StoreConfig;->getMutations()Lcom/sleepycat/persist/evolve/Mutations;

    move-result-object v7

    move-object v1, v0

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v14

    move/from16 v8, p4

    move-object/from16 v9, p0

    invoke-direct/range {v1 .. v9}, Lcom/sleepycat/persist/impl/PersistCatalog;-><init>(Lcom/sleepycat/je/Environment;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;Lcom/sleepycat/persist/model/EntityModel;Lcom/sleepycat/persist/evolve/Mutations;ZLcom/sleepycat/persist/impl/Store;)V

    iput-object v0, v10, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 184
    .end local v14    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    goto/16 :goto_3

    .line 171
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A model may not be specified when opening a RawStore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_3
    sget-object v14, Lcom/sleepycat/persist/impl/Store;->catalogPool:Ljava/util/Map;

    monitor-enter v14

    .line 187
    :try_start_0
    sget-object v1, Lcom/sleepycat/persist/impl/Store;->catalogPool:Ljava/util/Map;

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 188
    .local v1, "catalogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/PersistCatalog;>;"
    if-nez v1, :cond_4

    .line 189
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v1, v2

    .line 190
    sget-object v2, Lcom/sleepycat/persist/impl/Store;->catalogPool:Ljava/util/Map;

    invoke-interface {v2, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v15, v1

    goto :goto_1

    .line 188
    :cond_4
    move-object v15, v1

    .line 192
    .end local v1    # "catalogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/PersistCatalog;>;"
    .local v15, "catalogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/PersistCatalog;>;"
    :goto_1
    invoke-interface {v15, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/persist/impl/PersistCatalog;

    iput-object v1, v10, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 193
    iget-object v1, v10, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    if-eqz v1, :cond_5

    .line 194
    iget-object v0, v10, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/PersistCatalog;->openExisting()V

    goto :goto_2

    .line 196
    :cond_5
    new-instance v1, Lcom/sleepycat/je/DatabaseConfig;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseConfig;-><init>()V

    move-object v9, v1

    .line 197
    .local v9, "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    invoke-virtual {v0}, Lcom/sleepycat/persist/StoreConfig;->getAllowCreate()Z

    move-result v1

    invoke-virtual {v9, v1}, Lcom/sleepycat/je/DatabaseConfig;->setAllowCreate(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 198
    nop

    .line 199
    invoke-virtual {v0}, Lcom/sleepycat/persist/StoreConfig;->getExclusiveCreate()Z

    move-result v1

    invoke-virtual {v9, v1}, Lcom/sleepycat/je/DatabaseConfig;->setExclusiveCreate(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 201
    invoke-virtual {v0}, Lcom/sleepycat/persist/StoreConfig;->getTemporary()Z

    move-result v1

    invoke-virtual {v9, v1}, Lcom/sleepycat/je/DatabaseConfig;->setTemporary(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 202
    invoke-virtual {v0}, Lcom/sleepycat/persist/StoreConfig;->getReplicated()Z

    move-result v1

    invoke-virtual {v9, v1}, Lcom/sleepycat/je/DatabaseConfig;->setReplicated(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 204
    invoke-virtual {v0}, Lcom/sleepycat/persist/StoreConfig;->getReadOnly()Z

    move-result v1

    invoke-virtual {v9, v1}, Lcom/sleepycat/je/DatabaseConfig;->setReadOnly(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 205
    nop

    .line 206
    invoke-virtual {v0}, Lcom/sleepycat/persist/StoreConfig;->getTransactional()Z

    move-result v0

    invoke-virtual {v9, v0}, Lcom/sleepycat/je/DatabaseConfig;->setTransactional(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 207
    invoke-static {v9}, Lcom/sleepycat/compat/DbCompat;->setTypeBtree(Lcom/sleepycat/je/DatabaseConfig;)V

    .line 208
    new-instance v0, Lcom/sleepycat/persist/impl/PersistCatalog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "com.sleepycat.persist.formats"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v10, Lcom/sleepycat/persist/impl/Store;->model:Lcom/sleepycat/persist/model/EntityModel;

    .line 210
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/persist/StoreConfig;->getMutations()Lcom/sleepycat/persist/evolve/Mutations;

    move-result-object v7

    move-object v1, v0

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v9

    move/from16 v8, p4

    move-object/from16 v16, v9

    .end local v9    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .local v16, "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    move-object/from16 v9, p0

    invoke-direct/range {v1 .. v9}, Lcom/sleepycat/persist/impl/PersistCatalog;-><init>(Lcom/sleepycat/je/Environment;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;Lcom/sleepycat/persist/model/EntityModel;Lcom/sleepycat/persist/evolve/Mutations;ZLcom/sleepycat/persist/impl/Store;)V

    iput-object v0, v10, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 211
    iget-object v0, v10, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    invoke-interface {v15, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .end local v15    # "catalogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/PersistCatalog;>;"
    .end local v16    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    :goto_2
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :goto_3
    iget-object v0, v10, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/PersistCatalog;->getResolvedModel()Lcom/sleepycat/persist/model/EntityModel;

    move-result-object v0

    iput-object v0, v10, Lcom/sleepycat/persist/impl/Store;->model:Lcom/sleepycat/persist/model/EntityModel;

    .line 232
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v10, Lcom/sleepycat/persist/impl/Store;->inverseRelatedEntityMap:Ljava/util/Map;

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v0, "entityFormats":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/persist/impl/Format;>;"
    iget-object v1, v10, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    invoke-virtual {v1, v0}, Lcom/sleepycat/persist/impl/PersistCatalog;->getEntityFormats(Ljava/util/Collection;)V

    .line 235
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/persist/impl/Format;

    .line 236
    .local v2, "entityFormat":Lcom/sleepycat/persist/impl/Format;
    invoke-virtual {v2}, Lcom/sleepycat/persist/impl/Format;->getEntityMetadata()Lcom/sleepycat/persist/model/EntityMetadata;

    move-result-object v3

    .line 238
    .local v3, "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    invoke-virtual {v3}, Lcom/sleepycat/persist/model/EntityMetadata;->getSecondaryKeys()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;

    .line 239
    .local v5, "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    invoke-virtual {v5}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getRelatedEntity()Ljava/lang/String;

    move-result-object v6

    .line 240
    .local v6, "relatedClsName":Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 241
    iget-object v7, v10, Lcom/sleepycat/persist/impl/Store;->inverseRelatedEntityMap:Ljava/util/Map;

    .line 242
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 243
    .local v7, "inverseClassNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v7, :cond_6

    .line 244
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    move-object v7, v8

    .line 245
    iget-object v8, v10, Lcom/sleepycat/persist/impl/Store;->inverseRelatedEntityMap:Ljava/util/Map;

    .line 246
    invoke-interface {v8, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :cond_6
    invoke-virtual {v3}, Lcom/sleepycat/persist/model/EntityMetadata;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 250
    .end local v5    # "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .end local v6    # "relatedClsName":Ljava/lang/String;
    .end local v7    # "inverseClassNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7
    goto :goto_5

    .line 251
    .end local v2    # "entityFormat":Lcom/sleepycat/persist/impl/Format;
    .end local v3    # "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    :cond_8
    goto :goto_4

    .line 252
    :cond_9
    return-void

    .line 213
    .end local v0    # "entityFormats":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/persist/impl/Format;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 137
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "env and storeName parameters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/sleepycat/persist/impl/Store;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/persist/impl/Store;

    .line 88
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store;->priIndexMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sleepycat/persist/impl/Store;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/persist/impl/Store;

    .line 88
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store;->secIndexMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sleepycat/persist/impl/Store;)Ljava/util/IdentityHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/persist/impl/Store;

    .line 88
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store;->deferredWriteDatabases:Ljava/util/IdentityHashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sleepycat/persist/impl/Store;)Lcom/sleepycat/je/TransactionConfig;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/persist/impl/Store;

    .line 88
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store;->autoCommitTxnConfig:Lcom/sleepycat/je/TransactionConfig;

    return-object v0
.end method

.method private checkEntityClass(Ljava/lang/String;)Lcom/sleepycat/persist/model/EntityMetadata;
    .locals 4
    .param p1, "clsName"    # Ljava/lang/String;

    .line 1484
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store;->model:Lcom/sleepycat/persist/model/EntityModel;

    invoke-virtual {v0, p1}, Lcom/sleepycat/persist/model/EntityModel;->getEntityMetadata(Ljava/lang/String;)Lcom/sleepycat/persist/model/EntityMetadata;

    move-result-object v0

    .line 1485
    .local v0, "meta":Lcom/sleepycat/persist/model/EntityMetadata;
    if-eqz v0, :cond_0

    .line 1490
    return-object v0

    .line 1486
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class could not be loaded or is not an entity class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkOpen()V
    .locals 2

    .line 1471
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    if-eqz v0, :cond_0

    .line 1474
    return-void

    .line 1472
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Store has been closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkSecKey(Lcom/sleepycat/persist/model/EntityMetadata;Ljava/lang/String;)Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .locals 4
    .param p1, "entityMeta"    # Lcom/sleepycat/persist/model/EntityMetadata;
    .param p2, "keyName"    # Ljava/lang/String;

    .line 1495
    nop

    .line 1496
    invoke-virtual {p1}, Lcom/sleepycat/persist/model/EntityMetadata;->getSecondaryKeys()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;

    .line 1497
    .local v0, "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    if-eqz v0, :cond_0

    .line 1502
    return-object v0

    .line 1498
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a secondary key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1500
    invoke-virtual {p1}, Lcom/sleepycat/persist/model/EntityMetadata;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/sleepycat/persist/impl/Store;->makeSecName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkWriteAllowed()V
    .locals 2

    .line 1477
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/PersistCatalog;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1481
    return-void

    .line 1478
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Store is read-only or is operating as a Replica"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private closeDb(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/DatabaseException;)Lcom/sleepycat/je/DatabaseException;
    .locals 1
    .param p1, "db"    # Lcom/sleepycat/je/Database;
    .param p2, "firstException"    # Lcom/sleepycat/je/DatabaseException;

    .line 1548
    if-eqz p1, :cond_0

    .line 1550
    :try_start_0
    invoke-virtual {p1}, Lcom/sleepycat/je/Database;->close()V
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1555
    goto :goto_0

    .line 1551
    :catch_0
    move-exception v0

    .line 1552
    .local v0, "e":Lcom/sleepycat/je/DatabaseException;
    if-nez p2, :cond_0

    .line 1553
    move-object p2, v0

    .line 1557
    .end local v0    # "e":Lcom/sleepycat/je/DatabaseException;
    :cond_0
    :goto_0
    return-object p2
.end method

.method private static configForNonRepDb(Lcom/sleepycat/je/TransactionConfig;Lcom/sleepycat/je/Durability;)V
    .locals 4
    .param p0, "config"    # Lcom/sleepycat/je/TransactionConfig;
    .param p1, "envDurability"    # Lcom/sleepycat/je/Durability;

    .line 1895
    new-instance v0, Lcom/sleepycat/je/Durability;

    .line 1896
    invoke-virtual {p1}, Lcom/sleepycat/je/Durability;->getLocalSync()Lcom/sleepycat/je/Durability$SyncPolicy;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sleepycat/je/Durability;->getReplicaSync()Lcom/sleepycat/je/Durability$SyncPolicy;

    move-result-object v2

    sget-object v3, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->NONE:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/Durability;-><init>(Lcom/sleepycat/je/Durability$SyncPolicy;Lcom/sleepycat/je/Durability$SyncPolicy;Lcom/sleepycat/je/Durability$ReplicaAckPolicy;)V

    .line 1895
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/TransactionConfig;->setDurability(Lcom/sleepycat/je/Durability;)Lcom/sleepycat/je/TransactionConfig;

    .line 1898
    sget-object v0, Lcom/sleepycat/je/rep/NoConsistencyRequiredPolicy;->NO_CONSISTENCY:Lcom/sleepycat/je/rep/NoConsistencyRequiredPolicy;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/TransactionConfig;->setConsistencyPolicy(Lcom/sleepycat/je/ReplicaConsistencyPolicy;)Lcom/sleepycat/je/TransactionConfig;

    .line 1900
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/TransactionConfig;->setLocalWrite(Z)Lcom/sleepycat/je/TransactionConfig;

    .line 1901
    return-void
.end method

.method private evolveIndex(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/evolve/EvolveEvent;Lcom/sleepycat/persist/evolve/EvolveListener;)V
    .locals 24
    .param p1, "format"    # Lcom/sleepycat/persist/impl/Format;
    .param p2, "event"    # Lcom/sleepycat/persist/evolve/EvolveEvent;
    .param p3, "listener"    # Lcom/sleepycat/persist/evolve/EvolveListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1614
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x1

    .line 1616
    .local v4, "WRITES_PER_TXN":I
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/persist/impl/Format;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 1617
    .local v5, "entityClass":Ljava/lang/Class;
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 1618
    .local v6, "entityClassName":Ljava/lang/String;
    iget-object v0, v1, Lcom/sleepycat/persist/impl/Store;->model:Lcom/sleepycat/persist/model/EntityModel;

    invoke-virtual {v0, v6}, Lcom/sleepycat/persist/model/EntityModel;->getEntityMetadata(Ljava/lang/String;)Lcom/sleepycat/persist/model/EntityMetadata;

    move-result-object v7

    .line 1619
    .local v7, "meta":Lcom/sleepycat/persist/model/EntityMetadata;
    invoke-virtual {v7}, Lcom/sleepycat/persist/model/EntityMetadata;->getPrimaryKey()Lcom/sleepycat/persist/model/PrimaryKeyMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/persist/model/PrimaryKeyMetadata;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1620
    .local v0, "keyClassName":Ljava/lang/String;
    invoke-static {v0}, Lcom/sleepycat/persist/impl/SimpleCatalog;->keyClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1621
    .end local v0    # "keyClassName":Ljava/lang/String;
    .local v8, "keyClassName":Ljava/lang/String;
    invoke-direct {v1, v7}, Lcom/sleepycat/persist/impl/Store;->getPrimaryConfig(Lcom/sleepycat/persist/model/EntityMetadata;)Lcom/sleepycat/je/DatabaseConfig;

    move-result-object v9

    .line 1623
    .local v9, "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    const-class v0, Ljava/lang/Object;

    .line 1624
    invoke-virtual {v1, v0, v8, v5, v6}, Lcom/sleepycat/persist/impl/Store;->getPrimaryIndex(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/sleepycat/persist/PrimaryIndex;

    move-result-object v10

    .line 1625
    .local v10, "index":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {v10}, Lcom/sleepycat/persist/PrimaryIndex;->getDatabase()Lcom/sleepycat/je/Database;

    move-result-object v11

    .line 1627
    .local v11, "db":Lcom/sleepycat/je/Database;
    invoke-virtual {v10}, Lcom/sleepycat/persist/PrimaryIndex;->getEntityBinding()Lcom/sleepycat/bind/EntityBinding;

    move-result-object v12

    .line 1628
    .local v12, "binding":Lcom/sleepycat/bind/EntityBinding;
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v13, v0

    .line 1629
    .local v13, "key":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    move-object v14, v0

    .line 1631
    .local v14, "data":Lcom/sleepycat/je/DatabaseEntry;
    const/4 v0, 0x0

    .line 1632
    .local v0, "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    const/4 v15, 0x0

    .line 1633
    .local v15, "txn":Lcom/sleepycat/je/Transaction;
    invoke-virtual {v9}, Lcom/sleepycat/je/DatabaseConfig;->getTransactional()Z

    move-result v16

    move-object/from16 v17, v0

    .end local v0    # "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    .local v17, "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    const/4 v0, 0x0

    if-eqz v16, :cond_0

    .line 1634
    move/from16 v16, v4

    .end local v4    # "WRITES_PER_TXN":I
    .local v16, "WRITES_PER_TXN":I
    iget-object v4, v1, Lcom/sleepycat/persist/impl/Store;->env:Lcom/sleepycat/je/Environment;

    move-object/from16 v18, v5

    .end local v5    # "entityClass":Ljava/lang/Class;
    .local v18, "entityClass":Ljava/lang/Class;
    iget-object v5, v1, Lcom/sleepycat/persist/impl/Store;->autoCommitTxnConfig:Lcom/sleepycat/je/TransactionConfig;

    invoke-virtual {v4, v0, v5}, Lcom/sleepycat/je/Environment;->beginTransaction(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/Transaction;

    move-result-object v15

    .line 1635
    sget-object v4, Lcom/sleepycat/je/CursorConfig;->READ_COMMITTED:Lcom/sleepycat/je/CursorConfig;

    .end local v17    # "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    .local v4, "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    goto :goto_0

    .line 1633
    .end local v16    # "WRITES_PER_TXN":I
    .end local v18    # "entityClass":Ljava/lang/Class;
    .local v4, "WRITES_PER_TXN":I
    .restart local v5    # "entityClass":Ljava/lang/Class;
    .restart local v17    # "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    :cond_0
    move/from16 v16, v4

    move-object/from16 v18, v5

    .end local v4    # "WRITES_PER_TXN":I
    .end local v5    # "entityClass":Ljava/lang/Class;
    .restart local v16    # "WRITES_PER_TXN":I
    .restart local v18    # "entityClass":Ljava/lang/Class;
    move-object/from16 v4, v17

    .line 1638
    .end local v17    # "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    .local v4, "cursorConfig":Lcom/sleepycat/je/CursorConfig;
    :goto_0
    const/4 v5, 0x0

    .line 1639
    .local v5, "cursor":Lcom/sleepycat/je/Cursor;
    const/16 v17, 0x0

    .line 1641
    .local v17, "nWritten":I
    :try_start_0
    invoke-virtual {v11, v15, v4}, Lcom/sleepycat/je/Database;->openCursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v19

    move-object/from16 v5, v19

    .line 1642
    invoke-virtual {v5, v13, v14, v0}, Lcom/sleepycat/je/Cursor;->getFirst(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object/from16 v0, v19

    .line 1643
    .local v0, "status":Lcom/sleepycat/je/OperationStatus;
    :goto_1
    move-object/from16 v20, v7

    .end local v7    # "meta":Lcom/sleepycat/persist/model/EntityMetadata;
    .local v20, "meta":Lcom/sleepycat/persist/model/EntityMetadata;
    :try_start_1
    sget-object v7, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v0, v7, :cond_6

    .line 1644
    const/4 v7, 0x0

    .line 1645
    .local v7, "oneWritten":Z
    invoke-direct {v1, v13, v14, v12}, Lcom/sleepycat/persist/impl/Store;->evolveNeeded(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/bind/EntityBinding;)Z

    move-result v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v21, :cond_1

    .line 1646
    :try_start_2
    invoke-virtual {v5, v14}, Lcom/sleepycat/je/Cursor;->putCurrent(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1647
    const/4 v7, 0x1

    .line 1648
    add-int/lit8 v17, v17, 0x1

    move-object/from16 v21, v8

    move/from16 v8, v17

    goto :goto_2

    .line 1676
    .end local v0    # "status":Lcom/sleepycat/je/OperationStatus;
    .end local v7    # "oneWritten":Z
    :catchall_0
    move-exception v0

    move-object/from16 v21, v8

    goto/16 :goto_7

    .line 1645
    .restart local v0    # "status":Lcom/sleepycat/je/OperationStatus;
    .restart local v7    # "oneWritten":Z
    :cond_1
    move-object/from16 v21, v8

    move/from16 v8, v17

    .line 1651
    .end local v17    # "nWritten":I
    .local v8, "nWritten":I
    .local v21, "keyClassName":Ljava/lang/String;
    :goto_2
    move-object/from16 v22, v0

    .end local v0    # "status":Lcom/sleepycat/je/OperationStatus;
    .local v22, "status":Lcom/sleepycat/je/OperationStatus;
    const/4 v0, 0x1

    if-eqz v7, :cond_2

    move/from16 v23, v7

    move v7, v0

    goto :goto_3

    :cond_2
    const/16 v17, 0x0

    move/from16 v23, v7

    move/from16 v7, v17

    .line 1652
    .end local v7    # "oneWritten":Z
    .local v23, "oneWritten":Z
    :goto_3
    :try_start_3
    invoke-static {v2, v6, v0, v7}, Lcom/sleepycat/persist/evolve/EvolveInternal;->updateEvent(Lcom/sleepycat/persist/evolve/EvolveEvent;Ljava/lang/String;II)V

    .line 1653
    if-eqz v3, :cond_3

    .line 1654
    invoke-interface {v3, v2}, Lcom/sleepycat/persist/evolve/EvolveListener;->evolveProgress(Lcom/sleepycat/persist/evolve/EvolveEvent;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1655
    move/from16 v17, v8

    goto :goto_5

    .line 1658
    :cond_3
    if-eqz v15, :cond_5

    if-lt v8, v0, :cond_5

    .line 1659
    invoke-virtual {v5}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1660
    const/4 v5, 0x0

    .line 1661
    invoke-virtual {v15}, Lcom/sleepycat/je/Transaction;->commit()V

    .line 1662
    const/4 v15, 0x0

    .line 1663
    iget-object v0, v1, Lcom/sleepycat/persist/impl/Store;->env:Lcom/sleepycat/je/Environment;

    iget-object v7, v1, Lcom/sleepycat/persist/impl/Store;->autoCommitTxnConfig:Lcom/sleepycat/je/TransactionConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v7}, Lcom/sleepycat/je/Environment;->beginTransaction(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/Transaction;

    move-result-object v0

    move-object v15, v0

    .line 1664
    invoke-virtual {v11, v15, v4}, Lcom/sleepycat/je/Database;->openCursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v0

    move-object v5, v0

    .line 1665
    invoke-static {v13}, Lcom/sleepycat/util/keyrange/KeyRange;->copy(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/DatabaseEntry;

    move-result-object v0

    .line 1666
    .local v0, "saveKey":Lcom/sleepycat/je/DatabaseEntry;
    const/4 v1, 0x0

    invoke-virtual {v5, v13, v14, v1}, Lcom/sleepycat/je/Cursor;->getSearchKeyRange(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v7

    move-object v1, v7

    .line 1667
    .end local v22    # "status":Lcom/sleepycat/je/OperationStatus;
    .local v1, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v7, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v1, v7, :cond_4

    .line 1668
    invoke-static {v13, v0}, Lcom/sleepycat/util/keyrange/KeyRange;->equalBytes(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1669
    const/4 v7, 0x0

    invoke-virtual {v5, v13, v14, v7}, Lcom/sleepycat/je/Cursor;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v17

    move-object/from16 v1, v17

    .line 1671
    .end local v0    # "saveKey":Lcom/sleepycat/je/DatabaseEntry;
    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    .line 1672
    .end local v1    # "status":Lcom/sleepycat/je/OperationStatus;
    .restart local v22    # "status":Lcom/sleepycat/je/OperationStatus;
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {v5, v13, v14, v0}, Lcom/sleepycat/je/Cursor;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1674
    .end local v22    # "status":Lcom/sleepycat/je/OperationStatus;
    .end local v23    # "oneWritten":Z
    .restart local v1    # "status":Lcom/sleepycat/je/OperationStatus;
    :goto_4
    move-object v0, v1

    move/from16 v17, v8

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v1, p0

    goto/16 :goto_1

    .line 1676
    .end local v1    # "status":Lcom/sleepycat/je/OperationStatus;
    :catchall_1
    move-exception v0

    move/from16 v17, v8

    goto :goto_7

    .line 1643
    .end local v21    # "keyClassName":Ljava/lang/String;
    .local v0, "status":Lcom/sleepycat/je/OperationStatus;
    .local v8, "keyClassName":Ljava/lang/String;
    .restart local v17    # "nWritten":I
    :cond_6
    move-object/from16 v22, v0

    move-object/from16 v21, v8

    .line 1676
    .end local v0    # "status":Lcom/sleepycat/je/OperationStatus;
    .end local v8    # "keyClassName":Ljava/lang/String;
    .restart local v21    # "keyClassName":Ljava/lang/String;
    :goto_5
    if-eqz v5, :cond_7

    .line 1677
    invoke-virtual {v5}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1679
    :cond_7
    if-eqz v15, :cond_9

    .line 1680
    if-lez v17, :cond_8

    .line 1681
    invoke-virtual {v15}, Lcom/sleepycat/je/Transaction;->commit()V

    goto :goto_6

    .line 1683
    :cond_8
    invoke-virtual {v15}, Lcom/sleepycat/je/Transaction;->abort()V

    .line 1687
    :cond_9
    :goto_6
    return-void

    .line 1676
    .end local v21    # "keyClassName":Ljava/lang/String;
    .restart local v8    # "keyClassName":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v21, v8

    .end local v8    # "keyClassName":Ljava/lang/String;
    .restart local v21    # "keyClassName":Ljava/lang/String;
    goto :goto_7

    .end local v20    # "meta":Lcom/sleepycat/persist/model/EntityMetadata;
    .end local v21    # "keyClassName":Ljava/lang/String;
    .local v7, "meta":Lcom/sleepycat/persist/model/EntityMetadata;
    .restart local v8    # "keyClassName":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    .end local v7    # "meta":Lcom/sleepycat/persist/model/EntityMetadata;
    .end local v8    # "keyClassName":Ljava/lang/String;
    .restart local v20    # "meta":Lcom/sleepycat/persist/model/EntityMetadata;
    .restart local v21    # "keyClassName":Ljava/lang/String;
    :goto_7
    if-eqz v5, :cond_a

    .line 1677
    invoke-virtual {v5}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1679
    :cond_a
    if-eqz v15, :cond_c

    .line 1680
    if-lez v17, :cond_b

    .line 1681
    invoke-virtual {v15}, Lcom/sleepycat/je/Transaction;->commit()V

    goto :goto_8

    .line 1683
    :cond_b
    invoke-virtual {v15}, Lcom/sleepycat/je/Transaction;->abort()V

    :cond_c
    :goto_8
    throw v0
.end method

.method private evolveNeeded(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/bind/EntityBinding;)Z
    .locals 6
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "binding"    # Lcom/sleepycat/bind/EntityBinding;

    .line 1696
    invoke-interface {p3, p1, p2}, Lcom/sleepycat/bind/EntityBinding;->entryToObject(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v0

    .line 1697
    .local v0, "entity":Ljava/lang/Object;
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 1698
    .local v1, "newData":Lcom/sleepycat/je/DatabaseEntry;
    invoke-interface {p3, v0, v1}, Lcom/sleepycat/bind/EntityBinding;->objectToData(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 1699
    invoke-virtual {p2, v1}, Lcom/sleepycat/je/DatabaseEntry;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1700
    const/4 v2, 0x0

    return v2

    .line 1702
    :cond_0
    invoke-virtual {v1}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v2

    .line 1703
    .local v2, "bytes":[B
    invoke-virtual {v1}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v3

    .line 1704
    .local v3, "off":I
    invoke-virtual {v1}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v4

    .line 1705
    .local v4, "size":I
    invoke-virtual {p2, v2, v3, v4}, Lcom/sleepycat/je/DatabaseEntry;->setData([BII)V

    .line 1706
    const/4 v5, 0x1

    return v5
.end method

.method private getKeyBinding(Ljava/lang/String;)Lcom/sleepycat/persist/impl/PersistKeyBinding;
    .locals 4
    .param p1, "keyClassName"    # Ljava/lang/String;

    .line 1514
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store;->keyBindingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/impl/PersistKeyBinding;

    .line 1515
    .local v0, "binding":Lcom/sleepycat/persist/impl/PersistKeyBinding;
    if-nez v0, :cond_0

    .line 1516
    new-instance v1, Lcom/sleepycat/persist/impl/PersistKeyBinding;

    iget-object v2, p0, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    iget-boolean v3, p0, Lcom/sleepycat/persist/impl/Store;->rawAccess:Z

    invoke-direct {v1, v2, p1, v3}, Lcom/sleepycat/persist/impl/PersistKeyBinding;-><init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/String;Z)V

    move-object v0, v1

    .line 1517
    iget-object v1, p0, Lcom/sleepycat/persist/impl/Store;->keyBindingMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1519
    :cond_0
    return-object v0
.end method

.method private getKeyCreator(Lcom/sleepycat/je/SecondaryConfig;)Lcom/sleepycat/persist/impl/PersistKeyCreator;
    .locals 2
    .param p1, "config"    # Lcom/sleepycat/je/SecondaryConfig;

    .line 1523
    nop

    .line 1524
    invoke-virtual {p1}, Lcom/sleepycat/je/SecondaryConfig;->getKeyCreator()Lcom/sleepycat/je/SecondaryKeyCreator;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/impl/PersistKeyCreator;

    .line 1525
    .local v0, "keyCreator":Lcom/sleepycat/persist/impl/PersistKeyCreator;
    if-eqz v0, :cond_0

    .line 1526
    return-object v0

    .line 1528
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/SecondaryConfig;->getMultiKeyCreator()Lcom/sleepycat/je/SecondaryMultiKeyCreator;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/sleepycat/persist/impl/PersistKeyCreator;

    .line 1529
    if-eqz v0, :cond_1

    .line 1530
    return-object v0

    .line 1529
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private declared-synchronized getPrimaryConfig(Lcom/sleepycat/persist/model/EntityMetadata;)Lcom/sleepycat/je/DatabaseConfig;
    .locals 4
    .param p1, "meta"    # Lcom/sleepycat/persist/model/EntityMetadata;

    monitor-enter p0

    .line 1244
    :try_start_0
    invoke-virtual {p1}, Lcom/sleepycat/persist/model/EntityMetadata;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1245
    .local v0, "clsName":Ljava/lang/String;
    iget-object v1, p0, Lcom/sleepycat/persist/impl/Store;->priConfigMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/DatabaseConfig;

    .line 1246
    .local v1, "config":Lcom/sleepycat/je/DatabaseConfig;
    if-nez v1, :cond_1

    .line 1247
    new-instance v2, Lcom/sleepycat/je/DatabaseConfig;

    invoke-direct {v2}, Lcom/sleepycat/je/DatabaseConfig;-><init>()V

    move-object v1, v2

    .line 1248
    iget-object v2, p0, Lcom/sleepycat/persist/impl/Store;->storeConfig:Lcom/sleepycat/persist/StoreConfig;

    invoke-virtual {v2}, Lcom/sleepycat/persist/StoreConfig;->getTransactional()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/DatabaseConfig;->setTransactional(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 1249
    iget-object v2, p0, Lcom/sleepycat/persist/impl/Store;->storeConfig:Lcom/sleepycat/persist/StoreConfig;

    invoke-virtual {v2}, Lcom/sleepycat/persist/StoreConfig;->getReadOnly()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/DatabaseConfig;->setAllowCreate(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 1250
    iget-object v2, p0, Lcom/sleepycat/persist/impl/Store;->storeConfig:Lcom/sleepycat/persist/StoreConfig;

    invoke-virtual {v2}, Lcom/sleepycat/persist/StoreConfig;->getReadOnly()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/DatabaseConfig;->setReadOnly(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 1251
    invoke-static {v1}, Lcom/sleepycat/compat/DbCompat;->setTypeBtree(Lcom/sleepycat/je/DatabaseConfig;)V

    .line 1253
    iget-object v2, p0, Lcom/sleepycat/persist/impl/Store;->storeConfig:Lcom/sleepycat/persist/StoreConfig;

    invoke-virtual {v2}, Lcom/sleepycat/persist/StoreConfig;->getReplicated()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/DatabaseConfig;->setReplicated(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 1254
    iget-object v2, p0, Lcom/sleepycat/persist/impl/Store;->storeConfig:Lcom/sleepycat/persist/StoreConfig;

    invoke-virtual {v2}, Lcom/sleepycat/persist/StoreConfig;->getTemporary()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/DatabaseConfig;->setTemporary(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 1255
    iget-object v2, p0, Lcom/sleepycat/persist/impl/Store;->storeConfig:Lcom/sleepycat/persist/StoreConfig;

    invoke-virtual {v2}, Lcom/sleepycat/persist/StoreConfig;->getDeferredWrite()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/DatabaseConfig;->setDeferredWrite(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 1256
    invoke-virtual {v1, v3}, Lcom/sleepycat/je/DatabaseConfig;->setOverrideBtreeComparator(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 1258
    invoke-virtual {p1}, Lcom/sleepycat/persist/model/EntityMetadata;->getPrimaryKey()Lcom/sleepycat/persist/model/PrimaryKeyMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/persist/model/PrimaryKeyMetadata;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sleepycat/persist/impl/Store;->setBtreeComparator(Lcom/sleepycat/je/DatabaseConfig;Ljava/lang/String;)V

    .line 1259
    iget-object v2, p0, Lcom/sleepycat/persist/impl/Store;->priConfigMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1261
    .end local p0    # "this":Lcom/sleepycat/persist/impl/Store;
    :cond_1
    monitor-exit p0

    return-object v1

    .line 1243
    .end local v0    # "clsName":Ljava/lang/String;
    .end local v1    # "config":Lcom/sleepycat/je/DatabaseConfig;
    .end local p1    # "meta":Lcom/sleepycat/persist/model/EntityMetadata;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getRelatedIndex(Ljava/lang/String;)Lcom/sleepycat/persist/PrimaryIndex;
    .locals 6
    .param p1, "relatedClsName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 529
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store;->priIndexMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/PrimaryIndex;

    .line 530
    .local v0, "relatedIndex":Lcom/sleepycat/persist/PrimaryIndex;
    if-nez v0, :cond_1

    .line 531
    nop

    .line 532
    invoke-direct {p0, p1}, Lcom/sleepycat/persist/impl/Store;->checkEntityClass(Ljava/lang/String;)Lcom/sleepycat/persist/model/EntityMetadata;

    move-result-object v1

    .line 536
    .local v1, "relatedEntityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    iget-boolean v2, p0, Lcom/sleepycat/persist/impl/Store;->rawAccess:Z

    if-eqz v2, :cond_0

    .line 537
    const-class v2, Lcom/sleepycat/persist/raw/RawObject;

    .line 538
    .local v2, "relatedCls":Ljava/lang/Class;
    const-class v3, Ljava/lang/Object;

    .line 539
    .local v3, "relatedKeyCls":Ljava/lang/Class;
    const/4 v4, 0x0

    .local v4, "relatedKeyClsName":Ljava/lang/String;
    goto :goto_0

    .line 542
    .end local v2    # "relatedCls":Ljava/lang/Class;
    .end local v3    # "relatedKeyCls":Ljava/lang/Class;
    .end local v4    # "relatedKeyClsName":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    invoke-virtual {v2, p1}, Lcom/sleepycat/persist/impl/PersistCatalog;->resolveClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    .restart local v2    # "relatedCls":Ljava/lang/Class;
    nop

    .line 548
    nop

    .line 549
    invoke-virtual {v1}, Lcom/sleepycat/persist/model/EntityMetadata;->getPrimaryKey()Lcom/sleepycat/persist/model/PrimaryKeyMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/persist/model/PrimaryKeyMetadata;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sleepycat/persist/impl/SimpleCatalog;->keyClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 550
    .restart local v4    # "relatedKeyClsName":Ljava/lang/String;
    iget-object v3, p0, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    invoke-virtual {v3, v4}, Lcom/sleepycat/persist/impl/PersistCatalog;->resolveKeyClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 558
    .restart local v3    # "relatedKeyCls":Ljava/lang/Class;
    :goto_0
    nop

    .line 559
    invoke-virtual {p0, v3, v4, v2, p1}, Lcom/sleepycat/persist/impl/Store;->getPrimaryIndex(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/sleepycat/persist/PrimaryIndex;

    move-result-object v0

    goto :goto_1

    .line 543
    .end local v2    # "relatedCls":Ljava/lang/Class;
    .end local v3    # "relatedKeyCls":Ljava/lang/Class;
    .end local v4    # "relatedKeyClsName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 544
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Related entity class not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 562
    .end local v1    # "relatedEntityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    :goto_1
    return-object v0
.end method

.method private getSecKeyClass(Lcom/sleepycat/persist/model/SecondaryKeyMetadata;)Ljava/lang/String;
    .locals 2
    .param p1, "secKeyMeta"    # Lcom/sleepycat/persist/model/SecondaryKeyMetadata;

    .line 1506
    invoke-virtual {p1}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getElementClassName()Ljava/lang/String;

    move-result-object v0

    .line 1507
    .local v0, "clsName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1508
    invoke-virtual {p1}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1510
    :cond_0
    invoke-static {v0}, Lcom/sleepycat/persist/impl/SimpleCatalog;->keyClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSecondaryConfig(Ljava/lang/String;Lcom/sleepycat/persist/model/EntityMetadata;Ljava/lang/String;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;)Lcom/sleepycat/je/SecondaryConfig;
    .locals 10
    .param p1, "secName"    # Ljava/lang/String;
    .param p2, "entityMeta"    # Lcom/sleepycat/persist/model/EntityMetadata;
    .param p3, "keyClassName"    # Ljava/lang/String;
    .param p4, "secKeyMeta"    # Lcom/sleepycat/persist/model/SecondaryKeyMetadata;

    .line 1309
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store;->secConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/SecondaryConfig;

    .line 1310
    .local v0, "config":Lcom/sleepycat/je/SecondaryConfig;
    if-nez v0, :cond_5

    .line 1312
    invoke-direct {p0, p2}, Lcom/sleepycat/persist/impl/Store;->getPrimaryConfig(Lcom/sleepycat/persist/model/EntityMetadata;)Lcom/sleepycat/je/DatabaseConfig;

    move-result-object v1

    .line 1313
    .local v1, "priConfig":Lcom/sleepycat/je/DatabaseConfig;
    new-instance v2, Lcom/sleepycat/je/SecondaryConfig;

    invoke-direct {v2}, Lcom/sleepycat/je/SecondaryConfig;-><init>()V

    move-object v0, v2

    .line 1314
    invoke-virtual {v1}, Lcom/sleepycat/je/DatabaseConfig;->getTransactional()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/SecondaryConfig;->setTransactional(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 1315
    invoke-virtual {v1}, Lcom/sleepycat/je/DatabaseConfig;->getReadOnly()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/SecondaryConfig;->setAllowCreate(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 1316
    invoke-virtual {v1}, Lcom/sleepycat/je/DatabaseConfig;->getReadOnly()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/SecondaryConfig;->setReadOnly(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 1317
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->setTypeBtree(Lcom/sleepycat/je/DatabaseConfig;)V

    .line 1319
    invoke-virtual {v1}, Lcom/sleepycat/je/DatabaseConfig;->getReplicated()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/SecondaryConfig;->setReplicated(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 1320
    invoke-virtual {v1}, Lcom/sleepycat/je/DatabaseConfig;->getTemporary()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/SecondaryConfig;->setTemporary(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 1321
    invoke-virtual {v1}, Lcom/sleepycat/je/DatabaseConfig;->getDeferredWrite()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/SecondaryConfig;->setDeferredWrite(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 1322
    invoke-virtual {v0, v3}, Lcom/sleepycat/je/SecondaryConfig;->setOverrideBtreeComparator(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 1323
    invoke-virtual {v0, v3}, Lcom/sleepycat/je/SecondaryConfig;->setOverrideDuplicateComparator(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 1326
    invoke-virtual {v0, v3}, Lcom/sleepycat/je/SecondaryConfig;->setAllowPopulate(Z)Lcom/sleepycat/je/SecondaryConfig;

    .line 1327
    invoke-virtual {p4}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getRelationship()Lcom/sleepycat/persist/model/Relationship;

    move-result-object v2

    .line 1328
    .local v2, "rel":Lcom/sleepycat/persist/model/Relationship;
    sget-object v4, Lcom/sleepycat/persist/model/Relationship;->MANY_TO_ONE:Lcom/sleepycat/persist/model/Relationship;

    if-eq v2, v4, :cond_1

    sget-object v4, Lcom/sleepycat/persist/model/Relationship;->MANY_TO_MANY:Lcom/sleepycat/persist/model/Relationship;

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    invoke-virtual {v0, v3}, Lcom/sleepycat/je/SecondaryConfig;->setSortedDuplicates(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 1330
    invoke-direct {p0, v0, p3}, Lcom/sleepycat/persist/impl/Store;->setBtreeComparator(Lcom/sleepycat/je/DatabaseConfig;Ljava/lang/String;)V

    .line 1331
    invoke-virtual {v1}, Lcom/sleepycat/je/DatabaseConfig;->getBtreeComparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sleepycat/je/SecondaryConfig;->setDuplicateComparator(Ljava/util/Comparator;)Lcom/sleepycat/je/DatabaseConfig;

    .line 1332
    new-instance v3, Lcom/sleepycat/persist/impl/PersistKeyCreator;

    iget-object v5, p0, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    iget-boolean v9, p0, Lcom/sleepycat/persist/impl/Store;->rawAccess:Z

    move-object v4, v3

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v4 .. v9}, Lcom/sleepycat/persist/impl/PersistKeyCreator;-><init>(Lcom/sleepycat/persist/impl/Catalog;Lcom/sleepycat/persist/model/EntityMetadata;Ljava/lang/String;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;Z)V

    .line 1334
    .local v3, "keyCreator":Lcom/sleepycat/persist/impl/PersistKeyCreator;
    sget-object v4, Lcom/sleepycat/persist/model/Relationship;->ONE_TO_MANY:Lcom/sleepycat/persist/model/Relationship;

    if-eq v2, v4, :cond_3

    sget-object v4, Lcom/sleepycat/persist/model/Relationship;->MANY_TO_MANY:Lcom/sleepycat/persist/model/Relationship;

    if-ne v2, v4, :cond_2

    goto :goto_1

    .line 1338
    :cond_2
    invoke-virtual {v0, v3}, Lcom/sleepycat/je/SecondaryConfig;->setKeyCreator(Lcom/sleepycat/je/SecondaryKeyCreator;)Lcom/sleepycat/je/SecondaryConfig;

    goto :goto_2

    .line 1336
    :cond_3
    :goto_1
    invoke-virtual {v0, v3}, Lcom/sleepycat/je/SecondaryConfig;->setMultiKeyCreator(Lcom/sleepycat/je/SecondaryMultiKeyCreator;)Lcom/sleepycat/je/SecondaryConfig;

    .line 1340
    :goto_2
    invoke-virtual {p4}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getDeleteAction()Lcom/sleepycat/persist/model/DeleteAction;

    move-result-object v4

    .line 1341
    .local v4, "deleteAction":Lcom/sleepycat/persist/model/DeleteAction;
    if-eqz v4, :cond_4

    .line 1343
    sget-object v5, Lcom/sleepycat/persist/impl/Store$1;->$SwitchMap$com$sleepycat$persist$model$DeleteAction:[I

    invoke-virtual {v4}, Lcom/sleepycat/persist/model/DeleteAction;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1354
    invoke-virtual {v4}, Lcom/sleepycat/persist/model/DeleteAction;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 1351
    :pswitch_0
    sget-object v5, Lcom/sleepycat/je/ForeignKeyDeleteAction;->NULLIFY:Lcom/sleepycat/je/ForeignKeyDeleteAction;

    .line 1352
    .local v5, "baseDeleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    goto :goto_3

    .line 1348
    .end local v5    # "baseDeleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    :pswitch_1
    sget-object v5, Lcom/sleepycat/je/ForeignKeyDeleteAction;->CASCADE:Lcom/sleepycat/je/ForeignKeyDeleteAction;

    .line 1349
    .restart local v5    # "baseDeleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    goto :goto_3

    .line 1345
    .end local v5    # "baseDeleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    :pswitch_2
    sget-object v5, Lcom/sleepycat/je/ForeignKeyDeleteAction;->ABORT:Lcom/sleepycat/je/ForeignKeyDeleteAction;

    .line 1346
    .restart local v5    # "baseDeleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    nop

    .line 1356
    :goto_3
    invoke-virtual {v0, v5}, Lcom/sleepycat/je/SecondaryConfig;->setForeignKeyDeleteAction(Lcom/sleepycat/je/ForeignKeyDeleteAction;)Lcom/sleepycat/je/SecondaryConfig;

    .line 1357
    sget-object v6, Lcom/sleepycat/persist/model/DeleteAction;->NULLIFY:Lcom/sleepycat/persist/model/DeleteAction;

    if-ne v4, v6, :cond_4

    .line 1358
    invoke-virtual {v0, v3}, Lcom/sleepycat/je/SecondaryConfig;->setForeignMultiKeyNullifier(Lcom/sleepycat/je/ForeignMultiKeyNullifier;)Lcom/sleepycat/je/SecondaryConfig;

    .line 1361
    .end local v5    # "baseDeleteAction":Lcom/sleepycat/je/ForeignKeyDeleteAction;
    :cond_4
    iget-object v5, p0, Lcom/sleepycat/persist/impl/Store;->secConfigMap:Ljava/util/Map;

    invoke-interface {v5, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1363
    .end local v1    # "priConfig":Lcom/sleepycat/je/DatabaseConfig;
    .end local v2    # "rel":Lcom/sleepycat/persist/model/Relationship;
    .end local v3    # "keyCreator":Lcom/sleepycat/persist/impl/PersistKeyCreator;
    .end local v4    # "deleteAction":Lcom/sleepycat/persist/model/DeleteAction;
    :cond_5
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getStoreNames(Lcom/sleepycat/je/Environment;)Ljava/util/Set;
    .locals 7
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

    .line 270
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 271
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->getDatabaseNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 272
    .local v2, "o":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 273
    .local v3, "s":Ljava/lang/String;
    const-string v4, "persist#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 274
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 275
    .local v4, "start":I
    const-string v5, "#"

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 276
    .local v5, "end":I
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 278
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "start":I
    .end local v5    # "end":I
    :cond_0
    goto :goto_0

    .line 279
    :cond_1
    return-object v0
.end method

.method static makePriDbName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "storePrefix"    # Ljava/lang/String;
    .param p1, "entityClsName"    # Ljava/lang/String;

    .line 1418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static makeSecDbName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "storePrefix"    # Ljava/lang/String;
    .param p1, "entityClsName"    # Ljava/lang/String;
    .param p2, "keyName"    # Ljava/lang/String;

    .line 1424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/sleepycat/persist/impl/Store;->makeSecName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static makeSecName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "entityClsName"    # Ljava/lang/String;
    .param p1, "keyName"    # Ljava/lang/String;

    .line 1414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private openSecondaryDatabase(Lcom/sleepycat/je/Transaction;[Ljava/lang/String;Lcom/sleepycat/persist/PrimaryIndex;Ljava/lang/String;Lcom/sleepycat/je/SecondaryConfig;Z)Lcom/sleepycat/je/SecondaryDatabase;
    .locals 16
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "fileAndDbNames"    # [Ljava/lang/String;
    .param p3, "priIndex"    # Lcom/sleepycat/persist/PrimaryIndex;
    .param p4, "keyName"    # Ljava/lang/String;
    .param p5, "config"    # Lcom/sleepycat/je/SecondaryConfig;
    .param p6, "doNotCreate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 862
    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v9, p5

    invoke-virtual/range {p5 .. p5}, Lcom/sleepycat/je/SecondaryConfig;->getAllowPopulate()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 863
    invoke-virtual/range {p5 .. p5}, Lcom/sleepycat/je/SecondaryConfig;->getExclusiveCreate()Z

    move-result v0

    if-nez v0, :cond_8

    .line 864
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/persist/PrimaryIndex;->getDatabase()Lcom/sleepycat/je/Database;

    move-result-object v10

    .line 865
    .local v10, "priDb":Lcom/sleepycat/je/Database;
    nop

    .line 866
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/persist/PrimaryIndex;->getEntityBinding()Lcom/sleepycat/bind/EntityBinding;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/impl/PersistEntityBinding;

    iget-object v0, v0, Lcom/sleepycat/persist/impl/PersistEntityBinding;->entityFormat:Lcom/sleepycat/persist/impl/Format;

    move-object v11, v0

    check-cast v11, Lcom/sleepycat/persist/impl/ComplexFormat;

    .line 867
    .local v11, "entityFormat":Lcom/sleepycat/persist/impl/ComplexFormat;
    invoke-virtual/range {p5 .. p5}, Lcom/sleepycat/je/SecondaryConfig;->getAllowCreate()Z

    move-result v12

    .line 869
    .local v12, "saveAllowCreate":Z
    nop

    .line 870
    invoke-virtual/range {p5 .. p5}, Lcom/sleepycat/je/SecondaryConfig;->getOverrideDuplicateComparator()Z

    move-result v13

    .line 872
    .local v13, "saveOverrideDuplicateComparator":Z
    nop

    .line 873
    invoke-virtual/range {p5 .. p5}, Lcom/sleepycat/je/SecondaryConfig;->getDuplicateComparator()Ljava/util/Comparator;

    move-result-object v14

    .line 875
    .local v14, "saveDupComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    const/4 v15, 0x1

    const/4 v8, 0x0

    if-eqz p6, :cond_0

    .line 876
    :try_start_0
    invoke-virtual {v9, v8}, Lcom/sleepycat/je/SecondaryConfig;->setAllowCreate(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 879
    :cond_0
    invoke-virtual/range {p5 .. p5}, Lcom/sleepycat/je/SecondaryConfig;->getAllowCreate()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v0, :cond_6

    .line 880
    :try_start_1
    invoke-virtual {v9, v15}, Lcom/sleepycat/je/SecondaryConfig;->setExclusiveCreate(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 882
    iget-object v3, v1, Lcom/sleepycat/persist/impl/Store;->env:Lcom/sleepycat/je/Environment;

    aget-object v5, p2, v8

    aget-object v6, p2, v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 883
    move-object/from16 v4, p1

    move-object v7, v10

    move-object/from16 v8, p5

    :try_start_2
    invoke-static/range {v3 .. v8}, Lcom/sleepycat/compat/DbCompat;->openSecondaryDatabase(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Transaction;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/Database;Lcom/sleepycat/je/SecondaryConfig;)Lcom/sleepycat/je/SecondaryDatabase;

    move-result-object v0

    .line 885
    .local v0, "db":Lcom/sleepycat/je/SecondaryDatabase;
    if-eqz v0, :cond_5

    .line 887
    const/4 v3, 0x0

    .line 889
    .local v3, "doFlush":Z
    invoke-virtual/range {p5 .. p5}, Lcom/sleepycat/je/SecondaryConfig;->getDuplicateComparator()Ljava/util/Comparator;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 890
    invoke-virtual {v11, v2}, Lcom/sleepycat/persist/impl/ComplexFormat;->setSecKeyCorrectlyOrdered(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 891
    iget-object v4, v1, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v8, p1

    :try_start_3
    invoke-virtual {v4, v8}, Lcom/sleepycat/persist/impl/PersistCatalog;->flush(Lcom/sleepycat/je/Transaction;)V

    .line 892
    const/4 v3, 0x1

    goto :goto_0

    .line 890
    :cond_1
    move-object/from16 v8, p1

    goto :goto_0

    .line 889
    :cond_2
    move-object/from16 v8, p1

    .line 899
    :goto_0
    sget-boolean v4, Lcom/sleepycat/persist/impl/Store;->expectFlush:Z

    if-eqz v4, :cond_4

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    .end local v10    # "priDb":Lcom/sleepycat/je/Database;
    .end local v11    # "entityFormat":Lcom/sleepycat/persist/impl/ComplexFormat;
    .end local v12    # "saveAllowCreate":Z
    .end local v13    # "saveOverrideDuplicateComparator":Z
    .end local v14    # "saveDupComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    .end local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p2    # "fileAndDbNames":[Ljava/lang/String;
    .end local p3    # "priIndex":Lcom/sleepycat/persist/PrimaryIndex;
    .end local p4    # "keyName":Ljava/lang/String;
    .end local p5    # "config":Lcom/sleepycat/je/SecondaryConfig;
    .end local p6    # "doNotCreate":Z
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 901
    .restart local v10    # "priDb":Lcom/sleepycat/je/Database;
    .restart local v11    # "entityFormat":Lcom/sleepycat/persist/impl/ComplexFormat;
    .restart local v12    # "saveAllowCreate":Z
    .restart local v13    # "saveOverrideDuplicateComparator":Z
    .restart local v14    # "saveDupComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    .restart local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local p2    # "fileAndDbNames":[Ljava/lang/String;
    .restart local p3    # "priIndex":Lcom/sleepycat/persist/PrimaryIndex;
    .restart local p4    # "keyName":Ljava/lang/String;
    .restart local p5    # "config":Lcom/sleepycat/je/SecondaryConfig;
    .restart local p6    # "doNotCreate":Z
    :cond_4
    :goto_1
    nop

    .line 922
    invoke-virtual {v9, v15}, Lcom/sleepycat/je/SecondaryConfig;->setAllowPopulate(Z)Lcom/sleepycat/je/SecondaryConfig;

    .line 923
    const/4 v7, 0x0

    invoke-virtual {v9, v7}, Lcom/sleepycat/je/SecondaryConfig;->setExclusiveCreate(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 924
    invoke-virtual {v9, v12}, Lcom/sleepycat/je/SecondaryConfig;->setAllowCreate(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 926
    invoke-virtual {v9, v13}, Lcom/sleepycat/je/SecondaryConfig;->setOverrideBtreeComparator(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 928
    invoke-virtual {v9, v14}, Lcom/sleepycat/je/SecondaryConfig;->setDuplicateComparator(Ljava/util/Comparator;)Lcom/sleepycat/je/DatabaseConfig;

    .line 901
    return-object v0

    .line 885
    .end local v3    # "doFlush":Z
    :cond_5
    move-object/from16 v8, p1

    const/4 v7, 0x0

    goto :goto_3

    .line 922
    .end local v0    # "db":Lcom/sleepycat/je/SecondaryDatabase;
    :catchall_0
    move-exception v0

    move-object/from16 v8, p1

    :goto_2
    const/4 v3, 0x0

    goto :goto_5

    :catchall_1
    move-exception v0

    move v7, v8

    move-object/from16 v8, p1

    goto :goto_4

    .line 879
    :cond_6
    move v7, v8

    move-object/from16 v8, p1

    .line 905
    :goto_3
    :try_start_4
    invoke-virtual {v9, v7}, Lcom/sleepycat/je/SecondaryConfig;->setAllowCreate(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 906
    invoke-virtual {v9, v7}, Lcom/sleepycat/je/SecondaryConfig;->setAllowPopulate(Z)Lcom/sleepycat/je/SecondaryConfig;

    .line 907
    invoke-virtual {v9, v7}, Lcom/sleepycat/je/SecondaryConfig;->setExclusiveCreate(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 910
    invoke-virtual/range {p5 .. p5}, Lcom/sleepycat/je/SecondaryConfig;->getDuplicateComparator()Ljava/util/Comparator;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 911
    invoke-virtual {v11, v2}, Lcom/sleepycat/persist/impl/ComplexFormat;->isSecKeyIncorrectlyOrdered(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 913
    invoke-virtual {v9, v7}, Lcom/sleepycat/je/SecondaryConfig;->setOverrideDuplicateComparator(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 915
    const/4 v0, 0x0

    move-object v3, v0

    check-cast v3, Ljava/util/Comparator;

    invoke-virtual {v9, v0}, Lcom/sleepycat/je/SecondaryConfig;->setDuplicateComparator(Ljava/util/Comparator;)Lcom/sleepycat/je/DatabaseConfig;

    .line 917
    :cond_7
    iget-object v3, v1, Lcom/sleepycat/persist/impl/Store;->env:Lcom/sleepycat/je/Environment;

    aget-object v5, p2, v7

    aget-object v6, p2, v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 918
    move-object/from16 v4, p1

    move-object v7, v10

    move-object/from16 v8, p5

    :try_start_5
    invoke-static/range {v3 .. v8}, Lcom/sleepycat/compat/DbCompat;->openSecondaryDatabase(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Transaction;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/Database;Lcom/sleepycat/je/SecondaryConfig;)Lcom/sleepycat/je/SecondaryDatabase;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 920
    .restart local v0    # "db":Lcom/sleepycat/je/SecondaryDatabase;
    nop

    .line 922
    invoke-virtual {v9, v15}, Lcom/sleepycat/je/SecondaryConfig;->setAllowPopulate(Z)Lcom/sleepycat/je/SecondaryConfig;

    .line 923
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Lcom/sleepycat/je/SecondaryConfig;->setExclusiveCreate(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 924
    invoke-virtual {v9, v12}, Lcom/sleepycat/je/SecondaryConfig;->setAllowCreate(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 926
    invoke-virtual {v9, v13}, Lcom/sleepycat/je/SecondaryConfig;->setOverrideBtreeComparator(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 928
    invoke-virtual {v9, v14}, Lcom/sleepycat/je/SecondaryConfig;->setDuplicateComparator(Ljava/util/Comparator;)Lcom/sleepycat/je/DatabaseConfig;

    .line 920
    return-object v0

    .line 922
    .end local v0    # "db":Lcom/sleepycat/je/SecondaryDatabase;
    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    :goto_4
    move v3, v7

    goto :goto_5

    :catchall_4
    move-exception v0

    move v3, v8

    :goto_5
    invoke-virtual {v9, v15}, Lcom/sleepycat/je/SecondaryConfig;->setAllowPopulate(Z)Lcom/sleepycat/je/SecondaryConfig;

    .line 923
    invoke-virtual {v9, v3}, Lcom/sleepycat/je/SecondaryConfig;->setExclusiveCreate(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 924
    invoke-virtual {v9, v12}, Lcom/sleepycat/je/SecondaryConfig;->setAllowCreate(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 926
    invoke-virtual {v9, v13}, Lcom/sleepycat/je/SecondaryConfig;->setOverrideBtreeComparator(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 928
    invoke-virtual {v9, v14}, Lcom/sleepycat/je/SecondaryConfig;->setDuplicateComparator(Ljava/util/Comparator;)Lcom/sleepycat/je/DatabaseConfig;

    throw v0

    .line 863
    .end local v10    # "priDb":Lcom/sleepycat/je/Database;
    .end local v11    # "entityFormat":Lcom/sleepycat/persist/impl/ComplexFormat;
    .end local v12    # "saveAllowCreate":Z
    .end local v13    # "saveOverrideDuplicateComparator":Z
    .end local v14    # "saveDupComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 862
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private openSecondaryIndex(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/persist/PrimaryIndex;Ljava/lang/Class;Lcom/sleepycat/persist/model/EntityMetadata;Ljava/lang/Class;Ljava/lang/String;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;Ljava/lang/String;Ljava/lang/String;ZLcom/sleepycat/persist/impl/Store$PrimaryOpenState;)Lcom/sleepycat/persist/impl/Store$InternalSecondaryIndex;
    .locals 22
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p4, "entityMeta"    # Lcom/sleepycat/persist/model/EntityMetadata;
    .param p6, "keyClassName"    # Ljava/lang/String;
    .param p7, "secKeyMeta"    # Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .param p8, "secName"    # Ljava/lang/String;
    .param p9, "dbSecName"    # Ljava/lang/String;
    .param p10, "doNotCreate"    # Z
    .param p11, "priOpenState"    # Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<SK:",
            "Ljava/lang/Object;",
            "PK:",
            "Ljava/lang/Object;",
            "E1:",
            "Ljava/lang/Object;",
            "E2:TE1;>(",
            "Lcom/sleepycat/je/Transaction;",
            "Lcom/sleepycat/persist/PrimaryIndex<",
            "TPK;TE1;>;",
            "Ljava/lang/Class<",
            "TE2;>;",
            "Lcom/sleepycat/persist/model/EntityMetadata;",
            "Ljava/lang/Class<",
            "TSK;>;",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/model/SecondaryKeyMetadata;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;",
            ")",
            "Lcom/sleepycat/persist/impl/Store$InternalSecondaryIndex<",
            "TSK;TPK;TE2;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 787
    .local p2, "primaryIndex":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE1;>;"
    .local p3, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE2;>;"
    .local p5, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<TSK;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p11

    iget-object v0, v7, Lcom/sleepycat/persist/impl/Store;->secIndexMap:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v7, Lcom/sleepycat/persist/impl/Store;->storePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v11, p9

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/sleepycat/persist/impl/Store;->parseDbName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 789
    .local v12, "fileAndDbNames":[Ljava/lang/String;
    nop

    .line 790
    move-object/from16 v13, p4

    move-object/from16 v14, p7

    invoke-direct {v7, v9, v13, v8, v14}, Lcom/sleepycat/persist/impl/Store;->getSecondaryConfig(Ljava/lang/String;Lcom/sleepycat/persist/model/EntityMetadata;Ljava/lang/String;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;)Lcom/sleepycat/je/SecondaryConfig;

    move-result-object v15

    .line 791
    .local v15, "config":Lcom/sleepycat/je/SecondaryConfig;
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/persist/PrimaryIndex;->getDatabase()Lcom/sleepycat/je/Database;

    move-result-object v16

    .line 792
    .local v16, "priDb":Lcom/sleepycat/je/Database;
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/Database;->getConfig()Lcom/sleepycat/je/DatabaseConfig;

    move-result-object v17

    .line 794
    .local v17, "priConfig":Lcom/sleepycat/je/DatabaseConfig;
    invoke-virtual/range {p7 .. p7}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getRelatedEntity()Ljava/lang/String;

    move-result-object v6

    .line 795
    .local v6, "relatedClsName":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 796
    invoke-direct {v7, v6}, Lcom/sleepycat/persist/impl/Store;->getRelatedIndex(Ljava/lang/String;)Lcom/sleepycat/persist/PrimaryIndex;

    move-result-object v0

    .line 797
    .local v0, "relatedIndex":Lcom/sleepycat/persist/PrimaryIndex;
    invoke-virtual {v0}, Lcom/sleepycat/persist/PrimaryIndex;->getDatabase()Lcom/sleepycat/je/Database;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/sleepycat/je/SecondaryConfig;->setForeignKeyDatabase(Lcom/sleepycat/je/Database;)Lcom/sleepycat/je/SecondaryConfig;

    .line 800
    .end local v0    # "relatedIndex":Lcom/sleepycat/persist/PrimaryIndex;
    :cond_0
    invoke-virtual {v15}, Lcom/sleepycat/je/SecondaryConfig;->getTransactional()Z

    move-result v0

    invoke-virtual/range {v17 .. v17}, Lcom/sleepycat/je/DatabaseConfig;->getTransactional()Z

    move-result v1

    if-ne v0, v1, :cond_7

    .line 801
    invoke-static {v15}, Lcom/sleepycat/compat/DbCompat;->getDeferredWrite(Lcom/sleepycat/je/DatabaseConfig;)Z

    move-result v0

    .line 802
    invoke-static/range {v17 .. v17}, Lcom/sleepycat/compat/DbCompat;->getDeferredWrite(Lcom/sleepycat/je/DatabaseConfig;)Z

    move-result v1

    if-ne v0, v1, :cond_6

    .line 803
    invoke-virtual {v15}, Lcom/sleepycat/je/SecondaryConfig;->getReadOnly()Z

    move-result v0

    invoke-virtual/range {v17 .. v17}, Lcom/sleepycat/je/DatabaseConfig;->getReadOnly()Z

    move-result v1

    if-ne v0, v1, :cond_5

    .line 810
    invoke-direct {v7, v8}, Lcom/sleepycat/persist/impl/Store;->getKeyBinding(Ljava/lang/String;)Lcom/sleepycat/persist/impl/PersistKeyBinding;

    move-result-object v18

    .line 812
    .local v18, "keyBinding":Lcom/sleepycat/persist/impl/PersistKeyBinding;
    nop

    .line 814
    invoke-virtual/range {p7 .. p7}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getKeyName()Ljava/lang/String;

    move-result-object v4

    .line 813
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move-object/from16 v3, p2

    move-object v5, v15

    move-object/from16 v19, v6

    .end local v6    # "relatedClsName":Ljava/lang/String;
    .local v19, "relatedClsName":Ljava/lang/String;
    move/from16 v6, p10

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/persist/impl/Store;->openSecondaryDatabase(Lcom/sleepycat/je/Transaction;[Ljava/lang/String;Lcom/sleepycat/persist/PrimaryIndex;Ljava/lang/String;Lcom/sleepycat/je/SecondaryConfig;Z)Lcom/sleepycat/je/SecondaryDatabase;

    move-result-object v6

    .line 815
    .local v6, "db":Lcom/sleepycat/je/SecondaryDatabase;
    const/4 v5, 0x0

    if-nez v6, :cond_2

    .line 816
    if-eqz p10, :cond_1

    .line 817
    return-object v5

    .line 816
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 820
    :cond_2
    new-instance v20, Lcom/sleepycat/persist/impl/Store$InternalSecondaryIndex;

    .line 822
    invoke-direct {v7, v15}, Lcom/sleepycat/persist/impl/Store;->getKeyCreator(Lcom/sleepycat/je/SecondaryConfig;)Lcom/sleepycat/persist/impl/PersistKeyCreator;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object v2, v6

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-object v8, v5

    move-object/from16 v5, v18

    move-object v11, v6

    .end local v6    # "db":Lcom/sleepycat/je/SecondaryDatabase;
    .local v11, "db":Lcom/sleepycat/je/SecondaryDatabase;
    move-object/from16 v6, v21

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/persist/impl/Store$InternalSecondaryIndex;-><init>(Lcom/sleepycat/persist/impl/Store;Lcom/sleepycat/je/SecondaryDatabase;Lcom/sleepycat/persist/PrimaryIndex;Ljava/lang/Class;Lcom/sleepycat/persist/impl/PersistKeyBinding;Lcom/sleepycat/persist/impl/PersistKeyCreator;)V

    .line 825
    .local v0, "secIndex":Lcom/sleepycat/persist/impl/Store$InternalSecondaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalSecondaryIndex<TSK;TPK;TE2;>;"
    iget-object v1, v7, Lcom/sleepycat/persist/impl/Store;->secIndexMap:Ljava/util/Map;

    invoke-interface {v1, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    invoke-static {v15}, Lcom/sleepycat/compat/DbCompat;->getDeferredWrite(Lcom/sleepycat/je/DatabaseConfig;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 827
    iget-object v1, v7, Lcom/sleepycat/persist/impl/Store;->deferredWriteDatabases:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v11, v8}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    :cond_3
    if-eqz v10, :cond_4

    .line 830
    invoke-virtual {v10, v11}, Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;->addDatabase(Lcom/sleepycat/je/Database;)V

    .line 831
    invoke-virtual {v10, v9}, Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;->addSecondaryName(Ljava/lang/String;)V

    .line 833
    :cond_4
    return-object v0

    .line 803
    .end local v0    # "secIndex":Lcom/sleepycat/persist/impl/Store$InternalSecondaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalSecondaryIndex<TSK;TPK;TE2;>;"
    .end local v11    # "db":Lcom/sleepycat/je/SecondaryDatabase;
    .end local v18    # "keyBinding":Lcom/sleepycat/persist/impl/PersistKeyBinding;
    .end local v19    # "relatedClsName":Ljava/lang/String;
    .local v6, "relatedClsName":Ljava/lang/String;
    :cond_5
    move-object/from16 v19, v6

    .end local v6    # "relatedClsName":Ljava/lang/String;
    .restart local v19    # "relatedClsName":Ljava/lang/String;
    goto :goto_0

    .line 802
    .end local v19    # "relatedClsName":Ljava/lang/String;
    .restart local v6    # "relatedClsName":Ljava/lang/String;
    :cond_6
    move-object/from16 v19, v6

    .end local v6    # "relatedClsName":Ljava/lang/String;
    .restart local v19    # "relatedClsName":Ljava/lang/String;
    goto :goto_0

    .line 800
    .end local v19    # "relatedClsName":Ljava/lang/String;
    .restart local v6    # "relatedClsName":Ljava/lang/String;
    :cond_7
    move-object/from16 v19, v6

    .line 804
    .end local v6    # "relatedClsName":Ljava/lang/String;
    .restart local v19    # "relatedClsName":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "One of these properties was changed to be inconsistent with the associated primary database:  Transactional, DeferredWrite, ReadOnly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 787
    .end local v12    # "fileAndDbNames":[Ljava/lang/String;
    .end local v15    # "config":Lcom/sleepycat/je/SecondaryConfig;
    .end local v16    # "priDb":Lcom/sleepycat/je/Database;
    .end local v17    # "priConfig":Lcom/sleepycat/je/DatabaseConfig;
    .end local v19    # "relatedClsName":Ljava/lang/String;
    :cond_8
    move-object/from16 v13, p4

    move-object/from16 v14, p7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private openSecondaryIndexes(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/persist/model/EntityMetadata;Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;)V
    .locals 25
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "entityMeta"    # Lcom/sleepycat/persist/model/EntityMetadata;
    .param p3, "priOpenState"    # Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 721
    move-object/from16 v12, p0

    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/persist/model/EntityMetadata;->getClassName()Ljava/lang/String;

    move-result-object v13

    .line 722
    .local v13, "entityClassName":Ljava/lang/String;
    iget-object v0, v12, Lcom/sleepycat/persist/impl/Store;->priIndexMap:Ljava/util/Map;

    .line 723
    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/sleepycat/persist/PrimaryIndex;

    .line 724
    .local v14, "priIndex":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-eqz v14, :cond_5

    .line 725
    invoke-virtual {v14}, Lcom/sleepycat/persist/PrimaryIndex;->getEntityClass()Ljava/lang/Class;

    move-result-object v15

    .line 728
    .local v15, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Object;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/persist/model/EntityMetadata;->getSecondaryKeys()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;

    .line 729
    .local v11, "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    invoke-virtual {v11}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getKeyName()Ljava/lang/String;

    move-result-object v10

    .line 730
    .local v10, "keyName":Ljava/lang/String;
    invoke-static {v13, v10}, Lcom/sleepycat/persist/impl/Store;->makeSecName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 731
    .local v9, "secName":Ljava/lang/String;
    iget-object v0, v12, Lcom/sleepycat/persist/impl/Store;->secIndexMap:Ljava/util/Map;

    .line 732
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/sleepycat/persist/SecondaryIndex;

    .line 733
    .local v17, "secIndex":Lcom/sleepycat/persist/SecondaryIndex;, "Lcom/sleepycat/persist/SecondaryIndex<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez v17, :cond_3

    .line 734
    invoke-direct {v12, v11}, Lcom/sleepycat/persist/impl/Store;->getSecKeyClass(Lcom/sleepycat/persist/model/SecondaryKeyMetadata;)Ljava/lang/String;

    move-result-object v8

    .line 736
    .local v8, "keyClassName":Ljava/lang/String;
    iget-object v0, v12, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    invoke-virtual {v0, v8}, Lcom/sleepycat/persist/impl/PersistCatalog;->resolveKeyClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v18

    .line 742
    .local v18, "keyClass":Ljava/lang/Class;
    iget-object v0, v12, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 743
    invoke-virtual {v0, v13}, Lcom/sleepycat/persist/impl/PersistCatalog;->getDatabaseClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 744
    .local v7, "dbClassName":Ljava/lang/String;
    iget-object v0, v12, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 745
    invoke-virtual {v0, v13, v10}, Lcom/sleepycat/persist/impl/PersistCatalog;->getDatabaseKeyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 746
    .local v6, "dbKeyName":Ljava/lang/String;
    if-eqz v7, :cond_2

    if-eqz v6, :cond_2

    .line 757
    nop

    .line 760
    invoke-static {v7, v6}, Lcom/sleepycat/persist/impl/Store;->makeSecName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    iget-object v0, v12, Lcom/sleepycat/persist/impl/Store;->storeConfig:Lcom/sleepycat/persist/StoreConfig;

    .line 761
    invoke-virtual {v0}, Lcom/sleepycat/persist/StoreConfig;->getSecondaryBulkLoad()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v12, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 762
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/PersistCatalog;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v0, 0x1

    :goto_2
    move/from16 v20, v0

    .line 758
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, p2

    move-object/from16 v5, v18

    move-object/from16 v21, v6

    .end local v6    # "dbKeyName":Ljava/lang/String;
    .local v21, "dbKeyName":Ljava/lang/String;
    move-object v6, v8

    move-object/from16 v22, v7

    .end local v7    # "dbClassName":Ljava/lang/String;
    .local v22, "dbClassName":Ljava/lang/String;
    move-object v7, v11

    move-object/from16 v23, v8

    .end local v8    # "keyClassName":Ljava/lang/String;
    .local v23, "keyClassName":Ljava/lang/String;
    move-object v8, v9

    move-object/from16 v24, v9

    .end local v9    # "secName":Ljava/lang/String;
    .local v24, "secName":Ljava/lang/String;
    move-object/from16 v9, v19

    move-object/from16 v19, v10

    .end local v10    # "keyName":Ljava/lang/String;
    .local v19, "keyName":Ljava/lang/String;
    move/from16 v10, v20

    move-object/from16 v20, v11

    .end local v11    # "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .local v20, "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    move-object/from16 v11, p3

    invoke-direct/range {v0 .. v11}, Lcom/sleepycat/persist/impl/Store;->openSecondaryIndex(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/persist/PrimaryIndex;Ljava/lang/Class;Lcom/sleepycat/persist/model/EntityMetadata;Ljava/lang/Class;Ljava/lang/String;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;Ljava/lang/String;Ljava/lang/String;ZLcom/sleepycat/persist/impl/Store$PrimaryOpenState;)Lcom/sleepycat/persist/impl/Store$InternalSecondaryIndex;

    goto :goto_3

    .line 746
    .end local v19    # "keyName":Ljava/lang/String;
    .end local v20    # "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .end local v21    # "dbKeyName":Ljava/lang/String;
    .end local v22    # "dbClassName":Ljava/lang/String;
    .end local v23    # "keyClassName":Ljava/lang/String;
    .end local v24    # "secName":Ljava/lang/String;
    .restart local v6    # "dbKeyName":Ljava/lang/String;
    .restart local v7    # "dbClassName":Ljava/lang/String;
    .restart local v8    # "keyClassName":Ljava/lang/String;
    .restart local v9    # "secName":Ljava/lang/String;
    .restart local v10    # "keyName":Ljava/lang/String;
    .restart local v11    # "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    :cond_2
    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    .end local v6    # "dbKeyName":Ljava/lang/String;
    .end local v7    # "dbClassName":Ljava/lang/String;
    .end local v8    # "keyClassName":Ljava/lang/String;
    .end local v9    # "secName":Ljava/lang/String;
    .end local v10    # "keyName":Ljava/lang/String;
    .end local v11    # "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .restart local v19    # "keyName":Ljava/lang/String;
    .restart local v20    # "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .restart local v21    # "dbKeyName":Ljava/lang/String;
    .restart local v22    # "dbClassName":Ljava/lang/String;
    .restart local v23    # "keyClassName":Ljava/lang/String;
    .restart local v24    # "secName":Ljava/lang/String;
    goto :goto_3

    .line 733
    .end local v18    # "keyClass":Ljava/lang/Class;
    .end local v19    # "keyName":Ljava/lang/String;
    .end local v20    # "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .end local v21    # "dbKeyName":Ljava/lang/String;
    .end local v22    # "dbClassName":Ljava/lang/String;
    .end local v23    # "keyClassName":Ljava/lang/String;
    .end local v24    # "secName":Ljava/lang/String;
    .restart local v9    # "secName":Ljava/lang/String;
    .restart local v10    # "keyName":Ljava/lang/String;
    .restart local v11    # "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    :cond_3
    move-object/from16 v24, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    .line 766
    .end local v9    # "secName":Ljava/lang/String;
    .end local v10    # "keyName":Ljava/lang/String;
    .end local v11    # "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .end local v17    # "secIndex":Lcom/sleepycat/persist/SecondaryIndex;, "Lcom/sleepycat/persist/SecondaryIndex<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    :goto_3
    goto/16 :goto_0

    .line 767
    :cond_4
    return-void

    .line 724
    .end local v15    # "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Object;>;"
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static parseDbName(Ljava/lang/String;Lcom/sleepycat/persist/DatabaseNamer;)[Ljava/lang/String;
    .locals 3
    .param p0, "wholeName"    # Ljava/lang/String;
    .param p1, "namer"    # Lcom/sleepycat/persist/DatabaseNamer;

    .line 1441
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 1452
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1453
    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 1455
    return-object v0
.end method

.method private removeIfExists(Lcom/sleepycat/je/Transaction;Ljava/lang/String;)Z
    .locals 4
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "dbName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1054
    invoke-virtual {p0, p2}, Lcom/sleepycat/persist/impl/Store;->parseDbName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1055
    .local v0, "fileAndDbNames":[Ljava/lang/String;
    iget-object v1, p0, Lcom/sleepycat/persist/impl/Store;->env:Lcom/sleepycat/je/Environment;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    .line 1056
    invoke-static {v1, p1, v2, v3}, Lcom/sleepycat/compat/DbCompat;->removeDatabase(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Transaction;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1055
    return v1
.end method

.method private setBtreeComparator(Lcom/sleepycat/je/DatabaseConfig;Ljava/lang/String;)V
    .locals 4
    .param p1, "config"    # Lcom/sleepycat/je/DatabaseConfig;
    .param p2, "clsName"    # Ljava/lang/String;

    .line 1534
    iget-boolean v0, p0, Lcom/sleepycat/persist/impl/Store;->rawAccess:Z

    if-nez v0, :cond_0

    .line 1535
    invoke-direct {p0, p2}, Lcom/sleepycat/persist/impl/Store;->getKeyBinding(Ljava/lang/String;)Lcom/sleepycat/persist/impl/PersistKeyBinding;

    move-result-object v0

    .line 1536
    .local v0, "binding":Lcom/sleepycat/persist/impl/PersistKeyBinding;
    iget-object v1, v0, Lcom/sleepycat/persist/impl/PersistKeyBinding;->keyFormat:Lcom/sleepycat/persist/impl/Format;

    .line 1537
    .local v1, "format":Lcom/sleepycat/persist/impl/Format;
    instance-of v2, v1, Lcom/sleepycat/persist/impl/CompositeKeyFormat;

    if-eqz v2, :cond_0

    .line 1538
    invoke-virtual {v1}, Lcom/sleepycat/persist/impl/Format;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 1539
    .local v2, "keyClass":Ljava/lang/Class;
    const-class v3, Ljava/lang/Comparable;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1540
    new-instance v3, Lcom/sleepycat/persist/impl/PersistComparator;

    invoke-direct {v3, v0}, Lcom/sleepycat/persist/impl/PersistComparator;-><init>(Lcom/sleepycat/persist/impl/PersistKeyBinding;)V

    invoke-virtual {p1, v3}, Lcom/sleepycat/je/DatabaseConfig;->setBtreeComparator(Ljava/util/Comparator;)Lcom/sleepycat/je/DatabaseConfig;

    .line 1544
    .end local v0    # "binding":Lcom/sleepycat/persist/impl/PersistKeyBinding;
    .end local v1    # "format":Lcom/sleepycat/persist/impl/Format;
    .end local v2    # "keyClass":Ljava/lang/Class;
    :cond_0
    return-void
.end method

.method public static setSyncHook(Lcom/sleepycat/persist/impl/Store$SyncHook;)V
    .locals 0
    .param p0, "hook"    # Lcom/sleepycat/persist/impl/Store$SyncHook;

    .line 1714
    sput-object p0, Lcom/sleepycat/persist/impl/Store;->syncHook:Lcom/sleepycat/persist/impl/Store$SyncHook;

    .line 1715
    return-void
.end method

.method private truncateIfExists(Lcom/sleepycat/je/Transaction;Ljava/lang/String;)Z
    .locals 4
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "dbName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1046
    invoke-virtual {p0, p2}, Lcom/sleepycat/persist/impl/Store;->parseDbName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1047
    .local v0, "fileAndDbNames":[Ljava/lang/String;
    iget-object v1, p0, Lcom/sleepycat/persist/impl/Store;->env:Lcom/sleepycat/je/Environment;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    .line 1048
    invoke-static {v1, p1, v2, v3}, Lcom/sleepycat/compat/DbCompat;->truncateDatabase(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Transaction;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1047
    return v1
.end method


# virtual methods
.method public attemptRefresh()Z
    .locals 3

    .line 1732
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 1733
    .local v0, "oldCatalog":Lcom/sleepycat/persist/impl/PersistCatalog;
    nop

    .line 1734
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sleepycat/persist/impl/Store;->refresh(Lcom/sleepycat/persist/impl/PersistCatalog;ILcom/sleepycat/persist/impl/RefreshException;)Lcom/sleepycat/persist/impl/PersistCatalog;

    move-result-object v1

    .line 1735
    .local v1, "newCatalog":Lcom/sleepycat/persist/impl/PersistCatalog;
    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method declared-synchronized checkEntitySubclassSecondaries(Lcom/sleepycat/persist/model/EntityMetadata;Ljava/lang/String;)V
    .locals 7
    .param p1, "entityMeta"    # Lcom/sleepycat/persist/model/EntityMetadata;
    .param p2, "subclassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 944
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store;->storeConfig:Lcom/sleepycat/persist/StoreConfig;

    invoke-virtual {v0}, Lcom/sleepycat/persist/StoreConfig;->getSecondaryBulkLoad()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 945
    monitor-exit p0

    return-void

    .line 948
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/sleepycat/persist/model/EntityMetadata;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 951
    .local v0, "entityClassName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sleepycat/persist/model/EntityMetadata;->getSecondaryKeys()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;

    .line 952
    .local v2, "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    invoke-virtual {v2}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getKeyName()Ljava/lang/String;

    move-result-object v3

    .line 953
    .local v3, "keyName":Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/sleepycat/persist/impl/Store;->makeSecName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 954
    .local v4, "secName":Ljava/lang/String;
    iget-object v5, p0, Lcom/sleepycat/persist/impl/Store;->secIndexMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 961
    .end local v2    # "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .end local v3    # "keyName":Ljava/lang/String;
    .end local v4    # "secName":Ljava/lang/String;
    goto :goto_0

    .line 955
    .restart local v2    # "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .restart local v3    # "keyName":Ljava/lang/String;
    .restart local v4    # "secName":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Entity subclasses defining a secondary key must be registered by calling EntityModel.registerClass or EntityStore.getSubclassIndex before storing an instance of the subclass: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 962
    .end local v2    # "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .end local v3    # "keyName":Ljava/lang/String;
    .end local v4    # "secName":Ljava/lang/String;
    .end local p0    # "this":Lcom/sleepycat/persist/impl/Store;
    :cond_2
    monitor-exit p0

    return-void

    .line 943
    .end local v0    # "entityClassName":Ljava/lang/String;
    .end local p1    # "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .end local p2    # "subclassName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 1100
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    .line 1101
    monitor-exit p0

    return-void

    .line 1104
    :cond_0
    const/4 v0, 0x0

    .line 1106
    .local v0, "firstException":Lcom/sleepycat/je/DatabaseException;
    :try_start_1
    iget-boolean v1, p0, Lcom/sleepycat/persist/impl/Store;->rawAccess:Z

    if-eqz v1, :cond_2

    .line 1107
    iget-object v1, p0, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    invoke-virtual {v1}, Lcom/sleepycat/persist/impl/PersistCatalog;->close()Z

    move-result v1

    .line 1108
    .local v1, "allClosed":Z
    if-eqz v1, :cond_1

    .line 1109
    .end local v1    # "allClosed":Z
    goto :goto_0

    .line 1108
    .restart local v1    # "allClosed":Z
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "firstException":Lcom/sleepycat/je/DatabaseException;
    throw v2

    .line 1110
    .end local v1    # "allClosed":Z
    .end local p0    # "this":Lcom/sleepycat/persist/impl/Store;
    .restart local v0    # "firstException":Lcom/sleepycat/je/DatabaseException;
    :cond_2
    sget-object v1, Lcom/sleepycat/persist/impl/Store;->catalogPool:Ljava/util/Map;

    monitor-enter v1
    :try_end_1
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1111
    :try_start_2
    sget-object v2, Lcom/sleepycat/persist/impl/Store;->catalogPool:Ljava/util/Map;

    iget-object v3, p0, Lcom/sleepycat/persist/impl/Store;->env:Lcom/sleepycat/je/Environment;

    .line 1112
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1113
    .local v2, "catalogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/PersistCatalog;>;"
    if-eqz v2, :cond_5

    .line 1114
    const/4 v3, 0x1

    .line 1116
    .local v3, "removeFromCatalog":Z
    :try_start_3
    iget-object v4, p0, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    invoke-virtual {v4}, Lcom/sleepycat/persist/impl/PersistCatalog;->close()Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v3, v4

    .line 1122
    if-eqz v3, :cond_3

    .line 1123
    :try_start_4
    iget-object v4, p0, Lcom/sleepycat/persist/impl/Store;->storeName:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    .end local v2    # "catalogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/PersistCatalog;>;"
    .end local v3    # "removeFromCatalog":Z
    :cond_3
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1128
    :goto_0
    const/4 v1, 0x0

    :try_start_5
    iput-object v1, p0, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;
    :try_end_5
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1133
    goto :goto_1

    .line 1122
    .restart local v2    # "catalogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/PersistCatalog;>;"
    .restart local v3    # "removeFromCatalog":Z
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_4

    .line 1123
    :try_start_6
    iget-object v5, p0, Lcom/sleepycat/persist/impl/Store;->storeName:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    nop

    .end local v0    # "firstException":Lcom/sleepycat/je/DatabaseException;
    throw v4

    .line 1113
    .end local v3    # "removeFromCatalog":Z
    .restart local v0    # "firstException":Lcom/sleepycat/je/DatabaseException;
    :cond_5
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "firstException":Lcom/sleepycat/je/DatabaseException;
    throw v3

    .line 1126
    .end local v2    # "catalogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/PersistCatalog;>;"
    .restart local v0    # "firstException":Lcom/sleepycat/je/DatabaseException;
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v0    # "firstException":Lcom/sleepycat/je/DatabaseException;
    :try_start_7
    throw v2
    :try_end_7
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1129
    .restart local v0    # "firstException":Lcom/sleepycat/je/DatabaseException;
    :catch_0
    move-exception v1

    .line 1130
    .local v1, "e":Lcom/sleepycat/je/DatabaseException;
    if-nez v0, :cond_6

    .line 1131
    move-object v0, v1

    .line 1134
    .end local v1    # "e":Lcom/sleepycat/je/DatabaseException;
    :cond_6
    :goto_1
    :try_start_8
    iget-object v1, p0, Lcom/sleepycat/persist/impl/Store;->sequenceMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/Sequence;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1136
    .local v2, "seq":Lcom/sleepycat/je/Sequence;
    :try_start_9
    invoke-virtual {v2}, Lcom/sleepycat/je/Sequence;->close()V
    :try_end_9
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1141
    goto :goto_3

    .line 1137
    :catch_1
    move-exception v3

    .line 1138
    .local v3, "e":Lcom/sleepycat/je/DatabaseException;
    if-nez v0, :cond_7

    .line 1139
    move-object v0, v3

    .line 1142
    .end local v2    # "seq":Lcom/sleepycat/je/Sequence;
    .end local v3    # "e":Lcom/sleepycat/je/DatabaseException;
    :cond_7
    :goto_3
    goto :goto_2

    .line 1143
    :cond_8
    :try_start_a
    iget-object v1, p0, Lcom/sleepycat/persist/impl/Store;->sequenceDb:Lcom/sleepycat/je/Database;

    invoke-direct {p0, v1, v0}, Lcom/sleepycat/persist/impl/Store;->closeDb(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/DatabaseException;)Lcom/sleepycat/je/DatabaseException;

    move-result-object v1

    move-object v0, v1

    .line 1144
    iget-object v1, p0, Lcom/sleepycat/persist/impl/Store;->secIndexMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/persist/SecondaryIndex;

    .line 1145
    .local v2, "index":Lcom/sleepycat/persist/SecondaryIndex;
    invoke-virtual {v2}, Lcom/sleepycat/persist/SecondaryIndex;->getDatabase()Lcom/sleepycat/je/SecondaryDatabase;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/sleepycat/persist/impl/Store;->closeDb(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/DatabaseException;)Lcom/sleepycat/je/DatabaseException;

    move-result-object v3

    move-object v0, v3

    .line 1146
    invoke-virtual {v2}, Lcom/sleepycat/persist/SecondaryIndex;->getKeysDatabase()Lcom/sleepycat/je/Database;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/sleepycat/persist/impl/Store;->closeDb(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/DatabaseException;)Lcom/sleepycat/je/DatabaseException;

    move-result-object v3

    move-object v0, v3

    .line 1147
    .end local v2    # "index":Lcom/sleepycat/persist/SecondaryIndex;
    goto :goto_4

    .line 1148
    :cond_9
    iget-object v1, p0, Lcom/sleepycat/persist/impl/Store;->priIndexMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/persist/PrimaryIndex;

    .line 1149
    .local v2, "index":Lcom/sleepycat/persist/PrimaryIndex;
    invoke-virtual {v2}, Lcom/sleepycat/persist/PrimaryIndex;->getDatabase()Lcom/sleepycat/je/Database;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/sleepycat/persist/impl/Store;->closeDb(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/DatabaseException;)Lcom/sleepycat/je/DatabaseException;

    move-result-object v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object v0, v3

    .line 1150
    .end local v2    # "index":Lcom/sleepycat/persist/PrimaryIndex;
    goto :goto_5

    .line 1151
    :cond_a
    if-nez v0, :cond_b

    .line 1154
    monitor-exit p0

    return-void

    .line 1152
    :cond_b
    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1099
    .end local v0    # "firstException":Lcom/sleepycat/je/DatabaseException;
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized closeClass(Ljava/lang/Class;)V
    .locals 10
    .param p1, "entityClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 1062
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/persist/impl/Store;->checkOpen()V

    .line 1063
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1064
    .local v0, "clsName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sleepycat/persist/impl/Store;->checkEntityClass(Ljava/lang/String;)Lcom/sleepycat/persist/model/EntityMetadata;

    move-result-object v1

    .line 1066
    .local v1, "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    iget-object v2, p0, Lcom/sleepycat/persist/impl/Store;->priIndexMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/persist/PrimaryIndex;

    .line 1067
    .local v2, "priIndex":Lcom/sleepycat/persist/PrimaryIndex;
    if-eqz v2, :cond_3

    .line 1069
    const/4 v3, 0x0

    .line 1071
    .local v3, "firstException":Lcom/sleepycat/je/DatabaseException;
    invoke-virtual {v1}, Lcom/sleepycat/persist/model/EntityMetadata;->getSecondaryKeys()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;

    .line 1073
    .local v5, "keyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    invoke-virtual {v5}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getKeyName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/sleepycat/persist/impl/Store;->makeSecName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1074
    .local v6, "secName":Ljava/lang/String;
    iget-object v7, p0, Lcom/sleepycat/persist/impl/Store;->secIndexMap:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sleepycat/persist/SecondaryIndex;

    .line 1075
    .local v7, "secIndex":Lcom/sleepycat/persist/SecondaryIndex;
    if-eqz v7, :cond_0

    .line 1076
    invoke-virtual {v7}, Lcom/sleepycat/persist/SecondaryIndex;->getDatabase()Lcom/sleepycat/je/SecondaryDatabase;

    move-result-object v8

    .line 1077
    .local v8, "db":Lcom/sleepycat/je/Database;
    invoke-direct {p0, v8, v3}, Lcom/sleepycat/persist/impl/Store;->closeDb(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/DatabaseException;)Lcom/sleepycat/je/DatabaseException;

    move-result-object v9

    move-object v3, v9

    .line 1078
    nop

    .line 1079
    invoke-virtual {v7}, Lcom/sleepycat/persist/SecondaryIndex;->getKeysDatabase()Lcom/sleepycat/je/Database;

    move-result-object v9

    invoke-direct {p0, v9, v3}, Lcom/sleepycat/persist/impl/Store;->closeDb(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/DatabaseException;)Lcom/sleepycat/je/DatabaseException;

    move-result-object v9

    move-object v3, v9

    .line 1080
    iget-object v9, p0, Lcom/sleepycat/persist/impl/Store;->secIndexMap:Ljava/util/Map;

    invoke-interface {v9, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    iget-object v9, p0, Lcom/sleepycat/persist/impl/Store;->deferredWriteDatabases:Ljava/util/IdentityHashMap;

    invoke-virtual {v9, v8}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    .end local v5    # "keyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .end local v6    # "secName":Ljava/lang/String;
    .end local v7    # "secIndex":Lcom/sleepycat/persist/SecondaryIndex;
    .end local v8    # "db":Lcom/sleepycat/je/Database;
    .end local p0    # "this":Lcom/sleepycat/persist/impl/Store;
    :cond_0
    goto :goto_0

    .line 1085
    :cond_1
    invoke-virtual {v2}, Lcom/sleepycat/persist/PrimaryIndex;->getDatabase()Lcom/sleepycat/je/Database;

    move-result-object v4

    .line 1086
    .local v4, "db":Lcom/sleepycat/je/Database;
    invoke-direct {p0, v4, v3}, Lcom/sleepycat/persist/impl/Store;->closeDb(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/DatabaseException;)Lcom/sleepycat/je/DatabaseException;

    move-result-object v5

    move-object v3, v5

    .line 1087
    iget-object v5, p0, Lcom/sleepycat/persist/impl/Store;->priIndexMap:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    iget-object v5, p0, Lcom/sleepycat/persist/impl/Store;->deferredWriteDatabases:Ljava/util/IdentityHashMap;

    invoke-virtual {v5, v4}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    if-nez v3, :cond_2

    goto :goto_1

    .line 1092
    :cond_2
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1095
    .end local v3    # "firstException":Lcom/sleepycat/je/DatabaseException;
    .end local v4    # "db":Lcom/sleepycat/je/Database;
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 1061
    .end local v0    # "clsName":Ljava/lang/String;
    .end local v1    # "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .end local v2    # "priIndex":Lcom/sleepycat/persist/PrimaryIndex;
    .end local p1    # "entityClass":Ljava/lang/Class;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public evolve(Lcom/sleepycat/persist/evolve/EvolveConfig;)Lcom/sleepycat/persist/evolve/EvolveStats;
    .locals 8
    .param p1, "config"    # Lcom/sleepycat/persist/evolve/EvolveConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1563
    invoke-direct {p0}, Lcom/sleepycat/persist/impl/Store;->checkOpen()V

    .line 1564
    invoke-direct {p0}, Lcom/sleepycat/persist/impl/Store;->checkWriteAllowed()V

    .line 1571
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/PersistCatalog;->isReplicaUpgradeMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    invoke-virtual {v0, v1}, Lcom/sleepycat/persist/impl/PersistCatalog;->isMetadataStale(Lcom/sleepycat/je/Transaction;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1572
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/Store;->attemptRefresh()Z

    .line 1576
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 1577
    .local v0, "useCatalog":Lcom/sleepycat/persist/impl/PersistCatalog;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1578
    .local v2, "toEvolve":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/persist/impl/Format;>;"
    invoke-virtual {p1}, Lcom/sleepycat/persist/evolve/EvolveConfig;->getClassesToEvolve()Ljava/util/Set;

    move-result-object v3

    .line 1579
    .local v3, "configToEvolve":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1580
    invoke-virtual {v0, v2}, Lcom/sleepycat/persist/impl/PersistCatalog;->getEntityFormats(Ljava/util/Collection;)V

    goto :goto_1

    .line 1582
    :cond_2
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1583
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/sleepycat/persist/impl/PersistCatalog;->getFormat(Ljava/lang/String;)Lcom/sleepycat/persist/impl/Format;

    move-result-object v6

    .line 1584
    .local v6, "format":Lcom/sleepycat/persist/impl/Format;
    if-eqz v6, :cond_4

    .line 1588
    invoke-virtual {v6}, Lcom/sleepycat/persist/impl/Format;->isEntity()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1592
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1593
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "format":Lcom/sleepycat/persist/impl/Format;
    goto :goto_0

    .line 1589
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "format":Lcom/sleepycat/persist/impl/Format;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Class to evolve is not an entity class: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1585
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Class to evolve is not persistent: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1596
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "format":Lcom/sleepycat/persist/impl/Format;
    :cond_5
    :goto_1
    invoke-static {}, Lcom/sleepycat/persist/evolve/EvolveInternal;->newEvent()Lcom/sleepycat/persist/evolve/EvolveEvent;

    move-result-object v4

    .line 1597
    .local v4, "event":Lcom/sleepycat/persist/evolve/EvolveEvent;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sleepycat/persist/impl/Format;

    .line 1598
    .restart local v6    # "format":Lcom/sleepycat/persist/impl/Format;
    invoke-virtual {v6}, Lcom/sleepycat/persist/impl/Format;->getEvolveNeeded()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1599
    invoke-virtual {p1}, Lcom/sleepycat/persist/evolve/EvolveConfig;->getEvolveListener()Lcom/sleepycat/persist/evolve/EvolveListener;

    move-result-object v7

    invoke-direct {p0, v6, v4, v7}, Lcom/sleepycat/persist/impl/Store;->evolveIndex(Lcom/sleepycat/persist/impl/Format;Lcom/sleepycat/persist/evolve/EvolveEvent;Lcom/sleepycat/persist/evolve/EvolveListener;)V

    .line 1600
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sleepycat/persist/impl/Format;->setEvolveNeeded(Z)V

    .line 1601
    invoke-virtual {v0, v1}, Lcom/sleepycat/persist/impl/PersistCatalog;->flush(Lcom/sleepycat/je/Transaction;)V

    .line 1603
    .end local v6    # "format":Lcom/sleepycat/persist/impl/Format;
    :cond_6
    goto :goto_2

    .line 1605
    :cond_7
    invoke-virtual {v4}, Lcom/sleepycat/persist/evolve/EvolveEvent;->getStats()Lcom/sleepycat/persist/evolve/EvolveStats;

    move-result-object v1

    return-object v1
.end method

.method getAutoCommitTxnConfig()Lcom/sleepycat/je/TransactionConfig;
    .locals 1

    .line 1881
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store;->autoCommitTxnConfig:Lcom/sleepycat/je/TransactionConfig;

    return-object v0
.end method

.method public getConfig()Lcom/sleepycat/persist/StoreConfig;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store;->storeConfig:Lcom/sleepycat/persist/StoreConfig;

    invoke-virtual {v0}, Lcom/sleepycat/persist/StoreConfig;->clone()Lcom/sleepycat/persist/StoreConfig;

    move-result-object v0

    return-object v0
.end method

.method getDbNameMessage([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "names"    # [Ljava/lang/String;

    .line 1466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "database: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnvironment()Lcom/sleepycat/je/Environment;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store;->env:Lcom/sleepycat/je/Environment;

    return-object v0
.end method

.method public getModel()Lcom/sleepycat/persist/model/EntityModel;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store;->model:Lcom/sleepycat/persist/model/EntityModel;

    return-object v0
.end method

.method public getMutations()Lcom/sleepycat/persist/evolve/Mutations;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/PersistCatalog;->getMutations()Lcom/sleepycat/persist/evolve/Mutations;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getPrimaryConfig(Ljava/lang/Class;)Lcom/sleepycat/je/DatabaseConfig;
    .locals 3
    .param p1, "entityClass"    # Ljava/lang/Class;

    monitor-enter p0

    .line 1237
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/persist/impl/Store;->checkOpen()V

    .line 1238
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1239
    .local v0, "clsName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sleepycat/persist/impl/Store;->checkEntityClass(Ljava/lang/String;)Lcom/sleepycat/persist/model/EntityMetadata;

    move-result-object v1

    .line 1240
    .local v1, "meta":Lcom/sleepycat/persist/model/EntityMetadata;
    invoke-direct {p0, v1}, Lcom/sleepycat/persist/impl/Store;->getPrimaryConfig(Lcom/sleepycat/persist/model/EntityMetadata;)Lcom/sleepycat/je/DatabaseConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/DatabaseConfig;->cloneConfig()Lcom/sleepycat/je/DatabaseConfig;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 1236
    .end local v0    # "clsName":Ljava/lang/String;
    .end local v1    # "meta":Lcom/sleepycat/persist/model/EntityMetadata;
    .end local p0    # "this":Lcom/sleepycat/persist/impl/Store;
    .end local p1    # "entityClass":Ljava/lang/Class;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getPrimaryIndex(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/sleepycat/persist/PrimaryIndex;
    .locals 24
    .param p2, "primaryKeyClassName"    # Ljava/lang/String;
    .param p4, "entityClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<PK:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TPK;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sleepycat/persist/PrimaryIndex<",
            "TPK;TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Lcom/sleepycat/persist/IndexNotAvailableException;
        }
    .end annotation

    .local p1, "primaryKeyClass":Ljava/lang/Class;, "Ljava/lang/Class<TPK;>;"
    .local p3, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    move-object/from16 v8, p0

    move-object/from16 v0, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    monitor-enter p0

    .line 313
    :try_start_0
    iget-boolean v1, v8, Lcom/sleepycat/persist/impl/Store;->rawAccess:Z

    if-eqz v1, :cond_0

    const-class v2, Lcom/sleepycat/persist/raw/RawObject;

    if-eq v9, v2, :cond_1

    .end local p0    # "this":Lcom/sleepycat/persist/impl/Store;
    :cond_0
    if-nez v1, :cond_15

    const-class v2, Lcom/sleepycat/persist/raw/RawObject;

    if-eq v9, v2, :cond_15

    .line 315
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    if-nez v1, :cond_14

    if-eqz v0, :cond_14

    .line 318
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/persist/impl/Store;->checkOpen()V

    .line 320
    iget-object v1, v8, Lcom/sleepycat/persist/impl/Store;->priIndexMap:Ljava/util/Map;

    .line 321
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;

    move-object v11, v1

    .line 322
    .local v11, "priIndex":Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex<TPK;TE;>;"
    if-nez v11, :cond_13

    .line 325
    invoke-direct {v8, v10}, Lcom/sleepycat/persist/impl/Store;->checkEntityClass(Ljava/lang/String;)Lcom/sleepycat/persist/model/EntityMetadata;

    move-result-object v1

    move-object v12, v1

    .line 326
    .local v12, "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    invoke-virtual {v12}, Lcom/sleepycat/persist/model/EntityMetadata;->getPrimaryKey()Lcom/sleepycat/persist/model/PrimaryKeyMetadata;

    move-result-object v1

    move-object v13, v1

    .line 327
    .local v13, "priKeyMeta":Lcom/sleepycat/persist/model/PrimaryKeyMetadata;
    if-nez v0, :cond_4

    .line 328
    invoke-virtual {v13}, Lcom/sleepycat/persist/model/PrimaryKeyMetadata;->getClassName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    move-object v14, v0

    .end local p2    # "primaryKeyClassName":Ljava/lang/String;
    .local v0, "primaryKeyClassName":Ljava/lang/String;
    goto :goto_0

    .line 330
    .end local v0    # "primaryKeyClassName":Ljava/lang/String;
    .restart local p2    # "primaryKeyClassName":Ljava/lang/String;
    :cond_4
    nop

    .line 331
    invoke-virtual {v13}, Lcom/sleepycat/persist/model/PrimaryKeyMetadata;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/persist/impl/SimpleCatalog;->keyClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, "expectClsName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object v14, v0

    .line 340
    .end local v1    # "expectClsName":Ljava/lang/String;
    .end local p2    # "primaryKeyClassName":Ljava/lang/String;
    .local v14, "primaryKeyClassName":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/sleepycat/persist/impl/PersistEntityBinding;

    iget-object v1, v8, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    iget-boolean v2, v8, Lcom/sleepycat/persist/impl/Store;->rawAccess:Z

    invoke-direct {v0, v1, v10, v2}, Lcom/sleepycat/persist/impl/PersistEntityBinding;-><init>(Lcom/sleepycat/persist/impl/PersistCatalog;Ljava/lang/String;Z)V

    move-object v15, v0

    .line 342
    .local v15, "entityBinding":Lcom/sleepycat/persist/impl/PersistEntityBinding;
    invoke-direct {v8, v14}, Lcom/sleepycat/persist/impl/Store;->getKeyBinding(Ljava/lang/String;)Lcom/sleepycat/persist/impl/PersistKeyBinding;

    move-result-object v0

    move-object v7, v0

    .line 345
    .local v7, "keyBinding":Lcom/sleepycat/persist/impl/PersistKeyBinding;
    invoke-virtual {v13}, Lcom/sleepycat/persist/model/PrimaryKeyMetadata;->getSequenceName()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 346
    .local v6, "seqName":Ljava/lang/String;
    iget-object v0, v8, Lcom/sleepycat/persist/impl/Store;->storeConfig:Lcom/sleepycat/persist/StoreConfig;

    invoke-virtual {v0}, Lcom/sleepycat/persist/StoreConfig;->getReadOnly()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v6, :cond_5

    .line 347
    new-instance v0, Lcom/sleepycat/persist/impl/PersistKeyAssigner;

    .line 348
    invoke-virtual {v8, v6}, Lcom/sleepycat/persist/impl/Store;->getSequence(Ljava/lang/String;)Lcom/sleepycat/je/Sequence;

    move-result-object v1

    invoke-direct {v0, v7, v15, v1}, Lcom/sleepycat/persist/impl/PersistKeyAssigner;-><init>(Lcom/sleepycat/persist/impl/PersistKeyBinding;Lcom/sleepycat/persist/impl/PersistEntityBinding;Lcom/sleepycat/je/Sequence;)V

    iput-object v0, v15, Lcom/sleepycat/persist/impl/PersistEntityBinding;->keyAssigner:Lcom/sleepycat/persist/impl/PersistKeyAssigner;

    .line 361
    :cond_5
    const/4 v0, 0x0

    .line 362
    .local v0, "txn":Lcom/sleepycat/je/Transaction;
    invoke-direct {v8, v12}, Lcom/sleepycat/persist/impl/Store;->getPrimaryConfig(Lcom/sleepycat/persist/model/EntityMetadata;)Lcom/sleepycat/je/DatabaseConfig;

    move-result-object v1

    move-object v5, v1

    .line 363
    .local v5, "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    invoke-virtual {v5}, Lcom/sleepycat/je/DatabaseConfig;->getTransactional()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_6

    iget-object v1, v8, Lcom/sleepycat/persist/impl/Store;->env:Lcom/sleepycat/je/Environment;

    .line 364
    invoke-static {v1}, Lcom/sleepycat/compat/DbCompat;->getThreadTransaction(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/Transaction;

    move-result-object v1

    if-nez v1, :cond_6

    .line 365
    iget-object v1, v8, Lcom/sleepycat/persist/impl/Store;->env:Lcom/sleepycat/je/Environment;

    iget-object v2, v8, Lcom/sleepycat/persist/impl/Store;->autoCommitNoWaitTxnConfig:Lcom/sleepycat/je/TransactionConfig;

    invoke-virtual {v1, v4, v2}, Lcom/sleepycat/je/Environment;->beginTransaction(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/Transaction;

    move-result-object v1

    move-object v0, v1

    move-object v3, v0

    goto :goto_1

    .line 367
    :cond_6
    move-object v3, v0

    .end local v0    # "txn":Lcom/sleepycat/je/Transaction;
    .local v3, "txn":Lcom/sleepycat/je/Transaction;
    :goto_1
    new-instance v0, Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;

    invoke-direct {v0, v8, v10}, Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;-><init>(Lcom/sleepycat/persist/impl/Store;Ljava/lang/String;)V

    move-object v2, v0

    .line 369
    .local v2, "priOpenState":Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;
    invoke-virtual {v5}, Lcom/sleepycat/je/DatabaseConfig;->getAllowCreate()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    move v1, v0

    .line 370
    .local v1, "saveAllowCreate":Z
    const/16 v16, 0x0

    .line 379
    .local v16, "success":Z
    :try_start_1
    iget-object v0, v8, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/PersistCatalog;->isReadOnly()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    const/4 v4, 0x0

    if-eqz v0, :cond_7

    .line 380
    :try_start_2
    invoke-virtual {v5, v4}, Lcom/sleepycat/je/DatabaseConfig;->setAllowCreate(Z)Lcom/sleepycat/je/DatabaseConfig;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 444
    :catchall_0
    move-exception v0

    move v4, v1

    move-object v9, v3

    move-object v3, v5

    move-object/from16 v21, v6

    move-object/from16 v23, v7

    move-object/from16 v18, v11

    move-object/from16 v20, v13

    move-object v11, v2

    goto/16 :goto_8

    .line 388
    :cond_7
    :goto_2
    const/16 v17, 0x0

    .line 389
    .local v17, "db":Lcom/sleepycat/je/Database;
    :try_start_3
    iget-object v0, v8, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 390
    invoke-virtual {v0, v10}, Lcom/sleepycat/persist/impl/PersistCatalog;->getDatabaseClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_9

    move-object/from16 v18, v0

    .line 391
    .local v18, "dbClassName":Ljava/lang/String;
    move-object/from16 v4, v18

    .end local v18    # "dbClassName":Ljava/lang/String;
    .local v4, "dbClassName":Ljava/lang/String;
    if-eqz v4, :cond_8

    .line 392
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move/from16 v19, v1

    .end local v1    # "saveAllowCreate":Z
    .local v19, "saveAllowCreate":Z
    :try_start_5
    iget-object v1, v8, Lcom/sleepycat/persist/impl/Store;->storePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 393
    invoke-virtual {v8, v0}, Lcom/sleepycat/persist/impl/Store;->parseDbName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v1, v0

    .line 397
    .local v1, "fileAndDbNames":[Ljava/lang/String;
    :try_start_6
    iget-object v0, v8, Lcom/sleepycat/persist/impl/Store;->env:Lcom/sleepycat/je/Environment;
    :try_end_6
    .catch Lcom/sleepycat/je/LockConflictException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v20, v4

    const/16 v18, 0x0

    .end local v4    # "dbClassName":Ljava/lang/String;
    .local v20, "dbClassName":Ljava/lang/String;
    :try_start_7
    aget-object v4, v1, v18
    :try_end_7
    .catch Lcom/sleepycat/je/LockConflictException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/16 v18, 0x1

    move-object/from16 v21, v6

    .end local v6    # "seqName":Ljava/lang/String;
    .local v21, "seqName":Ljava/lang/String;
    :try_start_8
    aget-object v6, v1, v18

    invoke-static {v0, v3, v4, v6, v5}, Lcom/sleepycat/compat/DbCompat;->openDatabase(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Transaction;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;)Lcom/sleepycat/je/Database;

    move-result-object v0
    :try_end_8
    .catch Lcom/sleepycat/je/LockConflictException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object/from16 v17, v0

    .line 403
    move-object/from16 v0, v17

    goto :goto_4

    .line 444
    .end local v1    # "fileAndDbNames":[Ljava/lang/String;
    .end local v17    # "db":Lcom/sleepycat/je/Database;
    .end local v20    # "dbClassName":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v9, v3

    move-object v3, v5

    move-object/from16 v23, v7

    move-object/from16 v18, v11

    move-object/from16 v20, v13

    move/from16 v4, v19

    move-object v11, v2

    goto/16 :goto_8

    .line 401
    .restart local v1    # "fileAndDbNames":[Ljava/lang/String;
    .restart local v17    # "db":Lcom/sleepycat/je/Database;
    .restart local v20    # "dbClassName":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_3

    .end local v21    # "seqName":Ljava/lang/String;
    .restart local v6    # "seqName":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v21, v6

    .end local v6    # "seqName":Ljava/lang/String;
    .restart local v21    # "seqName":Ljava/lang/String;
    goto :goto_3

    .end local v20    # "dbClassName":Ljava/lang/String;
    .end local v21    # "seqName":Ljava/lang/String;
    .restart local v4    # "dbClassName":Ljava/lang/String;
    .restart local v6    # "seqName":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v21, v6

    .end local v4    # "dbClassName":Ljava/lang/String;
    .end local v6    # "seqName":Ljava/lang/String;
    .restart local v20    # "dbClassName":Ljava/lang/String;
    .restart local v21    # "seqName":Ljava/lang/String;
    goto :goto_3

    .line 444
    .end local v1    # "fileAndDbNames":[Ljava/lang/String;
    .end local v17    # "db":Lcom/sleepycat/je/Database;
    .end local v20    # "dbClassName":Ljava/lang/String;
    .end local v21    # "seqName":Ljava/lang/String;
    .restart local v6    # "seqName":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object v9, v3

    move-object v3, v5

    move-object/from16 v21, v6

    move-object/from16 v23, v7

    move-object/from16 v18, v11

    move-object/from16 v20, v13

    move/from16 v4, v19

    move-object v11, v2

    .end local v6    # "seqName":Ljava/lang/String;
    .restart local v21    # "seqName":Ljava/lang/String;
    goto/16 :goto_8

    .end local v19    # "saveAllowCreate":Z
    .end local v21    # "seqName":Ljava/lang/String;
    .local v1, "saveAllowCreate":Z
    .restart local v6    # "seqName":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move v4, v1

    move-object v9, v3

    move-object v3, v5

    move-object/from16 v21, v6

    move-object/from16 v23, v7

    move-object/from16 v18, v11

    move-object/from16 v20, v13

    move-object v11, v2

    .end local v1    # "saveAllowCreate":Z
    .end local v6    # "seqName":Ljava/lang/String;
    .restart local v19    # "saveAllowCreate":Z
    .restart local v21    # "seqName":Ljava/lang/String;
    goto/16 :goto_8

    .line 391
    .end local v19    # "saveAllowCreate":Z
    .end local v21    # "seqName":Ljava/lang/String;
    .restart local v1    # "saveAllowCreate":Z
    .restart local v4    # "dbClassName":Ljava/lang/String;
    .restart local v6    # "seqName":Ljava/lang/String;
    .restart local v17    # "db":Lcom/sleepycat/je/Database;
    :cond_8
    move/from16 v19, v1

    move-object/from16 v20, v4

    move-object/from16 v21, v6

    .line 406
    .end local v1    # "saveAllowCreate":Z
    .end local v4    # "dbClassName":Ljava/lang/String;
    .end local v6    # "seqName":Ljava/lang/String;
    .restart local v19    # "saveAllowCreate":Z
    .restart local v20    # "dbClassName":Ljava/lang/String;
    .restart local v21    # "seqName":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, v17

    .end local v17    # "db":Lcom/sleepycat/je/Database;
    .local v0, "db":Lcom/sleepycat/je/Database;
    :goto_4
    if-eqz v0, :cond_e

    .line 412
    :try_start_9
    invoke-virtual {v2, v0}, Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;->addDatabase(Lcom/sleepycat/je/Database;)V

    .line 415
    new-instance v17, Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    move/from16 v6, v19

    .end local v19    # "saveAllowCreate":Z
    .local v6, "saveAllowCreate":Z
    move-object/from16 v1, v17

    move-object v4, v2

    .end local v2    # "priOpenState":Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;
    .local v4, "priOpenState":Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;
    move-object/from16 v2, p0

    move-object v9, v3

    .end local v3    # "txn":Lcom/sleepycat/je/Transaction;
    .local v9, "txn":Lcom/sleepycat/je/Transaction;
    move-object v3, v0

    move-object/from16 v18, v11

    move-object/from16 v19, v20

    move-object v11, v4

    move-object/from16 v20, v13

    const/4 v13, 0x0

    .end local v4    # "priOpenState":Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;
    .end local v13    # "priKeyMeta":Lcom/sleepycat/persist/model/PrimaryKeyMetadata;
    .local v11, "priOpenState":Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;
    .local v18, "priIndex":Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex<TPK;TE;>;"
    .local v19, "dbClassName":Ljava/lang/String;
    .local v20, "priKeyMeta":Lcom/sleepycat/persist/model/PrimaryKeyMetadata;
    move-object/from16 v4, p1

    move-object/from16 p2, v5

    .end local v5    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .local p2, "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    move-object v5, v7

    move/from16 v22, v6

    .end local v6    # "saveAllowCreate":Z
    .local v22, "saveAllowCreate":Z
    move-object/from16 v6, p3

    move-object/from16 v23, v7

    .end local v7    # "keyBinding":Lcom/sleepycat/persist/impl/PersistKeyBinding;
    .local v23, "keyBinding":Lcom/sleepycat/persist/impl/PersistKeyBinding;
    move-object v7, v15

    :try_start_a
    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;-><init>(Lcom/sleepycat/persist/impl/Store;Lcom/sleepycat/je/Database;Ljava/lang/Class;Lcom/sleepycat/persist/impl/PersistKeyBinding;Ljava/lang/Class;Lcom/sleepycat/persist/impl/PersistEntityBinding;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    move-object/from16 v1, v17

    .line 420
    .end local v18    # "priIndex":Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex<TPK;TE;>;"
    .local v1, "priIndex":Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex<TPK;TE;>;"
    :try_start_b
    iget-object v2, v8, Lcom/sleepycat/persist/impl/Store;->priIndexMap:Ljava/util/Map;

    invoke-interface {v2, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    invoke-static/range {p2 .. p2}, Lcom/sleepycat/compat/DbCompat;->getDeferredWrite(Lcom/sleepycat/je/DatabaseConfig;)Z

    move-result v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-eqz v2, :cond_9

    .line 422
    :try_start_c
    iget-object v2, v8, Lcom/sleepycat/persist/impl/Store;->deferredWriteDatabases:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, v0, v13}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_5

    .line 444
    .end local v0    # "db":Lcom/sleepycat/je/Database;
    .end local v19    # "dbClassName":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object/from16 v3, p2

    move-object/from16 v18, v1

    move/from16 v4, v22

    goto/16 :goto_8

    .line 426
    .restart local v0    # "db":Lcom/sleepycat/je/Database;
    .restart local v19    # "dbClassName":Ljava/lang/String;
    :cond_9
    :goto_5
    :try_start_d
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/DatabaseConfig;->getReadOnly()Z

    move-result v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    if-nez v2, :cond_a

    .line 427
    :try_start_e
    invoke-direct {v8, v9, v12, v11}, Lcom/sleepycat/persist/impl/Store;->openSecondaryIndexes(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/persist/model/EntityMetadata;Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;)V

    .line 434
    iget-object v2, v8, Lcom/sleepycat/persist/impl/Store;->inverseRelatedEntityMap:Ljava/util/Map;

    .line 435
    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 436
    .local v2, "inverseClassNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_a

    .line 437
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 438
    .local v4, "relatedClsName":Ljava/lang/String;
    invoke-direct {v8, v4}, Lcom/sleepycat/persist/impl/Store;->getRelatedIndex(Ljava/lang/String;)Lcom/sleepycat/persist/PrimaryIndex;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 439
    nop

    .end local v4    # "relatedClsName":Ljava/lang/String;
    goto :goto_6

    .line 442
    .end local v2    # "inverseClassNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_a
    const/4 v2, 0x1

    .line 444
    .end local v0    # "db":Lcom/sleepycat/je/Database;
    .end local v16    # "success":Z
    .end local v19    # "dbClassName":Ljava/lang/String;
    .local v2, "success":Z
    move-object/from16 v3, p2

    move/from16 v4, v22

    .end local v22    # "saveAllowCreate":Z
    .end local p2    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .local v3, "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .local v4, "saveAllowCreate":Z
    :try_start_f
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/DatabaseConfig;->setAllowCreate(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 445
    if-eqz v2, :cond_b

    .line 446
    if-eqz v9, :cond_d

    .line 447
    invoke-virtual {v9}, Lcom/sleepycat/je/Transaction;->commit()V

    goto :goto_7

    .line 450
    :cond_b
    if-eqz v9, :cond_c

    .line 451
    invoke-virtual {v9}, Lcom/sleepycat/je/Transaction;->abort()V

    .line 453
    :cond_c
    invoke-virtual {v11}, Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;->undoState()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    .line 455
    nop

    .line 457
    .end local v2    # "success":Z
    .end local v3    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .end local v4    # "saveAllowCreate":Z
    .end local v9    # "txn":Lcom/sleepycat/je/Transaction;
    .end local v11    # "priOpenState":Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;
    .end local v12    # "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .end local v15    # "entityBinding":Lcom/sleepycat/persist/impl/PersistEntityBinding;
    .end local v20    # "priKeyMeta":Lcom/sleepycat/persist/model/PrimaryKeyMetadata;
    .end local v21    # "seqName":Ljava/lang/String;
    .end local v23    # "keyBinding":Lcom/sleepycat/persist/impl/PersistKeyBinding;
    :cond_d
    :goto_7
    move-object v11, v1

    goto/16 :goto_a

    .line 444
    .restart local v9    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local v11    # "priOpenState":Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;
    .restart local v12    # "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .restart local v15    # "entityBinding":Lcom/sleepycat/persist/impl/PersistEntityBinding;
    .restart local v16    # "success":Z
    .restart local v20    # "priKeyMeta":Lcom/sleepycat/persist/model/PrimaryKeyMetadata;
    .restart local v21    # "seqName":Ljava/lang/String;
    .restart local v22    # "saveAllowCreate":Z
    .restart local v23    # "keyBinding":Lcom/sleepycat/persist/impl/PersistKeyBinding;
    .restart local p2    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    :catchall_5
    move-exception v0

    move-object/from16 v3, p2

    move/from16 v4, v22

    move-object/from16 v18, v1

    .end local v22    # "saveAllowCreate":Z
    .end local p2    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .restart local v3    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .restart local v4    # "saveAllowCreate":Z
    goto :goto_8

    .end local v1    # "priIndex":Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex<TPK;TE;>;"
    .end local v3    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .end local v4    # "saveAllowCreate":Z
    .restart local v18    # "priIndex":Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex<TPK;TE;>;"
    .restart local v22    # "saveAllowCreate":Z
    .restart local p2    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    :catchall_6
    move-exception v0

    move-object/from16 v3, p2

    move/from16 v4, v22

    .end local v22    # "saveAllowCreate":Z
    .end local p2    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .restart local v3    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .restart local v4    # "saveAllowCreate":Z
    goto :goto_8

    .end local v4    # "saveAllowCreate":Z
    .end local v9    # "txn":Lcom/sleepycat/je/Transaction;
    .end local v18    # "priIndex":Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex<TPK;TE;>;"
    .end local v20    # "priKeyMeta":Lcom/sleepycat/persist/model/PrimaryKeyMetadata;
    .end local v23    # "keyBinding":Lcom/sleepycat/persist/impl/PersistKeyBinding;
    .local v2, "priOpenState":Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;
    .local v3, "txn":Lcom/sleepycat/je/Transaction;
    .restart local v5    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .restart local v7    # "keyBinding":Lcom/sleepycat/persist/impl/PersistKeyBinding;
    .local v11, "priIndex":Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex<TPK;TE;>;"
    .restart local v13    # "priKeyMeta":Lcom/sleepycat/persist/model/PrimaryKeyMetadata;
    .local v19, "saveAllowCreate":Z
    :catchall_7
    move-exception v0

    move-object v9, v3

    move-object v3, v5

    move-object/from16 v23, v7

    move-object/from16 v18, v11

    move-object/from16 v20, v13

    move/from16 v4, v19

    move-object v11, v2

    .end local v2    # "priOpenState":Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;
    .end local v5    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .end local v7    # "keyBinding":Lcom/sleepycat/persist/impl/PersistKeyBinding;
    .end local v13    # "priKeyMeta":Lcom/sleepycat/persist/model/PrimaryKeyMetadata;
    .end local v19    # "saveAllowCreate":Z
    .local v3, "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .restart local v4    # "saveAllowCreate":Z
    .restart local v9    # "txn":Lcom/sleepycat/je/Transaction;
    .local v11, "priOpenState":Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;
    .restart local v18    # "priIndex":Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex<TPK;TE;>;"
    .restart local v20    # "priKeyMeta":Lcom/sleepycat/persist/model/PrimaryKeyMetadata;
    .restart local v23    # "keyBinding":Lcom/sleepycat/persist/impl/PersistKeyBinding;
    goto :goto_8

    .line 407
    .end local v4    # "saveAllowCreate":Z
    .end local v9    # "txn":Lcom/sleepycat/je/Transaction;
    .end local v18    # "priIndex":Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex<TPK;TE;>;"
    .end local v23    # "keyBinding":Lcom/sleepycat/persist/impl/PersistKeyBinding;
    .restart local v0    # "db":Lcom/sleepycat/je/Database;
    .restart local v2    # "priOpenState":Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;
    .local v3, "txn":Lcom/sleepycat/je/Transaction;
    .restart local v5    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .restart local v7    # "keyBinding":Lcom/sleepycat/persist/impl/PersistKeyBinding;
    .local v11, "priIndex":Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex<TPK;TE;>;"
    .restart local v13    # "priKeyMeta":Lcom/sleepycat/persist/model/PrimaryKeyMetadata;
    .restart local v19    # "saveAllowCreate":Z
    .local v20, "dbClassName":Ljava/lang/String;
    :cond_e
    move-object v9, v3

    move-object v3, v5

    move-object/from16 v23, v7

    move-object/from16 v18, v11

    move/from16 v4, v19

    move-object/from16 v19, v20

    move-object v11, v2

    move-object/from16 v20, v13

    .end local v2    # "priOpenState":Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;
    .end local v5    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .end local v7    # "keyBinding":Lcom/sleepycat/persist/impl/PersistKeyBinding;
    .end local v13    # "priKeyMeta":Lcom/sleepycat/persist/model/PrimaryKeyMetadata;
    .local v3, "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .restart local v4    # "saveAllowCreate":Z
    .restart local v9    # "txn":Lcom/sleepycat/je/Transaction;
    .local v11, "priOpenState":Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;
    .restart local v18    # "priIndex":Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex<TPK;TE;>;"
    .local v19, "dbClassName":Ljava/lang/String;
    .local v20, "priKeyMeta":Lcom/sleepycat/persist/model/PrimaryKeyMetadata;
    .restart local v23    # "keyBinding":Lcom/sleepycat/persist/impl/PersistKeyBinding;
    :try_start_10
    new-instance v1, Lcom/sleepycat/persist/IndexNotAvailableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PrimaryIndex not yet available on this Replica, entity class: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sleepycat/persist/IndexNotAvailableException;-><init>(Ljava/lang/String;)V

    .end local v3    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .end local v4    # "saveAllowCreate":Z
    .end local v9    # "txn":Lcom/sleepycat/je/Transaction;
    .end local v11    # "priOpenState":Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;
    .end local v12    # "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .end local v14    # "primaryKeyClassName":Ljava/lang/String;
    .end local v15    # "entityBinding":Lcom/sleepycat/persist/impl/PersistEntityBinding;
    .end local v16    # "success":Z
    .end local v18    # "priIndex":Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex<TPK;TE;>;"
    .end local v20    # "priKeyMeta":Lcom/sleepycat/persist/model/PrimaryKeyMetadata;
    .end local v21    # "seqName":Ljava/lang/String;
    .end local v23    # "keyBinding":Lcom/sleepycat/persist/impl/PersistKeyBinding;
    .end local p1    # "primaryKeyClass":Ljava/lang/Class;, "Ljava/lang/Class<TPK;>;"
    .end local p3    # "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .end local p4    # "entityClassName":Ljava/lang/String;
    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 444
    .end local v0    # "db":Lcom/sleepycat/je/Database;
    .end local v19    # "dbClassName":Ljava/lang/String;
    .restart local v3    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .restart local v4    # "saveAllowCreate":Z
    .restart local v9    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local v11    # "priOpenState":Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;
    .restart local v12    # "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .restart local v14    # "primaryKeyClassName":Ljava/lang/String;
    .restart local v15    # "entityBinding":Lcom/sleepycat/persist/impl/PersistEntityBinding;
    .restart local v16    # "success":Z
    .restart local v18    # "priIndex":Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex<TPK;TE;>;"
    .restart local v20    # "priKeyMeta":Lcom/sleepycat/persist/model/PrimaryKeyMetadata;
    .restart local v21    # "seqName":Ljava/lang/String;
    .restart local v23    # "keyBinding":Lcom/sleepycat/persist/impl/PersistKeyBinding;
    .restart local p1    # "primaryKeyClass":Ljava/lang/Class;, "Ljava/lang/Class<TPK;>;"
    .restart local p3    # "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .restart local p4    # "entityClassName":Ljava/lang/String;
    :catchall_8
    move-exception v0

    goto :goto_8

    .end local v4    # "saveAllowCreate":Z
    .end local v9    # "txn":Lcom/sleepycat/je/Transaction;
    .end local v18    # "priIndex":Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex<TPK;TE;>;"
    .end local v20    # "priKeyMeta":Lcom/sleepycat/persist/model/PrimaryKeyMetadata;
    .end local v21    # "seqName":Ljava/lang/String;
    .end local v23    # "keyBinding":Lcom/sleepycat/persist/impl/PersistKeyBinding;
    .local v1, "saveAllowCreate":Z
    .restart local v2    # "priOpenState":Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;
    .local v3, "txn":Lcom/sleepycat/je/Transaction;
    .restart local v5    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .local v6, "seqName":Ljava/lang/String;
    .restart local v7    # "keyBinding":Lcom/sleepycat/persist/impl/PersistKeyBinding;
    .local v11, "priIndex":Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex<TPK;TE;>;"
    .restart local v13    # "priKeyMeta":Lcom/sleepycat/persist/model/PrimaryKeyMetadata;
    :catchall_9
    move-exception v0

    move v4, v1

    move-object v9, v3

    move-object v3, v5

    move-object/from16 v21, v6

    move-object/from16 v23, v7

    move-object/from16 v18, v11

    move-object/from16 v20, v13

    move-object v11, v2

    .end local v1    # "saveAllowCreate":Z
    .end local v2    # "priOpenState":Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;
    .end local v5    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .end local v6    # "seqName":Ljava/lang/String;
    .end local v7    # "keyBinding":Lcom/sleepycat/persist/impl/PersistKeyBinding;
    .end local v13    # "priKeyMeta":Lcom/sleepycat/persist/model/PrimaryKeyMetadata;
    .local v3, "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .restart local v4    # "saveAllowCreate":Z
    .restart local v9    # "txn":Lcom/sleepycat/je/Transaction;
    .local v11, "priOpenState":Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;
    .restart local v18    # "priIndex":Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex<TPK;TE;>;"
    .restart local v20    # "priKeyMeta":Lcom/sleepycat/persist/model/PrimaryKeyMetadata;
    .restart local v21    # "seqName":Ljava/lang/String;
    .restart local v23    # "keyBinding":Lcom/sleepycat/persist/impl/PersistKeyBinding;
    :goto_8
    :try_start_11
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/DatabaseConfig;->setAllowCreate(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 445
    if-eqz v16, :cond_f

    .line 446
    if-eqz v9, :cond_11

    .line 447
    invoke-virtual {v9}, Lcom/sleepycat/je/Transaction;->commit()V

    goto :goto_9

    .line 450
    :cond_f
    if-eqz v9, :cond_10

    .line 451
    invoke-virtual {v9}, Lcom/sleepycat/je/Transaction;->abort()V

    .line 453
    :cond_10
    invoke-virtual {v11}, Lcom/sleepycat/persist/impl/Store$PrimaryOpenState;->undoState()V

    :cond_11
    :goto_9
    throw v0

    .line 333
    .end local v3    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .end local v4    # "saveAllowCreate":Z
    .end local v9    # "txn":Lcom/sleepycat/je/Transaction;
    .end local v14    # "primaryKeyClassName":Ljava/lang/String;
    .end local v15    # "entityBinding":Lcom/sleepycat/persist/impl/PersistEntityBinding;
    .end local v16    # "success":Z
    .end local v18    # "priIndex":Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex<TPK;TE;>;"
    .end local v20    # "priKeyMeta":Lcom/sleepycat/persist/model/PrimaryKeyMetadata;
    .end local v21    # "seqName":Ljava/lang/String;
    .end local v23    # "keyBinding":Lcom/sleepycat/persist/impl/PersistKeyBinding;
    .local v1, "expectClsName":Ljava/lang/String;
    .local v11, "priIndex":Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex<TPK;TE;>;"
    .restart local v13    # "priKeyMeta":Lcom/sleepycat/persist/model/PrimaryKeyMetadata;
    .local p2, "primaryKeyClassName":Ljava/lang/String;
    :cond_12
    move-object/from16 v18, v11

    move-object/from16 v20, v13

    .end local v11    # "priIndex":Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex<TPK;TE;>;"
    .end local v13    # "priKeyMeta":Lcom/sleepycat/persist/model/PrimaryKeyMetadata;
    .restart local v18    # "priIndex":Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex<TPK;TE;>;"
    .restart local v20    # "priKeyMeta":Lcom/sleepycat/persist/model/PrimaryKeyMetadata;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong primary key class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Correct class is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    .line 322
    .end local v1    # "expectClsName":Ljava/lang/String;
    .end local v12    # "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .end local v18    # "priIndex":Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex<TPK;TE;>;"
    .end local v20    # "priKeyMeta":Lcom/sleepycat/persist/model/PrimaryKeyMetadata;
    .restart local v11    # "priIndex":Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex<TPK;TE;>;"
    :cond_13
    move-object/from16 v18, v11

    .end local v11    # "priIndex":Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex<TPK;TE;>;"
    .restart local v18    # "priIndex":Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex<TPK;TE;>;"
    move-object v14, v0

    .line 457
    .end local v18    # "priIndex":Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex<TPK;TE;>;"
    .end local p2    # "primaryKeyClassName":Ljava/lang/String;
    .restart local v11    # "priIndex":Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex<TPK;TE;>;"
    .restart local v14    # "primaryKeyClassName":Ljava/lang/String;
    :goto_a
    monitor-exit p0

    return-object v11

    .line 315
    .end local v11    # "priIndex":Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex<TPK;TE;>;"
    .end local v14    # "primaryKeyClassName":Ljava/lang/String;
    .restart local p2    # "primaryKeyClassName":Ljava/lang/String;
    :cond_14
    :try_start_12
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 313
    :cond_15
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    .line 312
    .end local p1    # "primaryKeyClass":Ljava/lang/Class;, "Ljava/lang/Class<TPK;>;"
    .end local p2    # "primaryKeyClassName":Ljava/lang/String;
    .end local p3    # "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .end local p4    # "entityClassName":Ljava/lang/String;
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSecondaryConfig(Ljava/lang/Class;Ljava/lang/String;)Lcom/sleepycat/je/SecondaryConfig;
    .locals 6
    .param p1, "entityClass"    # Ljava/lang/Class;
    .param p2, "keyName"    # Ljava/lang/String;

    monitor-enter p0

    .line 1294
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/persist/impl/Store;->checkOpen()V

    .line 1295
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1296
    .local v0, "entityClsName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sleepycat/persist/impl/Store;->checkEntityClass(Ljava/lang/String;)Lcom/sleepycat/persist/model/EntityMetadata;

    move-result-object v1

    .line 1297
    .local v1, "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    invoke-direct {p0, v1, p2}, Lcom/sleepycat/persist/impl/Store;->checkSecKey(Lcom/sleepycat/persist/model/EntityMetadata;Ljava/lang/String;)Lcom/sleepycat/persist/model/SecondaryKeyMetadata;

    move-result-object v2

    .line 1298
    .local v2, "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    invoke-direct {p0, v2}, Lcom/sleepycat/persist/impl/Store;->getSecKeyClass(Lcom/sleepycat/persist/model/SecondaryKeyMetadata;)Ljava/lang/String;

    move-result-object v3

    .line 1299
    .local v3, "keyClassName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/sleepycat/persist/impl/Store;->makeSecName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1300
    .local v4, "secName":Ljava/lang/String;
    nop

    .line 1301
    invoke-direct {p0, v4, v1, v3, v2}, Lcom/sleepycat/persist/impl/Store;->getSecondaryConfig(Ljava/lang/String;Lcom/sleepycat/persist/model/EntityMetadata;Ljava/lang/String;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;)Lcom/sleepycat/je/SecondaryConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/SecondaryConfig;->cloneConfig()Lcom/sleepycat/je/DatabaseConfig;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/SecondaryConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1300
    monitor-exit p0

    return-object v5

    .line 1293
    .end local v0    # "entityClsName":Ljava/lang/String;
    .end local v1    # "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .end local v2    # "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .end local v3    # "keyClassName":Ljava/lang/String;
    .end local v4    # "secName":Ljava/lang/String;
    .end local p0    # "this":Lcom/sleepycat/persist/impl/Store;
    .end local p1    # "entityClass":Ljava/lang/Class;
    .end local p2    # "keyName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSecondaryIndex(Lcom/sleepycat/persist/PrimaryIndex;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/persist/SecondaryIndex;
    .locals 27
    .param p3, "entityClassName"    # Ljava/lang/String;
    .param p5, "keyClassName"    # Ljava/lang/String;
    .param p6, "keyName"    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TSK;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sleepycat/persist/SecondaryIndex<",
            "TSK;TPK;TE2;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Lcom/sleepycat/persist/IndexNotAvailableException;
        }
    .end annotation

    .local p1, "primaryIndex":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE1;>;"
    .local p2, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE2;>;"
    .local p4, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<TSK;>;"
    move-object/from16 v13, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v1, p5

    move-object/from16 v12, p6

    monitor-enter p0

    .line 579
    :try_start_0
    iget-boolean v0, v13, Lcom/sleepycat/persist/impl/Store;->rawAccess:Z

    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    if-nez v0, :cond_14

    if-eqz v1, :cond_14

    .line 582
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/persist/impl/Store;->checkOpen()V

    .line 584
    const/4 v0, 0x0

    .line 585
    .local v0, "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    const/4 v2, 0x0

    .line 588
    .local v2, "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/persist/PrimaryIndex;->getEntityClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v14, v3, :cond_4

    .line 589
    iget-object v3, v13, Lcom/sleepycat/persist/impl/Store;->model:Lcom/sleepycat/persist/model/EntityModel;

    invoke-virtual {v3, v15}, Lcom/sleepycat/persist/model/EntityModel;->getEntityMetadata(Ljava/lang/String;)Lcom/sleepycat/persist/model/EntityMetadata;

    move-result-object v3

    .line 590
    .end local v0    # "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .local v3, "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    if-eqz v3, :cond_3

    .line 591
    invoke-direct {v13, v3, v12}, Lcom/sleepycat/persist/impl/Store;->checkSecKey(Lcom/sleepycat/persist/model/EntityMetadata;Ljava/lang/String;)Lcom/sleepycat/persist/model/SecondaryKeyMetadata;

    move-result-object v0

    move-object v2, v0

    .line 592
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 593
    .local v4, "subclassName":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getDeclaringClassName()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 594
    .local v5, "declaringClassName":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_2

    .line 607
    const/4 v6, 0x0

    :try_start_1
    iget-object v0, v13, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    invoke-virtual {v0, v14, v6}, Lcom/sleepycat/persist/impl/PersistCatalog;->getFormat(Ljava/lang/Class;Z)Lcom/sleepycat/persist/impl/Format;
    :try_end_1
    .catch Lcom/sleepycat/persist/impl/RefreshException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 617
    goto :goto_0

    .line 609
    .end local p0    # "this":Lcom/sleepycat/persist/impl/Store;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 610
    .local v7, "e":Lcom/sleepycat/persist/impl/RefreshException;
    :try_start_2
    invoke-virtual {v7}, Lcom/sleepycat/persist/impl/RefreshException;->refresh()Lcom/sleepycat/persist/impl/PersistCatalog;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 612
    :try_start_3
    iget-object v0, v13, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    invoke-virtual {v0, v14, v6}, Lcom/sleepycat/persist/impl/PersistCatalog;->getFormat(Ljava/lang/Class;Z)Lcom/sleepycat/persist/impl/Format;
    :try_end_3
    .catch Lcom/sleepycat/persist/impl/RefreshException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 616
    nop

    .line 626
    .end local v4    # "subclassName":Ljava/lang/String;
    .end local v5    # "declaringClassName":Ljava/lang/String;
    .end local v7    # "e":Lcom/sleepycat/persist/impl/RefreshException;
    :goto_0
    move-object v0, v3

    goto :goto_1

    .line 614
    .restart local v4    # "subclassName":Ljava/lang/String;
    .restart local v5    # "declaringClassName":Ljava/lang/String;
    .restart local v7    # "e":Lcom/sleepycat/persist/impl/RefreshException;
    :catch_1
    move-exception v0

    .line 615
    .local v0, "e2":Lcom/sleepycat/persist/impl/RefreshException;
    :try_start_4
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 595
    .end local v0    # "e2":Lcom/sleepycat/persist/impl/RefreshException;
    .end local v7    # "e":Lcom/sleepycat/persist/impl/RefreshException;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Key for subclass "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is declared in a different class: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 598
    invoke-static {v5, v12}, Lcom/sleepycat/persist/impl/Store;->makeSecName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 590
    .end local v4    # "subclassName":Ljava/lang/String;
    .end local v5    # "declaringClassName":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 626
    .end local v3    # "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .local v0, "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    :cond_4
    :goto_1
    invoke-static {v15, v12}, Lcom/sleepycat/persist/impl/Store;->makeSecName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    .line 627
    .local v11, "secName":Ljava/lang/String;
    iget-object v3, v13, Lcom/sleepycat/persist/impl/Store;->secIndexMap:Ljava/util/Map;

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/persist/impl/Store$InternalSecondaryIndex;

    move-object/from16 v16, v3

    .line 628
    .local v16, "secIndex":Lcom/sleepycat/persist/impl/Store$InternalSecondaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalSecondaryIndex<TSK;TPK;TE2;>;"
    if-nez v16, :cond_13

    .line 629
    if-nez v0, :cond_6

    .line 630
    iget-object v3, v13, Lcom/sleepycat/persist/impl/Store;->model:Lcom/sleepycat/persist/model/EntityModel;

    invoke-virtual {v3, v15}, Lcom/sleepycat/persist/model/EntityModel;->getEntityMetadata(Ljava/lang/String;)Lcom/sleepycat/persist/model/EntityMetadata;

    move-result-object v3

    move-object v0, v3

    .line 631
    if-eqz v0, :cond_5

    .line 633
    move-object v10, v0

    goto :goto_2

    .line 631
    :cond_5
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 629
    :cond_6
    move-object v10, v0

    .line 633
    .end local v0    # "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .local v10, "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    :goto_2
    if-nez v2, :cond_7

    .line 634
    invoke-direct {v13, v10, v12}, Lcom/sleepycat/persist/impl/Store;->checkSecKey(Lcom/sleepycat/persist/model/EntityMetadata;Ljava/lang/String;)Lcom/sleepycat/persist/model/SecondaryKeyMetadata;

    move-result-object v0

    move-object v2, v0

    move-object v9, v2

    goto :goto_3

    .line 633
    :cond_7
    move-object v9, v2

    .line 638
    .end local v2    # "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .local v9, "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    :goto_3
    if-nez v1, :cond_8

    .line 639
    invoke-direct {v13, v9}, Lcom/sleepycat/persist/impl/Store;->getSecKeyClass(Lcom/sleepycat/persist/model/SecondaryKeyMetadata;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    .end local p5    # "keyClassName":Ljava/lang/String;
    .local v0, "keyClassName":Ljava/lang/String;
    goto :goto_4

    .line 641
    .end local v0    # "keyClassName":Ljava/lang/String;
    .restart local p5    # "keyClassName":Ljava/lang/String;
    :cond_8
    invoke-direct {v13, v9}, Lcom/sleepycat/persist/impl/Store;->getSecKeyClass(Lcom/sleepycat/persist/model/SecondaryKeyMetadata;)Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, "expectClsName":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v17, v1

    .line 653
    .end local v0    # "expectClsName":Ljava/lang/String;
    .end local p5    # "keyClassName":Ljava/lang/String;
    .local v17, "keyClassName":Ljava/lang/String;
    :goto_4
    iget-object v0, v13, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 654
    invoke-virtual {v0, v15}, Lcom/sleepycat/persist/impl/PersistCatalog;->getDatabaseClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 655
    .local v8, "dbClassName":Ljava/lang/String;
    iget-object v0, v13, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 656
    invoke-virtual {v0, v15, v12}, Lcom/sleepycat/persist/impl/PersistCatalog;->getDatabaseKeyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 657
    .local v7, "dbKeyName":Ljava/lang/String;
    if-eqz v8, :cond_f

    if-eqz v7, :cond_f

    .line 664
    const/4 v0, 0x0

    .line 665
    .local v0, "txn":Lcom/sleepycat/je/Transaction;
    invoke-direct {v13, v10}, Lcom/sleepycat/persist/impl/Store;->getPrimaryConfig(Lcom/sleepycat/persist/model/EntityMetadata;)Lcom/sleepycat/je/DatabaseConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/DatabaseConfig;->getTransactional()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v13, Lcom/sleepycat/persist/impl/Store;->env:Lcom/sleepycat/je/Environment;

    .line 666
    invoke-static {v1}, Lcom/sleepycat/compat/DbCompat;->getThreadTransaction(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/Transaction;

    move-result-object v1

    if-nez v1, :cond_9

    .line 667
    iget-object v1, v13, Lcom/sleepycat/persist/impl/Store;->env:Lcom/sleepycat/je/Environment;

    const/4 v2, 0x0

    iget-object v3, v13, Lcom/sleepycat/persist/impl/Store;->autoCommitNoWaitTxnConfig:Lcom/sleepycat/je/TransactionConfig;

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/je/Environment;->beginTransaction(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/Transaction;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v0, v1

    move-object/from16 v18, v0

    goto :goto_5

    .line 670
    :cond_9
    move-object/from16 v18, v0

    .end local v0    # "txn":Lcom/sleepycat/je/Transaction;
    .local v18, "txn":Lcom/sleepycat/je/Transaction;
    :goto_5
    const/16 v19, 0x0

    .line 680
    .local v19, "success":Z
    nop

    .line 683
    :try_start_5
    invoke-static {v8, v7}, Lcom/sleepycat/persist/impl/Store;->makeSecName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v13, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 684
    invoke-virtual {v1}, Lcom/sleepycat/persist/impl/PersistCatalog;->isReadOnly()Z

    move-result v20
    :try_end_5
    .catch Lcom/sleepycat/je/LockConflictException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/16 v21, 0x0

    .line 681
    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object v5, v10

    move-object/from16 v6, p4

    move-object/from16 v22, v7

    .end local v7    # "dbKeyName":Ljava/lang/String;
    .local v22, "dbKeyName":Ljava/lang/String;
    move-object/from16 v7, v17

    move-object/from16 v23, v8

    .end local v8    # "dbClassName":Ljava/lang/String;
    .local v23, "dbClassName":Ljava/lang/String;
    move-object v8, v9

    move-object/from16 v24, v9

    .end local v9    # "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .local v24, "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    move-object v9, v11

    move-object/from16 v25, v10

    .end local v10    # "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .local v25, "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    move-object v10, v0

    move-object/from16 v26, v11

    .end local v11    # "secName":Ljava/lang/String;
    .local v26, "secName":Ljava/lang/String;
    move/from16 v11, v20

    move-object v14, v12

    move-object/from16 v12, v21

    :try_start_6
    invoke-direct/range {v1 .. v12}, Lcom/sleepycat/persist/impl/Store;->openSecondaryIndex(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/persist/PrimaryIndex;Ljava/lang/Class;Lcom/sleepycat/persist/model/EntityMetadata;Ljava/lang/Class;Ljava/lang/String;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;Ljava/lang/String;Ljava/lang/String;ZLcom/sleepycat/persist/impl/Store$PrimaryOpenState;)Lcom/sleepycat/persist/impl/Store$InternalSecondaryIndex;

    move-result-object v0
    :try_end_6
    .catch Lcom/sleepycat/je/LockConflictException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 686
    .end local v16    # "secIndex":Lcom/sleepycat/persist/impl/Store$InternalSecondaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalSecondaryIndex<TSK;TPK;TE2;>;"
    .local v0, "secIndex":Lcom/sleepycat/persist/impl/Store$InternalSecondaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalSecondaryIndex<TSK;TPK;TE2;>;"
    const/4 v1, 0x1

    .line 692
    .end local v19    # "success":Z
    .local v1, "success":Z
    if-eqz v1, :cond_a

    .line 693
    if-eqz v18, :cond_b

    .line 694
    :try_start_7
    invoke-virtual/range {v18 .. v18}, Lcom/sleepycat/je/Transaction;->commit()V

    goto :goto_6

    .line 697
    :cond_a
    if-eqz v18, :cond_b

    .line 698
    invoke-virtual/range {v18 .. v18}, Lcom/sleepycat/je/Transaction;->abort()V

    .line 703
    .end local v1    # "success":Z
    .end local v18    # "txn":Lcom/sleepycat/je/Transaction;
    :cond_b
    :goto_6
    move-object/from16 v16, v0

    goto :goto_a

    .line 692
    .end local v0    # "secIndex":Lcom/sleepycat/persist/impl/Store$InternalSecondaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalSecondaryIndex<TSK;TPK;TE2;>;"
    .restart local v16    # "secIndex":Lcom/sleepycat/persist/impl/Store$InternalSecondaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalSecondaryIndex<TSK;TPK;TE2;>;"
    .restart local v18    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local v19    # "success":Z
    :catchall_0
    move-exception v0

    goto :goto_7

    .line 688
    :catch_2
    move-exception v0

    goto :goto_9

    .line 692
    .end local v22    # "dbKeyName":Ljava/lang/String;
    .end local v23    # "dbClassName":Ljava/lang/String;
    .end local v24    # "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .end local v25    # "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .end local v26    # "secName":Ljava/lang/String;
    .restart local v7    # "dbKeyName":Ljava/lang/String;
    .restart local v8    # "dbClassName":Ljava/lang/String;
    .restart local v9    # "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .restart local v10    # "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .restart local v11    # "secName":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move-object v14, v12

    .end local v7    # "dbKeyName":Ljava/lang/String;
    .end local v8    # "dbClassName":Ljava/lang/String;
    .end local v9    # "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .end local v10    # "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .end local v11    # "secName":Ljava/lang/String;
    .restart local v22    # "dbKeyName":Ljava/lang/String;
    .restart local v23    # "dbClassName":Ljava/lang/String;
    .restart local v24    # "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .restart local v25    # "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .restart local v26    # "secName":Ljava/lang/String;
    :goto_7
    if-eqz v19, :cond_c

    .line 693
    if-eqz v18, :cond_d

    .line 694
    invoke-virtual/range {v18 .. v18}, Lcom/sleepycat/je/Transaction;->commit()V

    goto :goto_8

    .line 697
    :cond_c
    if-eqz v18, :cond_d

    .line 698
    invoke-virtual/range {v18 .. v18}, Lcom/sleepycat/je/Transaction;->abort()V

    :cond_d
    :goto_8
    throw v0

    .line 688
    .end local v22    # "dbKeyName":Ljava/lang/String;
    .end local v23    # "dbClassName":Ljava/lang/String;
    .end local v24    # "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .end local v25    # "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .end local v26    # "secName":Ljava/lang/String;
    .restart local v7    # "dbKeyName":Ljava/lang/String;
    .restart local v8    # "dbClassName":Ljava/lang/String;
    .restart local v9    # "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .restart local v10    # "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .restart local v11    # "secName":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move-object v14, v12

    .line 692
    .end local v7    # "dbKeyName":Ljava/lang/String;
    .end local v8    # "dbClassName":Ljava/lang/String;
    .end local v9    # "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .end local v10    # "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .end local v11    # "secName":Ljava/lang/String;
    .restart local v22    # "dbKeyName":Ljava/lang/String;
    .restart local v23    # "dbClassName":Ljava/lang/String;
    .restart local v24    # "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .restart local v25    # "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .restart local v26    # "secName":Ljava/lang/String;
    :goto_9
    if-eqz v19, :cond_e

    .line 693
    if-eqz v18, :cond_10

    .line 694
    invoke-virtual/range {v18 .. v18}, Lcom/sleepycat/je/Transaction;->commit()V

    goto :goto_a

    .line 697
    :cond_e
    if-eqz v18, :cond_10

    .line 698
    invoke-virtual/range {v18 .. v18}, Lcom/sleepycat/je/Transaction;->abort()V

    goto :goto_a

    .line 657
    .end local v18    # "txn":Lcom/sleepycat/je/Transaction;
    .end local v19    # "success":Z
    .end local v22    # "dbKeyName":Ljava/lang/String;
    .end local v23    # "dbClassName":Ljava/lang/String;
    .end local v24    # "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .end local v25    # "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .end local v26    # "secName":Ljava/lang/String;
    .restart local v7    # "dbKeyName":Ljava/lang/String;
    .restart local v8    # "dbClassName":Ljava/lang/String;
    .restart local v9    # "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .restart local v10    # "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .restart local v11    # "secName":Ljava/lang/String;
    :cond_f
    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move-object v14, v12

    .line 703
    .end local v7    # "dbKeyName":Ljava/lang/String;
    .end local v8    # "dbClassName":Ljava/lang/String;
    .end local v9    # "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .end local v10    # "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .end local v11    # "secName":Ljava/lang/String;
    .restart local v22    # "dbKeyName":Ljava/lang/String;
    .restart local v23    # "dbClassName":Ljava/lang/String;
    .restart local v24    # "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .restart local v25    # "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .restart local v26    # "secName":Ljava/lang/String;
    :cond_10
    :goto_a
    if-eqz v16, :cond_11

    move-object/from16 v1, v17

    move-object/from16 v2, v24

    move-object/from16 v0, v25

    goto :goto_b

    .line 704
    :cond_11
    new-instance v0, Lcom/sleepycat/persist/IndexNotAvailableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecondaryIndex not yet available on this Replica, entity class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", key name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/persist/IndexNotAvailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 643
    .end local v17    # "keyClassName":Ljava/lang/String;
    .end local v22    # "dbKeyName":Ljava/lang/String;
    .end local v23    # "dbClassName":Ljava/lang/String;
    .end local v24    # "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .end local v25    # "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .end local v26    # "secName":Ljava/lang/String;
    .local v0, "expectClsName":Ljava/lang/String;
    .restart local v9    # "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .restart local v10    # "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .restart local v11    # "secName":Ljava/lang/String;
    .restart local p5    # "keyClassName":Ljava/lang/String;
    :cond_12
    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move-object v14, v12

    .end local v9    # "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .end local v10    # "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .end local v11    # "secName":Ljava/lang/String;
    .restart local v24    # "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .restart local v25    # "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .restart local v26    # "secName":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong secondary key class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Correct class is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 628
    .end local v24    # "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .end local v25    # "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .end local v26    # "secName":Ljava/lang/String;
    .local v0, "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .restart local v2    # "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .restart local v11    # "secName":Ljava/lang/String;
    :cond_13
    move-object/from16 v26, v11

    move-object v14, v12

    .line 710
    .end local v11    # "secName":Ljava/lang/String;
    .end local p5    # "keyClassName":Ljava/lang/String;
    .local v1, "keyClassName":Ljava/lang/String;
    .restart local v26    # "secName":Ljava/lang/String;
    :goto_b
    monitor-exit p0

    return-object v16

    .line 578
    .end local v0    # "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .end local v1    # "keyClassName":Ljava/lang/String;
    .end local v2    # "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .end local v16    # "secIndex":Lcom/sleepycat/persist/impl/Store$InternalSecondaryIndex;, "Lcom/sleepycat/persist/impl/Store$InternalSecondaryIndex<TSK;TPK;TE2;>;"
    .end local v26    # "secName":Ljava/lang/String;
    .end local p1    # "primaryIndex":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE1;>;"
    .end local p2    # "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE2;>;"
    .end local p3    # "entityClassName":Ljava/lang/String;
    .end local p4    # "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<TSK;>;"
    .end local p6    # "keyName":Ljava/lang/String;
    :catchall_2
    move-exception v0

    goto :goto_c

    .line 579
    .restart local p1    # "primaryIndex":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE1;>;"
    .restart local p2    # "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE2;>;"
    .restart local p3    # "entityClassName":Ljava/lang/String;
    .restart local p4    # "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<TSK;>;"
    .restart local p5    # "keyClassName":Ljava/lang/String;
    .restart local p6    # "keyName":Ljava/lang/String;
    :cond_14
    move-object v14, v12

    :try_start_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 578
    .end local p1    # "primaryIndex":Lcom/sleepycat/persist/PrimaryIndex;, "Lcom/sleepycat/persist/PrimaryIndex<TPK;TE1;>;"
    .end local p2    # "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE2;>;"
    .end local p3    # "entityClassName":Ljava/lang/String;
    .end local p4    # "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<TSK;>;"
    .end local p5    # "keyClassName":Ljava/lang/String;
    .end local p6    # "keyName":Ljava/lang/String;
    :goto_c
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSequence(Ljava/lang/String;)Lcom/sleepycat/je/Sequence;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 1159
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/persist/impl/Store;->checkOpen()V

    .line 1161
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store;->storeConfig:Lcom/sleepycat/persist/StoreConfig;

    invoke-virtual {v0}, Lcom/sleepycat/persist/StoreConfig;->getReadOnly()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1165
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store;->sequenceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/Sequence;

    .line 1166
    .local v0, "seq":Lcom/sleepycat/je/Sequence;
    if-nez v0, :cond_2

    .line 1167
    iget-object v1, p0, Lcom/sleepycat/persist/impl/Store;->sequenceDb:Lcom/sleepycat/je/Database;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sleepycat/persist/impl/Store;->storePrefix:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "com.sleepycat.persist.sequences"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1169
    invoke-virtual {p0, v1}, Lcom/sleepycat/persist/impl/Store;->parseDbName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1170
    .local v1, "fileAndDbNames":[Ljava/lang/String;
    new-instance v3, Lcom/sleepycat/je/DatabaseConfig;

    invoke-direct {v3}, Lcom/sleepycat/je/DatabaseConfig;-><init>()V

    .line 1171
    .local v3, "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    iget-object v4, p0, Lcom/sleepycat/persist/impl/Store;->storeConfig:Lcom/sleepycat/persist/StoreConfig;

    invoke-virtual {v4}, Lcom/sleepycat/persist/StoreConfig;->getTransactional()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/DatabaseConfig;->setTransactional(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 1172
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/DatabaseConfig;->setAllowCreate(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 1174
    iget-object v5, p0, Lcom/sleepycat/persist/impl/Store;->storeConfig:Lcom/sleepycat/persist/StoreConfig;

    invoke-virtual {v5}, Lcom/sleepycat/persist/StoreConfig;->getReplicated()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sleepycat/je/DatabaseConfig;->setReplicated(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 1175
    iget-object v5, p0, Lcom/sleepycat/persist/impl/Store;->storeConfig:Lcom/sleepycat/persist/StoreConfig;

    invoke-virtual {v5}, Lcom/sleepycat/persist/StoreConfig;->getTemporary()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sleepycat/je/DatabaseConfig;->setTemporary(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 1177
    invoke-static {v3}, Lcom/sleepycat/compat/DbCompat;->setTypeBtree(Lcom/sleepycat/je/DatabaseConfig;)V

    .line 1178
    iget-object v5, p0, Lcom/sleepycat/persist/impl/Store;->env:Lcom/sleepycat/je/Environment;

    const/4 v6, 0x0

    aget-object v6, v1, v6

    aget-object v4, v1, v4

    .line 1179
    invoke-static {v5, v2, v6, v4, v3}, Lcom/sleepycat/compat/DbCompat;->openDatabase(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Transaction;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;)Lcom/sleepycat/je/Database;

    move-result-object v4

    iput-object v4, p0, Lcom/sleepycat/persist/impl/Store;->sequenceDb:Lcom/sleepycat/je/Database;

    .line 1181
    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1184
    .end local v1    # "fileAndDbNames":[Ljava/lang/String;
    .end local v3    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .end local p0    # "this":Lcom/sleepycat/persist/impl/Store;
    :cond_1
    :goto_0
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 1185
    .local v1, "entry":Lcom/sleepycat/je/DatabaseEntry;
    invoke-static {p1, v1}, Lcom/sleepycat/bind/tuple/StringBinding;->stringToEntry(Ljava/lang/String;Lcom/sleepycat/je/DatabaseEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1189
    :try_start_1
    iget-object v3, p0, Lcom/sleepycat/persist/impl/Store;->sequenceDb:Lcom/sleepycat/je/Database;

    .line 1190
    invoke-virtual {p0, p1}, Lcom/sleepycat/persist/impl/Store;->getSequenceConfig(Ljava/lang/String;)Lcom/sleepycat/je/SequenceConfig;

    move-result-object v4

    .line 1189
    invoke-virtual {v3, v2, v1, v4}, Lcom/sleepycat/je/Database;->openSequence(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/SequenceConfig;)Lcom/sleepycat/je/Sequence;

    move-result-object v2
    :try_end_1
    .catch Lcom/sleepycat/je/SequenceExistsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sleepycat/je/SequenceNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    .line 1198
    nop

    .line 1200
    :try_start_2
    iget-object v2, p0, Lcom/sleepycat/persist/impl/Store;->sequenceMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1195
    :catch_0
    move-exception v2

    .line 1197
    .local v2, "e":Lcom/sleepycat/je/SequenceNotFoundException;
    invoke-static {v2}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 1192
    .end local v2    # "e":Lcom/sleepycat/je/SequenceNotFoundException;
    :catch_1
    move-exception v2

    .line 1194
    .local v2, "e":Lcom/sleepycat/je/SequenceExistsException;
    invoke-static {v2}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1202
    .end local v1    # "entry":Lcom/sleepycat/je/DatabaseEntry;
    .end local v2    # "e":Lcom/sleepycat/je/SequenceExistsException;
    :cond_2
    :goto_1
    monitor-exit p0

    return-object v0

    .line 1162
    .end local v0    # "seq":Lcom/sleepycat/je/Sequence;
    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Store is read-only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1158
    .end local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSequenceConfig(Ljava/lang/String;)Lcom/sleepycat/je/SequenceConfig;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 1206
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/persist/impl/Store;->checkOpen()V

    .line 1207
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store;->sequenceConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/SequenceConfig;

    .line 1208
    .local v0, "config":Lcom/sleepycat/je/SequenceConfig;
    if-nez v0, :cond_1

    .line 1209
    new-instance v1, Lcom/sleepycat/je/SequenceConfig;

    invoke-direct {v1}, Lcom/sleepycat/je/SequenceConfig;-><init>()V

    move-object v0, v1

    .line 1210
    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/SequenceConfig;->setInitialValue(J)Lcom/sleepycat/je/SequenceConfig;

    .line 1211
    const-wide v3, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/SequenceConfig;->setRange(JJ)Lcom/sleepycat/je/SequenceConfig;

    .line 1212
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/SequenceConfig;->setCacheSize(I)Lcom/sleepycat/je/SequenceConfig;

    .line 1213
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/SequenceConfig;->setAutoCommitNoSync(Z)Lcom/sleepycat/je/SequenceConfig;

    .line 1214
    iget-object v2, p0, Lcom/sleepycat/persist/impl/Store;->storeConfig:Lcom/sleepycat/persist/StoreConfig;

    invoke-virtual {v2}, Lcom/sleepycat/persist/StoreConfig;->getReadOnly()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/SequenceConfig;->setAllowCreate(Z)Lcom/sleepycat/je/SequenceConfig;

    .line 1215
    iget-object v1, p0, Lcom/sleepycat/persist/impl/Store;->sequenceConfigMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1217
    .end local p0    # "this":Lcom/sleepycat/persist/impl/Store;
    :cond_1
    monitor-exit p0

    return-object v0

    .line 1205
    .end local v0    # "config":Lcom/sleepycat/je/SequenceConfig;
    .end local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getStoreName()Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store;->storeName:Ljava/lang/String;

    return-object v0
.end method

.method public isReplicaUpgradeMode()Z
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/PersistCatalog;->isReplicaUpgradeMode()Z

    move-result v0

    return v0
.end method

.method public parseDbName(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "wholeName"    # Ljava/lang/String;

    .line 1434
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store;->storeConfig:Lcom/sleepycat/persist/StoreConfig;

    invoke-virtual {v0}, Lcom/sleepycat/persist/StoreConfig;->getDatabaseNamer()Lcom/sleepycat/persist/DatabaseNamer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sleepycat/persist/impl/Store;->parseDbName(Ljava/lang/String;Lcom/sleepycat/persist/DatabaseNamer;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized refresh(Lcom/sleepycat/persist/impl/PersistCatalog;ILcom/sleepycat/persist/impl/RefreshException;)Lcom/sleepycat/persist/impl/PersistCatalog;
    .locals 4
    .param p1, "oldCatalog"    # Lcom/sleepycat/persist/impl/PersistCatalog;
    .param p2, "errorFormatId"    # I
    .param p3, "cause"    # Lcom/sleepycat/persist/impl/RefreshException;

    monitor-enter p0

    .line 1780
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    if-eq p1, v0, :cond_0

    .line 1782
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1790
    .end local p0    # "this":Lcom/sleepycat/persist/impl/Store;
    :cond_0
    :try_start_1
    new-instance v0, Lcom/sleepycat/persist/impl/PersistCatalog;

    iget-object v1, p0, Lcom/sleepycat/persist/impl/Store;->storePrefix:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/sleepycat/persist/impl/PersistCatalog;-><init>(Lcom/sleepycat/persist/impl/PersistCatalog;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;
    :try_end_1
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1793
    nop

    .line 1795
    :try_start_2
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/PersistCatalog;->getNFormats()I

    move-result v0

    if-ge p2, v0, :cond_5

    .line 1807
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store;->priIndexMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;

    .line 1808
    .local v1, "index":Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;
    iget-object v2, p0, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    invoke-virtual {v1, v2}, Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;->refresh(Lcom/sleepycat/persist/impl/PersistCatalog;)V

    .line 1809
    .end local v1    # "index":Lcom/sleepycat/persist/impl/Store$InternalPrimaryIndex;
    goto :goto_0

    .line 1810
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store;->secIndexMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/persist/impl/Store$InternalSecondaryIndex;

    .line 1811
    .local v1, "index":Lcom/sleepycat/persist/impl/Store$InternalSecondaryIndex;
    iget-object v2, p0, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    invoke-virtual {v1, v2}, Lcom/sleepycat/persist/impl/Store$InternalSecondaryIndex;->refresh(Lcom/sleepycat/persist/impl/PersistCatalog;)V

    .line 1812
    .end local v1    # "index":Lcom/sleepycat/persist/impl/Store$InternalSecondaryIndex;
    goto :goto_1

    .line 1813
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store;->keyBindingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/persist/impl/PersistKeyBinding;

    .line 1814
    .local v1, "binding":Lcom/sleepycat/persist/impl/PersistKeyBinding;
    iget-object v2, p0, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    invoke-virtual {v1, v2}, Lcom/sleepycat/persist/impl/PersistKeyBinding;->refresh(Lcom/sleepycat/persist/impl/PersistCatalog;)V

    .line 1815
    .end local v1    # "binding":Lcom/sleepycat/persist/impl/PersistKeyBinding;
    goto :goto_2

    .line 1816
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store;->secConfigMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/SecondaryConfig;

    .line 1817
    .local v1, "config":Lcom/sleepycat/je/SecondaryConfig;
    invoke-direct {p0, v1}, Lcom/sleepycat/persist/impl/Store;->getKeyCreator(Lcom/sleepycat/je/SecondaryConfig;)Lcom/sleepycat/persist/impl/PersistKeyCreator;

    move-result-object v2

    .line 1818
    .local v2, "keyCreator":Lcom/sleepycat/persist/impl/PersistKeyCreator;
    iget-object v3, p0, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    invoke-virtual {v2, v3}, Lcom/sleepycat/persist/impl/PersistKeyCreator;->refresh(Lcom/sleepycat/persist/impl/PersistCatalog;)V

    .line 1819
    .end local v1    # "config":Lcom/sleepycat/je/SecondaryConfig;
    .end local v2    # "keyCreator":Lcom/sleepycat/persist/impl/PersistKeyCreator;
    goto :goto_3

    .line 1821
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1797
    :cond_5
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Catalog could not be refreshed, may indicate corruption, errorFormatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " nFormats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/persist/impl/Store;->catalog:Lcom/sleepycat/persist/impl/PersistCatalog;

    .line 1800
    invoke-virtual {v1}, Lcom/sleepycat/persist/impl/PersistCatalog;->getNFormats()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1798
    invoke-static {v0, p3}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1791
    :catch_0
    move-exception v0

    .line 1792
    .local v0, "e":Lcom/sleepycat/je/DatabaseException;
    invoke-static {v0}, Lcom/sleepycat/util/RuntimeExceptionWrapper;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1779
    .end local v0    # "e":Lcom/sleepycat/je/DatabaseException;
    .end local p1    # "oldCatalog":Lcom/sleepycat/persist/impl/PersistCatalog;
    .end local p2    # "errorFormatId":I
    .end local p3    # "cause":Lcom/sleepycat/persist/impl/RefreshException;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPrimaryConfig(Ljava/lang/Class;Lcom/sleepycat/je/DatabaseConfig;)V
    .locals 5
    .param p1, "entityClass"    # Ljava/lang/Class;
    .param p2, "config"    # Lcom/sleepycat/je/DatabaseConfig;

    monitor-enter p0

    .line 1266
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/persist/impl/Store;->checkOpen()V

    .line 1267
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1268
    .local v0, "clsName":Ljava/lang/String;
    iget-object v1, p0, Lcom/sleepycat/persist/impl/Store;->priIndexMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1272
    invoke-direct {p0, v0}, Lcom/sleepycat/persist/impl/Store;->checkEntityClass(Ljava/lang/String;)Lcom/sleepycat/persist/model/EntityMetadata;

    move-result-object v1

    .line 1273
    .local v1, "meta":Lcom/sleepycat/persist/model/EntityMetadata;
    invoke-direct {p0, v1}, Lcom/sleepycat/persist/impl/Store;->getPrimaryConfig(Lcom/sleepycat/persist/model/EntityMetadata;)Lcom/sleepycat/je/DatabaseConfig;

    move-result-object v2

    .line 1274
    .local v2, "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseConfig;->getExclusiveCreate()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1275
    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseConfig;->getAllowCreate()Z

    move-result v3

    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseConfig;->getReadOnly()Z

    move-result v4

    if-eq v3, v4, :cond_1

    .line 1276
    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseConfig;->getSortedDuplicates()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1278
    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseConfig;->getTemporary()Z

    move-result v3

    invoke-virtual {v2}, Lcom/sleepycat/je/DatabaseConfig;->getTemporary()Z

    move-result v4

    if-ne v3, v4, :cond_1

    .line 1280
    invoke-virtual {p2}, Lcom/sleepycat/je/DatabaseConfig;->getBtreeComparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sleepycat/je/DatabaseConfig;->getBtreeComparator()Ljava/util/Comparator;

    move-result-object v4

    if-ne v3, v4, :cond_1

    .line 1286
    invoke-static {p2}, Lcom/sleepycat/compat/DbCompat;->isTypeBtree(Lcom/sleepycat/je/DatabaseConfig;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1289
    iget-object v3, p0, Lcom/sleepycat/persist/impl/Store;->priConfigMap:Ljava/util/Map;

    invoke-interface {v3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1290
    monitor-exit p0

    return-void

    .line 1287
    .end local p0    # "this":Lcom/sleepycat/persist/impl/Store;
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Only type BTREE allowed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1281
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "One of these properties was illegally changed: AllowCreate, ExclusiveCreate, SortedDuplicates, Temporary or BtreeComparator, "

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1269
    .end local v1    # "meta":Lcom/sleepycat/persist/model/EntityMetadata;
    .end local v2    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot set config after DB is open"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1265
    .end local v0    # "clsName":Ljava/lang/String;
    .end local p1    # "entityClass":Ljava/lang/Class;
    .end local p2    # "config":Lcom/sleepycat/je/DatabaseConfig;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSecondaryConfig(Ljava/lang/Class;Ljava/lang/String;Lcom/sleepycat/je/SecondaryConfig;)V
    .locals 8
    .param p1, "entityClass"    # Ljava/lang/Class;
    .param p2, "keyName"    # Ljava/lang/String;
    .param p3, "config"    # Lcom/sleepycat/je/SecondaryConfig;

    monitor-enter p0

    .line 1369
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/persist/impl/Store;->checkOpen()V

    .line 1370
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1371
    .local v0, "entityClsName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sleepycat/persist/impl/Store;->checkEntityClass(Ljava/lang/String;)Lcom/sleepycat/persist/model/EntityMetadata;

    move-result-object v1

    .line 1372
    .local v1, "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    invoke-direct {p0, v1, p2}, Lcom/sleepycat/persist/impl/Store;->checkSecKey(Lcom/sleepycat/persist/model/EntityMetadata;Ljava/lang/String;)Lcom/sleepycat/persist/model/SecondaryKeyMetadata;

    move-result-object v2

    .line 1373
    .local v2, "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    invoke-direct {p0, v2}, Lcom/sleepycat/persist/impl/Store;->getSecKeyClass(Lcom/sleepycat/persist/model/SecondaryKeyMetadata;)Ljava/lang/String;

    move-result-object v3

    .line 1374
    .local v3, "keyClassName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/sleepycat/persist/impl/Store;->makeSecName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1375
    .local v4, "secName":Ljava/lang/String;
    iget-object v5, p0, Lcom/sleepycat/persist/impl/Store;->secIndexMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1379
    nop

    .line 1380
    invoke-direct {p0, v4, v1, v3, v2}, Lcom/sleepycat/persist/impl/Store;->getSecondaryConfig(Ljava/lang/String;Lcom/sleepycat/persist/model/EntityMetadata;Ljava/lang/String;Lcom/sleepycat/persist/model/SecondaryKeyMetadata;)Lcom/sleepycat/je/SecondaryConfig;

    move-result-object v5

    .line 1381
    .local v5, "dbConfig":Lcom/sleepycat/je/SecondaryConfig;
    invoke-virtual {p3}, Lcom/sleepycat/je/SecondaryConfig;->getExclusiveCreate()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1382
    invoke-virtual {p3}, Lcom/sleepycat/je/SecondaryConfig;->getAllowCreate()Z

    move-result v6

    invoke-virtual {p3}, Lcom/sleepycat/je/SecondaryConfig;->getReadOnly()Z

    move-result v7

    if-eq v6, v7, :cond_1

    .line 1383
    invoke-virtual {p3}, Lcom/sleepycat/je/SecondaryConfig;->getSortedDuplicates()Z

    move-result v6

    invoke-virtual {v5}, Lcom/sleepycat/je/SecondaryConfig;->getSortedDuplicates()Z

    move-result v7

    if-ne v6, v7, :cond_1

    .line 1384
    invoke-virtual {p3}, Lcom/sleepycat/je/SecondaryConfig;->getBtreeComparator()Ljava/util/Comparator;

    move-result-object v6

    invoke-virtual {v5}, Lcom/sleepycat/je/SecondaryConfig;->getBtreeComparator()Ljava/util/Comparator;

    move-result-object v7

    if-ne v6, v7, :cond_1

    .line 1385
    invoke-virtual {p3}, Lcom/sleepycat/je/SecondaryConfig;->getDuplicateComparator()Ljava/util/Comparator;

    move-result-object v6

    if-nez v6, :cond_1

    .line 1387
    invoke-virtual {p3}, Lcom/sleepycat/je/SecondaryConfig;->getTemporary()Z

    move-result v6

    invoke-virtual {v5}, Lcom/sleepycat/je/SecondaryConfig;->getTemporary()Z

    move-result v7

    if-ne v6, v7, :cond_1

    .line 1389
    invoke-virtual {p3}, Lcom/sleepycat/je/SecondaryConfig;->getAllowPopulate()Z

    move-result v6

    invoke-virtual {v5}, Lcom/sleepycat/je/SecondaryConfig;->getAllowPopulate()Z

    move-result v7

    if-ne v6, v7, :cond_1

    .line 1390
    invoke-virtual {p3}, Lcom/sleepycat/je/SecondaryConfig;->getKeyCreator()Lcom/sleepycat/je/SecondaryKeyCreator;

    move-result-object v6

    invoke-virtual {v5}, Lcom/sleepycat/je/SecondaryConfig;->getKeyCreator()Lcom/sleepycat/je/SecondaryKeyCreator;

    move-result-object v7

    if-ne v6, v7, :cond_1

    .line 1391
    invoke-virtual {p3}, Lcom/sleepycat/je/SecondaryConfig;->getMultiKeyCreator()Lcom/sleepycat/je/SecondaryMultiKeyCreator;

    move-result-object v6

    invoke-virtual {v5}, Lcom/sleepycat/je/SecondaryConfig;->getMultiKeyCreator()Lcom/sleepycat/je/SecondaryMultiKeyCreator;

    move-result-object v7

    if-ne v6, v7, :cond_1

    .line 1392
    invoke-virtual {p3}, Lcom/sleepycat/je/SecondaryConfig;->getForeignKeyNullifier()Lcom/sleepycat/je/ForeignKeyNullifier;

    move-result-object v6

    .line 1393
    invoke-virtual {v5}, Lcom/sleepycat/je/SecondaryConfig;->getForeignKeyNullifier()Lcom/sleepycat/je/ForeignKeyNullifier;

    move-result-object v7

    if-ne v6, v7, :cond_1

    .line 1394
    invoke-virtual {p3}, Lcom/sleepycat/je/SecondaryConfig;->getForeignMultiKeyNullifier()Lcom/sleepycat/je/ForeignMultiKeyNullifier;

    move-result-object v6

    .line 1395
    invoke-virtual {v5}, Lcom/sleepycat/je/SecondaryConfig;->getForeignMultiKeyNullifier()Lcom/sleepycat/je/ForeignMultiKeyNullifier;

    move-result-object v7

    if-ne v6, v7, :cond_1

    .line 1396
    invoke-virtual {p3}, Lcom/sleepycat/je/SecondaryConfig;->getForeignKeyDeleteAction()Lcom/sleepycat/je/ForeignKeyDeleteAction;

    move-result-object v6

    .line 1397
    invoke-virtual {v5}, Lcom/sleepycat/je/SecondaryConfig;->getForeignKeyDeleteAction()Lcom/sleepycat/je/ForeignKeyDeleteAction;

    move-result-object v7

    if-ne v6, v7, :cond_1

    .line 1398
    invoke-virtual {p3}, Lcom/sleepycat/je/SecondaryConfig;->getForeignKeyDatabase()Lcom/sleepycat/je/Database;

    move-result-object v6

    if-nez v6, :cond_1

    .line 1407
    invoke-static {p3}, Lcom/sleepycat/compat/DbCompat;->isTypeBtree(Lcom/sleepycat/je/DatabaseConfig;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1410
    iget-object v6, p0, Lcom/sleepycat/persist/impl/Store;->secConfigMap:Ljava/util/Map;

    invoke-interface {v6, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1411
    monitor-exit p0

    return-void

    .line 1408
    .end local p0    # "this":Lcom/sleepycat/persist/impl/Store;
    :cond_0
    :try_start_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Only type BTREE allowed"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1399
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "One of these properties was illegally changed:  AllowCreate, ExclusiveCreate, SortedDuplicates, BtreeComparator, DuplicateComparator, Temporary, AllowPopulate, KeyCreator, MultiKeyCreator, ForeignKeyNullifer, ForeignMultiKeyNullifier, ForeignKeyDeleteAction, ForeignKeyDatabase"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1376
    .end local v5    # "dbConfig":Lcom/sleepycat/je/SecondaryConfig;
    :cond_2
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Cannot set config after DB is open"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1368
    .end local v0    # "entityClsName":Ljava/lang/String;
    .end local v1    # "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .end local v2    # "secKeyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    .end local v3    # "keyClassName":Ljava/lang/String;
    .end local v4    # "secName":Ljava/lang/String;
    .end local p1    # "entityClass":Ljava/lang/Class;
    .end local p2    # "keyName":Ljava/lang/String;
    .end local p3    # "config":Lcom/sleepycat/je/SecondaryConfig;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSequenceConfig(Ljava/lang/String;Lcom/sleepycat/je/SequenceConfig;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/sleepycat/je/SequenceConfig;

    monitor-enter p0

    .line 1222
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/persist/impl/Store;->checkOpen()V

    .line 1223
    invoke-virtual {p2}, Lcom/sleepycat/je/SequenceConfig;->getExclusiveCreate()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1224
    invoke-virtual {p2}, Lcom/sleepycat/je/SequenceConfig;->getAllowCreate()Z

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/persist/impl/Store;->storeConfig:Lcom/sleepycat/persist/StoreConfig;

    invoke-virtual {v1}, Lcom/sleepycat/persist/StoreConfig;->getReadOnly()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1229
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store;->sequenceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1233
    iget-object v0, p0, Lcom/sleepycat/persist/impl/Store;->sequenceConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1234
    monitor-exit p0

    return-void

    .line 1230
    .end local p0    # "this":Lcom/sleepycat/persist/impl/Store;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set config after Sequence is open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1225
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "One of these properties was illegally changed: AllowCreate, ExclusiveCreate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1221
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "config":Lcom/sleepycat/je/SequenceConfig;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public sync()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 968
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 969
    .local v0, "dbs":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/Database;>;"
    monitor-enter p0

    .line 970
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/persist/impl/Store;->deferredWriteDatabases:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 971
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 972
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/Database;

    .line 973
    .local v2, "db":Lcom/sleepycat/je/Database;
    invoke-virtual {v2}, Lcom/sleepycat/je/Database;->sync()V

    .line 975
    sget-object v3, Lcom/sleepycat/persist/impl/Store;->syncHook:Lcom/sleepycat/persist/impl/Store$SyncHook;

    if-eqz v3, :cond_0

    .line 976
    invoke-interface {v3, v2}, Lcom/sleepycat/persist/impl/Store$SyncHook;->onSync(Lcom/sleepycat/je/Database;)V

    .line 978
    .end local v2    # "db":Lcom/sleepycat/je/Database;
    :cond_0
    goto :goto_0

    .line 979
    :cond_1
    return-void

    .line 971
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized truncateClass(Lcom/sleepycat/je/Transaction;Ljava/lang/Class;)V
    .locals 10
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "entityClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 991
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/persist/impl/Store;->checkOpen()V

    .line 992
    invoke-direct {p0}, Lcom/sleepycat/persist/impl/Store;->checkWriteAllowed()V

    .line 995
    invoke-virtual {p0, p2}, Lcom/sleepycat/persist/impl/Store;->closeClass(Ljava/lang/Class;)V

    .line 997
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 998
    .local v0, "clsName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sleepycat/persist/impl/Store;->checkEntityClass(Ljava/lang/String;)Lcom/sleepycat/persist/model/EntityMetadata;

    move-result-object v1

    .line 1000
    .local v1, "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    const/4 v2, 0x0

    .line 1001
    .local v2, "autoCommit":Z
    iget-object v3, p0, Lcom/sleepycat/persist/impl/Store;->storeConfig:Lcom/sleepycat/persist/StoreConfig;

    invoke-virtual {v3}, Lcom/sleepycat/persist/StoreConfig;->getTransactional()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/sleepycat/persist/impl/Store;->env:Lcom/sleepycat/je/Environment;

    .line 1003
    invoke-static {v3}, Lcom/sleepycat/compat/DbCompat;->getThreadTransaction(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/Transaction;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1004
    iget-object v3, p0, Lcom/sleepycat/persist/impl/Store;->env:Lcom/sleepycat/je/Environment;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sleepycat/persist/impl/Store;->autoCommitTxnConfig:Lcom/sleepycat/je/TransactionConfig;

    invoke-virtual {v3, v4, v5}, Lcom/sleepycat/je/Environment;->beginTransaction(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/Transaction;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object p1, v3

    .line 1005
    const/4 v2, 0x1

    .line 1013
    .end local p0    # "this":Lcom/sleepycat/persist/impl/Store;
    :cond_0
    const/4 v3, 0x0

    .line 1015
    .local v3, "success":Z
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sleepycat/persist/impl/Store;->storePrefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1016
    invoke-direct {p0, p1, v4}, Lcom/sleepycat/persist/impl/Store;->truncateIfExists(Lcom/sleepycat/je/Transaction;Ljava/lang/String;)Z

    move-result v4

    .line 1017
    .local v4, "primaryExists":Z
    if-eqz v4, :cond_3

    .line 1018
    const/4 v5, 0x0

    .line 1020
    .local v5, "firstException":Lcom/sleepycat/je/DatabaseException;
    invoke-virtual {v1}, Lcom/sleepycat/persist/model/EntityMetadata;->getSecondaryKeys()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;

    .line 1022
    .local v7, "keyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/sleepycat/persist/impl/Store;->storePrefix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1025
    invoke-virtual {v7}, Lcom/sleepycat/persist/model/SecondaryKeyMetadata;->getKeyName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/sleepycat/persist/impl/Store;->makeSecName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1023
    invoke-direct {p0, p1, v8}, Lcom/sleepycat/persist/impl/Store;->removeIfExists(Lcom/sleepycat/je/Transaction;Ljava/lang/String;)Z

    .line 1026
    nop

    .end local v7    # "keyMeta":Lcom/sleepycat/persist/model/SecondaryKeyMetadata;
    goto :goto_0

    .line 1027
    :cond_1
    if-nez v5, :cond_2

    goto :goto_1

    .line 1028
    :cond_2
    nop

    .end local v0    # "clsName":Ljava/lang/String;
    .end local v1    # "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .end local v2    # "autoCommit":Z
    .end local v3    # "success":Z
    .end local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p2    # "entityClass":Ljava/lang/Class;
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1031
    .end local v5    # "firstException":Lcom/sleepycat/je/DatabaseException;
    .restart local v0    # "clsName":Ljava/lang/String;
    .restart local v1    # "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .restart local v2    # "autoCommit":Z
    .restart local v3    # "success":Z
    .restart local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local p2    # "entityClass":Ljava/lang/Class;
    :cond_3
    :goto_1
    const/4 v3, 0x1

    .line 1033
    .end local v4    # "primaryExists":Z
    if-eqz v2, :cond_5

    .line 1034
    if-eqz v3, :cond_4

    .line 1035
    :try_start_2
    invoke-virtual {p1}, Lcom/sleepycat/je/Transaction;->commit()V

    goto :goto_2

    .line 1037
    :cond_4
    invoke-virtual {p1}, Lcom/sleepycat/je/Transaction;->abort()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1041
    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    .line 1033
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_7

    .line 1034
    if-eqz v3, :cond_6

    .line 1035
    :try_start_3
    invoke-virtual {p1}, Lcom/sleepycat/je/Transaction;->commit()V

    goto :goto_3

    .line 1037
    :cond_6
    invoke-virtual {p1}, Lcom/sleepycat/je/Transaction;->abort()V

    :cond_7
    :goto_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 990
    .end local v0    # "clsName":Ljava/lang/String;
    .end local v1    # "entityMeta":Lcom/sleepycat/persist/model/EntityMetadata;
    .end local v2    # "autoCommit":Z
    .end local v3    # "success":Z
    .end local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p2    # "entityClass":Ljava/lang/Class;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public truncateClass(Ljava/lang/Class;)V
    .locals 1
    .param p1, "entityClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 985
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sleepycat/persist/impl/Store;->truncateClass(Lcom/sleepycat/je/Transaction;Ljava/lang/Class;)V

    .line 986
    return-void
.end method
