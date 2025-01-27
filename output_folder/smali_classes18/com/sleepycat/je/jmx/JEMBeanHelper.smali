.class public Lcom/sleepycat/je/jmx/JEMBeanHelper;
.super Ljava/lang/Object;
.source "JEMBeanHelper.java"


# static fields
.field public static final ATT_CACHE_PERCENT:Ljava/lang/String; = "cachePercent"

.field public static final ATT_CACHE_SIZE:Ljava/lang/String; = "cacheSize"

.field public static final ATT_ENV_HOME:Ljava/lang/String; = "environmentHome"

.field public static final ATT_IS_READ_ONLY:Ljava/lang/String; = "isReadOnly"

.field public static final ATT_IS_SERIALIZABLE:Ljava/lang/String; = "isSerializableIsolation"

.field public static final ATT_IS_TRANSACTIONAL:Ljava/lang/String; = "isTransactional"

.field public static final ATT_LOCK_TIMEOUT:Ljava/lang/String; = "lockTimeout"

.field public static final ATT_OPEN:Ljava/lang/String; = "isOpen"

.field public static final ATT_SET_READ_ONLY:Ljava/lang/String; = "openReadOnly"

.field public static final ATT_SET_SERIALIZABLE:Ljava/lang/String; = "openSerializableIsolation"

.field public static final ATT_SET_TRANSACTIONAL:Ljava/lang/String; = "openTransactional"

.field public static final ATT_TXN_TIMEOUT:Ljava/lang/String; = "transactionTimeout"

