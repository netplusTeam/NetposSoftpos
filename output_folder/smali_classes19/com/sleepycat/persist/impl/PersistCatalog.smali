.class public Lcom/sleepycat/persist/impl/PersistCatalog;
.super Ljava/lang/Object;
.source "PersistCatalog.java"

# interfaces
.implements Lcom/sleepycat/persist/impl/Catalog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/persist/impl/PersistCatalog$Data;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BETA_MUTATIONS_KEY:[B

.field private static final DATA_KEY:[B

.field private static final MAX_TXN_RETRIES:I = 0xa

.field public static expectNoClassChanges:Z

.field public static unevolvedFormatsEncountered:Z


# instance fields
.field private final db:Lcom/sleepycat/je/Database;

.field private final env:Lcom/sleepycat/je/Environment;

.field private volatile formatList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/impl/Format;",
            ">;"
        }
    .end annotation
.end field

.field private volatile formatMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/impl/Format;",
            ">;"
        }
    .end annotation
.end field

.field private initData:Lcom/sleepycat/persist/impl/PersistCatalog$Data;

.field private initEvolver:Lcom/sleepycat/persist/impl/Evolver;

.field private volatile latestFormatMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/impl/Format;",
            ">;"
        }
    .end annotation
.end field

.field private model:Lcom/sleepycat/persist/model/EntityModel;

.field private mutations:Lcom/sleepycat/persist/evolve/Mutations;

.field private volatile nStoredFormats:I

.field private openCount:I

.field private proxyClassMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final rawAccess:Z

.field private readOnly:Z

.field private final store:Lcom/sleepycat/persist/impl/Store;

.field private storedModel:Lcom/sleepycat/persist/impl/StoredModel;

