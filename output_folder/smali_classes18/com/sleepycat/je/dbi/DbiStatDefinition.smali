.class public Lcom/sleepycat/je/dbi/DbiStatDefinition;
.super Ljava/lang/Object;
.source "DbiStatDefinition.java"


# static fields
.field public static final BACKUP_COPY_FILES_COUNT:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final BACKUP_COPY_FILES_COUNT_DESC:Ljava/lang/String; = "Number of files copied to the archive by the most recent automatic backup."

.field public static final BACKUP_COPY_FILES_COUNT_NAME:Ljava/lang/String; = "backupCopyFilesCount"

.field public static final BACKUP_COPY_FILES_MS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final BACKUP_COPY_FILES_MS_DESC:Ljava/lang/String; = "The total amount of time in milliseconds taken to copy files to the archive by the most recent automatic backup."

.field public static final BACKUP_COPY_FILES_MS_NAME:Ljava/lang/String; = "backupCopyFilesMs"

.field public static final BACKUP_GROUP_DESC:Ljava/lang/String; = "Automatic backups statistics."

.field public static final BACKUP_GROUP_NAME:Ljava/lang/String; = "Backup"

.field public static final ENV_CREATION_TIME:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final ENV_CREATION_TIME_DESC:Ljava/lang/String; = "System time when the Environment was opened. "

.field public static final ENV_CREATION_TIME_NAME:Ljava/lang/String; = "environmentCreationTime"

.field public static final ENV_GROUP_DESC:Ljava/lang/String; = "Miscellaneous environment wide statistics."

.field public static final ENV_GROUP_NAME:Ljava/lang/String; = "Environment"

.field public static final MB_ADMIN_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final MB_ADMIN_BYTES_DESC:Ljava/lang/String; = "Number of bytes of JE main cache used for cleaner and checkpointer metadata, in bytes."

.field public static final MB_ADMIN_BYTES_NAME:Ljava/lang/String; = "adminBytes"

.field public static final MB_DATA_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final MB_DATA_BYTES_DESC:Ljava/lang/String; = "Amount of JE main cache used for holding data, keys and internal Btree nodes, in bytes."

.field public static final MB_DATA_BYTES_NAME:Ljava/lang/String; = "dataBytes"

.field public static final MB_DOS_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final MB_DOS_BYTES_DESC:Ljava/lang/String; = "Amount of JE main cache consumed by disk-ordered cursor and Database.count operations, in bytes."

.field public static final MB_DOS_BYTES_NAME:Ljava/lang/String; = "DOSBytes"

.field static final MB_GROUP_DESC:Ljava/lang/String; = "Allocation of resources in the cache."

.field static final MB_GROUP_NAME:Ljava/lang/String; = "Cache Layout"

.field public static final MB_LOCK_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final MB_LOCK_BYTES_DESC:Ljava/lang/String; = "Number of bytes of JE cache used for holding locks and transactions, in bytes."

.field public static final MB_LOCK_BYTES_NAME:Ljava/lang/String; = "lockBytes"

.field public static final MB_SHARED_CACHE_TOTAL_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final MB_SHARED_CACHE_TOTAL_BYTES_DESC:Ljava/lang/String; = "Total amount of the shared JE main cache in use, in bytes."

.field public static final MB_SHARED_CACHE_TOTAL_BYTES_NAME:Ljava/lang/String; = "sharedCacheTotalBytes"

.field public static final MB_TOTAL_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final MB_TOTAL_BYTES_DESC:Ljava/lang/String; = "Total amount of JE main cache in use, in bytes."

.field public static final MB_TOTAL_BYTES_NAME:Ljava/lang/String; = "cacheTotalBytes"

.field public static final THROUGHPUT_GROUP_DESC:Ljava/lang/String; = "Throughput statistics for JE calls."

.field public static final THROUGHPUT_GROUP_NAME:Ljava/lang/String; = "Op"

.field public static final THROUGHPUT_PRI_DELETE:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final THROUGHPUT_PRI_DELETE_DESC:Ljava/lang/String; = "Number of successful primary DB deletion operations."