.field private static final COMMON_ATTR:[Ljavax/management/MBeanAttributeInfo;

.field private static final CREATE_ATTR:[Ljavax/management/MBeanAttributeInfo;

.field private static final OPEN_ATTR:[Ljavax/management/MBeanAttributeInfo;

.field static final OP_CHECKPOINT:Ljava/lang/String; = "checkpoint"

.field private static final OP_CHECKPOINT_INFO:Ljavax/management/MBeanOperationInfo;

.field static final OP_CLEAN:Ljava/lang/String; = "cleanLog"

.field private static final OP_CLEAN_INFO:Ljavax/management/MBeanOperationInfo;

.field static final OP_DB_NAMES:Ljava/lang/String; = "getDatabaseNames"

.field private static final OP_DB_NAMES_INFO:Ljavax/management/MBeanOperationInfo;

.field static final OP_DB_STAT:Ljava/lang/String; = "getDatabaseStats"

.field private static final OP_DB_STAT_INFO:Ljavax/management/MBeanOperationInfo;

.field static final OP_ENV_STAT:Ljava/lang/String; = "getEnvironmentStats"

.field private static final OP_ENV_STAT_INFO:Ljavax/management/MBeanOperationInfo;

.field static final OP_EVICT:Ljava/lang/String; = "evictMemory"

.field private static final OP_EVICT_INFO:Ljavax/management/MBeanOperationInfo;

.field static final OP_SYNC:Ljava/lang/String; = "sync"

.field private static final OP_SYNC_INFO:Ljavax/management/MBeanOperationInfo;

.field static final OP_TXN_STAT:Ljava/lang/String; = "getTxnStats"

.field private static final OP_TXN_STAT_INFO:Ljavax/management/MBeanOperationInfo;

.field private static final TRANSACTIONAL_ATTR:[Ljavax/management/MBeanAttributeInfo;

.field private static final checkpointParams:[Ljavax/management/MBeanParameterInfo;

.field private static final dbStatParams:[Ljavax/management/MBeanParameterInfo;

.field private static final statParams:[Ljavax/management/MBeanParameterInfo;


# instance fields
.field private canConfigure:Z

.field private envWasOpen:Z

.field private environmentHome:Ljava/io/File;

.field private needReset:Z

.field private openConfig:Lcom/sleepycat/je/EnvironmentConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 90
    const/4 v0, 0x2

    new-array v1, v0, [Ljavax/management/MBeanAttributeInfo;

    new-instance v9, Ljavax/management/MBeanAttributeInfo;

    const-string v3, "environmentHome"

    const-string v4, "java.lang.String"

    const-string v5, "Environment home directory."

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Ljavax/management/MBeanAttributeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    const/4 v2, 0x0

    aput-object v9, v1, v2

    new-instance v3, Ljavax/management/MBeanAttributeInfo;

    const-string v11, "isOpen"

    const-string v12, "java.lang.Boolean"

    const-string v13, "True if this environment is open."

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object v10, v3

    invoke-direct/range {v10 .. v16}, Ljavax/management/MBeanAttributeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    const/4 v4, 0x1

    aput-object v3, v1, v4

    sput-object v1, Lcom/sleepycat/je/jmx/JEMBeanHelper;->COMMON_ATTR:[Ljavax/management/MBeanAttributeInfo;

    .line 107
    const/4 v1, 0x5

    new-array v1, v1, [Ljavax/management/MBeanAttributeInfo;

    new-instance v3, Ljavax/management/MBeanAttributeInfo;

    const-string v6, "isReadOnly"

    const-string v7, "java.lang.Boolean"

    const-string v8, "True if this environment is read only."

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Ljavax/management/MBeanAttributeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    aput-object v3, v1, v2

    new-instance v3, Ljavax/management/MBeanAttributeInfo;

    const-string v13, "isTransactional"

    const-string v14, "java.lang.Boolean"

    const-string v15, "True if this environment supports transactions."

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v12, v3

    invoke-direct/range {v12 .. v18}, Ljavax/management/MBeanAttributeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    aput-object v3, v1, v4

    new-instance v3, Ljavax/management/MBeanAttributeInfo;

    const-string v6, "cacheSize"

    const-string v7, "java.lang.Long"

    const-string v8, "Cache size, in bytes."

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Ljavax/management/MBeanAttributeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    aput-object v3, v1, v0

    new-instance v3, Ljavax/management/MBeanAttributeInfo;

    const-string v13, "cachePercent"

    const-string v14, "java.lang.Integer"

    const-string v15, "By default, cache size is (cachePercent * JVM maximum memory. To change the cache size using a percentage of the heap size, set the cache size to 0 and cachePercent to the desired percentage value."

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v12, v3

    invoke-direct/range {v12 .. v18}, Ljavax/management/MBeanAttributeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    const/4 v5, 0x3

    aput-object v3, v1, v5

    new-instance v3, Ljavax/management/MBeanAttributeInfo;

    const-string v7, "lockTimeout"

    const-string v8, "java.lang.Long"

    const-string v9, "Lock timeout, in microseconds."

    const/4 v12, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Ljavax/management/MBeanAttributeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    const/4 v6, 0x4

    aput-object v3, v1, v6

    sput-object v1, Lcom/sleepycat/je/jmx/JEMBeanHelper;->OPEN_ATTR:[Ljavax/management/MBeanAttributeInfo;

    .line 149
    new-array v1, v0, [Ljavax/management/MBeanAttributeInfo;

    new-instance v3, Ljavax/management/MBeanAttributeInfo;

    const-string v7, "isSerializableIsolation"

    const-string v8, "java.lang.Boolean"

    const-string v9, "True if this environment provides Serializable (degree 3) isolation. The default is RepeatableRead isolation."

    const/4 v12, 0x1

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Ljavax/management/MBeanAttributeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    aput-object v3, v1, v2

    new-instance v3, Ljavax/management/MBeanAttributeInfo;

    const-string/jumbo v14, "transactionTimeout"

    const-string v15, "java.lang.Long"

    const-string v16, "Transaction timeout, in seconds. A value of 0 means there is no timeout."

    const/16 v19, 0x0

    move-object v13, v3

    invoke-direct/range {v13 .. v19}, Ljavax/management/MBeanAttributeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    aput-object v3, v1, v4

    sput-object v1, Lcom/sleepycat/je/jmx/JEMBeanHelper;->TRANSACTIONAL_ATTR:[Ljavax/management/MBeanAttributeInfo;

    .line 173
    new-array v1, v5, [Ljavax/management/MBeanAttributeInfo;

    new-instance v3, Ljavax/management/MBeanAttributeInfo;

    const-string v7, "openReadOnly"

    const-string v8, "java.lang.Boolean"

    const-string v9, "True if this environment should be opened in readonly mode."

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Ljavax/management/MBeanAttributeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    aput-object v3, v1, v2

    new-instance v3, Ljavax/management/MBeanAttributeInfo;

    const-string v14, "openTransactional"

    const-string v15, "java.lang.Boolean"

    const-string v16, "True if this environment should be opened in transactional mode."

    const/16 v18, 0x1

    move-object v13, v3

    invoke-direct/range {v13 .. v19}, Ljavax/management/MBeanAttributeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    aput-object v3, v1, v4

    new-instance v3, Ljavax/management/MBeanAttributeInfo;

    const-string v7, "openSerializableIsolation"

    const-string v8, "java.lang.Boolean"

    const-string v9, "True if this environment should be opened with serializableIsolation. The default is false."

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Ljavax/management/MBeanAttributeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    aput-object v3, v1, v0

    sput-object v1, Lcom/sleepycat/je/jmx/JEMBeanHelper;->CREATE_ATTR:[Ljavax/management/MBeanAttributeInfo;

    .line 209
    new-instance v1, Ljavax/management/MBeanOperationInfo;

    new-array v3, v2, [Ljavax/management/MBeanParameterInfo;

    const-string v14, "cleanLog"

    const-string v15, "Remove obsolete environment log files. Zero or more log files will be cleaned as necessary to bring the disk space utilization of the environment above the configured minimum utilization threshold as determined by the setting je.cleaner.minUtilization. Returns the number of files cleaned, that will be deleted at the next qualifying checkpoint."

    const-string v17, "java.lang.Integer"

    const/16 v18, 0x3

    move-object v13, v1

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v18}, Ljavax/management/MBeanOperationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljavax/management/MBeanParameterInfo;Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/jmx/JEMBeanHelper;->OP_CLEAN_INFO:Ljavax/management/MBeanOperationInfo;

    .line 224
    new-instance v1, Ljavax/management/MBeanOperationInfo;

    new-array v9, v2, [Ljavax/management/MBeanParameterInfo;

    const-string v7, "evictMemory"

    const-string v8, "Reduce cache usage to the threshold determined by the setting je.evictor.useMemoryFloor. "

    const-string/jumbo v10, "void"

    const/4 v11, 0x3

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Ljavax/management/MBeanOperationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljavax/management/MBeanParameterInfo;Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/jmx/JEMBeanHelper;->OP_EVICT_INFO:Ljavax/management/MBeanOperationInfo;

    .line 234
    new-array v15, v4, [Ljavax/management/MBeanParameterInfo;

    new-instance v1, Ljavax/management/MBeanParameterInfo;

    const-string v3, "force"

    const-string v6, "java.lang.Boolean"

    const-string v7, "If true, force a checkpoint even if there has been no activity since the last checkpoint. Returns true if a checkpoint executed."

    invoke-direct {v1, v3, v6, v7}, Ljavax/management/MBeanParameterInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v15, v2

    sput-object v15, Lcom/sleepycat/je/jmx/JEMBeanHelper;->checkpointParams:[Ljavax/management/MBeanParameterInfo;

    .line 242
    new-instance v1, Ljavax/management/MBeanOperationInfo;

    const-string v13, "checkpoint"

    const-string v14, "Checkpoint the environment."

    const-string/jumbo v16, "void"

    const/16 v17, 0x3

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Ljavax/management/MBeanOperationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljavax/management/MBeanParameterInfo;Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/jmx/JEMBeanHelper;->OP_CHECKPOINT_INFO:Ljavax/management/MBeanOperationInfo;

    .line 249
    new-instance v1, Ljavax/management/MBeanOperationInfo;

    new-array v10, v2, [Ljavax/management/MBeanParameterInfo;

    const-string/jumbo v8, "sync"

    const-string v9, "Flush the environment to stable storage."

    const-string/jumbo v11, "void"

    const/4 v12, 0x3

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Ljavax/management/MBeanOperationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljavax/management/MBeanParameterInfo;Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/jmx/JEMBeanHelper;->OP_SYNC_INFO:Ljavax/management/MBeanOperationInfo;

    .line 256
    new-array v1, v0, [Ljavax/management/MBeanParameterInfo;

    new-instance v3, Ljavax/management/MBeanParameterInfo;

    const-string v7, "clear"

    const-string v8, "If true, reset statistics after reading."

    invoke-direct {v3, v7, v6, v8}, Ljavax/management/MBeanParameterInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    new-instance v3, Ljavax/management/MBeanParameterInfo;

    const-string v9, "fast"

    const-string v10, "If true, only return statistics which do not require expensive computation."

    invoke-direct {v3, v9, v6, v10}, Ljavax/management/MBeanParameterInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v4

    sput-object v1, Lcom/sleepycat/je/jmx/JEMBeanHelper;->statParams:[Ljavax/management/MBeanParameterInfo;

    .line 264
    new-instance v3, Ljavax/management/MBeanOperationInfo;

    const-string v14, "getEnvironmentStats"

    const-string v15, "Get environment statistics."

    const-string v17, "java.lang.String"

    const/16 v18, 0x0

    move-object v13, v3

    move-object/from16 v16, v1

    invoke-direct/range {v13 .. v18}, Ljavax/management/MBeanOperationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljavax/management/MBeanParameterInfo;Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/jmx/JEMBeanHelper;->OP_ENV_STAT_INFO:Ljavax/management/MBeanOperationInfo;

    .line 271
    new-instance v3, Ljavax/management/MBeanOperationInfo;

    const-string v14, "getTxnStats"

    const-string v15, "Get transactional statistics."

    const-string v17, "java.lang.String"

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Ljavax/management/MBeanOperationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljavax/management/MBeanParameterInfo;Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/jmx/JEMBeanHelper;->OP_TXN_STAT_INFO:Ljavax/management/MBeanOperationInfo;

    .line 278
    new-instance v1, Ljavax/management/MBeanOperationInfo;

    new-array v3, v2, [Ljavax/management/MBeanParameterInfo;

    const-string v20, "getDatabaseNames"

    const-string v21, "Get the names of databases in the environment."

    const-string v23, "java.util.ArrayList"

    const/16 v24, 0x0

    move-object/from16 v19, v1

    move-object/from16 v22, v3

    invoke-direct/range {v19 .. v24}, Ljavax/management/MBeanOperationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljavax/management/MBeanParameterInfo;Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/jmx/JEMBeanHelper;->OP_DB_NAMES_INFO:Ljavax/management/MBeanOperationInfo;

    .line 285
    new-array v13, v5, [Ljavax/management/MBeanParameterInfo;

    new-instance v1, Ljavax/management/MBeanParameterInfo;

    invoke-direct {v1, v7, v6, v8}, Ljavax/management/MBeanParameterInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v13, v2

    new-instance v1, Ljavax/management/MBeanParameterInfo;

    const-string v2, "If true, only return statistics which do not require expensive computation. Currently all database stats are not fast."

    invoke-direct {v1, v9, v6, v2}, Ljavax/management/MBeanParameterInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v13, v4

    new-instance v1, Ljavax/management/MBeanParameterInfo;

    const-string v2, "databaseName"

    const-string v3, "java.lang.String"

    const-string v4, "database name"

    invoke-direct {v1, v2, v3, v4}, Ljavax/management/MBeanParameterInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v13, v0

    sput-object v13, Lcom/sleepycat/je/jmx/JEMBeanHelper;->dbStatParams:[Ljavax/management/MBeanParameterInfo;

    .line 296
    new-instance v0, Ljavax/management/MBeanOperationInfo;

    const-string v11, "getDatabaseStats"

    const-string v12, "Get database statistics."

    const-string v14, "java.lang.String"

    const/4 v15, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Ljavax/management/MBeanOperationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljavax/management/MBeanParameterInfo;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/jmx/JEMBeanHelper;->OP_DB_STAT_INFO:Ljavax/management/MBeanOperationInfo;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 2
    .param p1, "environmentHome"    # Ljava/io/File;
    .param p2, "canConfigure"    # Z

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    if-eqz p1, :cond_1

    .line 336
    iput-object p1, p0, Lcom/sleepycat/je/jmx/JEMBeanHelper;->environmentHome:Ljava/io/File;

    .line 337
    iput-boolean p2, p0, Lcom/sleepycat/je/jmx/JEMBeanHelper;->canConfigure:Z

    .line 338
    if-eqz p2, :cond_0

    .line 339
    new-instance v0, Lcom/sleepycat/je/EnvironmentConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/EnvironmentConfig;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/jmx/JEMBeanHelper;->openConfig:Lcom/sleepycat/je/EnvironmentConfig;

    .line 341
    :cond_0
    return-void

    .line 333
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Environment home cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getDatabaseStats(Lcom/sleepycat/je/Environment;[Ljava/lang/Object;)Lcom/sleepycat/je/DatabaseStats;
    .locals 5
    .param p1, "targetEnv"    # Lcom/sleepycat/je/Environment;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/sleepycat/je/DatabaseNotFoundException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 707
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    array-length v1, p2

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 710
    :cond_0
    const/4 v1, 0x2

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/String;

    .line 712
    .local v1, "dbName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 714
    .local v2, "db":Lcom/sleepycat/je/Database;
    :try_start_0
    new-instance v3, Lcom/sleepycat/je/DatabaseConfig;

    invoke-direct {v3}, Lcom/sleepycat/je/DatabaseConfig;-><init>()V

    .line 715
    .local v3, "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/DatabaseConfig;->setReadOnly(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 716
    invoke-static {v3, v4}, Lcom/sleepycat/je/DbInternal;->setUseExistingConfig(Lcom/sleepycat/je/DatabaseConfig;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    :try_start_1
    invoke-virtual {p1, v0, v1, v3}, Lcom/sleepycat/je/Environment;->openDatabase(Lcom/sleepycat/je/Transaction;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;)Lcom/sleepycat/je/Database;

    move-result-object v0
    :try_end_1
    .catch Lcom/sleepycat/je/DatabaseExistsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v0

    .line 722
    nop

    .line 723
    :try_start_2
    invoke-direct {p0, p2}, Lcom/sleepycat/je/jmx/JEMBeanHelper;->getStatsConfig([Ljava/lang/Object;)Lcom/sleepycat/je/StatsConfig;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sleepycat/je/Database;->getStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/DatabaseStats;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 725
    if-eqz v2, :cond_1

    .line 726
    invoke-virtual {v2}, Lcom/sleepycat/je/Database;->close()V

    .line 723
    :cond_1
    return-object v0

    .line 719
    :catch_0
    move-exception v0

    .line 721
    .local v0, "e":Lcom/sleepycat/je/DatabaseExistsException;
    :try_start_3
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v4

    .end local v1    # "dbName":Ljava/lang/String;
    .end local v2    # "db":Lcom/sleepycat/je/Database;
    .end local p1    # "targetEnv":Lcom/sleepycat/je/Environment;
    .end local p2    # "params":[Ljava/lang/Object;
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 725
    .end local v0    # "e":Lcom/sleepycat/je/DatabaseExistsException;
    .end local v3    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .restart local v1    # "dbName":Ljava/lang/String;
    .restart local v2    # "db":Lcom/sleepycat/je/Database;
    .restart local p1    # "targetEnv":Lcom/sleepycat/je/Environment;
    .restart local p2    # "params":[Ljava/lang/Object;
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    .line 726
    invoke-virtual {v2}, Lcom/sleepycat/je/Database;->close()V

    :cond_2
    throw v0

    .line 708
    .end local v1    # "dbName":Ljava/lang/String;
    .end local v2    # "db":Lcom/sleepycat/je/Database;
    :cond_3
    :goto_0
    return-object v0
.end method

.method private getStatsConfig([Ljava/lang/Object;)Lcom/sleepycat/je/StatsConfig;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Object;

    .line 684
    new-instance v0, Lcom/sleepycat/je/StatsConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/StatsConfig;-><init>()V

    .line 685
    .local v0, "statsConfig":Lcom/sleepycat/je/StatsConfig;
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 686
    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Boolean;

    .line 687
    .local v1, "clear":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/StatsConfig;->setClear(Z)Lcom/sleepycat/je/StatsConfig;

    .line 689
    .end local v1    # "clear":Ljava/lang/Boolean;
    :cond_0
    if-eqz p1, :cond_1

    array-length v1, p1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    aget-object v1, p1, v2

    if-eqz v1, :cond_1

    .line 690
    aget-object v1, p1, v2

    check-cast v1, Ljava/lang/Boolean;

    .line 691
    .local v1, "fast":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/StatsConfig;->setFast(Z)Lcom/sleepycat/je/StatsConfig;

    .line 693
    .end local v1    # "fast":Ljava/lang/Boolean;
    :cond_1
    return-object v0
.end method

.method private declared-synchronized resetIfOpenStateChanged(Z)V
    .locals 1
    .param p1, "isOpen"    # Z

    monitor-enter p0

    .line 745
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/je/jmx/JEMBeanHelper;->envWasOpen:Z

    if-eq p1, v0, :cond_0

    .line 746
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sleepycat/je/jmx/JEMBeanHelper;->setNeedReset(Z)V

    .line 747
    iput-boolean p1, p0, Lcom/sleepycat/je/jmx/JEMBeanHelper;->envWasOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    .end local p0    # "this":Lcom/sleepycat/je/jmx/JEMBeanHelper;
    :cond_0
    monitor-exit p0

    return-void

    .line 744
    .end local p1    # "isOpen":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setNeedReset(Z)V
    .locals 0
    .param p1, "reset"    # Z

    monitor-enter p0

    .line 741
    :try_start_0
    iput-boolean p1, p0, Lcom/sleepycat/je/jmx/JEMBeanHelper;->needReset:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    monitor-exit p0

    return-void

    .line 740
    .end local p0    # "this":Lcom/sleepycat/je/jmx/JEMBeanHelper;
    .end local p1    # "reset":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public getAttribute(Lcom/sleepycat/je/Environment;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "targetEnv"    # Lcom/sleepycat/je/Environment;
    .param p2, "attributeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/AttributeNotFoundException;,
            Ljavax/management/MBeanException;
        }
    .end annotation

    .line 438
    if-eqz p2, :cond_e

    .line 445
    :try_start_0
    const-string v0, "environmentHome"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/sleepycat/je/jmx/JEMBeanHelper;->environmentHome:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 447
    :cond_0
    const-string v0, "isOpen"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 448
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 449
    .local v0, "envIsOpen":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/sleepycat/je/jmx/JEMBeanHelper;->resetIfOpenStateChanged(Z)V

    .line 450
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v1

    .line 451
    .end local v0    # "envIsOpen":Z
    :cond_2
    const-string v0, "openReadOnly"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 452
    new-instance v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sleepycat/je/jmx/JEMBeanHelper;->openConfig:Lcom/sleepycat/je/EnvironmentConfig;

    invoke-virtual {v1}, Lcom/sleepycat/je/EnvironmentConfig;->getReadOnly()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v0

    .line 453
    :cond_3
    const-string v0, "openTransactional"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 454
    new-instance v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sleepycat/je/jmx/JEMBeanHelper;->openConfig:Lcom/sleepycat/je/EnvironmentConfig;

    invoke-virtual {v1}, Lcom/sleepycat/je/EnvironmentConfig;->getTransactional()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v0

    .line 455
    :cond_4
    const-string v0, "openSerializableIsolation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 456
    new-instance v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sleepycat/je/jmx/JEMBeanHelper;->openConfig:Lcom/sleepycat/je/EnvironmentConfig;

    invoke-virtual {v1}, Lcom/sleepycat/je/EnvironmentConfig;->getTxnSerializableIsolation()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v0

    .line 459
    :cond_5
    if-eqz p1, :cond_d

    .line 461
    invoke-virtual {p1}, Lcom/sleepycat/je/Environment;->getConfig()Lcom/sleepycat/je/EnvironmentConfig;

    move-result-object v0

    .line 463
    .local v0, "config":Lcom/sleepycat/je/EnvironmentConfig;
    const-string v1, "isReadOnly"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 464
    new-instance v1, Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentConfig;->getReadOnly()Z

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v1

    .line 465
    :cond_6
    const-string v1, "isTransactional"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 466
    new-instance v1, Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentConfig;->getTransactional()Z

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v1

    .line 467
    :cond_7
    const-string v1, "cacheSize"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 468
    new-instance v1, Ljava/lang/Long;

    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentConfig;->getCacheSize()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    return-object v1

    .line 469
    :cond_8
    const-string v1, "cachePercent"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 470
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentConfig;->getCachePercent()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    return-object v1

    .line 471
    :cond_9
    const-string v1, "lockTimeout"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 472
    new-instance v1, Ljava/lang/Long;

    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentConfig;->getLockTimeout()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    return-object v1

    .line 473
    :cond_a
    const-string v1, "isSerializableIsolation"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 474
    new-instance v1, Ljava/lang/Boolean;

    .line 475
    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentConfig;->getTxnSerializableIsolation()Z

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    .line 474
    return-object v1

    .line 476
    :cond_b
    const-string/jumbo v1, "transactionTimeout"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 477
    new-instance v1, Ljava/lang/Long;

    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentConfig;->getTxnTimeout()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    return-object v1

    .line 479
    :cond_c
    new-instance v1, Ljavax/management/AttributeNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not valid."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/management/AttributeNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p1    # "targetEnv":Lcom/sleepycat/je/Environment;
    .end local p2    # "attributeName":Ljava/lang/String;
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    .end local v0    # "config":Lcom/sleepycat/je/EnvironmentConfig;
    .restart local p1    # "targetEnv":Lcom/sleepycat/je/Environment;
    .restart local p2    # "attributeName":Ljava/lang/String;
    :cond_d
    const/4 v0, 0x0

    return-object v0

    .line 485
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljavax/management/MBeanException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/management/MBeanException;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw v1

    .line 439
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_e
    new-instance v0, Ljavax/management/AttributeNotFoundException;

    const-string v1, "Attribute name cannot be null"

    invoke-direct {v0, v1}, Ljavax/management/AttributeNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeList(Lcom/sleepycat/je/Environment;)Ljava/util/List;
    .locals 5
    .param p1, "targetEnv"    # Lcom/sleepycat/je/Environment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Environment;",
            ")",
            "Ljava/util/List<",
            "Ljavax/management/MBeanAttributeInfo;",
            ">;"
        }
    .end annotation

    .line 383
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/je/jmx/JEMBeanHelper;->setNeedReset(Z)V

    .line 385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .local v0, "attrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax/management/MBeanAttributeInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/sleepycat/je/jmx/JEMBeanHelper;->COMMON_ATTR:[Ljavax/management/MBeanAttributeInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 390
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 393
    .end local v1    # "i":I
    :cond_0
    if-nez p1, :cond_2

    .line 394
    iget-boolean v1, p0, Lcom/sleepycat/je/jmx/JEMBeanHelper;->canConfigure:Z

    if-eqz v1, :cond_5

    .line 396
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    sget-object v2, Lcom/sleepycat/je/jmx/JEMBeanHelper;->CREATE_ATTR:[Ljavax/management/MBeanAttributeInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 397
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_1
    goto :goto_4

    .line 402
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    sget-object v2, Lcom/sleepycat/je/jmx/JEMBeanHelper;->OPEN_ATTR:[Ljavax/management/MBeanAttributeInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 403
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 408
    .end local v1    # "i":I
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Lcom/sleepycat/je/Environment;->getConfig()Lcom/sleepycat/je/EnvironmentConfig;

    move-result-object v1

    .line 409
    .local v1, "config":Lcom/sleepycat/je/EnvironmentConfig;
    invoke-virtual {v1}, Lcom/sleepycat/je/EnvironmentConfig;->getTransactional()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 410
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    sget-object v3, Lcom/sleepycat/je/jmx/JEMBeanHelper;->TRANSACTIONAL_ATTR:[Ljavax/management/MBeanAttributeInfo;

    array-length v4, v3

    if-ge v2, v4, :cond_4

    .line 411
    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 416
    .end local v1    # "config":Lcom/sleepycat/je/EnvironmentConfig;
    .end local v2    # "i":I
    :cond_4
    goto :goto_4

    .line 414
    :catch_0
    move-exception v1

    .line 419
    :cond_5
    :goto_4
    return-object v0
.end method

.method public getEnvironmentHome()Ljava/io/File;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/sleepycat/je/jmx/JEMBeanHelper;->environmentHome:Ljava/io/File;

    return-object v0
.end method

.method public getEnvironmentOpenConfig()Lcom/sleepycat/je/EnvironmentConfig;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/sleepycat/je/jmx/JEMBeanHelper;->openConfig:Lcom/sleepycat/je/EnvironmentConfig;

    return-object v0
.end method

.method public declared-synchronized getNeedReset()Z
    .locals 1

    monitor-enter p0

    .line 370
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/je/jmx/JEMBeanHelper;->needReset:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 370
    .end local p0    # "this":Lcom/sleepycat/je/jmx/JEMBeanHelper;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNotificationInfo(Lcom/sleepycat/je/Environment;)[Ljavax/management/MBeanNotificationInfo;
    .locals 1
    .param p1, "targetEnv"    # Lcom/sleepycat/je/Environment;

    .line 737
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOperationList(Lcom/sleepycat/je/Environment;)Ljava/util/List;
    .locals 4
    .param p1, "targetEnv"    # Lcom/sleepycat/je/Environment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Environment;",
            ")",
            "Ljava/util/List<",
            "Ljavax/management/MBeanOperationInfo;",
            ">;"
        }
    .end annotation

    .line 575
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/je/jmx/JEMBeanHelper;->setNeedReset(Z)V

    .line 577
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 580
    .local v0, "operationList":Ljava/util/List;, "Ljava/util/List<Ljavax/management/MBeanOperationInfo;>;"
    if-eqz p1, :cond_1

    .line 585
    sget-object v1, Lcom/sleepycat/je/jmx/JEMBeanHelper;->OP_CLEAN_INFO:Ljavax/management/MBeanOperationInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    sget-object v1, Lcom/sleepycat/je/jmx/JEMBeanHelper;->OP_EVICT_INFO:Ljavax/management/MBeanOperationInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    sget-object v1, Lcom/sleepycat/je/jmx/JEMBeanHelper;->OP_ENV_STAT_INFO:Ljavax/management/MBeanOperationInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    sget-object v1, Lcom/sleepycat/je/jmx/JEMBeanHelper;->OP_DB_NAMES_INFO:Ljavax/management/MBeanOperationInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    sget-object v1, Lcom/sleepycat/je/jmx/JEMBeanHelper;->OP_DB_STAT_INFO:Ljavax/management/MBeanOperationInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    const/4 v1, 0x0

    .line 594
    .local v1, "isTransactional":Z
    :try_start_0
    invoke-virtual {p1}, Lcom/sleepycat/je/Environment;->getConfig()Lcom/sleepycat/je/EnvironmentConfig;

    move-result-object v2

    .line 595
    .local v2, "config":Lcom/sleepycat/je/EnvironmentConfig;
    invoke-virtual {v2}, Lcom/sleepycat/je/EnvironmentConfig;->getTransactional()Z

    move-result v3
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 599
    .end local v2    # "config":Lcom/sleepycat/je/EnvironmentConfig;
    nop

    .line 601
    if-eqz v1, :cond_0

    .line 602
    sget-object v2, Lcom/sleepycat/je/jmx/JEMBeanHelper;->OP_CHECKPOINT_INFO:Ljavax/management/MBeanOperationInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    sget-object v2, Lcom/sleepycat/je/jmx/JEMBeanHelper;->OP_TXN_STAT_INFO:Ljavax/management/MBeanOperationInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 605
    :cond_0
    sget-object v2, Lcom/sleepycat/je/jmx/JEMBeanHelper;->OP_SYNC_INFO:Ljavax/management/MBeanOperationInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 596
    :catch_0
    move-exception v2

    .line 598
    .local v2, "e":Lcom/sleepycat/je/DatabaseException;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    return-object v3

    .line 609
    .end local v1    # "isTransactional":Z
    .end local v2    # "e":Lcom/sleepycat/je/DatabaseException;
    :cond_1
    :goto_0
    return-object v0
.end method

.method public invoke(Lcom/sleepycat/je/Environment;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "targetEnv"    # Lcom/sleepycat/je/Environment;
    .param p2, "actionName"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;
    .param p4, "signature"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/MBeanException;
        }
    .end annotation

    .line 629
    if-eqz p2, :cond_a

    .line 634
    if-eqz p1, :cond_9

    .line 635
    :try_start_0
    const-string v0, "cleanLog"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    invoke-virtual {p1}, Lcom/sleepycat/je/Environment;->cleanLog()I

    move-result v0

    .line 637
    .local v0, "numFiles":I
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    return-object v1

    .line 638
    .end local v0    # "numFiles":I
    :cond_0
    const-string v0, "evictMemory"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 639
    invoke-virtual {p1}, Lcom/sleepycat/je/Environment;->evictMemory()V

    .line 640
    return-object v1

    .line 641
    :cond_1
    const-string v0, "checkpoint"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 642
    new-instance v0, Lcom/sleepycat/je/CheckpointConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/CheckpointConfig;-><init>()V

    .line 643
    .local v0, "config":Lcom/sleepycat/je/CheckpointConfig;
    if-eqz p3, :cond_2

    array-length v2, p3

    if-lez v2, :cond_2

    .line 644
    const/4 v2, 0x0

    aget-object v2, p3, v2

    check-cast v2, Ljava/lang/Boolean;

    .line 645
    .local v2, "force":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sleepycat/je/CheckpointConfig;->setForce(Z)Lcom/sleepycat/je/CheckpointConfig;

    .line 647
    .end local v2    # "force":Ljava/lang/Boolean;
    :cond_2
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/Environment;->checkpoint(Lcom/sleepycat/je/CheckpointConfig;)V

    .line 648
    return-object v1

    .line 649
    .end local v0    # "config":Lcom/sleepycat/je/CheckpointConfig;
    :cond_3
    const-string/jumbo v0, "sync"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 650
    invoke-virtual {p1}, Lcom/sleepycat/je/Environment;->sync()V

    .line 651
    return-object v1

    .line 652
    :cond_4
    const-string v0, "getEnvironmentStats"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 653
    nop

    .line 654
    invoke-direct {p0, p3}, Lcom/sleepycat/je/jmx/JEMBeanHelper;->getStatsConfig([Ljava/lang/Object;)Lcom/sleepycat/je/StatsConfig;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/Environment;->getStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/EnvironmentStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentStats;->toString()Ljava/lang/String;

    move-result-object v0

    .line 653
    return-object v0

    .line 655
    :cond_5
    const-string v0, "getTxnStats"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 656
    nop

    .line 657
    invoke-direct {p0, p3}, Lcom/sleepycat/je/jmx/JEMBeanHelper;->getStatsConfig([Ljava/lang/Object;)Lcom/sleepycat/je/StatsConfig;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/Environment;->getTransactionStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/TransactionStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/TransactionStats;->toString()Ljava/lang/String;

    move-result-object v0

    .line 656
    return-object v0

    .line 658
    :cond_6
    const-string v0, "getDatabaseNames"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 659
    invoke-virtual {p1}, Lcom/sleepycat/je/Environment;->getDatabaseNames()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 660
    :cond_7
    const-string v0, "getDatabaseStats"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 661
    invoke-direct {p0, p1, p3}, Lcom/sleepycat/je/jmx/JEMBeanHelper;->getDatabaseStats(Lcom/sleepycat/je/Environment;[Ljava/lang/Object;)Lcom/sleepycat/je/DatabaseStats;

    move-result-object v0

    .line 662
    .local v0, "stats":Lcom/sleepycat/je/DatabaseStats;
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_8
    return-object v1

    .line 666
    .end local v0    # "stats":Lcom/sleepycat/je/DatabaseStats;
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "actionName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not valid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 668
    :catch_0
    move-exception v0

    .line 675
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljavax/management/MBeanException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/management/MBeanException;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw v1

    .line 630
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "actionName cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAttribute(Lcom/sleepycat/je/Environment;Ljavax/management/Attribute;)V
    .locals 8
    .param p1, "targetEnv"    # Lcom/sleepycat/je/Environment;
    .param p2, "attribute"    # Ljavax/management/Attribute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/AttributeNotFoundException;,
            Ljavax/management/InvalidAttributeValueException;
        }
    .end annotation

    .line 507
    const-string v0, "attribute name="

    if-eqz p2, :cond_8

    .line 512
    invoke-virtual {p2}, Ljavax/management/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    .line 513
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p2}, Ljavax/management/Attribute;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 515
    .local v2, "value":Ljava/lang/Object;
    if-eqz v1, :cond_7

    .line 520
    if-eqz v2, :cond_6

    .line 526
    :try_start_0
    const-string v3, "openReadOnly"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 527
    iget-object v3, p0, Lcom/sleepycat/je/jmx/JEMBeanHelper;->openConfig:Lcom/sleepycat/je/EnvironmentConfig;

    move-object v4, v2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/EnvironmentConfig;->setReadOnly(Z)Lcom/sleepycat/je/EnvironmentConfig;

    goto :goto_1

    .line 528
    :cond_0
    const-string v3, "openTransactional"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 529
    iget-object v3, p0, Lcom/sleepycat/je/jmx/JEMBeanHelper;->openConfig:Lcom/sleepycat/je/EnvironmentConfig;

    move-object v4, v2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/EnvironmentConfig;->setTransactional(Z)Lcom/sleepycat/je/EnvironmentConfig;

    goto :goto_1

    .line 530
    :cond_1
    const-string v3, "openSerializableIsolation"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 531
    iget-object v3, p0, Lcom/sleepycat/je/jmx/JEMBeanHelper;->openConfig:Lcom/sleepycat/je/EnvironmentConfig;

    move-object v4, v2

    check-cast v4, Ljava/lang/Boolean;

    .line 532
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/EnvironmentConfig;->setTxnSerializableIsolation(Z)Lcom/sleepycat/je/EnvironmentConfig;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 535
    :cond_2
    const-string v3, " is not valid."

    const-string v4, "attribute "

    if-eqz p1, :cond_5

    .line 537
    nop

    .line 538
    :try_start_1
    invoke-virtual {p1}, Lcom/sleepycat/je/Environment;->getMutableConfig()Lcom/sleepycat/je/EnvironmentMutableConfig;

    move-result-object v5

    .line 540
    .local v5, "config":Lcom/sleepycat/je/EnvironmentMutableConfig;
    const-string v6, "cacheSize"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 541
    move-object v3, v2

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Lcom/sleepycat/je/EnvironmentMutableConfig;->setCacheSize(J)Lcom/sleepycat/je/EnvironmentMutableConfig;

    .line 542
    invoke-virtual {p1, v5}, Lcom/sleepycat/je/Environment;->setMutableConfig(Lcom/sleepycat/je/EnvironmentMutableConfig;)V

    goto :goto_0

    .line 543
    :cond_3
    const-string v6, "cachePercent"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 544
    move-object v3, v2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/sleepycat/je/EnvironmentMutableConfig;->setCachePercent(I)Lcom/sleepycat/je/EnvironmentMutableConfig;

    .line 545
    invoke-virtual {p1, v5}, Lcom/sleepycat/je/Environment;->setMutableConfig(Lcom/sleepycat/je/EnvironmentMutableConfig;)V

    .line 550
    .end local v5    # "config":Lcom/sleepycat/je/EnvironmentMutableConfig;
    :goto_0
    nop

    .line 560
    :goto_1
    nop

    .line 561
    return-void

    .line 547
    .restart local v5    # "config":Lcom/sleepycat/je/EnvironmentMutableConfig;
    :cond_4
    new-instance v6, Ljavax/management/AttributeNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljavax/management/AttributeNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    .end local p1    # "targetEnv":Lcom/sleepycat/je/Environment;
    .end local p2    # "attribute":Ljavax/management/Attribute;
    throw v6

    .line 551
    .end local v5    # "config":Lcom/sleepycat/je/EnvironmentMutableConfig;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/Object;
    .restart local p1    # "targetEnv":Lcom/sleepycat/je/Environment;
    .restart local p2    # "attribute":Ljavax/management/Attribute;
    :cond_5
    new-instance v5, Ljavax/management/AttributeNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljavax/management/AttributeNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    .end local p1    # "targetEnv":Lcom/sleepycat/je/Environment;
    .end local p2    # "attribute":Ljavax/management/Attribute;
    throw v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 557
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/Object;
    .restart local p1    # "targetEnv":Lcom/sleepycat/je/Environment;
    .restart local p2    # "attribute":Ljavax/management/Attribute;
    :catch_0
    move-exception v3

    .line 558
    .local v3, "e":Lcom/sleepycat/je/DatabaseException;
    new-instance v4, Ljavax/management/InvalidAttributeValueException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 559
    invoke-virtual {v3}, Lcom/sleepycat/je/DatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljavax/management/InvalidAttributeValueException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 555
    .end local v3    # "e":Lcom/sleepycat/je/DatabaseException;
    :catch_1
    move-exception v3

    .line 556
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljavax/management/InvalidAttributeValueException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljavax/management/InvalidAttributeValueException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 521
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    new-instance v0, Ljavax/management/InvalidAttributeValueException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attribute value for attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cannot be null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljavax/management/InvalidAttributeValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 516
    :cond_7
    new-instance v0, Ljavax/management/AttributeNotFoundException;

    const-string v3, "Attribute name cannot be null"

    invoke-direct {v0, v3}, Ljavax/management/AttributeNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    :cond_8
    new-instance v0, Ljavax/management/AttributeNotFoundException;

    const-string v1, "Attribute cannot be null"

    invoke-direct {v0, v1}, Ljavax/management/AttributeNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