.field private final transactional:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    nop

    .line 77
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/sleepycat/persist/impl/PersistCatalog;->getIntBytes(I)[B

    move-result-object v0

    sput-object v0, Lcom/sleepycat/persist/impl/PersistCatalog;->DATA_KEY:[B

    .line 84
    const/4 v0, -0x2

    invoke-static {v0}, Lcom/sleepycat/persist/impl/PersistCatalog;->getIntBytes(I)[B

    move-result-object v0

    sput-object v0, Lcom/sleepycat/persist/impl/PersistCatalog;->BETA_MUTATIONS_KEY:[B

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/Environment;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;Lcom/sleepycat/persist/model/EntityModel;Lcom/sleepycat/persist/evolve/Mutations;ZLcom/sleepycat/persist/impl/Store;)V
    .locals 5
    .param p1, "env"    # Lcom/sleepycat/je/Environment;
    .param p2, "storePrefix"    # Ljava/lang/String;
    .param p3, "dbName"    # Ljava/lang/String;
    .param p4, "dbConfig"    # Lcom/sleepycat/je/DatabaseConfig;
    .param p5, "modelParam"    # Lcom/sleepycat/persist/model/EntityModel;
    .param p6, "mutationsParam"    # Lcom/sleepycat/persist/evolve/Mutations;
    .param p7, "rawAccess"    # Z
    .param p8, "store"    # Lcom/sleepycat/persist/impl/Store;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/StoreExistsException;,
            Lcom/sleepycat/persist/StoreNotFoundException;,
            Lcom/sleepycat/persist/evolve/IncompatibleClassException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p1, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->env:Lcom/sleepycat/je/Environment;

    .line 201
    iput-boolean p7, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->rawAccess:Z

    .line 202
    iput-object p8, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->store:Lcom/sleepycat/persist/impl/Store;

    .line 203
    invoke-virtual {p4}, Lcom/sleepycat/je/DatabaseConfig;->getTransactional()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->transactional:Z

    .line 206
    if-eqz p8, :cond_0

    .line 207
    invoke-virtual {p8, p3}, Lcom/sleepycat/persist/impl/Store;->parseDbName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sleepycat/persist/DatabaseNamer;->DEFAULT:Lcom/sleepycat/persist/DatabaseNamer;

    .line 208
    invoke-static {p3, v0}, Lcom/sleepycat/persist/impl/Store;->parseDbName(Ljava/lang/String;Lcom/sleepycat/persist/DatabaseNamer;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    nop

    .line 216
    .local v0, "fileAndDbNames":[Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-static {p1, v1, v2, v4, p4}, Lcom/sleepycat/compat/DbCompat;->openDatabase(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Transaction;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;)Lcom/sleepycat/je/Database;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->db:Lcom/sleepycat/je/Database;

    .line 218
    if-nez v1, :cond_3

    .line 219
    invoke-virtual {p8, v0}, Lcom/sleepycat/persist/impl/Store;->getDbNameMessage([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "dbNameMsg":Ljava/lang/String;
    invoke-virtual {p4}, Lcom/sleepycat/je/DatabaseConfig;->getExclusiveCreate()Z

    move-result v2

    if-nez v2, :cond_2

    .line 225
    invoke-virtual {p4}, Lcom/sleepycat/je/DatabaseConfig;->getAllowCreate()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 226
    :cond_1
    new-instance v2, Lcom/sleepycat/persist/StoreNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Catalog DB does not exist and AllowCreate=false, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sleepycat/persist/StoreNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 221
    :cond_2
    new-instance v2, Lcom/sleepycat/persist/StoreExistsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Catalog DB already exists and ExclusiveCreate=true, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sleepycat/persist/StoreExistsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 231
    .end local v1    # "dbNameMsg":Ljava/lang/String;
    :cond_3
    iput v3, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->openCount:I

    .line 232
    const/4 v1, 0x0

    .line 234
    .local v1, "success":Z
    :try_start_0
    invoke-direct {p0, p2, p5, p6}, Lcom/sleepycat/persist/impl/PersistCatalog;->initAndRetry(Ljava/lang/String;Lcom/sleepycat/persist/model/EntityModel;Lcom/sleepycat/persist/evolve/Mutations;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    const/4 v1, 0x1

    .line 237
    if-nez v1, :cond_4

    .line 238
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/PersistCatalog;->close()Z

    .line 241
    :cond_4
    return-void

    .line 237
    :catchall_0
    move-exception v2

    if-nez v1, :cond_5

    .line 238
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/PersistCatalog;->close()Z

    :cond_5
    throw v2
.end method

.method constructor <init>(Lcom/sleepycat/persist/impl/PersistCatalog;Ljava/lang/String;)V
    .locals 2
    .param p1, "oldCatalog"    # Lcom/sleepycat/persist/impl/PersistCatalog;
    .param p2, "storePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iget-object v0, p1, Lcom/sleepycat/persist/impl/PersistCatalog;->db:Lcom/sleepycat/je/Database;

    iput-object v0, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->db:Lcom/sleepycat/je/Database;

    .line 252
    iget-object v0, p1, Lcom/sleepycat/persist/impl/PersistCatalog;->store:Lcom/sleepycat/persist/impl/Store;

    iput-object v0, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->store:Lcom/sleepycat/persist/impl/Store;

    .line 253
    iget-object v0, p1, Lcom/sleepycat/persist/impl/PersistCatalog;->env:Lcom/sleepycat/je/Environment;

    iput-object v0, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->env:Lcom/sleepycat/je/Environment;

    .line 254
    iget-boolean v0, p1, Lcom/sleepycat/persist/impl/PersistCatalog;->rawAccess:Z

    iput-boolean v0, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->rawAccess:Z

    .line 255
    iget v0, p1, Lcom/sleepycat/persist/impl/PersistCatalog;->openCount:I

    iput v0, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->openCount:I

    .line 256
    iget-boolean v0, p1, Lcom/sleepycat/persist/impl/PersistCatalog;->transactional:Z

    iput-boolean v0, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->transactional:Z

    .line 258
    iget-object v0, p1, Lcom/sleepycat/persist/impl/PersistCatalog;->model:Lcom/sleepycat/persist/model/EntityModel;

    iget-object v1, p1, Lcom/sleepycat/persist/impl/PersistCatalog;->mutations:Lcom/sleepycat/persist/evolve/Mutations;

    invoke-direct {p0, p2, v0, v1}, Lcom/sleepycat/persist/impl/PersistCatalog;->initAndRetry(Ljava/lang/String;Lcom/sleepycat/persist/model/EntityModel;Lcom/sleepycat/persist/evolve/Mutations;)V

    .line 259
    return-void
.end method

.method private addFormat(Lcom/sleepycat/persist/impl/Format;)V
    .locals 2
    .param p1, "format"    # Lcom/sleepycat/persist/impl/Format;

    .line 874
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->formatList:Ljava/util/List;

    iget-object v1, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->formatMap:Ljava/util/Map;

    invoke-direct {p0, p1, v0, v1}, Lcom/sleepycat/persist/impl/PersistCatalog;->addFormat(Lcom/sleepycat/persist/impl/Format;Ljava/util/List;Ljava/util/Map;)V

    .line 875
    return-void
.end method

.method private addFormat(Lcom/sleepycat/persist/impl/Format;Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .param p1, "format"    # Lcom/sleepycat/persist/impl/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/persist/impl/Format;",
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/impl/Format;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/impl/Format;",
            ">;)V"
        }
    .end annotation

    .line 884
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/persist/impl/Format;>;"
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/Format;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sleepycat/persist/impl/Format;->setId(I)V

    .line 885
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 886
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    return-void
.end method

.method private declared-synchronized addNewFormat(Ljava/lang/Class;)Lcom/sleepycat/persist/impl/Format;
    .locals 9
    .param p1, "cls"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    monitor-enter p0

    .line 1145
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->formatMap:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/persist/impl/PersistCatalog;->getFormatFromMap(Ljava/lang/Class;Ljava/util/Map;)Lcom/sleepycat/persist/impl/Format;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1146
    .local v0, "format":Lcom/sleepycat/persist/impl/Format;
    if-eqz v0, :cond_0

    .line 1147
    monitor-exit p0

    return-object v0

    .line 1151
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->formatList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1152
    .local v1, "newFormatList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/persist/impl/Format;>;"
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->formatMap:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1154
    .local v2, "newFormatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/Format;>;"
    new-instance v3, Ljava/util/HashMap;

    iget-object v4, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->latestFormatMap:Ljava/util/Map;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1158
    .local v3, "newLatestFormatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/Format;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1159
    .local v4, "newFormats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/Format;>;"
    invoke-virtual {p0, p1, v4}, Lcom/sleepycat/persist/impl/PersistCatalog;->createFormat(Ljava/lang/Class;Ljava/util/Map;)Lcom/sleepycat/persist/impl/Format;

    move-result-object v5

    move-object v0, v5

    .line 1160
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sleepycat/persist/impl/Format;

    .line 1161
    .local v6, "newFormat":Lcom/sleepycat/persist/impl/Format;
    invoke-direct {p0, v6, v1, v2}, Lcom/sleepycat/persist/impl/PersistCatalog;->addFormat(Lcom/sleepycat/persist/impl/Format;Ljava/util/List;Ljava/util/Map;)V

    .line 1162
    .end local v6    # "newFormat":Lcom/sleepycat/persist/impl/Format;
    goto :goto_0

    .line 1168
    .end local p0    # "this":Lcom/sleepycat/persist/impl/PersistCatalog;
    :cond_1
    new-instance v5, Lcom/sleepycat/persist/impl/ReadOnlyCatalog;

    iget-object v6, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->model:Lcom/sleepycat/persist/model/EntityModel;

    .line 1169
    invoke-static {v6}, Lcom/sleepycat/persist/model/ModelInternal;->getClassLoader(Lcom/sleepycat/persist/model/EntityModel;)Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v5, v6, v1, v2}, Lcom/sleepycat/persist/impl/ReadOnlyCatalog;-><init>(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/util/Map;)V

    .line 1170
    .local v5, "newFormatCatalog":Lcom/sleepycat/persist/impl/Catalog;
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sleepycat/persist/impl/Format;

    .line 1171
    .local v7, "newFormat":Lcom/sleepycat/persist/impl/Format;
    iget-object v8, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->model:Lcom/sleepycat/persist/model/EntityModel;

    invoke-virtual {v7, v5, v8}, Lcom/sleepycat/persist/impl/Format;->initializeIfNeeded(Lcom/sleepycat/persist/impl/Catalog;Lcom/sleepycat/persist/model/EntityModel;)V

    .line 1172
    invoke-virtual {v7}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    nop

    .end local v7    # "newFormat":Lcom/sleepycat/persist/impl/Format;
    goto :goto_1

    .line 1190
    :cond_2
    iget-boolean v6, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->readOnly:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_3

    .line 1192
    :try_start_2
    new-instance v6, Lcom/sleepycat/persist/impl/PersistCatalog$Data;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/sleepycat/persist/impl/PersistCatalog$Data;-><init>(Lcom/sleepycat/persist/impl/PersistCatalog$1;)V

    .line 1193
    .local v6, "newData":Lcom/sleepycat/persist/impl/PersistCatalog$Data;
    iput-object v1, v6, Lcom/sleepycat/persist/impl/PersistCatalog$Data;->formatList:Ljava/util/List;

    .line 1194
    iget-object v7, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->mutations:Lcom/sleepycat/persist/evolve/Mutations;

    iput-object v7, v6, Lcom/sleepycat/persist/impl/PersistCatalog$Data;->mutations:Lcom/sleepycat/persist/evolve/Mutations;

    .line 1195
    invoke-direct {p0, v6}, Lcom/sleepycat/persist/impl/PersistCatalog;->writeDataCheckStale(Lcom/sleepycat/persist/impl/PersistCatalog$Data;)V
    :try_end_2
    .catch Lcom/sleepycat/je/rep/ReplicaWriteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v6    # "newData":Lcom/sleepycat/persist/impl/PersistCatalog$Data;
    goto :goto_2

    .line 1200
    :catch_0
    move-exception v6

    .line 1201
    .local v6, "e":Lcom/sleepycat/je/DatabaseException;
    :try_start_3
    invoke-static {v6}, Lcom/sleepycat/util/RuntimeExceptionWrapper;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    .line 1197
    .end local v6    # "e":Lcom/sleepycat/je/DatabaseException;
    :catch_1
    move-exception v6

    .line 1198
    .local v6, "e":Lcom/sleepycat/je/rep/ReplicaWriteException;
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->readOnly:Z

    .line 1204
    .end local v6    # "e":Lcom/sleepycat/je/rep/ReplicaWriteException;
    :cond_3
    :goto_2
    iput-object v1, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->formatList:Ljava/util/List;

    .line 1205
    iput-object v2, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->formatMap:Ljava/util/Map;

    .line 1206
    iput-object v3, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->latestFormatMap:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1208
    monitor-exit p0

    return-object v0

    .line 1144
    .end local v0    # "format":Lcom/sleepycat/persist/impl/Format;
    .end local v1    # "newFormatList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/persist/impl/Format;>;"
    .end local v2    # "newFormatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/Format;>;"
    .end local v3    # "newLatestFormatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/Format;>;"
    .end local v4    # "newFormats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/Format;>;"
    .end local v5    # "newFormatCatalog":Lcom/sleepycat/persist/impl/Catalog;
    .end local p1    # "cls":Ljava/lang/Class;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private addPredefinedProxies(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 653
    .local p1, "knownClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v0, Lcom/sleepycat/persist/impl/CollectionProxy$ArrayListProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    const-class v0, Lcom/sleepycat/persist/impl/CollectionProxy$LinkedListProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    const-class v0, Lcom/sleepycat/persist/impl/CollectionProxy$HashSetProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 656
    const-class v0, Lcom/sleepycat/persist/impl/CollectionProxy$TreeSetProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    const-class v0, Lcom/sleepycat/persist/impl/MapProxy$HashMapProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    const-class v0, Lcom/sleepycat/persist/impl/MapProxy$TreeMapProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    const-class v0, Lcom/sleepycat/persist/impl/MapProxy$LinkedHashMapProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    return-void
.end method

.method private addProxiedClass(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "isKnownClass"    # Z

    .line 617
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->model:Lcom/sleepycat/persist/model/EntityModel;

    invoke-virtual {v0, p1}, Lcom/sleepycat/persist/model/EntityModel;->getClassMetadata(Ljava/lang/String;)Lcom/sleepycat/persist/model/ClassMetadata;

    move-result-object v0

    .line 618
    .local v0, "metadata":Lcom/sleepycat/persist/model/ClassMetadata;
    if-eqz v0, :cond_2

    .line 619
    invoke-virtual {v0}, Lcom/sleepycat/persist/model/ClassMetadata;->getProxiedClassName()Ljava/lang/String;

    move-result-object v1

    .line 620
    .local v1, "proxiedClassName":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 627
    if-eqz p2, :cond_1

    .line 629
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/sleepycat/persist/impl/PersistCatalog;->resolveClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 636
    .local v2, "type":Ljava/lang/Class;
    invoke-static {v2}, Lcom/sleepycat/persist/impl/SimpleCatalog;->allowRegisterProxy(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 645
    .end local v2    # "type":Ljava/lang/Class;
    goto :goto_0

    .line 637
    .restart local v2    # "type":Ljava/lang/Class;
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Registering proxy is not allowed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", which is a built-in simple type."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "metadata":Lcom/sleepycat/persist/model/ClassMetadata;
    .end local v1    # "proxiedClassName":Ljava/lang/String;
    .end local p1    # "className":Ljava/lang/String;
    .end local p2    # "isKnownClass":Z
    throw v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    .end local v2    # "type":Ljava/lang/Class;
    .restart local v0    # "metadata":Lcom/sleepycat/persist/model/ClassMetadata;
    .restart local v1    # "proxiedClassName":Ljava/lang/String;
    .restart local p1    # "className":Ljava/lang/String;
    .restart local p2    # "isKnownClass":Z
    :catch_0
    move-exception v2

    .line 643
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class does not exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 644
    invoke-static {v3}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 647
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->proxyClassMap:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    .end local v1    # "proxiedClassName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private getFormatFromMap(Ljava/lang/Class;Ljava/util/Map;)Lcom/sleepycat/persist/impl/Format;
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/impl/Format;",
            ">;)",
            "Lcom/sleepycat/persist/impl/Format;"
        }
    .end annotation

    .line 852
    .local p2, "formats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/Format;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/impl/Format;

    .line 853
    .local v0, "format":Lcom/sleepycat/persist/impl/Format;
    if-eqz v0, :cond_0

    .line 854
    return-object v0

    .line 855
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 856
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 862
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/sleepycat/persist/impl/Format;

    .line 863
    if-eqz v0, :cond_1

    .line 864
    return-object v0

    .line 867
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getIntBytes(I)[B
    .locals 3
    .param p0, "val"    # I

    .line 87
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 88
    .local v0, "entry":Lcom/sleepycat/je/DatabaseEntry;
    invoke-static {p0, v0}, Lcom/sleepycat/bind/tuple/IntegerBinding;->intToEntry(ILcom/sleepycat/je/DatabaseEntry;)V

    .line 89
    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v1

    array-length v1, v1

    if-ne v1, v2, :cond_0

    .line 90
    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v1

    return-object v1

    .line 89
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private getStoredFormat(Ljava/lang/String;)Lcom/sleepycat/persist/impl/Format;
    .locals 3
    .param p1, "className"    # Ljava/lang/String;

    .line 1102
    invoke-virtual {p0, p1}, Lcom/sleepycat/persist/impl/PersistCatalog;->getFormat(Ljava/lang/String;)Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    .line 1103
    .local v0, "format":Lcom/sleepycat/persist/impl/Format;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->getId()I

    move-result v1

    iget v2, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->nStoredFormats:I

    if-lt v1, v2, :cond_0

    .line 1104
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->getPreviousVersion()Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    goto :goto_0

    .line 1106
    :cond_0
    return-object v0
.end method

.method private init(Lcom/sleepycat/je/Transaction;Ljava/lang/String;Lcom/sleepycat/persist/model/EntityModel;Lcom/sleepycat/persist/evolve/Mutations;)V
    .locals 19
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "storePrefix"    # Ljava/lang/String;
    .param p3, "modelParam"    # Lcom/sleepycat/persist/model/EntityModel;
    .param p4, "mutationsParam"    # Lcom/sleepycat/persist/evolve/Mutations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    .line 318
    const/4 v12, 0x0

    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/sleepycat/persist/impl/PersistCatalog;->readData(Lcom/sleepycat/je/Transaction;)Lcom/sleepycat/persist/impl/PersistCatalog$Data;

    move-result-object v0

    iput-object v0, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->initData:Lcom/sleepycat/persist/impl/PersistCatalog$Data;

    .line 319
    iget-object v0, v0, Lcom/sleepycat/persist/impl/PersistCatalog$Data;->mutations:Lcom/sleepycat/persist/evolve/Mutations;

    iput-object v0, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->mutations:Lcom/sleepycat/persist/evolve/Mutations;

    .line 320
    if-nez v0, :cond_0

    .line 321
    new-instance v0, Lcom/sleepycat/persist/evolve/Mutations;

    invoke-direct {v0}, Lcom/sleepycat/persist/evolve/Mutations;-><init>()V

    iput-object v0, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->mutations:Lcom/sleepycat/persist/evolve/Mutations;

    .line 329
    :cond_0
    iget-object v0, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->initData:Lcom/sleepycat/persist/impl/PersistCatalog$Data;

    iget v0, v0, Lcom/sleepycat/persist/impl/PersistCatalog$Data;->version:I

    const/4 v1, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-ne v0, v1, :cond_1

    move v0, v14

    goto :goto_0

    :cond_1
    move v0, v13

    :goto_0
    move v15, v0

    .line 330
    .local v15, "betaVersion":Z
    nop

    .line 331
    .local v0, "needWrite":Z
    move v7, v15

    .line 337
    .local v7, "disallowClassChanges":Z
    const/4 v1, 0x0

    .line 338
    .local v1, "forceEvolution":Z
    if-eqz v11, :cond_2

    iget-object v2, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->mutations:Lcom/sleepycat/persist/evolve/Mutations;

    .line 339
    invoke-virtual {v2, v11}, Lcom/sleepycat/persist/evolve/Mutations;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 340
    iput-object v11, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->mutations:Lcom/sleepycat/persist/evolve/Mutations;

    .line 341
    const/4 v0, 0x1

    .line 342
    const/4 v1, 0x1

    move/from16 v16, v1

    goto :goto_1

    .line 345
    :cond_2
    move/from16 v16, v1

    .end local v1    # "forceEvolution":Z
    .local v16, "forceEvolution":Z
    :goto_1
    iget-object v1, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->env:Lcom/sleepycat/je/Environment;

    invoke-static {v1}, Lcom/sleepycat/compat/DbCompat;->getClassLoader(Lcom/sleepycat/je/Environment;)Ljava/lang/ClassLoader;

    move-result-object v1

    move-object v6, v1

    .line 348
    .local v6, "envClassLoader":Ljava/lang/ClassLoader;
    iget-object v1, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->initData:Lcom/sleepycat/persist/impl/PersistCatalog$Data;

    iget-object v1, v1, Lcom/sleepycat/persist/impl/PersistCatalog$Data;->formatList:Ljava/util/List;

    iput-object v1, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->formatList:Ljava/util/List;

    .line 349
    iget-object v1, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->formatList:Ljava/util/List;

    if-nez v1, :cond_3

    .line 350
    invoke-static {v6}, Lcom/sleepycat/persist/impl/SimpleCatalog;->getAllSimpleFormats(Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->formatList:Ljava/util/List;

    .line 356
    new-instance v1, Lcom/sleepycat/persist/impl/NonPersistentFormat;

    const-class v2, Ljava/lang/Object;

    invoke-direct {v1, v8, v2}, Lcom/sleepycat/persist/impl/NonPersistentFormat;-><init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;)V

    .line 357
    .local v1, "format":Lcom/sleepycat/persist/impl/Format;
    invoke-virtual {v1, v14}, Lcom/sleepycat/persist/impl/Format;->setId(I)V

    .line 358
    iget-object v2, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->formatList:Ljava/util/List;

    invoke-interface {v2, v14, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 359
    new-instance v2, Lcom/sleepycat/persist/impl/NonPersistentFormat;

    const-class v3, Ljava/lang/Number;

    invoke-direct {v2, v8, v3}, Lcom/sleepycat/persist/impl/NonPersistentFormat;-><init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;)V

    move-object v1, v2

    .line 360
    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Lcom/sleepycat/persist/impl/Format;->setId(I)V

    .line 361
    iget-object v3, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->formatList:Ljava/util/List;

    invoke-interface {v3, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 362
    nop

    .end local v1    # "format":Lcom/sleepycat/persist/impl/Format;
    goto :goto_2

    .line 364
    :cond_3
    iget-object v1, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->formatList:Ljava/util/List;

    invoke-static {v6, v1}, Lcom/sleepycat/persist/impl/SimpleCatalog;->addMissingSimpleFormats(Ljava/lang/ClassLoader;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 366
    const/4 v0, 0x1

    .line 368
    :cond_4
    iget-object v1, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->formatList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->nStoredFormats:I

    .line 372
    :goto_2
    iget-object v1, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->formatList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/persist/impl/Format;

    .line 373
    .local v2, "format":Lcom/sleepycat/persist/impl/Format;
    if-eqz v2, :cond_5

    .line 374
    invoke-virtual {v2, v8}, Lcom/sleepycat/persist/impl/Format;->initCatalog(Lcom/sleepycat/persist/impl/Catalog;)V

    .line 376
    .end local v2    # "format":Lcom/sleepycat/persist/impl/Format;
    :cond_5
    goto :goto_3

    .line 379
    :cond_6
    if-eqz v15, :cond_a

    .line 380
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 381
    .local v1, "formatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/Format;>;"
    iget-object v2, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->formatList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/persist/impl/Format;

    .line 382
    .local v3, "format":Lcom/sleepycat/persist/impl/Format;
    if-eqz v3, :cond_7

    .line 383
    invoke-virtual {v3}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .end local v3    # "format":Lcom/sleepycat/persist/impl/Format;
    :cond_7
    goto :goto_4

    .line 386
    :cond_8
    iget-object v2, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->formatList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/persist/impl/Format;

    .line 387
    .restart local v3    # "format":Lcom/sleepycat/persist/impl/Format;
    if-eqz v3, :cond_9

    .line 388
    invoke-virtual {v3, v1}, Lcom/sleepycat/persist/impl/Format;->migrateFromBeta(Ljava/util/Map;)V

    .line 390
    .end local v3    # "format":Lcom/sleepycat/persist/impl/Format;
    :cond_9
    goto :goto_5

    .line 397
    .end local v1    # "formatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/Format;>;"
    :cond_a
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->formatList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->formatMap:Ljava/util/Map;

    .line 398
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->formatList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->latestFormatMap:Ljava/util/Map;

    .line 399
    iget-boolean v1, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->rawAccess:Z

    if-eqz v1, :cond_11

    .line 400
    iget-object v1, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->formatList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/persist/impl/Format;

    .line 401
    .restart local v2    # "format":Lcom/sleepycat/persist/impl/Format;
    if-eqz v2, :cond_c

    .line 402
    invoke-virtual {v2}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 403
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/sleepycat/persist/impl/Format;->isCurrentVersion()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 404
    iget-object v4, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->formatMap:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    :cond_b
    invoke-virtual {v2}, Lcom/sleepycat/persist/impl/Format;->getLatestVersion()Lcom/sleepycat/persist/impl/Format;

    move-result-object v4

    if-ne v2, v4, :cond_c

    .line 407
    iget-object v4, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->latestFormatMap:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    .end local v2    # "format":Lcom/sleepycat/persist/impl/Format;
    .end local v3    # "name":Ljava/lang/String;
    :cond_c
    goto :goto_6

    .line 411
    :cond_d
    if-eqz v10, :cond_e

    .line 412
    iput-object v10, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->model:Lcom/sleepycat/persist/model/EntityModel;

    .line 413
    move-object v1, v10

    check-cast v1, Lcom/sleepycat/persist/impl/StoredModel;

    iput-object v1, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->storedModel:Lcom/sleepycat/persist/impl/StoredModel;

    goto :goto_7

    .line 415
    :cond_e
    new-instance v1, Lcom/sleepycat/persist/impl/StoredModel;

    invoke-direct {v1, v8}, Lcom/sleepycat/persist/impl/StoredModel;-><init>(Lcom/sleepycat/persist/impl/PersistCatalog;)V

    iput-object v1, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->storedModel:Lcom/sleepycat/persist/impl/StoredModel;

    .line 416
    iput-object v1, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->model:Lcom/sleepycat/persist/model/EntityModel;

    .line 418
    :goto_7
    iget-object v1, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->model:Lcom/sleepycat/persist/model/EntityModel;

    invoke-static {v1, v6}, Lcom/sleepycat/persist/model/ModelInternal;->setClassLoader(Lcom/sleepycat/persist/model/EntityModel;Ljava/lang/ClassLoader;)V

    .line 419
    iget-object v1, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->formatList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/persist/impl/Format;

    .line 420
    .restart local v2    # "format":Lcom/sleepycat/persist/impl/Format;
    if-eqz v2, :cond_f

    .line 421
    iget-object v3, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->model:Lcom/sleepycat/persist/model/EntityModel;

    invoke-virtual {v2, v8, v3}, Lcom/sleepycat/persist/impl/Format;->initializeIfNeeded(Lcom/sleepycat/persist/impl/Catalog;Lcom/sleepycat/persist/model/EntityModel;)V

    .line 423
    .end local v2    # "format":Lcom/sleepycat/persist/impl/Format;
    :cond_f
    goto :goto_8

    .line 424
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/persist/impl/PersistCatalog;->initModelAndMutations()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    iput-object v12, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->proxyClassMap:Ljava/util/Map;

    .line 589
    iput-object v12, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->initData:Lcom/sleepycat/persist/impl/PersistCatalog$Data;

    .line 590
    iput-object v12, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->initEvolver:Lcom/sleepycat/persist/impl/Evolver;

    .line 425
    return-void

    .line 432
    :cond_11
    if-eqz v10, :cond_12

    .line 433
    :try_start_1
    iput-object v10, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->model:Lcom/sleepycat/persist/model/EntityModel;

    goto :goto_9

    .line 435
    :cond_12
    new-instance v1, Lcom/sleepycat/persist/model/AnnotationModel;

    invoke-direct {v1}, Lcom/sleepycat/persist/model/AnnotationModel;-><init>()V

    iput-object v1, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->model:Lcom/sleepycat/persist/model/EntityModel;

    .line 437
    :goto_9
    iget-object v1, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->model:Lcom/sleepycat/persist/model/EntityModel;

    invoke-static {v1, v6}, Lcom/sleepycat/persist/model/ModelInternal;->setClassLoader(Lcom/sleepycat/persist/model/EntityModel;Ljava/lang/ClassLoader;)V

    .line 438
    iput-object v12, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->storedModel:Lcom/sleepycat/persist/impl/StoredModel;

    .line 444
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    const/16 v2, 0x1e

    if-gt v1, v2, :cond_14

    .line 445
    iget-object v2, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->formatList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/persist/impl/Format;

    .line 446
    .local v2, "simpleFormat":Lcom/sleepycat/persist/impl/Format;
    if-eqz v2, :cond_13

    .line 447
    iget-object v3, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->formatMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    .end local v2    # "simpleFormat":Lcom/sleepycat/persist/impl/Format;
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 455
    .end local v1    # "i":I
    :cond_14
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->model:Lcom/sleepycat/persist/model/EntityModel;

    .line 456
    invoke-virtual {v2}, Lcom/sleepycat/persist/model/EntityModel;->getKnownClasses()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v5, v1

    .line 458
    .local v5, "knownClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->model:Lcom/sleepycat/persist/model/EntityModel;

    invoke-virtual {v1}, Lcom/sleepycat/persist/model/EntityModel;->getKnownSpecialClasses()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 459
    invoke-direct {v8, v5}, Lcom/sleepycat/persist/impl/PersistCatalog;->addPredefinedProxies(Ljava/util/List;)V

    .line 467
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->proxyClassMap:Ljava/util/Map;

    .line 468
    iget-object v1, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->formatList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/persist/impl/Format;

    .line 469
    .local v2, "oldFormat":Lcom/sleepycat/persist/impl/Format;
    if-eqz v2, :cond_17

    invoke-static {v2}, Lcom/sleepycat/persist/impl/Format;->isPredefined(Lcom/sleepycat/persist/impl/Format;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 470
    goto :goto_b

    .line 472
    :cond_15
    invoke-virtual {v2}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 473
    .local v3, "oldName":Ljava/lang/String;
    iget-object v4, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->mutations:Lcom/sleepycat/persist/evolve/Mutations;

    .line 474
    invoke-virtual {v2}, Lcom/sleepycat/persist/impl/Format;->getVersion()I

    move-result v14

    invoke-virtual {v4, v3, v14, v12}, Lcom/sleepycat/persist/evolve/Mutations;->getRenamer(Ljava/lang/String;ILjava/lang/String;)Lcom/sleepycat/persist/evolve/Renamer;

    move-result-object v4

    .line 475
    .local v4, "renamer":Lcom/sleepycat/persist/evolve/Renamer;
    if-eqz v4, :cond_16

    .line 476
    invoke-virtual {v4}, Lcom/sleepycat/persist/evolve/Renamer;->getNewName()Ljava/lang/String;

    move-result-object v14

    goto :goto_c

    :cond_16
    move-object v14, v3

    .line 477
    .local v14, "newName":Ljava/lang/String;
    :goto_c
    invoke-direct {v8, v14, v13}, Lcom/sleepycat/persist/impl/PersistCatalog;->addProxiedClass(Ljava/lang/String;Z)V

    .line 478
    .end local v2    # "oldFormat":Lcom/sleepycat/persist/impl/Format;
    .end local v3    # "oldName":Ljava/lang/String;
    .end local v4    # "renamer":Lcom/sleepycat/persist/evolve/Renamer;
    .end local v14    # "newName":Ljava/lang/String;
    const/4 v14, 0x1

    goto :goto_b

    .line 469
    .restart local v2    # "oldFormat":Lcom/sleepycat/persist/impl/Format;
    :cond_17
    const/4 v14, 0x1

    goto :goto_b

    .line 479
    .end local v2    # "oldFormat":Lcom/sleepycat/persist/impl/Format;
    :cond_18
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 480
    .local v2, "className":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-direct {v8, v2, v3}, Lcom/sleepycat/persist/impl/PersistCatalog;->addProxiedClass(Ljava/lang/String;Z)V

    .line 481
    .end local v2    # "className":Ljava/lang/String;
    goto :goto_d

    .line 492
    :cond_19
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v14, v1

    .line 493
    .local v14, "newFormats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/Format;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 494
    .restart local v2    # "className":Ljava/lang/String;
    invoke-virtual {v8, v2, v14}, Lcom/sleepycat/persist/impl/PersistCatalog;->createFormat(Ljava/lang/String;Ljava/util/Map;)Lcom/sleepycat/persist/impl/Format;

    .line 495
    nop

    .end local v2    # "className":Ljava/lang/String;
    goto :goto_e

    .line 502
    :cond_1a
    new-instance v4, Lcom/sleepycat/persist/impl/Evolver;

    iget-object v3, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->mutations:Lcom/sleepycat/persist/evolve/Mutations;

    move-object v1, v4

    move-object/from16 v2, p0

    move-object/from16 v17, v3

    move-object/from16 v3, p2

    move-object v13, v4

    move-object/from16 v4, v17

    move-object/from16 v17, v5

    .end local v5    # "knownClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v17, "knownClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v5, v14

    move-object/from16 v18, v6

    .end local v6    # "envClassLoader":Ljava/lang/ClassLoader;
    .local v18, "envClassLoader":Ljava/lang/ClassLoader;
    move/from16 v6, v16

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/persist/impl/Evolver;-><init>(Lcom/sleepycat/persist/impl/PersistCatalog;Ljava/lang/String;Lcom/sleepycat/persist/evolve/Mutations;Ljava/util/Map;ZZ)V

    iput-object v13, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->initEvolver:Lcom/sleepycat/persist/impl/Evolver;

    .line 505
    iget-object v1, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->formatList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/persist/impl/Format;

    .line 506
    .local v2, "oldFormat":Lcom/sleepycat/persist/impl/Format;
    if-eqz v2, :cond_1b

    invoke-static {v2}, Lcom/sleepycat/persist/impl/Format;->isPredefined(Lcom/sleepycat/persist/impl/Format;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 507
    goto :goto_f

    .line 509
    :cond_1c
    invoke-virtual {v2}, Lcom/sleepycat/persist/impl/Format;->isEntity()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 510
    iget-object v3, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->initEvolver:Lcom/sleepycat/persist/impl/Evolver;

    invoke-virtual {v3, v2}, Lcom/sleepycat/persist/impl/Evolver;->evolveFormat(Lcom/sleepycat/persist/impl/Format;)Z

    goto :goto_10

    .line 512
    :cond_1d
    iget-object v3, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->initEvolver:Lcom/sleepycat/persist/impl/Evolver;

    invoke-virtual {v3, v2}, Lcom/sleepycat/persist/impl/Evolver;->addNonEntityFormat(Lcom/sleepycat/persist/impl/Format;)V

    .line 514
    .end local v2    # "oldFormat":Lcom/sleepycat/persist/impl/Format;
    :goto_10
    goto :goto_f

    .line 515
    :cond_1e
    iget-object v1, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->initEvolver:Lcom/sleepycat/persist/impl/Evolver;

    invoke-virtual {v1}, Lcom/sleepycat/persist/impl/Evolver;->finishEvolution()V

    .line 516
    iget-object v1, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->initEvolver:Lcom/sleepycat/persist/impl/Evolver;

    invoke-virtual {v1}, Lcom/sleepycat/persist/impl/Evolver;->getErrors()Ljava/lang/String;

    move-result-object v1

    .line 517
    .local v1, "errors":Ljava/lang/String;
    if-nez v1, :cond_27

    .line 525
    invoke-interface {v14}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/persist/impl/Format;

    .line 526
    .local v3, "newFormat":Lcom/sleepycat/persist/impl/Format;
    invoke-direct {v8, v3}, Lcom/sleepycat/persist/impl/PersistCatalog;->addFormat(Lcom/sleepycat/persist/impl/Format;)V

    .line 527
    .end local v3    # "newFormat":Lcom/sleepycat/persist/impl/Format;
    goto :goto_11

    .line 530
    :cond_1f
    iget-object v2, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->formatList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/persist/impl/Format;

    .line 531
    .local v3, "format":Lcom/sleepycat/persist/impl/Format;
    if-eqz v3, :cond_20

    .line 532
    iget-object v4, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->model:Lcom/sleepycat/persist/model/EntityModel;

    invoke-virtual {v3, v8, v4}, Lcom/sleepycat/persist/impl/Format;->initializeIfNeeded(Lcom/sleepycat/persist/impl/Catalog;Lcom/sleepycat/persist/model/EntityModel;)V

    .line 533
    invoke-virtual {v3}, Lcom/sleepycat/persist/impl/Format;->getLatestVersion()Lcom/sleepycat/persist/impl/Format;

    move-result-object v4

    if-ne v3, v4, :cond_20

    .line 534
    iget-object v4, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->latestFormatMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    .end local v3    # "format":Lcom/sleepycat/persist/impl/Format;
    :cond_20
    goto :goto_12

    .line 539
    :cond_21
    nop

    .line 540
    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v2

    if-gtz v2, :cond_23

    iget-object v2, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->initEvolver:Lcom/sleepycat/persist/impl/Evolver;

    .line 541
    invoke-virtual {v2}, Lcom/sleepycat/persist/impl/Evolver;->areFormatsChanged()Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_13

    :cond_22
    const/4 v13, 0x0

    goto :goto_14

    :cond_23
    :goto_13
    const/4 v13, 0x1

    :goto_14
    move v2, v13

    .line 542
    .local v2, "formatsChanged":Z
    or-int v3, v0, v2

    .line 545
    .end local v0    # "needWrite":Z
    .local v3, "needWrite":Z
    sget-boolean v0, Lcom/sleepycat/persist/impl/PersistCatalog;->expectNoClassChanges:Z

    if-eqz v0, :cond_25

    if-nez v2, :cond_24

    goto :goto_15

    .line 546
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected changes  newFormats.size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 548
    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " areFormatsChanged="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->initEvolver:Lcom/sleepycat/persist/impl/Evolver;

    .line 549
    invoke-virtual {v5}, Lcom/sleepycat/persist/impl/Evolver;->areFormatsChanged()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p2    # "storePrefix":Ljava/lang/String;
    .end local p3    # "modelParam":Lcom/sleepycat/persist/model/EntityModel;
    .end local p4    # "mutationsParam":Lcom/sleepycat/persist/evolve/Mutations;
    throw v0

    .line 552
    .restart local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local p2    # "storePrefix":Ljava/lang/String;
    .restart local p3    # "modelParam":Lcom/sleepycat/persist/model/EntityModel;
    .restart local p4    # "mutationsParam":Lcom/sleepycat/persist/evolve/Mutations;
    :cond_25
    :goto_15
    iget-object v0, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->db:Lcom/sleepycat/je/Database;

    invoke-virtual {v0}, Lcom/sleepycat/je/Database;->getConfig()Lcom/sleepycat/je/DatabaseConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseConfig;->getReadOnly()Z

    move-result v0

    iput-boolean v0, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->readOnly:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 555
    if-eqz v3, :cond_26

    if-nez v0, :cond_26

    .line 565
    :try_start_2
    iget-object v0, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->initEvolver:Lcom/sleepycat/persist/impl/Evolver;

    iget-object v4, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->store:Lcom/sleepycat/persist/impl/Store;

    invoke-virtual {v0, v4, v9}, Lcom/sleepycat/persist/impl/Evolver;->renameAndRemoveDatabases(Lcom/sleepycat/persist/impl/Store;Lcom/sleepycat/je/Transaction;)V

    .line 572
    iget-object v0, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->initData:Lcom/sleepycat/persist/impl/PersistCatalog$Data;

    iget-object v4, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->formatList:Ljava/util/List;

    iput-object v4, v0, Lcom/sleepycat/persist/impl/PersistCatalog$Data;->formatList:Ljava/util/List;

    .line 573
    iget-object v0, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->initData:Lcom/sleepycat/persist/impl/PersistCatalog$Data;

    iget-object v4, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->mutations:Lcom/sleepycat/persist/evolve/Mutations;

    iput-object v4, v0, Lcom/sleepycat/persist/impl/PersistCatalog$Data;->mutations:Lcom/sleepycat/persist/evolve/Mutations;

    .line 574
    iget-object v0, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->initData:Lcom/sleepycat/persist/impl/PersistCatalog$Data;

    invoke-direct {v8, v9, v0}, Lcom/sleepycat/persist/impl/PersistCatalog;->writeData(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/persist/impl/PersistCatalog$Data;)V
    :try_end_2
    .catch Lcom/sleepycat/je/rep/ReplicaWriteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 578
    goto :goto_16

    .line 576
    :catch_0
    move-exception v0

    .line 577
    .local v0, "e":Lcom/sleepycat/je/rep/ReplicaWriteException;
    const/4 v4, 0x1

    :try_start_3
    iput-boolean v4, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->readOnly:Z

    .line 581
    .end local v0    # "e":Lcom/sleepycat/je/rep/ReplicaWriteException;
    :cond_26
    :goto_16
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/persist/impl/PersistCatalog;->initModelAndMutations()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 588
    .end local v1    # "errors":Ljava/lang/String;
    .end local v2    # "formatsChanged":Z
    .end local v3    # "needWrite":Z
    .end local v7    # "disallowClassChanges":Z
    .end local v14    # "newFormats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/Format;>;"
    .end local v15    # "betaVersion":Z
    .end local v16    # "forceEvolution":Z
    .end local v17    # "knownClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "envClassLoader":Ljava/lang/ClassLoader;
    iput-object v12, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->proxyClassMap:Ljava/util/Map;

    .line 589
    iput-object v12, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->initData:Lcom/sleepycat/persist/impl/PersistCatalog$Data;

    .line 590
    iput-object v12, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->initEvolver:Lcom/sleepycat/persist/impl/Evolver;

    .line 591
    nop

    .line 592
    return-void

    .line 518
    .local v0, "needWrite":Z
    .restart local v1    # "errors":Ljava/lang/String;
    .restart local v7    # "disallowClassChanges":Z
    .restart local v14    # "newFormats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/Format;>;"
    .restart local v15    # "betaVersion":Z
    .restart local v16    # "forceEvolution":Z
    .restart local v17    # "knownClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "envClassLoader":Ljava/lang/ClassLoader;
    :cond_27
    :try_start_4
    new-instance v2, Lcom/sleepycat/persist/evolve/IncompatibleClassException;

    invoke-direct {v2, v1}, Lcom/sleepycat/persist/evolve/IncompatibleClassException;-><init>(Ljava/lang/String;)V

    .end local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .end local p2    # "storePrefix":Ljava/lang/String;
    .end local p3    # "modelParam":Lcom/sleepycat/persist/model/EntityModel;
    .end local p4    # "mutationsParam":Lcom/sleepycat/persist/evolve/Mutations;
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 588
    .end local v0    # "needWrite":Z
    .end local v1    # "errors":Ljava/lang/String;
    .end local v7    # "disallowClassChanges":Z
    .end local v14    # "newFormats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/Format;>;"
    .end local v15    # "betaVersion":Z
    .end local v16    # "forceEvolution":Z
    .end local v17    # "knownClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "envClassLoader":Ljava/lang/ClassLoader;
    .restart local p1    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local p2    # "storePrefix":Ljava/lang/String;
    .restart local p3    # "modelParam":Lcom/sleepycat/persist/model/EntityModel;
    .restart local p4    # "mutationsParam":Lcom/sleepycat/persist/evolve/Mutations;
    :catchall_0
    move-exception v0

    iput-object v12, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->proxyClassMap:Ljava/util/Map;

    .line 589
    iput-object v12, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->initData:Lcom/sleepycat/persist/impl/PersistCatalog$Data;

    .line 590
    iput-object v12, v8, Lcom/sleepycat/persist/impl/PersistCatalog;->initEvolver:Lcom/sleepycat/persist/impl/Evolver;

    throw v0
.end method

.method private initAndRetry(Ljava/lang/String;Lcom/sleepycat/persist/model/EntityModel;Lcom/sleepycat/persist/evolve/Mutations;)V
    .locals 5
    .param p1, "storePrefix"    # Ljava/lang/String;
    .param p2, "modelParam"    # Lcom/sleepycat/persist/model/EntityModel;
    .param p3, "mutationsParam"    # Lcom/sleepycat/persist/evolve/Mutations;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, "i":I
    :goto_0
    const/4 v1, 0x0

    .line 268
    .local v1, "txn":Lcom/sleepycat/je/Transaction;
    iget-boolean v2, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->transactional:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->env:Lcom/sleepycat/je/Environment;

    invoke-static {v2}, Lcom/sleepycat/compat/DbCompat;->getThreadTransaction(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/Transaction;

    move-result-object v2

    if-nez v2, :cond_0

    .line 269
    iget-object v2, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->env:Lcom/sleepycat/je/Environment;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->store:Lcom/sleepycat/persist/impl/Store;

    .line 270
    invoke-virtual {v4}, Lcom/sleepycat/persist/impl/Store;->getAutoCommitTxnConfig()Lcom/sleepycat/je/TransactionConfig;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sleepycat/je/Environment;->beginTransaction(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/Transaction;

    move-result-object v1

    .line 272
    :cond_0
    const/4 v2, 0x0

    .line 274
    .local v2, "success":Z
    :try_start_0
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/sleepycat/persist/impl/PersistCatalog;->init(Lcom/sleepycat/je/Transaction;Ljava/lang/String;Lcom/sleepycat/persist/model/EntityModel;Lcom/sleepycat/persist/evolve/Mutations;)V
    :try_end_0
    .catch Lcom/sleepycat/je/LockConflictException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    const/4 v2, 0x1

    .line 300
    if-eqz v1, :cond_2

    .line 301
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/PersistCatalog;->isReadOnly()Z

    move-result v3

    if-nez v3, :cond_1

    .line 302
    invoke-virtual {v1}, Lcom/sleepycat/je/Transaction;->commit()V

    goto :goto_1

    .line 304
    :cond_1
    invoke-virtual {v1}, Lcom/sleepycat/je/Transaction;->abort()V

    .line 276
    :cond_2
    :goto_1
    return-void

    .line 300
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 277
    :catch_0
    move-exception v3

    .line 288
    .local v3, "e":Lcom/sleepycat/je/LockConflictException;
    const/16 v4, 0xa

    if-ge v0, v4, :cond_5

    .line 300
    if-eqz v1, :cond_4

    .line 301
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/PersistCatalog;->isReadOnly()Z

    move-result v4

    if-nez v4, :cond_3

    .line 302
    invoke-virtual {v1}, Lcom/sleepycat/je/Transaction;->commit()V

    goto :goto_2

    .line 304
    :cond_3
    invoke-virtual {v1}, Lcom/sleepycat/je/Transaction;->abort()V

    .line 266
    .end local v1    # "txn":Lcom/sleepycat/je/Transaction;
    .end local v2    # "success":Z
    .end local v3    # "e":Lcom/sleepycat/je/LockConflictException;
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    .restart local v1    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local v2    # "success":Z
    .restart local v3    # "e":Lcom/sleepycat/je/LockConflictException;
    :cond_5
    nop

    .end local v0    # "i":I
    .end local v1    # "txn":Lcom/sleepycat/je/Transaction;
    .end local v2    # "success":Z
    .end local p1    # "storePrefix":Ljava/lang/String;
    .end local p2    # "modelParam":Lcom/sleepycat/persist/model/EntityModel;
    .end local p3    # "mutationsParam":Lcom/sleepycat/persist/evolve/Mutations;
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    .end local v3    # "e":Lcom/sleepycat/je/LockConflictException;
    .restart local v0    # "i":I
    .restart local v1    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local v2    # "success":Z
    .restart local p1    # "storePrefix":Ljava/lang/String;
    .restart local p2    # "modelParam":Lcom/sleepycat/persist/model/EntityModel;
    .restart local p3    # "mutationsParam":Lcom/sleepycat/persist/evolve/Mutations;
    :goto_3
    if-eqz v1, :cond_7

    .line 301
    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/PersistCatalog;->isReadOnly()Z

    move-result v4

    if-nez v4, :cond_6

    .line 302
    invoke-virtual {v1}, Lcom/sleepycat/je/Transaction;->commit()V

    goto :goto_4

    .line 304
    :cond_6
    invoke-virtual {v1}, Lcom/sleepycat/je/Transaction;->abort()V

    :cond_7
    :goto_4
    throw v3
.end method

.method private initModelAndMutations()V
    .locals 4

    .line 602
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->model:Lcom/sleepycat/persist/model/EntityModel;

    invoke-static {v0, p0}, Lcom/sleepycat/persist/model/ModelInternal;->setCatalog(Lcom/sleepycat/persist/model/EntityModel;Lcom/sleepycat/persist/impl/PersistCatalog;)V

    .line 603
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->mutations:Lcom/sleepycat/persist/evolve/Mutations;

    invoke-virtual {v0}, Lcom/sleepycat/persist/evolve/Mutations;->getConverters()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/persist/evolve/Converter;

    .line 604
    .local v1, "converter":Lcom/sleepycat/persist/evolve/Converter;
    invoke-virtual {v1}, Lcom/sleepycat/persist/evolve/Converter;->getConversion()Lcom/sleepycat/persist/evolve/Conversion;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->model:Lcom/sleepycat/persist/model/EntityModel;

    invoke-interface {v2, v3}, Lcom/sleepycat/persist/evolve/Conversion;->initialize(Lcom/sleepycat/persist/model/EntityModel;)V

    .line 605
    .end local v1    # "converter":Lcom/sleepycat/persist/evolve/Converter;
    goto :goto_0

    .line 606
    :cond_0
    return-void
.end method

.method private readData(Lcom/sleepycat/je/Transaction;)Lcom/sleepycat/persist/impl/PersistCatalog$Data;
    .locals 8
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1241
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    sget-object v1, Lcom/sleepycat/persist/impl/PersistCatalog;->DATA_KEY:[B

    invoke-direct {v0, v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V

    .line 1242
    .local v0, "key":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v1, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 1243
    .local v1, "data":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v2, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->db:Lcom/sleepycat/je/Database;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v0, v1, v3}, Lcom/sleepycat/je/Database;->get(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v2

    .line 1244
    .local v2, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v4, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v2, v4, :cond_3

    .line 1245
    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 1246
    invoke-virtual {v1}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v5

    invoke-virtual {v1}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v6

    invoke-virtual {v1}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 1248
    .local v4, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1249
    .local v5, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    .line 1250
    .local v6, "object":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->available()I

    move-result v7

    if-nez v7, :cond_2

    .line 1251
    instance-of v7, v6, Lcom/sleepycat/persist/impl/PersistCatalog$Data;

    if-eqz v7, :cond_0

    .line 1252
    move-object v3, v6

    check-cast v3, Lcom/sleepycat/persist/impl/PersistCatalog$Data;

    .local v3, "oldData":Lcom/sleepycat/persist/impl/PersistCatalog$Data;
    goto :goto_0

    .line 1254
    .end local v3    # "oldData":Lcom/sleepycat/persist/impl/PersistCatalog$Data;
    :cond_0
    instance-of v7, v6, Ljava/util/List;

    if-eqz v7, :cond_1

    .line 1258
    new-instance v7, Lcom/sleepycat/persist/impl/PersistCatalog$Data;

    invoke-direct {v7, v3}, Lcom/sleepycat/persist/impl/PersistCatalog$Data;-><init>(Lcom/sleepycat/persist/impl/PersistCatalog$1;)V

    move-object v3, v7

    .line 1259
    .restart local v3    # "oldData":Lcom/sleepycat/persist/impl/PersistCatalog$Data;
    move-object v7, v6

    check-cast v7, Ljava/util/List;

    iput-object v7, v3, Lcom/sleepycat/persist/impl/PersistCatalog$Data;->formatList:Ljava/util/List;

    .line 1260
    const/4 v7, -0x1

    iput v7, v3, Lcom/sleepycat/persist/impl/PersistCatalog$Data;->version:I

    .line 1262
    :goto_0
    return-object v3

    .line 1255
    .end local v3    # "oldData":Lcom/sleepycat/persist/impl/PersistCatalog$Data;
    :cond_1
    nop

    .line 1256
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local v2    # "status":Lcom/sleepycat/je/OperationStatus;
    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .end local p1    # "txn":Lcom/sleepycat/je/Transaction;
    throw v3

    .line 1250
    .restart local v0    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v1    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v2    # "status":Lcom/sleepycat/je/OperationStatus;
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local p1    # "txn":Lcom/sleepycat/je/Transaction;
    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local v2    # "status":Lcom/sleepycat/je/OperationStatus;
    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .end local p1    # "txn":Lcom/sleepycat/je/Transaction;
    throw v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1265
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .end local v6    # "object":Ljava/lang/Object;
    .restart local v0    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v1    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v2    # "status":Lcom/sleepycat/je/OperationStatus;
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local p1    # "txn":Lcom/sleepycat/je/Transaction;
    :catch_0
    move-exception v3

    .line 1266
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v3}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 1263
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 1264
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {v3}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 1269
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    :cond_3
    new-instance v4, Lcom/sleepycat/persist/impl/PersistCatalog$Data;

    invoke-direct {v4, v3}, Lcom/sleepycat/persist/impl/PersistCatalog$Data;-><init>(Lcom/sleepycat/persist/impl/PersistCatalog$1;)V

    move-object v3, v4

    .line 1270
    .local v3, "oldData":Lcom/sleepycat/persist/impl/PersistCatalog$Data;
    const/4 v4, 0x1

    iput v4, v3, Lcom/sleepycat/persist/impl/PersistCatalog$Data;->version:I

    .line 1272
    return-object v3
.end method

.method private writeData(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/persist/impl/PersistCatalog$Data;)V
    .locals 5
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p2, "newData"    # Lcom/sleepycat/persist/impl/PersistCatalog$Data;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1350
    iget v0, p2, Lcom/sleepycat/persist/impl/PersistCatalog$Data;->version:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1351
    .local v0, "wasBetaVersion":Z
    :goto_0
    iput v1, p2, Lcom/sleepycat/persist/impl/PersistCatalog$Data;->version:I

    .line 1353
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1355
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1356
    .local v2, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1359
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    nop

    .line 1360
    new-instance v2, Lcom/sleepycat/je/DatabaseEntry;

    sget-object v3, Lcom/sleepycat/persist/impl/PersistCatalog;->DATA_KEY:[B

    invoke-direct {v2, v3}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V

    .line 1361
    .local v2, "key":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v3, Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V

    .line 1362
    .local v3, "data":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v4, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->db:Lcom/sleepycat/je/Database;

    invoke-virtual {v4, p1, v2, v3}, Lcom/sleepycat/je/Database;->put(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;

    .line 1368
    if-eqz v0, :cond_1

    .line 1369
    sget-object v4, Lcom/sleepycat/persist/impl/PersistCatalog;->BETA_MUTATIONS_KEY:[B

    invoke-virtual {v2, v4}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V

    .line 1370
    iget-object v4, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->db:Lcom/sleepycat/je/Database;

    invoke-virtual {v4, p1, v2}, Lcom/sleepycat/je/Database;->delete(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;

    .line 1373
    :cond_1
    iget-object v4, p2, Lcom/sleepycat/persist/impl/PersistCatalog$Data;->formatList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->nStoredFormats:I

    .line 1374
    return-void

    .line 1357
    .end local v2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v3    # "data":Lcom/sleepycat/je/DatabaseEntry;
    :catch_0
    move-exception v2

    .line 1358
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v2}, Lcom/sleepycat/compat/DbCompat;->unexpectedException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method private writeDataCheckStale(Lcom/sleepycat/persist/impl/PersistCatalog$Data;)V
    .locals 6
    .param p1, "newData"    # Lcom/sleepycat/persist/impl/PersistCatalog$Data;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 1295
    const/4 v0, 0x0

    .line 1296
    .local v0, "i":I
    :goto_0
    const/4 v1, 0x0

    .line 1297
    .local v1, "txn":Lcom/sleepycat/je/Transaction;
    iget-boolean v2, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->transactional:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->env:Lcom/sleepycat/je/Environment;

    invoke-static {v2}, Lcom/sleepycat/compat/DbCompat;->getThreadTransaction(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/Transaction;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1298
    iget-object v2, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->env:Lcom/sleepycat/je/Environment;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->store:Lcom/sleepycat/persist/impl/Store;

    .line 1299
    invoke-virtual {v4}, Lcom/sleepycat/persist/impl/Store;->getAutoCommitTxnConfig()Lcom/sleepycat/je/TransactionConfig;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sleepycat/je/Environment;->beginTransaction(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/Transaction;

    move-result-object v1

    .line 1301
    :cond_0
    const/4 v2, 0x0

    .line 1303
    .local v2, "success":Z
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/sleepycat/persist/impl/PersistCatalog;->isMetadataStale(Lcom/sleepycat/je/Transaction;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1306
    invoke-direct {p0, v1, p1}, Lcom/sleepycat/persist/impl/PersistCatalog;->writeData(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/persist/impl/PersistCatalog$Data;)V
    :try_end_0
    .catch Lcom/sleepycat/je/LockConflictException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1307
    const/4 v2, 0x1

    .line 1332
    if-eqz v1, :cond_2

    .line 1333
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/PersistCatalog;->isReadOnly()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1334
    invoke-virtual {v1}, Lcom/sleepycat/je/Transaction;->commit()V

    goto :goto_1

    .line 1336
    :cond_1
    invoke-virtual {v1}, Lcom/sleepycat/je/Transaction;->abort()V

    .line 1308
    :cond_2
    :goto_1
    return-void

    .line 1304
    :cond_3
    :try_start_1
    new-instance v3, Lcom/sleepycat/persist/impl/RefreshException;

    iget-object v4, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->store:Lcom/sleepycat/persist/impl/Store;

    const/4 v5, -0x1

    invoke-direct {v3, v4, p0, v5}, Lcom/sleepycat/persist/impl/RefreshException;-><init>(Lcom/sleepycat/persist/impl/Store;Lcom/sleepycat/persist/impl/PersistCatalog;I)V

    .end local v0    # "i":I
    .end local v1    # "txn":Lcom/sleepycat/je/Transaction;
    .end local v2    # "success":Z
    .end local p1    # "newData":Lcom/sleepycat/persist/impl/PersistCatalog$Data;
    throw v3
    :try_end_1
    .catch Lcom/sleepycat/je/LockConflictException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1332
    .restart local v0    # "i":I
    .restart local v1    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local v2    # "success":Z
    .restart local p1    # "newData":Lcom/sleepycat/persist/impl/PersistCatalog$Data;
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 1309
    :catch_0
    move-exception v3

    .line 1320
    .local v3, "e":Lcom/sleepycat/je/LockConflictException;
    const/16 v4, 0xa

    if-ge v0, v4, :cond_6

    .line 1332
    if-eqz v1, :cond_5

    .line 1333
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/PersistCatalog;->isReadOnly()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1334
    invoke-virtual {v1}, Lcom/sleepycat/je/Transaction;->commit()V

    goto :goto_2

    .line 1336
    :cond_4
    invoke-virtual {v1}, Lcom/sleepycat/je/Transaction;->abort()V

    .line 1295
    .end local v1    # "txn":Lcom/sleepycat/je/Transaction;
    .end local v2    # "success":Z
    .end local v3    # "e":Lcom/sleepycat/je/LockConflictException;
    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1321
    .restart local v1    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local v2    # "success":Z
    .restart local v3    # "e":Lcom/sleepycat/je/LockConflictException;
    :cond_6
    nop

    .end local v0    # "i":I
    .end local v1    # "txn":Lcom/sleepycat/je/Transaction;
    .end local v2    # "success":Z
    .end local p1    # "newData":Lcom/sleepycat/persist/impl/PersistCatalog$Data;
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1332
    .end local v3    # "e":Lcom/sleepycat/je/LockConflictException;
    .restart local v0    # "i":I
    .restart local v1    # "txn":Lcom/sleepycat/je/Transaction;
    .restart local v2    # "success":Z
    .restart local p1    # "newData":Lcom/sleepycat/persist/impl/PersistCatalog$Data;
    :goto_3
    if-eqz v1, :cond_8

    .line 1333
    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/PersistCatalog;->isReadOnly()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1334
    invoke-virtual {v1}, Lcom/sleepycat/je/Transaction;->commit()V

    goto :goto_4

    .line 1336
    :cond_7
    invoke-virtual {v1}, Lcom/sleepycat/je/Transaction;->abort()V

    :cond_8
    :goto_4
    throw v3
.end method


# virtual methods
.method checkWriteInReplicaUpgradeMode()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 1116
    iget v0, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->nStoredFormats:I

    iget-object v1, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->formatList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1119
    return-void

    .line 1117
    :cond_0
    new-instance v0, Lcom/sleepycat/persist/impl/RefreshException;

    iget-object v1, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->store:Lcom/sleepycat/persist/impl/Store;

    const/4 v2, -0x1

    invoke-direct {v0, v1, p0, v2}, Lcom/sleepycat/persist/impl/RefreshException;-><init>(Lcom/sleepycat/persist/impl/Store;Lcom/sleepycat/persist/impl/PersistCatalog;I)V

    throw v0
.end method

.method public close()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 718
    iget v0, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->openCount:I

    if-eqz v0, :cond_1

    .line 721
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->openCount:I

    .line 722
    if-nez v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->db:Lcom/sleepycat/je/Database;

    invoke-virtual {v0}, Lcom/sleepycat/je/Database;->close()V

    .line 724
    return v1

    .line 726
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 719
    :cond_1
    const-string v0, "Catalog is not open"

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public convertRawObject(Lcom/sleepycat/persist/raw/RawObject;Ljava/util/IdentityHashMap;)Ljava/lang/Object;
    .locals 5
    .param p1, "o"    # Lcom/sleepycat/persist/raw/RawObject;
    .param p2, "converted"    # Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 1383
    invoke-virtual {p1}, Lcom/sleepycat/persist/raw/RawObject;->getType()Lcom/sleepycat/persist/raw/RawType;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/impl/Format;

    .line 1384
    .local v0, "format":Lcom/sleepycat/persist/impl/Format;
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->getCatalog()Lcom/sleepycat/persist/impl/Catalog;

    move-result-object v1

    const/4 v2, 0x0

    if-ne p0, v1, :cond_0

    .line 1386
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->getId()I

    move-result v1

    invoke-virtual {p0, v1, v2}, Lcom/sleepycat/persist/impl/PersistCatalog;->getFormat(IZ)Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    goto :goto_1

    .line 1395
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 1398
    .local v1, "clsName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/sleepycat/persist/impl/PersistCatalog;->resolveClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1399
    .local v3, "cls":Ljava/lang/Class;
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/sleepycat/persist/impl/PersistCatalog;->getFormat(Ljava/lang/Class;Z)Lcom/sleepycat/persist/impl/Format;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 1402
    goto :goto_0

    .line 1400
    .end local v3    # "cls":Ljava/lang/Class;
    :catch_0
    move-exception v3

    .line 1401
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    const/4 v0, 0x0

    .line 1403
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    if-eqz v0, :cond_3

    .line 1408
    .end local v1    # "clsName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->getProxiedFormat()Lcom/sleepycat/persist/impl/Format;

    move-result-object v1

    .line 1409
    .local v1, "proxiedFormat":Lcom/sleepycat/persist/impl/Format;
    if-eqz v1, :cond_1

    .line 1410
    move-object v0, v1

    .line 1412
    :cond_1
    if-nez p2, :cond_2

    .line 1413
    new-instance v3, Ljava/util/IdentityHashMap;

    invoke-direct {v3}, Ljava/util/IdentityHashMap;-><init>()V

    move-object p2, v3

    .line 1415
    :cond_2
    invoke-virtual {v0, p0, v2, p1, p2}, Lcom/sleepycat/persist/impl/Format;->convertRawObject(Lcom/sleepycat/persist/impl/Catalog;ZLcom/sleepycat/persist/raw/RawObject;Ljava/util/IdentityHashMap;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1404
    .local v1, "clsName":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "External raw type not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public createFormat(Ljava/lang/Class;Ljava/util/Map;)Lcom/sleepycat/persist/impl/Format;
    .locals 8
    .param p1, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/impl/Format;",
            ">;)",
            "Lcom/sleepycat/persist/impl/Format;"
        }
    .end annotation

    .line 762
    .local p2, "newFormats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/Format;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 763
    .local v0, "className":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/persist/impl/PersistCatalog;->getFormatFromMap(Ljava/lang/Class;Ljava/util/Map;)Lcom/sleepycat/persist/impl/Format;

    move-result-object v1

    .line 764
    .local v1, "format":Lcom/sleepycat/persist/impl/Format;
    if-eqz v1, :cond_0

    .line 765
    return-object v1

    .line 767
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->formatMap:Ljava/util/Map;

    invoke-direct {p0, p1, v2}, Lcom/sleepycat/persist/impl/PersistCatalog;->getFormatFromMap(Ljava/lang/Class;Ljava/util/Map;)Lcom/sleepycat/persist/impl/Format;

    move-result-object v1

    .line 768
    if-eqz v1, :cond_1

    .line 769
    return-object v1

    .line 772
    :cond_1
    invoke-static {p1}, Lcom/sleepycat/persist/impl/SimpleCatalog;->isSimpleType(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 779
    iget-object v2, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->model:Lcom/sleepycat/persist/model/EntityModel;

    invoke-virtual {v2, v0}, Lcom/sleepycat/persist/model/EntityModel;->getClassMetadata(Ljava/lang/String;)Lcom/sleepycat/persist/model/ClassMetadata;

    move-result-object v2

    .line 781
    .local v2, "metadata":Lcom/sleepycat/persist/model/ClassMetadata;
    const/4 v3, 0x0

    .line 782
    .local v3, "proxyClassName":Ljava/lang/String;
    iget-object v4, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->proxyClassMap:Ljava/util/Map;

    if-eqz v4, :cond_2

    .line 783
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Ljava/lang/String;

    .line 785
    :cond_2
    if-eqz v3, :cond_3

    .line 786
    new-instance v4, Lcom/sleepycat/persist/impl/ProxiedFormat;

    invoke-direct {v4, p0, p1, v3}, Lcom/sleepycat/persist/impl/ProxiedFormat;-><init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;Ljava/lang/String;)V

    move-object v1, v4

    goto/16 :goto_4

    .line 787
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 788
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Lcom/sleepycat/persist/impl/PrimitiveArrayFormat;

    invoke-direct {v4, p0, p1}, Lcom/sleepycat/persist/impl/PrimitiveArrayFormat;-><init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;)V

    goto :goto_0

    :cond_4
    new-instance v4, Lcom/sleepycat/persist/impl/ObjectArrayFormat;

    invoke-direct {v4, p0, p1}, Lcom/sleepycat/persist/impl/ObjectArrayFormat;-><init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;)V

    :goto_0
    move-object v1, v4

    goto/16 :goto_4

    .line 791
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 792
    new-instance v4, Lcom/sleepycat/persist/impl/EnumFormat;

    invoke-direct {v4, p0, p1}, Lcom/sleepycat/persist/impl/EnumFormat;-><init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;)V

    move-object v1, v4

    goto/16 :goto_4

    .line 793
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 794
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 800
    new-instance v4, Lcom/sleepycat/persist/impl/EnumFormat;

    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/sleepycat/persist/impl/EnumFormat;-><init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;)V

    move-object v1, v4

    goto/16 :goto_4

    .line 801
    :cond_7
    const-class v4, Ljava/lang/Object;

    if-eq p1, v4, :cond_f

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_8

    goto/16 :goto_3

    .line 804
    :cond_8
    if-eqz v2, :cond_e

    .line 809
    invoke-virtual {v2}, Lcom/sleepycat/persist/model/ClassMetadata;->getCompositeKeyFields()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 810
    invoke-virtual {v2}, Lcom/sleepycat/persist/model/ClassMetadata;->getPrimaryKey()Lcom/sleepycat/persist/model/PrimaryKeyMetadata;

    move-result-object v4

    if-nez v4, :cond_9

    .line 811
    invoke-virtual {v2}, Lcom/sleepycat/persist/model/ClassMetadata;->getSecondaryKeys()Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_9

    goto :goto_1

    .line 812
    :cond_9
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A composite key class may not have primary or secondary key fields: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 814
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 821
    :cond_a
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 822
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_2

    .line 823
    :cond_b
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inner classes not allowed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 824
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 827
    :cond_c
    :goto_2
    const/4 v4, 0x0

    :try_start_0
    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 831
    nop

    .line 832
    invoke-virtual {v2}, Lcom/sleepycat/persist/model/ClassMetadata;->getCompositeKeyFields()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 833
    new-instance v4, Lcom/sleepycat/persist/impl/CompositeKeyFormat;

    .line 835
    invoke-virtual {v2}, Lcom/sleepycat/persist/model/ClassMetadata;->getCompositeKeyFields()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, p0, p1, v2, v5}, Lcom/sleepycat/persist/impl/CompositeKeyFormat;-><init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;Lcom/sleepycat/persist/model/ClassMetadata;Ljava/util/List;)V

    move-object v1, v4

    goto :goto_4

    .line 837
    :cond_d
    iget-object v4, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->model:Lcom/sleepycat/persist/model/EntityModel;

    .line 838
    invoke-virtual {v4, v0}, Lcom/sleepycat/persist/model/EntityModel;->getEntityMetadata(Ljava/lang/String;)Lcom/sleepycat/persist/model/EntityMetadata;

    move-result-object v4

    .line 839
    .local v4, "entityMetadata":Lcom/sleepycat/persist/model/EntityMetadata;
    new-instance v5, Lcom/sleepycat/persist/impl/ComplexFormat;

    invoke-direct {v5, p0, p1, v2, v4}, Lcom/sleepycat/persist/impl/ComplexFormat;-><init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;Lcom/sleepycat/persist/model/ClassMetadata;Lcom/sleepycat/persist/model/EntityMetadata;)V

    move-object v1, v5

    goto :goto_4

    .line 828
    .end local v4    # "entityMetadata":Lcom/sleepycat/persist/model/EntityMetadata;
    :catch_0
    move-exception v4

    .line 829
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No default constructor: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 830
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 805
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    :cond_e
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Class could not be loaded or is not persistent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 802
    :cond_f
    :goto_3
    new-instance v4, Lcom/sleepycat/persist/impl/NonPersistentFormat;

    invoke-direct {v4, p0, p1}, Lcom/sleepycat/persist/impl/NonPersistentFormat;-><init>(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Class;)V

    move-object v1, v4

    .line 844
    :goto_4
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    invoke-virtual {v1, p0, p2}, Lcom/sleepycat/persist/impl/Format;->collectRelatedFormats(Lcom/sleepycat/persist/impl/Catalog;Ljava/util/Map;)V

    .line 847
    return-object v1

    .line 772
    .end local v2    # "metadata":Lcom/sleepycat/persist/model/ClassMetadata;
    .end local v3    # "proxyClassName":Ljava/lang/String;
    :cond_10
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public createFormat(Ljava/lang/String;Ljava/util/Map;)Lcom/sleepycat/persist/impl/Format;
    .locals 3
    .param p1, "clsName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/persist/impl/Format;",
            ">;)",
            "Lcom/sleepycat/persist/impl/Format;"
        }
    .end annotation

    .line 746
    .local p2, "newFormats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/persist/impl/Format;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sleepycat/persist/impl/PersistCatalog;->resolveClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    .local v0, "type":Ljava/lang/Class;
    nop

    .line 751
    invoke-virtual {p0, v0, p2}, Lcom/sleepycat/persist/impl/PersistCatalog;->createFormat(Ljava/lang/Class;Ljava/util/Map;)Lcom/sleepycat/persist/impl/Format;

    move-result-object v1

    return-object v1

    .line 747
    .end local v0    # "type":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 748
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 749
    invoke-static {v1}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public declared-synchronized flush(Lcom/sleepycat/je/Transaction;)V
    .locals 2
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    monitor-enter p0

    .line 1219
    :try_start_0
    new-instance v0, Lcom/sleepycat/persist/impl/PersistCatalog$Data;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sleepycat/persist/impl/PersistCatalog$Data;-><init>(Lcom/sleepycat/persist/impl/PersistCatalog$1;)V

    .line 1220
    .local v0, "newData":Lcom/sleepycat/persist/impl/PersistCatalog$Data;
    iget-object v1, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->formatList:Ljava/util/List;

    iput-object v1, v0, Lcom/sleepycat/persist/impl/PersistCatalog$Data;->formatList:Ljava/util/List;

    .line 1221
    iget-object v1, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->mutations:Lcom/sleepycat/persist/evolve/Mutations;

    iput-object v1, v0, Lcom/sleepycat/persist/impl/PersistCatalog$Data;->mutations:Lcom/sleepycat/persist/evolve/Mutations;

    .line 1222
    invoke-direct {p0, p1, v0}, Lcom/sleepycat/persist/impl/PersistCatalog;->writeData(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/persist/impl/PersistCatalog$Data;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1223
    monitor-exit p0

    return-void

    .line 1218
    .end local v0    # "newData":Lcom/sleepycat/persist/impl/PersistCatalog$Data;
    .end local p0    # "this":Lcom/sleepycat/persist/impl/PersistCatalog;
    .end local p1    # "txn":Lcom/sleepycat/je/Transaction;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getAllRawTypes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sleepycat/persist/raw/RawType;",
            ">;"
        }
    .end annotation

    .line 915
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 916
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/persist/raw/RawType;>;"
    iget-object v1, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->formatList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/persist/raw/RawType;

    .line 917
    .local v2, "type":Lcom/sleepycat/persist/raw/RawType;
    if-eqz v2, :cond_0

    .line 918
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 920
    .end local v2    # "type":Lcom/sleepycat/persist/raw/RawType;
    :cond_0
    goto :goto_0

    .line 921
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getDatabaseClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .line 1081
    invoke-direct {p0, p1}, Lcom/sleepycat/persist/impl/PersistCatalog;->getStoredFormat(Ljava/lang/String;)Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    .line 1082
    .local v0, "format":Lcom/sleepycat/persist/impl/Format;
    if-nez v0, :cond_0

    .line 1083
    const/4 v1, 0x0

    return-object v1

    .line 1085
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDatabaseKeyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "keyName"    # Ljava/lang/String;

    .line 1094
    invoke-direct {p0, p1}, Lcom/sleepycat/persist/impl/PersistCatalog;->getStoredFormat(Ljava/lang/String;)Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    .line 1095
    .local v0, "format":Lcom/sleepycat/persist/impl/Format;
    if-nez v0, :cond_0

    .line 1096
    const/4 v1, 0x0

    return-object v1

    .line 1098
    :cond_0
    invoke-virtual {v0, p2}, Lcom/sleepycat/persist/impl/Format;->getOldKeyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getEntityFormats(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sleepycat/persist/impl/Format;",
            ">;)V"
        }
    .end annotation

    .line 609
    .local p1, "entityFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sleepycat/persist/impl/Format;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->formatMap:Ljava/util/Map;

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

    check-cast v1, Lcom/sleepycat/persist/impl/Format;

    .line 610
    .local v1, "format":Lcom/sleepycat/persist/impl/Format;
    invoke-virtual {v1}, Lcom/sleepycat/persist/impl/Format;->isEntity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 611
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 613
    .end local v1    # "format":Lcom/sleepycat/persist/impl/Format;
    :cond_0
    goto :goto_0

    .line 614
    :cond_1
    return-void
.end method

.method public getFormat(IZ)Lcom/sleepycat/persist/impl/Format;
    .locals 3
    .param p1, "formatId"    # I
    .param p2, "expectStored"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 969
    const-string v0, "Format ID "

    if-ltz p1, :cond_3

    .line 991
    if-eqz p2, :cond_1

    iget v1, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->nStoredFormats:I

    if-lt p1, v1, :cond_1

    .line 992
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->store:Lcom/sleepycat/persist/impl/Store;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 993
    :cond_0
    new-instance v0, Lcom/sleepycat/persist/impl/RefreshException;

    iget-object v1, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->store:Lcom/sleepycat/persist/impl/Store;

    invoke-direct {v0, v1, p0, p1}, Lcom/sleepycat/persist/impl/RefreshException;-><init>(Lcom/sleepycat/persist/impl/Store;Lcom/sleepycat/persist/impl/PersistCatalog;I)V

    throw v0

    .line 996
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->formatList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/persist/impl/Format;

    .line 997
    .local v1, "format":Lcom/sleepycat/persist/impl/Format;
    if-eqz v1, :cond_2

    .line 1017
    return-object v1

    .line 998
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " has null format, may indicate data corruption."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 999
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 970
    .end local v1    # "format":Lcom/sleepycat/persist/impl/Format;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is negative, may indicate data corruption."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 971
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->unexpectedState(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getFormat(Ljava/lang/Class;Z)Lcom/sleepycat/persist/impl/Format;
    .locals 5
    .param p1, "cls"    # Ljava/lang/Class;
    .param p2, "checkEntitySubclassIndexes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 1039
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->formatMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/impl/Format;

    .line 1040
    .local v0, "format":Lcom/sleepycat/persist/impl/Format;
    if-nez v0, :cond_2

    .line 1041
    iget-object v1, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->model:Lcom/sleepycat/persist/model/EntityModel;

    if-eqz v1, :cond_0

    .line 1042
    invoke-direct {p0, p1}, Lcom/sleepycat/persist/impl/PersistCatalog;->addNewFormat(Ljava/lang/Class;)Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    .line 1044
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->store:Lcom/sleepycat/persist/impl/Store;

    if-eqz v1, :cond_0

    .line 1045
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->getEntityFormat()Lcom/sleepycat/persist/impl/ComplexFormat;

    move-result-object v1

    .line 1046
    .local v1, "entityFormat":Lcom/sleepycat/persist/impl/Format;
    if-eqz v1, :cond_0

    if-eq v1, v0, :cond_0

    .line 1048
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->store:Lcom/sleepycat/persist/impl/Store;

    .line 1049
    invoke-virtual {v1}, Lcom/sleepycat/persist/impl/Format;->getEntityMetadata()Lcom/sleepycat/persist/model/EntityMetadata;

    move-result-object v3

    .line 1050
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1049
    invoke-virtual {v2, v3, v4}, Lcom/sleepycat/persist/impl/Store;->checkEntitySubclassSecondaries(Lcom/sleepycat/persist/model/EntityMetadata;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1053
    goto :goto_0

    .line 1051
    :catch_0
    move-exception v2

    .line 1052
    .local v2, "e":Lcom/sleepycat/je/DatabaseException;
    invoke-static {v2}, Lcom/sleepycat/util/RuntimeExceptionWrapper;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 1057
    .end local v1    # "entityFormat":Lcom/sleepycat/persist/impl/Format;
    .end local v2    # "e":Lcom/sleepycat/je/DatabaseException;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 1058
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class is not persistent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1059
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1063
    :cond_2
    :goto_1
    return-object v0
.end method

.method public getFormat(Ljava/lang/String;)Lcom/sleepycat/persist/impl/Format;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .line 1067
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->formatMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/impl/Format;

    return-object v0
.end method

.method public getInitVersion(Lcom/sleepycat/persist/impl/Format;Z)I
    .locals 3
    .param p1, "format"    # Lcom/sleepycat/persist/impl/Format;
    .param p2, "forReader"    # Z

    .line 930
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->initData:Lcom/sleepycat/persist/impl/PersistCatalog$Data;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/sleepycat/persist/impl/PersistCatalog$Data;->formatList:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 931
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/Format;->getId()I

    move-result v0

    iget-object v2, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->initData:Lcom/sleepycat/persist/impl/PersistCatalog$Data;

    iget-object v2, v2, Lcom/sleepycat/persist/impl/PersistCatalog$Data;->formatList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    goto :goto_1

    .line 947
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->initData:Lcom/sleepycat/persist/impl/PersistCatalog$Data;

    if-eqz v0, :cond_3

    .line 949
    if-eqz p2, :cond_2

    .line 956
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->initEvolver:Lcom/sleepycat/persist/impl/Evolver;

    if-eqz v0, :cond_1

    .line 957
    invoke-virtual {v0, p1}, Lcom/sleepycat/persist/impl/Evolver;->isFormatChanged(Lcom/sleepycat/persist/impl/Format;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->initData:Lcom/sleepycat/persist/impl/PersistCatalog$Data;

    iget v1, v0, Lcom/sleepycat/persist/impl/PersistCatalog$Data;->version:I

    .line 956
    :goto_0
    return v1

    .line 961
    :cond_2
    iget v0, v0, Lcom/sleepycat/persist/impl/PersistCatalog$Data;->version:I

    return v0

    .line 947
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 939
    :cond_4
    :goto_1
    return v1
.end method

.method public getLatestVersion(Ljava/lang/String;)Lcom/sleepycat/persist/impl/Format;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .line 1071
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->latestFormatMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/impl/Format;

    return-object v0
.end method

.method getModelClasses()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 902
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 903
    .local v0, "classes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->formatMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/persist/impl/Format;

    .line 904
    .local v2, "format":Lcom/sleepycat/persist/impl/Format;
    invoke-virtual {v2}, Lcom/sleepycat/persist/impl/Format;->isModelClass()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 905
    invoke-virtual {v2}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 907
    .end local v2    # "format":Lcom/sleepycat/persist/impl/Format;
    :cond_0
    goto :goto_0

    .line 908
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public getMutations()Lcom/sleepycat/persist/evolve/Mutations;
    .locals 1

    .line 735
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->mutations:Lcom/sleepycat/persist/evolve/Mutations;

    return-object v0
.end method

.method getNFormats()I
    .locals 1

    .line 1229
    iget v0, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->nStoredFormats:I

    return v0
.end method

.method public getResolvedModel()Lcom/sleepycat/persist/model/EntityModel;
    .locals 1

    .line 692
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->model:Lcom/sleepycat/persist/model/EntityModel;

    return-object v0
.end method

.method getSubclassMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/sleepycat/persist/impl/Format;",
            "Ljava/util/Set<",
            "Lcom/sleepycat/persist/impl/Format;",
            ">;>;"
        }
    .end annotation

    .line 669
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 671
    .local v0, "subclassMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/persist/impl/Format;Ljava/util/Set<Lcom/sleepycat/persist/impl/Format;>;>;"
    iget-object v1, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->formatList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/persist/impl/Format;

    .line 672
    .local v2, "format":Lcom/sleepycat/persist/impl/Format;
    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/sleepycat/persist/impl/Format;->isPredefined(Lcom/sleepycat/persist/impl/Format;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 673
    goto :goto_0

    .line 675
    :cond_1
    invoke-virtual {v2}, Lcom/sleepycat/persist/impl/Format;->getSuperFormat()Lcom/sleepycat/persist/impl/Format;

    move-result-object v3

    .line 676
    .local v3, "superFormat":Lcom/sleepycat/persist/impl/Format;
    if-eqz v3, :cond_3

    .line 677
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 678
    .local v4, "subclass":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/persist/impl/Format;>;"
    if-nez v4, :cond_2

    .line 679
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move-object v4, v5

    .line 680
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    :cond_2
    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 684
    .end local v2    # "format":Lcom/sleepycat/persist/impl/Format;
    .end local v3    # "superFormat":Lcom/sleepycat/persist/impl/Format;
    .end local v4    # "subclass":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/persist/impl/Format;>;"
    :cond_3
    goto :goto_0

    .line 685
    :cond_4
    return-object v0
.end method

.method isMetadataStale(Lcom/sleepycat/je/Transaction;)Z
    .locals 3
    .param p1, "txn"    # Lcom/sleepycat/je/Transaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1283
    invoke-direct {p0, p1}, Lcom/sleepycat/persist/impl/PersistCatalog;->readData(Lcom/sleepycat/je/Transaction;)Lcom/sleepycat/persist/impl/PersistCatalog$Data;

    move-result-object v0

    .line 1285
    .local v0, "oldData":Lcom/sleepycat/persist/impl/PersistCatalog$Data;
    iget-object v1, v0, Lcom/sleepycat/persist/impl/PersistCatalog$Data;->formatList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/sleepycat/persist/impl/PersistCatalog$Data;->formatList:Ljava/util/List;

    .line 1286
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->nStoredFormats:I

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1285
    :goto_0
    return v1
.end method

.method public isRawAccess()Z
    .locals 1

    .line 1377
    iget-boolean v0, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->rawAccess:Z

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .line 707
    iget-boolean v0, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->readOnly:Z

    return v0
.end method

.method isReplicaUpgradeMode()Z
    .locals 2

    .line 1125
    iget v0, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->nStoredFormats:I

    iget-object v1, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->formatList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public openExisting()V
    .locals 1

    .line 699
    iget v0, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->openCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->openCount:I

    .line 700
    return-void
.end method

.method public resolveClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "clsName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1421
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->model:Lcom/sleepycat/persist/model/EntityModel;

    .line 1422
    invoke-static {v0}, Lcom/sleepycat/persist/model/ModelInternal;->getClassLoader(Lcom/sleepycat/persist/model/EntityModel;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sleepycat/persist/impl/SimpleCatalog;->resolveClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 1421
    return-object v0
.end method

.method public resolveKeyClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "clsName"    # Ljava/lang/String;

    .line 1426
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->model:Lcom/sleepycat/persist/model/EntityModel;

    .line 1427
    invoke-static {v0}, Lcom/sleepycat/persist/model/ModelInternal;->getClassLoader(Lcom/sleepycat/persist/model/EntityModel;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sleepycat/persist/impl/SimpleCatalog;->resolveKeyClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 1426
    return-object v0
.end method

.method useExistingFormat(Lcom/sleepycat/persist/impl/Format;)V
    .locals 2
    .param p1, "oldFormat"    # Lcom/sleepycat/persist/impl/Format;

    .line 894
    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/Format;->isCurrentVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/sleepycat/persist/impl/PersistCatalog;->formatMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    return-void

    .line 894
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