.field public static final THROUGHPUT_PRI_DELETE_FAIL:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final THROUGHPUT_PRI_DELETE_FAIL_DESC:Ljava/lang/String; = "Number of failed primary DB deletion operations."

.field public static final THROUGHPUT_PRI_DELETE_FAIL_NAME:Ljava/lang/String; = "priDeleteFail"

.field public static final THROUGHPUT_PRI_DELETE_NAME:Ljava/lang/String; = "priDelete"

.field public static final THROUGHPUT_PRI_INSERT:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final THROUGHPUT_PRI_INSERT_DESC:Ljava/lang/String; = "Number of successful primary DB insertion operations."

.field public static final THROUGHPUT_PRI_INSERT_FAIL:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final THROUGHPUT_PRI_INSERT_FAIL_DESC:Ljava/lang/String; = "Number of failed primary DB insertion operations."

.field public static final THROUGHPUT_PRI_INSERT_FAIL_NAME:Ljava/lang/String; = "priInsertFail"

.field public static final THROUGHPUT_PRI_INSERT_NAME:Ljava/lang/String; = "priInsert"

.field public static final THROUGHPUT_PRI_POSITION:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final THROUGHPUT_PRI_POSITION_DESC:Ljava/lang/String; = "Number of successful primary DB position operations."

.field public static final THROUGHPUT_PRI_POSITION_NAME:Ljava/lang/String; = "priPosition"

.field public static final THROUGHPUT_PRI_SEARCH:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final THROUGHPUT_PRI_SEARCH_DESC:Ljava/lang/String; = "Number of successful primary DB key search operations."

.field public static final THROUGHPUT_PRI_SEARCH_FAIL:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final THROUGHPUT_PRI_SEARCH_FAIL_DESC:Ljava/lang/String; = "Number of failed primary DB key search operations."

.field public static final THROUGHPUT_PRI_SEARCH_FAIL_NAME:Ljava/lang/String; = "priSearchFail"

.field public static final THROUGHPUT_PRI_SEARCH_NAME:Ljava/lang/String; = "priSearch"

.field public static final THROUGHPUT_PRI_UPDATE:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final THROUGHPUT_PRI_UPDATE_DESC:Ljava/lang/String; = "Number of successful primary DB update operations."

.field public static final THROUGHPUT_PRI_UPDATE_NAME:Ljava/lang/String; = "priUpdate"

.field public static final THROUGHPUT_SEC_DELETE:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final THROUGHPUT_SEC_DELETE_DESC:Ljava/lang/String; = "Number of successful secondary DB deletion operations."

.field public static final THROUGHPUT_SEC_DELETE_NAME:Ljava/lang/String; = "secDelete"

.field public static final THROUGHPUT_SEC_INSERT:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final THROUGHPUT_SEC_INSERT_DESC:Ljava/lang/String; = "Number of successful secondary DB insertion operations."

.field public static final THROUGHPUT_SEC_INSERT_NAME:Ljava/lang/String; = "secInsert"

.field public static final THROUGHPUT_SEC_POSITION:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final THROUGHPUT_SEC_POSITION_DESC:Ljava/lang/String; = "Number of successful secondary DB position operations."

.field public static final THROUGHPUT_SEC_POSITION_NAME:Ljava/lang/String; = "secPosition"

.field public static final THROUGHPUT_SEC_SEARCH:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final THROUGHPUT_SEC_SEARCH_DESC:Ljava/lang/String; = "Number of successful secondary DB key search operations."

.field public static final THROUGHPUT_SEC_SEARCH_FAIL:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final THROUGHPUT_SEC_SEARCH_FAIL_DESC:Ljava/lang/String; = "Number of failed secondary DB key search operations."

.field public static final THROUGHPUT_SEC_SEARCH_FAIL_NAME:Ljava/lang/String; = "secSearchFail"

.field public static final THROUGHPUT_SEC_SEARCH_NAME:Ljava/lang/String; = "secSearch"

