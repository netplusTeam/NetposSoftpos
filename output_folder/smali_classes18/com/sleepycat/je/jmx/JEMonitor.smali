.class public Lcom/sleepycat/je/jmx/JEMonitor;
.super Lcom/sleepycat/je/jmx/JEMBean;
.source "JEMonitor.java"

# interfaces
.implements Ljavax/management/DynamicMBean;


# static fields
.field public static final ATT_CACHE_PERCENT:Ljava/lang/String; = "cachePercent"

.field public static final ATT_CACHE_SIZE:Ljava/lang/String; = "cacheSize"

.field public static final ATT_ENV_HOME:Ljava/lang/String; = "environmentHome"

.field public static final ATT_IS_READ_ONLY:Ljava/lang/String; = "isReadOnly"

.field public static final ATT_IS_SERIALIZABLE:Ljava/lang/String; = "isSerializableIsolation"

.field public static final ATT_IS_TRANSACTIONAL:Ljava/lang/String; = "isTransactional"

.field public static final ATT_LOCK_TIMEOUT:Ljava/lang/String; = "lockTimeout"

.field public static final ATT_TXN_TIMEOUT:Ljava/lang/String; = "transactionTimeout"

.field private static final COMMON_ATTR:[Ljavax/management/MBeanAttributeInfo;

.field private static final OPEN_ATTR:[Ljavax/management/MBeanAttributeInfo;

.field static final OP_CHECKPOINT:Ljava/lang/String; = "checkpoint"

.field private static final OP_CHECKPOINT_INFO:Ljavax/management/MBeanOperationInfo;

.field static final OP_CLEAN:Ljava/lang/String; = "cleanLog"

.field private static final OP_CLEAN_INFO:Ljavax/management/MBeanOperationInfo;

.field static final OP_DB_NAMES:Ljava/lang/String; = "getDatabaseNames"

.field private static final OP_DB_NAMES_INFO:Ljavax/management/MBeanOperationInfo;

.field static final OP_DB_STAT:Ljava/lang/String; = "getDatabaseStats"

.field private static final OP_DB_STAT_INFO:Ljavax/management/MBeanOperationInfo;

.field static final OP_ENV_CONFIG:Ljava/lang/String; = "getEnvConfig"

.field private static final OP_ENV_CONFIG_INFO:Ljavax/management/MBeanOperationInfo;

.field public static final OP_ENV_STAT:Ljava/lang/String; = "getEnvironmentStats"

.field private static final OP_ENV_STAT_INFO:Ljavax/management/MBeanOperationInfo;

.field static final OP_EVICT:Ljava/lang/String; = "evictMemory"

.field private static final OP_EVICT_INFO:Ljavax/management/MBeanOperationInfo;

.field public static final OP_GET_TIPS:Ljava/lang/String; = "getTips"

.field static final OP_SYNC:Ljava/lang/String; = "sync"

.field private static final OP_SYNC_INFO:Ljavax/management/MBeanOperationInfo;

.field static final OP_TXN_STAT:Ljava/lang/String; = "getTxnStats"

.field private static final OP_TXN_STAT_INFO:Ljavax/management/MBeanOperationInfo;

.field private static final TRANSACTIONAL_ATTR:[Ljavax/management/MBeanAttributeInfo;

.field private static final checkpointParams:[Ljavax/management/MBeanParameterInfo;

.field private static final dbStatParams:[Ljavax/management/MBeanParameterInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 64
    const/4 v0, 0x1

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

    sput-object v1, Lcom/sleepycat/je/jmx/JEMonitor;->COMMON_ATTR:[Ljavax/management/MBeanAttributeInfo;

    .line 72
    const/4 v1, 0x5

    new-array v1, v1, [Ljavax/management/MBeanAttributeInfo;

    new-instance v10, Ljavax/management/MBeanAttributeInfo;

    const-string v4, "isReadOnly"

    const-string v5, "java.lang.Boolean"

    const-string/jumbo v6, "true if this Environment is read only."

    const/4 v7, 0x1

    const/4 v9, 0x1

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Ljavax/management/MBeanAttributeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    aput-object v10, v1, v2

    new-instance v3, Ljavax/management/MBeanAttributeInfo;

    const-string v12, "isTransactional"

    const-string v13, "java.lang.Boolean"

    const-string/jumbo v14, "true if this Environment supports transactions."

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v11, v3

    invoke-direct/range {v11 .. v17}, Ljavax/management/MBeanAttributeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    aput-object v3, v1, v0

    new-instance v3, Ljavax/management/MBeanAttributeInfo;

    const-string v5, "cacheSize"

    const-string v6, "java.lang.Long"

    const-string v7, "Cache size, in bytes."

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Ljavax/management/MBeanAttributeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    const/4 v4, 0x2

    aput-object v3, v1, v4

    new-instance v3, Ljavax/management/MBeanAttributeInfo;

    const-string v6, "cachePercent"

    const-string v7, "java.lang.Integer"

    const-string v8, "By default, cache size is (cachePercent * JVM maximum memory). To change the cache size using a percentage of the heap size, set the cache size to 0 and cachePercent to the desired percentage value."

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Ljavax/management/MBeanAttributeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

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

    sput-object v1, Lcom/sleepycat/je/jmx/JEMonitor;->OPEN_ATTR:[Ljavax/management/MBeanAttributeInfo;

    .line 101
    new-array v1, v4, [Ljavax/management/MBeanAttributeInfo;

    new-instance v3, Ljavax/management/MBeanAttributeInfo;

    const-string v7, "isSerializableIsolation"

    const-string v8, "java.lang.Boolean"

    const-string/jumbo v9, "true if this environment provides Serializable (degree 3) isolation. The default is RepeatableRead isolation."

    const/4 v12, 0x1

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Ljavax/management/MBeanAttributeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    aput-object v3, v1, v2

    new-instance v3, Ljavax/management/MBeanAttributeInfo;

    const-string/jumbo v14, "transactionTimeout"

    const-string v15, "java.lang.Long"

    const-string v16, "Transaction timeout, in seconds. A value of 0 means there is no timeout."

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v13, v3

    invoke-direct/range {v13 .. v19}, Ljavax/management/MBeanAttributeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    aput-object v3, v1, v0

    sput-object v1, Lcom/sleepycat/je/jmx/JEMonitor;->TRANSACTIONAL_ATTR:[Ljavax/management/MBeanAttributeInfo;

    .line 137
    new-instance v1, Ljavax/management/MBeanOperationInfo;

    new-array v9, v2, [Ljavax/management/MBeanParameterInfo;

    const-string v7, "cleanLog"

    const-string v8, "Remove obsolete environment log files. Zero or more log files will be cleaned as necessary to bring the disk space utilization of the environment above the configured minimum utilization threshold as determined by the setting je.cleaner.minUtilization. Returns the number of files cleaned. These will be deleted at the next qualifying checkpoint."

    const-string v10, "java.lang.Integer"

    const/4 v11, 0x3

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Ljavax/management/MBeanOperationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljavax/management/MBeanParameterInfo;Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/jmx/JEMonitor;->OP_CLEAN_INFO:Ljavax/management/MBeanOperationInfo;

    .line 149
    new-instance v1, Ljavax/management/MBeanOperationInfo;

    new-array v15, v2, [Ljavax/management/MBeanParameterInfo;

    const-string v13, "evictMemory"

    const-string v14, "Reduce cache usage to the threshold determined by the setting je.evictor.useMemoryFloor. "

    const-string/jumbo v16, "void"

    const/16 v17, 0x3

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Ljavax/management/MBeanOperationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljavax/management/MBeanParameterInfo;Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/jmx/JEMonitor;->OP_EVICT_INFO:Ljavax/management/MBeanOperationInfo;

    .line 157
    new-array v9, v0, [Ljavax/management/MBeanParameterInfo;

    new-instance v1, Ljavax/management/MBeanParameterInfo;

    const-string v3, "force"

    const-string v12, "java.lang.Boolean"

    const-string v6, "If true, force a checkpoint even if there has been no activity since the last checkpoint. Returns true if a checkpoint executed."

    invoke-direct {v1, v3, v12, v6}, Ljavax/management/MBeanParameterInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v9, v2

    sput-object v9, Lcom/sleepycat/je/jmx/JEMonitor;->checkpointParams:[Ljavax/management/MBeanParameterInfo;

    .line 165
    new-instance v1, Ljavax/management/MBeanOperationInfo;

    const-string v7, "checkpoint"

    const-string v8, "Checkpoint the environment."

    const-string/jumbo v10, "void"

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Ljavax/management/MBeanOperationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljavax/management/MBeanParameterInfo;Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/jmx/JEMonitor;->OP_CHECKPOINT_INFO:Ljavax/management/MBeanOperationInfo;

    .line 170
    new-instance v1, Ljavax/management/MBeanOperationInfo;

    new-array v3, v2, [Ljavax/management/MBeanParameterInfo;

    const-string/jumbo v14, "sync"

    const-string v15, "Flush the environment to stable storage."

    const-string/jumbo v17, "void"

    const/16 v18, 0x3

    move-object v13, v1

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v18}, Ljavax/management/MBeanOperationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljavax/management/MBeanParameterInfo;Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/jmx/JEMonitor;->OP_SYNC_INFO:Ljavax/management/MBeanOperationInfo;

    .line 175
    new-instance v1, Ljavax/management/MBeanOperationInfo;

    sget-object v9, Lcom/sleepycat/je/jmx/JEMonitor;->statParams:[Ljavax/management/MBeanParameterInfo;

    const-string v7, "getEnvironmentStats"

    const-string v8, "Get environment statistics."

    const-string v10, "java.lang.String"

    const/4 v11, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Ljavax/management/MBeanOperationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljavax/management/MBeanParameterInfo;Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/jmx/JEMonitor;->OP_ENV_STAT_INFO:Ljavax/management/MBeanOperationInfo;

    .line 180
    new-instance v1, Ljavax/management/MBeanOperationInfo;

    sget-object v16, Lcom/sleepycat/je/jmx/JEMonitor;->statParams:[Ljavax/management/MBeanParameterInfo;

    const-string v14, "getTxnStats"

    const-string v15, "Get transactional statistics."

    const-string v17, "java.lang.String"

    const/16 v18, 0x0

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Ljavax/management/MBeanOperationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljavax/management/MBeanParameterInfo;Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/jmx/JEMonitor;->OP_TXN_STAT_INFO:Ljavax/management/MBeanOperationInfo;

    .line 185
    new-instance v1, Ljavax/management/MBeanOperationInfo;

    new-array v9, v2, [Ljavax/management/MBeanParameterInfo;

    const-string v7, "getDatabaseNames"

    const-string v8, "Get the names of databases in the environment."

    const-string v10, "java.util.ArrayList"

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Ljavax/management/MBeanOperationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljavax/management/MBeanParameterInfo;Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/jmx/JEMonitor;->OP_DB_NAMES_INFO:Ljavax/management/MBeanOperationInfo;

    .line 191
    new-array v1, v5, [Ljavax/management/MBeanParameterInfo;

    new-instance v3, Ljavax/management/MBeanParameterInfo;

    const-string v5, "clear"

    const-string v6, "If true, reset statistics after reading."

    invoke-direct {v3, v5, v12, v6}, Ljavax/management/MBeanParameterInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    new-instance v3, Ljavax/management/MBeanParameterInfo;

    const-string v5, "fast"

    const-string v6, "If true, only return statistics which do not require expensive computation. Currently all database stats are not fast."

    invoke-direct {v3, v5, v12, v6}, Ljavax/management/MBeanParameterInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v0

    new-instance v0, Ljavax/management/MBeanParameterInfo;

    const-string v3, "databaseName"

    const-string v5, "java.lang.String"

    const-string v6, "database name"

    invoke-direct {v0, v3, v5, v6}, Ljavax/management/MBeanParameterInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v1, v4

    sput-object v1, Lcom/sleepycat/je/jmx/JEMonitor;->dbStatParams:[Ljavax/management/MBeanParameterInfo;

    .line 202
    new-instance v0, Ljavax/management/MBeanOperationInfo;

    const-string v14, "getDatabaseStats"

    const-string v15, "Get database statistics."

    const-string v17, "java.lang.String"

    move-object v13, v0

    move-object/from16 v16, v1

    invoke-direct/range {v13 .. v18}, Ljavax/management/MBeanOperationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljavax/management/MBeanParameterInfo;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/jmx/JEMonitor;->OP_DB_STAT_INFO:Ljavax/management/MBeanOperationInfo;

    .line 207
    new-instance v0, Ljavax/management/MBeanOperationInfo;

    new-array v6, v2, [Ljavax/management/MBeanParameterInfo;

    const-string v4, "getEnvConfig"

    const-string v5, "Get environment configuration."

    const-string v7, "java.lang.String"

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Ljavax/management/MBeanOperationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljavax/management/MBeanParameterInfo;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/jmx/JEMonitor;->OP_ENV_CONFIG_INFO:Ljavax/management/MBeanOperationInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 218
    invoke-direct {p0}, Lcom/sleepycat/je/jmx/JEMBean;-><init>()V

    .line 219
    return-void
.end method

.method protected constructor <init>(Lcom/sleepycat/je/Environment;)V
    .locals 0
    .param p1, "env"    # Lcom/sleepycat/je/Environment;

    .line 214
    invoke-direct {p0, p1}, Lcom/sleepycat/je/jmx/JEMBean;-><init>(Lcom/sleepycat/je/Environment;)V

    .line 215
    return-void
.end method

.method private getDatabaseStats([Ljava/lang/Object;)Lcom/sleepycat/je/DatabaseStats;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 455
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    array-length v1, p1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 459
    :cond_0
    const/4 v1, 0x2

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/String;

    .line 461
    .local v1, "dbName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 463
    .local v2, "db":Lcom/sleepycat/je/Database;
    :try_start_0
    new-instance v3, Lcom/sleepycat/je/DatabaseConfig;

    invoke-direct {v3}, Lcom/sleepycat/je/DatabaseConfig;-><init>()V

    .line 464
    .local v3, "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/DatabaseConfig;->setReadOnly(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 465
    invoke-static {v3, v4}, Lcom/sleepycat/je/DbInternal;->setUseExistingConfig(Lcom/sleepycat/je/DatabaseConfig;Z)V

    .line 466
    iget-object v4, p0, Lcom/sleepycat/je/jmx/JEMonitor;->env:Lcom/sleepycat/je/Environment;

    invoke-virtual {v4, v0, v1, v3}, Lcom/sleepycat/je/Environment;->openDatabase(Lcom/sleepycat/je/Transaction;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;)Lcom/sleepycat/je/Database;

    move-result-object v0

    move-object v2, v0

    .line 468
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/jmx/JEMonitor;->getStatsConfig([Ljava/lang/Object;)Lcom/sleepycat/je/StatsConfig;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sleepycat/je/Database;->getStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/DatabaseStats;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    if-eqz v2, :cond_1

    .line 471
    invoke-virtual {v2}, Lcom/sleepycat/je/Database;->close()V

    .line 468
    :cond_1
    return-object v0

    .line 470
    .end local v3    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    .line 471
    invoke-virtual {v2}, Lcom/sleepycat/je/Database;->close()V

    :cond_2
    throw v0

    .line 456
    .end local v1    # "dbName":Ljava/lang/String;
    .end local v2    # "db":Lcom/sleepycat/je/Database;
    :cond_3
    :goto_0
    return-object v0
.end method


# virtual methods
.method protected addOperations()V
    .locals 2

    .line 519
    iget-object v0, p0, Lcom/sleepycat/je/jmx/JEMonitor;->env:Lcom/sleepycat/je/Environment;

    if-nez v0, :cond_0

    .line 520
    return-void

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/jmx/JEMonitor;->operationList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sleepycat/je/jmx/JEMonitor;->OP_CLEAN_INFO:Ljavax/management/MBeanOperationInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    iget-object v0, p0, Lcom/sleepycat/je/jmx/JEMonitor;->operationList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sleepycat/je/jmx/JEMonitor;->OP_EVICT_INFO:Ljavax/management/MBeanOperationInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    iget-object v0, p0, Lcom/sleepycat/je/jmx/JEMonitor;->operationList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sleepycat/je/jmx/JEMonitor;->OP_ENV_STAT_INFO:Ljavax/management/MBeanOperationInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    iget-object v0, p0, Lcom/sleepycat/je/jmx/JEMonitor;->operationList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sleepycat/je/jmx/JEMonitor;->OP_DB_NAMES_INFO:Ljavax/management/MBeanOperationInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    iget-object v0, p0, Lcom/sleepycat/je/jmx/JEMonitor;->operationList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sleepycat/je/jmx/JEMonitor;->OP_DB_STAT_INFO:Ljavax/management/MBeanOperationInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    iget-object v0, p0, Lcom/sleepycat/je/jmx/JEMonitor;->operationList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sleepycat/je/jmx/JEMonitor;->OP_ENV_CONFIG_INFO:Ljavax/management/MBeanOperationInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/jmx/JEMonitor;->env:Lcom/sleepycat/je/Environment;

    invoke-virtual {v0}, Lcom/sleepycat/je/Environment;->getConfig()Lcom/sleepycat/je/EnvironmentConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentConfig;->getTransactional()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    iget-object v0, p0, Lcom/sleepycat/je/jmx/JEMonitor;->operationList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sleepycat/je/jmx/JEMonitor;->OP_CHECKPOINT_INFO:Ljavax/management/MBeanOperationInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    iget-object v0, p0, Lcom/sleepycat/je/jmx/JEMonitor;->operationList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sleepycat/je/jmx/JEMonitor;->OP_TXN_STAT_INFO:Ljavax/management/MBeanOperationInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 536
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/jmx/JEMonitor;->operationList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sleepycat/je/jmx/JEMonitor;->OP_SYNC_INFO:Ljavax/management/MBeanOperationInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    :goto_0
    nop

    .line 543
    return-void

    .line 538
    :catch_0
    move-exception v0

    .line 540
    .local v0, "e":Lcom/sleepycat/je/DatabaseException;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/je/jmx/JEMonitor;->operationList:Ljava/util/ArrayList;

    .line 541
    return-void
.end method

.method protected doRegisterMBean(Lcom/sleepycat/je/Environment;)V
    .locals 3
    .param p1, "env"    # Lcom/sleepycat/je/Environment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 480
    iget-object v0, p0, Lcom/sleepycat/je/jmx/JEMonitor;->server:Ljavax/management/MBeanServer;

    new-instance v1, Lcom/sleepycat/je/jmx/JEMonitor;

    invoke-direct {v1, p1}, Lcom/sleepycat/je/jmx/JEMonitor;-><init>(Lcom/sleepycat/je/Environment;)V

    iget-object v2, p0, Lcom/sleepycat/je/jmx/JEMonitor;->jeName:Ljavax/management/ObjectName;

    invoke-interface {v0, v1, v2}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;

    .line 481
    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "attributeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/AttributeNotFoundException;,
            Ljavax/management/MBeanException;
        }
    .end annotation

    .line 236
    if-eqz p1, :cond_8

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/jmx/JEMonitor;->env:Lcom/sleepycat/je/Environment;

    invoke-virtual {v0}, Lcom/sleepycat/je/Environment;->getConfig()Lcom/sleepycat/je/EnvironmentConfig;

    move-result-object v0

    .line 243
    .local v0, "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    const-string v1, "environmentHome"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/sleepycat/je/jmx/JEMonitor;->env:Lcom/sleepycat/je/Environment;

    invoke-virtual {v1}, Lcom/sleepycat/je/Environment;->getHome()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 245
    :cond_0
    const-string v1, "isReadOnly"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    new-instance v1, Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentConfig;->getReadOnly()Z

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v1

    .line 247
    :cond_1
    const-string v1, "isTransactional"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 248
    new-instance v1, Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentConfig;->getTransactional()Z

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v1

    .line 249
    :cond_2
    const-string v1, "cacheSize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 250
    new-instance v1, Ljava/lang/Long;

    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentConfig;->getCacheSize()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    return-object v1

    .line 251
    :cond_3
    const-string v1, "cachePercent"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 252
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentConfig;->getCachePercent()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    return-object v1

    .line 253
    :cond_4
    const-string v1, "lockTimeout"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 254
    new-instance v1, Ljava/lang/Long;

    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentConfig;->getLockTimeout()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    return-object v1

    .line 255
    :cond_5
    const-string v1, "isSerializableIsolation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 256
    new-instance v1, Ljava/lang/Boolean;

    .line 257
    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentConfig;->getTxnSerializableIsolation()Z

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    .line 256
    return-object v1

    .line 258
    :cond_6
    const-string/jumbo v1, "transactionTimeout"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 259
    new-instance v1, Ljava/lang/Long;

    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentConfig;->getTxnTimeout()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    return-object v1

    .line 261
    :cond_7
    new-instance v1, Ljavax/management/AttributeNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not valid."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/management/AttributeNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p1    # "attributeName":Ljava/lang/String;
    throw v1
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    .end local v0    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .restart local p1    # "attributeName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljavax/management/MBeanException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/management/MBeanException;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw v1

    .line 264
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 266
    .local v0, "e":Lcom/sleepycat/je/DatabaseException;
    new-instance v1, Ljavax/management/MBeanException;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljavax/management/MBeanException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 237
    .end local v0    # "e":Lcom/sleepycat/je/DatabaseException;
    :cond_8
    new-instance v0, Ljavax/management/AttributeNotFoundException;

    const-string v1, "Attribute name can\'t be null."

    invoke-direct {v0, v1}, Ljavax/management/AttributeNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getAttributeList()[Ljavax/management/MBeanAttributeInfo;
    .locals 5

    .line 485
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 488
    .local v0, "attrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax/management/MBeanAttributeInfo;>;"
    iget-object v1, p0, Lcom/sleepycat/je/jmx/JEMonitor;->env:Lcom/sleepycat/je/Environment;

    if-nez v1, :cond_0

    .line 489
    const/4 v1, 0x0

    return-object v1

    .line 493
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/sleepycat/je/jmx/JEMonitor;->COMMON_ATTR:[Ljavax/management/MBeanAttributeInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 494
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 498
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    sget-object v2, Lcom/sleepycat/je/jmx/JEMonitor;->OPEN_ATTR:[Ljavax/management/MBeanAttributeInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 499
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 504
    .end local v1    # "i":I
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/jmx/JEMonitor;->env:Lcom/sleepycat/je/Environment;

    invoke-virtual {v1}, Lcom/sleepycat/je/Environment;->getConfig()Lcom/sleepycat/je/EnvironmentConfig;

    move-result-object v1

    .line 505
    .local v1, "config":Lcom/sleepycat/je/EnvironmentConfig;
    invoke-virtual {v1}, Lcom/sleepycat/je/EnvironmentConfig;->getTransactional()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 506
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    sget-object v3, Lcom/sleepycat/je/jmx/JEMonitor;->TRANSACTIONAL_ATTR:[Ljavax/management/MBeanAttributeInfo;

    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 507
    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 512
    .end local v1    # "config":Lcom/sleepycat/je/EnvironmentConfig;
    .end local v2    # "i":I
    :cond_3
    goto :goto_3

    .line 510
    :catch_0
    move-exception v1

    .line 514
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljavax/management/MBeanAttributeInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljavax/management/MBeanAttributeInfo;

    return-object v1
.end method

.method public getAttributes([Ljava/lang/String;)Ljavax/management/AttributeList;
    .locals 5
    .param p1, "attributes"    # [Ljava/lang/String;

    .line 328
    if-eqz p1, :cond_1

    .line 333
    new-instance v0, Ljavax/management/AttributeList;

    invoke-direct {v0}, Ljavax/management/AttributeList;-><init>()V

    .line 335
    .local v0, "results":Ljavax/management/AttributeList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 337
    :try_start_0
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/sleepycat/je/jmx/JEMonitor;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 338
    .local v2, "value":Ljava/lang/Object;
    new-instance v3, Ljavax/management/Attribute;

    aget-object v4, p1, v1

    invoke-direct {v3, v4, v2}, Ljavax/management/Attribute;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljavax/management/AttributeList;->add(Ljavax/management/Attribute;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_1

    .line 339
    :catch_0
    move-exception v2

    .line 340
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 335
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 329
    .end local v0    # "results":Ljavax/management/AttributeList;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attributes can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected initClassFields()V
    .locals 1

    .line 223
    const-class v0, Lcom/sleepycat/je/jmx/JEMonitor;

    iput-object v0, p0, Lcom/sleepycat/je/jmx/JEMonitor;->currentClass:Ljava/lang/Class;

    .line 224
    const-string v0, "JEMonitor"

    iput-object v0, p0, Lcom/sleepycat/je/jmx/JEMonitor;->className:Ljava/lang/String;

    .line 225
    const-string v0, "Monitor an open Berkeley DB, Java Edition Environment."

    iput-object v0, p0, Lcom/sleepycat/je/jmx/JEMonitor;->DESCRIPTION:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public invoke(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "actionName"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .param p3, "signature"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/MBeanException;
        }
    .end annotation

    .line 391
    if-eqz p1, :cond_c

    .line 396
    :try_start_0
    const-string v0, "cleanLog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/sleepycat/je/jmx/JEMonitor;->env:Lcom/sleepycat/je/Environment;

    invoke-virtual {v0}, Lcom/sleepycat/je/Environment;->cleanLog()I

    move-result v0

    .line 398
    .local v0, "numFiles":I
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    return-object v1

    .line 399
    .end local v0    # "numFiles":I
    :cond_0
    const-string v0, "evictMemory"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/sleepycat/je/jmx/JEMonitor;->env:Lcom/sleepycat/je/Environment;

    invoke-virtual {v0}, Lcom/sleepycat/je/Environment;->evictMemory()V

    .line 401
    return-object v1

    .line 402
    :cond_1
    const-string v0, "checkpoint"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 403
    new-instance v0, Lcom/sleepycat/je/CheckpointConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/CheckpointConfig;-><init>()V

    .line 404
    .local v0, "ckptConfig":Lcom/sleepycat/je/CheckpointConfig;
    if-eqz p2, :cond_2

    array-length v3, p2

    if-lez v3, :cond_2

    .line 405
    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Boolean;

    .line 406
    .local v2, "force":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sleepycat/je/CheckpointConfig;->setForce(Z)Lcom/sleepycat/je/CheckpointConfig;

    .line 408
    .end local v2    # "force":Ljava/lang/Boolean;
    :cond_2
    iget-object v2, p0, Lcom/sleepycat/je/jmx/JEMonitor;->env:Lcom/sleepycat/je/Environment;

    invoke-virtual {v2, v0}, Lcom/sleepycat/je/Environment;->checkpoint(Lcom/sleepycat/je/CheckpointConfig;)V

    .line 409
    return-object v1

    .line 410
    .end local v0    # "ckptConfig":Lcom/sleepycat/je/CheckpointConfig;
    :cond_3
    const-string/jumbo v0, "sync"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 411
    iget-object v0, p0, Lcom/sleepycat/je/jmx/JEMonitor;->env:Lcom/sleepycat/je/Environment;

    invoke-virtual {v0}, Lcom/sleepycat/je/Environment;->sync()V

    .line 412
    return-object v1

    .line 413
    :cond_4
    const-string v0, "getEnvironmentStats"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 414
    iget-object v0, p0, Lcom/sleepycat/je/jmx/JEMonitor;->env:Lcom/sleepycat/je/Environment;

    invoke-virtual {p0, p2}, Lcom/sleepycat/je/jmx/JEMonitor;->getStatsConfig([Ljava/lang/Object;)Lcom/sleepycat/je/StatsConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/Environment;->getStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/EnvironmentStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentStats;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 415
    :cond_5
    const-string v0, "getTxnStats"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 416
    iget-object v0, p0, Lcom/sleepycat/je/jmx/JEMonitor;->env:Lcom/sleepycat/je/Environment;

    .line 417
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/jmx/JEMonitor;->getStatsConfig([Ljava/lang/Object;)Lcom/sleepycat/je/StatsConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/Environment;->getTransactionStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/TransactionStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/TransactionStats;->toString()Ljava/lang/String;

    move-result-object v0

    .line 416
    return-object v0

    .line 418
    :cond_6
    const-string v0, "getDatabaseNames"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 419
    iget-object v0, p0, Lcom/sleepycat/je/jmx/JEMonitor;->env:Lcom/sleepycat/je/Environment;

    invoke-virtual {v0}, Lcom/sleepycat/je/Environment;->getDatabaseNames()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 420
    :cond_7
    const-string v0, "getDatabaseStats"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 421
    invoke-direct {p0, p2}, Lcom/sleepycat/je/jmx/JEMonitor;->getDatabaseStats([Ljava/lang/Object;)Lcom/sleepycat/je/DatabaseStats;

    move-result-object v0

    .line 422
    .local v0, "stats":Lcom/sleepycat/je/DatabaseStats;
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_8
    return-object v1

    .line 423
    .end local v0    # "stats":Lcom/sleepycat/je/DatabaseStats;
    :cond_9
    const-string v0, "getTips"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 424
    iget-object v0, p0, Lcom/sleepycat/je/jmx/JEMonitor;->env:Lcom/sleepycat/je/Environment;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 425
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/sleepycat/je/jmx/JEMonitor;->getStatsConfig([Ljava/lang/Object;)Lcom/sleepycat/je/StatsConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/Environment;->getStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/EnvironmentStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentStats;->getTips()Ljava/util/Map;

    move-result-object v0

    .line 424
    return-object v0

    .line 426
    :cond_a
    const-string v0, "getEnvConfig"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 427
    iget-object v0, p0, Lcom/sleepycat/je/jmx/JEMonitor;->env:Lcom/sleepycat/je/Environment;

    invoke-virtual {v0}, Lcom/sleepycat/je/Environment;->getConfig()Lcom/sleepycat/je/EnvironmentConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/EnvironmentConfig;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 430
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActionName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not valid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 432
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Lcom/sleepycat/je/DatabaseException;
    new-instance v1, Ljavax/management/MBeanException;

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 441
    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljavax/management/MBeanException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 392
    .end local v0    # "e":Lcom/sleepycat/je/DatabaseException;
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ActionName can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAttribute(Ljavax/management/Attribute;)V
    .locals 8
    .param p1, "attribute"    # Ljavax/management/Attribute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/AttributeNotFoundException;,
            Ljavax/management/InvalidAttributeValueException;,
            Ljavax/management/MBeanException;
        }
    .end annotation

    .line 281
    const-string v0, " is not valid."

    if-eqz p1, :cond_4

    .line 286
    invoke-virtual {p1}, Ljavax/management/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1}, Ljavax/management/Attribute;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 289
    .local v2, "value":Ljava/lang/Object;
    if-eqz v1, :cond_3

    .line 294
    const-string v3, "Attribute value for attribute "

    if-eqz v2, :cond_2

    .line 300
    :try_start_0
    iget-object v4, p0, Lcom/sleepycat/je/jmx/JEMonitor;->env:Lcom/sleepycat/je/Environment;

    invoke-virtual {v4}, Lcom/sleepycat/je/Environment;->getMutableConfig()Lcom/sleepycat/je/EnvironmentMutableConfig;

    move-result-object v4

    .line 302
    .local v4, "mutableConfig":Lcom/sleepycat/je/EnvironmentMutableConfig;
    const-string v5, "cacheSize"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 303
    move-object v5, v2

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/sleepycat/je/EnvironmentMutableConfig;->setCacheSize(J)Lcom/sleepycat/je/EnvironmentMutableConfig;

    .line 304
    iget-object v5, p0, Lcom/sleepycat/je/jmx/JEMonitor;->env:Lcom/sleepycat/je/Environment;

    invoke-virtual {v5, v4}, Lcom/sleepycat/je/Environment;->setMutableConfig(Lcom/sleepycat/je/EnvironmentMutableConfig;)V

    goto :goto_0

    .line 305
    :cond_0
    const-string v5, "cachePercent"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 306
    move-object v5, v2

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/EnvironmentMutableConfig;->setCachePercent(I)Lcom/sleepycat/je/EnvironmentMutableConfig;

    .line 307
    iget-object v5, p0, Lcom/sleepycat/je/jmx/JEMonitor;->env:Lcom/sleepycat/je/Environment;

    invoke-virtual {v5, v4}, Lcom/sleepycat/je/Environment;->setMutableConfig(Lcom/sleepycat/je/EnvironmentMutableConfig;)V

    .line 319
    .end local v4    # "mutableConfig":Lcom/sleepycat/je/EnvironmentMutableConfig;
    :goto_0
    nop

    .line 320
    return-void

    .line 309
    .restart local v4    # "mutableConfig":Lcom/sleepycat/je/EnvironmentMutableConfig;
    :cond_1
    new-instance v5, Ljavax/management/AttributeNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attribute "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/management/AttributeNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    .end local p1    # "attribute":Ljavax/management/Attribute;
    throw v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    .end local v4    # "mutableConfig":Lcom/sleepycat/je/EnvironmentMutableConfig;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/Object;
    .restart local p1    # "attribute":Ljavax/management/Attribute;
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Lcom/sleepycat/je/DatabaseException;
    new-instance v3, Ljavax/management/InvalidAttributeValueException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting value for attribute "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "is invalid because of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 318
    invoke-virtual {v0}, Lcom/sleepycat/je/DatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/management/InvalidAttributeValueException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 312
    .end local v0    # "e":Lcom/sleepycat/je/DatabaseException;
    :catch_1
    move-exception v4

    .line 313
    .local v4, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljavax/management/InvalidAttributeValueException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljavax/management/InvalidAttributeValueException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 295
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    new-instance v0, Ljavax/management/InvalidAttributeValueException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " can\'t be null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljavax/management/InvalidAttributeValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_3
    new-instance v0, Ljavax/management/AttributeNotFoundException;

    const-string v3, "Attribute name can\'t be null."

    invoke-direct {v0, v3}, Ljavax/management/AttributeNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    :cond_4
    new-instance v0, Ljavax/management/AttributeNotFoundException;

    const-string v1, "Attribute can\'t be null."

    invoke-direct {v0, v1}, Ljavax/management/AttributeNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAttributes(Ljavax/management/AttributeList;)Ljavax/management/AttributeList;
    .locals 6
    .param p1, "attributes"    # Ljavax/management/AttributeList;

    .line 353
    if-eqz p1, :cond_1

    .line 358
    new-instance v0, Ljavax/management/AttributeList;

    invoke-direct {v0}, Ljavax/management/AttributeList;-><init>()V

    .line 360
    .local v0, "results":Ljavax/management/AttributeList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljavax/management/AttributeList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 361
    invoke-virtual {p1, v1}, Ljavax/management/AttributeList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/management/Attribute;

    .line 363
    .local v2, "attr":Ljavax/management/Attribute;
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/jmx/JEMonitor;->setAttribute(Ljavax/management/Attribute;)V

    .line 371
    invoke-virtual {v2}, Ljavax/management/Attribute;->getName()Ljava/lang/String;

    move-result-object v3

    .line 372
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/sleepycat/je/jmx/JEMonitor;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 373
    .local v4, "newValue":Ljava/lang/Object;
    new-instance v5, Ljavax/management/Attribute;

    invoke-direct {v5, v3, v4}, Ljavax/management/Attribute;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Ljavax/management/AttributeList;->add(Ljavax/management/Attribute;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "newValue":Ljava/lang/Object;
    goto :goto_1

    .line 374
    :catch_0
    move-exception v3

    .line 375
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 360
    .end local v2    # "attr":Ljavax/management/Attribute;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 379
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 354
    .end local v0    # "results":Ljavax/management/AttributeList;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attribute list can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