.field public static final THROUGHPUT_SEC_UPDATE:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final THROUGHPUT_SEC_UPDATE_DESC:Ljava/lang/String; = "Number of successful secondary DB update operations."

.field public static final THROUGHPUT_SEC_UPDATE_NAME:Ljava/lang/String; = "secUpdate"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 50
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string/jumbo v2, "sharedCacheTotalBytes"

    const-string v3, "Total amount of the shared JE main cache in use, in bytes."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/dbi/DbiStatDefinition;->MB_SHARED_CACHE_TOTAL_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 60
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "cacheTotalBytes"

    const-string v3, "Total amount of JE main cache in use, in bytes."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/dbi/DbiStatDefinition;->MB_TOTAL_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 71
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "dataBytes"

    const-string v3, "Amount of JE main cache used for holding data, keys and internal Btree nodes, in bytes."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/dbi/DbiStatDefinition;->MB_DATA_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 82
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "DOSBytes"

    const-string v3, "Amount of JE main cache consumed by disk-ordered cursor and Database.count operations, in bytes."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/dbi/DbiStatDefinition;->MB_DOS_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 93
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "adminBytes"

    const-string v3, "Number of bytes of JE main cache used for cleaner and checkpointer metadata, in bytes."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/dbi/DbiStatDefinition;->MB_ADMIN_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 104
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "lockBytes"

    const-string v3, "Number of bytes of JE cache used for holding locks and transactions, in bytes."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/dbi/DbiStatDefinition;->MB_LOCK_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 116
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "environmentCreationTime"

    const-string v3, "System time when the Environment was opened. "

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/dbi/DbiStatDefinition;->ENV_CREATION_TIME:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 127
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "priSearch"

    const-string v2, "Number of successful primary DB key search operations."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_PRI_SEARCH:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 136
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "priSearchFail"

    const-string v2, "Number of failed primary DB key search operations."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_PRI_SEARCH_FAIL:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 145
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string/jumbo v1, "secSearch"

    const-string v2, "Number of successful secondary DB key search operations."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_SEC_SEARCH:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 154
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string/jumbo v1, "secSearchFail"

    const-string v2, "Number of failed secondary DB key search operations."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_SEC_SEARCH_FAIL:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 163
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "priPosition"

    const-string v2, "Number of successful primary DB position operations."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_PRI_POSITION:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 172
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string/jumbo v1, "secPosition"

    const-string v2, "Number of successful secondary DB position operations."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_SEC_POSITION:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 181
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "priInsert"

    const-string v2, "Number of successful primary DB insertion operations."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_PRI_INSERT:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 190
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "priInsertFail"

    const-string v2, "Number of failed primary DB insertion operations."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_PRI_INSERT_FAIL:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 199
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string/jumbo v1, "secInsert"

    const-string v2, "Number of successful secondary DB insertion operations."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_SEC_INSERT:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 208
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "priUpdate"

    const-string v2, "Number of successful primary DB update operations."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_PRI_UPDATE:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 217
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string/jumbo v1, "secUpdate"

    const-string v2, "Number of successful secondary DB update operations."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_SEC_UPDATE:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 226
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "priDelete"

    const-string v2, "Number of successful primary DB deletion operations."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_PRI_DELETE:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 235
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "priDeleteFail"

    const-string v2, "Number of failed primary DB deletion operations."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_PRI_DELETE_FAIL:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 244
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string/jumbo v1, "secDelete"

    const-string v2, "Number of successful secondary DB deletion operations."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/DbiStatDefinition;->THROUGHPUT_SEC_DELETE:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 256
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "backupCopyFilesCount"

    const-string v2, "Number of files copied to the archive by the most recent automatic backup."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/DbiStatDefinition;->BACKUP_COPY_FILES_COUNT:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 264
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "backupCopyFilesMs"

    const-string v2, "The total amount of time in milliseconds taken to copy files to the archive by the most recent automatic backup."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/DbiStatDefinition;->BACKUP_COPY_FILES_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
