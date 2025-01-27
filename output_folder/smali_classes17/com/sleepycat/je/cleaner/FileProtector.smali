.class public Lcom/sleepycat/je/cleaner/FileProtector;
.super Ljava/lang/Object;
.source "FileProtector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/cleaner/FileProtector$ProtectedActiveFileSet;,
        Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;,
        Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;,
        Lcom/sleepycat/je/cleaner/FileProtector$LogSizeStats;,
        Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final BACKUP_NAME:Ljava/lang/String; = "Backup"

.field public static final DATABASE_COUNT_NAME:Ljava/lang/String; = "DatabaseCount"

.field public static final DISK_ORDERED_CURSOR_NAME:Ljava/lang/String; = "DiskOrderedCursor"

.field public static final FEEDER_NAME:Ljava/lang/String; = "Feeder"

.field public static final NETWORK_RESTORE_NAME:Ljava/lang/String; = "NetworkRestore"

.field public static final SYNCUP_NAME:Ljava/lang/String; = "Syncup"

.field public static final VLSN_INDEX_NAME:Ljava/lang/String; = "VLSNIndex"


# instance fields
.field private final activeFiles:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final condemnedFiles:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private final protectedFileSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;",
            ">;"
        }
    .end annotation
.end field

.field private final reservedFiles:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private vlsnIndexRange:Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 180
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 1
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/FileProtector;->activeFiles:Ljava/util/NavigableMap;

    .line 207
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/FileProtector;->reservedFiles:Ljava/util/NavigableMap;

    .line 210
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/FileProtector;->condemnedFiles:Ljava/util/NavigableMap;

    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/FileProtector;->protectedFileSets:Ljava/util/Map;

    .line 219
    iput-object p1, p0, Lcom/sleepycat/je/cleaner/FileProtector;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 220
    return-void
.end method

.method private addFileProtection(Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;)V
    .locals 2
    .param p1, "pfs"    # Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;

    .line 224
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProtector;->protectedFileSets:Ljava/util/Map;

    invoke-static {p1}, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;->access$000(Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 229
    return-void

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProtectedFileSets already present name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 227
    invoke-static {p1}, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;->access$000(Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method private declared-synchronized getActiveFiles()Ljava/util/NavigableMap;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProtector;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v0

    .line 359
    .local v0, "fileManager":Lcom/sleepycat/je/log/FileManager;
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/FileProtector;->activeFiles:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 361
    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileManager;->getAllFileNumbers()[Ljava/lang/Long;

    move-result-object v1

    .line 363
    .local v1, "files":[Ljava/lang/Long;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 364
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 366
    .local v3, "file":J
    new-instance v5, Ljava/io/File;

    .line 367
    invoke-virtual {v0, v3, v4}, Lcom/sleepycat/je/log/FileManager;->getFullFileName(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 369
    .local v5, "fileObj":Ljava/io/File;
    iget-object v6, p0, Lcom/sleepycat/je/cleaner/FileProtector;->activeFiles:Ljava/util/NavigableMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    nop

    .end local v3    # "file":J
    .end local v5    # "fileObj":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 372
    .end local v2    # "i":I
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileProtector;
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/FileProtector;->activeFiles:Ljava/util/NavigableMap;

    invoke-interface {v2}, Ljava/util/NavigableMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 373
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/FileProtector;->activeFiles:Ljava/util/NavigableMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 382
    .end local v1    # "files":[Ljava/lang/Long;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileManager;->getNextLsn()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v1

    .line 383
    .local v1, "lastFile":J
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/FileProtector;->activeFiles:Ljava/util/NavigableMap;

    invoke-interface {v3}, Ljava/util/NavigableMap;->lastKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    .line 385
    .local v3, "firstNewFile":J
    move-wide v7, v3

    .local v7, "file":J
    :goto_1
    cmp-long v9, v7, v1

    if-gez v9, :cond_4

    .line 387
    new-instance v9, Ljava/io/File;

    .line 388
    invoke-virtual {v0, v7, v8}, Lcom/sleepycat/je/log/FileManager;->getFullFileName(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 391
    .local v9, "fileObj":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/sleepycat/je/cleaner/FileProtector;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v10}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isMemOnly()Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_2

    .line 392
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 393
    invoke-static {v7, v8}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " lastFile="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 394
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 392
    invoke-static {v5}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v5

    throw v5

    .line 397
    :cond_3
    :goto_2
    iget-object v10, p0, Lcom/sleepycat/je/cleaner/FileProtector;->activeFiles:Ljava/util/NavigableMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    nop

    .end local v9    # "fileObj":Ljava/io/File;
    add-long/2addr v7, v5

    goto :goto_1

    .line 400
    .end local v7    # "file":J
    :cond_4
    iget-object v5, p0, Lcom/sleepycat/je/cleaner/FileProtector;->activeFiles:Ljava/util/NavigableMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v5

    .line 351
    .end local v0    # "fileManager":Lcom/sleepycat/je/log/FileManager;
    .end local v1    # "lastFile":J
    .end local v3    # "firstNewFile":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isProtected(Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;)Z
    .locals 3
    .param p1, "file"    # Ljava/lang/Long;
    .param p2, "info"    # Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;

    monitor-enter p0

    .line 589
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProtector;->protectedFileSets:Ljava/util/Map;

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

    check-cast v1, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;

    .line 590
    .local v1, "pfs":Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;
    invoke-virtual {v1, p1, p2}, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;->isProtected(Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 591
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 593
    .end local v1    # "pfs":Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;
    :cond_0
    goto :goto_0

    .line 595
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileProtector;
    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 588
    .end local p1    # "file":Ljava/lang/Long;
    .end local p2    # "info":Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized isVLSNIndexProtected(Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;)Z
    .locals 3
    .param p1, "file"    # Ljava/lang/Long;
    .param p2, "info"    # Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;

    monitor-enter p0

    .line 835
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProtector;->protectedFileSets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;

    .line 837
    .local v1, "pfs":Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/FileProtector;->vlsnIndexRange:Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;

    if-eq v1, v2, :cond_0

    invoke-static {v1}, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;->access$100(Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 838
    goto :goto_0

    .line 841
    :cond_1
    invoke-virtual {v1, p1, p2}, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;->isProtected(Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 842
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 844
    .end local v1    # "pfs":Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;
    :cond_2
    goto :goto_0

    .line 846
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileProtector;
    :cond_3
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 834
    .end local p1    # "file":Ljava/lang/Long;
    .end local p2    # "info":Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic lambda$getLogSizeStats$0(Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 4
    .param p0, "info"    # Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Long;

    .line 725
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iget-wide v2, p0, Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;->size:J

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized checkVLSNIndexTruncation(JLcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/utilint/Pair;
    .locals 12
    .param p1, "bytesNeeded"    # J
    .param p3, "preserveVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/sleepycat/je/utilint/VLSN;",
            ")",
            "Lcom/sleepycat/je/utilint/Pair<",
            "Lcom/sleepycat/je/utilint/VLSN;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 776
    :try_start_0
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 777
    .local v0, "truncateVLSN":Lcom/sleepycat/je/utilint/VLSN;
    const-wide/16 v1, -0x1

    .line 778
    .local v1, "truncateFile":J
    const-wide/16 v3, 0x0

    .line 781
    .local v3, "deleteBytes":J
    iget-object v5, p0, Lcom/sleepycat/je/cleaner/FileProtector;->reservedFiles:Ljava/util/NavigableMap;

    invoke-interface {v5}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 783
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 784
    .local v7, "file":Ljava/lang/Long;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;

    .line 786
    .local v8, "info":Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;
    invoke-direct {p0, v7, v8}, Lcom/sleepycat/je/cleaner/FileProtector;->isVLSNIndexProtected(Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 787
    goto :goto_1

    .line 790
    :cond_0
    iget-object v9, v8, Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;->endVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 792
    .local v9, "lastVlsn":Lcom/sleepycat/je/utilint/VLSN;
    invoke-virtual {v9}, Lcom/sleepycat/je/utilint/VLSN;->isNull()Z

    move-result v10

    if-nez v10, :cond_2

    .line 793
    invoke-virtual {v9, p3}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v10

    if-lez v10, :cond_1

    .line 794
    goto :goto_1

    .line 796
    :cond_1
    move-object v0, v9

    .line 797
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-wide v1, v10

    .line 800
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileProtector;
    :cond_2
    iget-wide v10, v8, Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;->size:J

    add-long/2addr v3, v10

    .line 802
    cmp-long v10, v3, p1

    if-ltz v10, :cond_3

    .line 803
    goto :goto_1

    .line 805
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;>;"
    .end local v7    # "file":Ljava/lang/Long;
    .end local v8    # "info":Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;
    .end local v9    # "lastVlsn":Lcom/sleepycat/je/utilint/VLSN;
    :cond_3
    goto :goto_0

    .line 807
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->isNull()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    new-instance v5, Lcom/sleepycat/je/utilint/Pair;

    .line 808
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lcom/sleepycat/je/utilint/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    :goto_2
    monitor-exit p0

    return-object v5

    .line 775
    .end local v0    # "truncateVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .end local v1    # "truncateFile":J
    .end local v3    # "deleteBytes":J
    .end local p1    # "bytesNeeded":J
    .end local p3    # "preserveVLSN":Lcom/sleepycat/je/utilint/VLSN;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public checkVLSNIndexTruncation(Ljava/lang/Long;)Z
    .locals 1
    .param p1, "file"    # Ljava/lang/Long;

    .line 822
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/cleaner/FileProtector;->isVLSNIndexProtected(Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method declared-synchronized getAllCompletedFiles()Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 440
    :try_start_0
    new-instance v0, Ljava/util/TreeSet;

    .line 441
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/FileProtector;->getActiveFiles()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/NavigableMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 443
    .local v0, "set":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/FileProtector;->reservedFiles:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableSet;->addAll(Ljava/util/Collection;)Z

    .line 444
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/FileProtector;->condemnedFiles:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableSet;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    monitor-exit p0

    return-object v0

    .line 439
    .end local v0    # "set":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<Ljava/lang/Long;>;"
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileProtector;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getFirstUnprotectedFile(Ljava/util/NavigableSet;)Ljava/lang/Long;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableSet<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .local p1, "files":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<Ljava/lang/Long;>;"
    monitor-enter p0

    .line 614
    :try_start_0
    invoke-interface {p1}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 615
    .local v1, "file":Ljava/lang/Long;
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/FileProtector;->reservedFiles:Ljava/util/NavigableMap;

    invoke-interface {v2, v1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;

    invoke-direct {p0, v1, v2}, Lcom/sleepycat/je/cleaner/FileProtector;->isProtected(Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 616
    monitor-exit p0

    return-object v1

    .line 618
    .end local v1    # "file":Ljava/lang/Long;
    :cond_0
    goto :goto_0

    .line 620
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileProtector;
    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 613
    .end local p1    # "files":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<Ljava/lang/Long;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getLogSizeStats()Lcom/sleepycat/je/cleaner/FileProtector$LogSizeStats;
    .locals 21

    move-object/from16 v1, p0

    monitor-enter p0

    .line 684
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/je/cleaner/FileProtector;->getActiveFiles()Ljava/util/NavigableMap;

    move-result-object v0

    .line 685
    .local v0, "activeFiles":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-wide/16 v2, 0x0

    .line 687
    .local v2, "activeSize":J
    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 688
    .local v5, "size":J
    add-long/2addr v2, v5

    .line 689
    .end local v5    # "size":J
    goto :goto_0

    .line 692
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileProtector;
    :cond_0
    invoke-interface {v0}, Ljava/util/NavigableMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const-wide/16 v4, 0x0

    goto :goto_1

    .line 693
    :cond_1
    invoke-interface {v0}, Ljava/util/NavigableMap;->lastKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    :goto_1
    nop

    .line 695
    .local v4, "lastFileNum":J
    new-instance v6, Ljava/io/File;

    iget-object v7, v1, Lcom/sleepycat/je/cleaner/FileProtector;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 696
    invoke-virtual {v7}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Lcom/sleepycat/je/log/FileManager;->getFullFileName(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 698
    .local v6, "lastFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 699
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    add-long/2addr v2, v7

    .line 703
    :cond_2
    const-wide/16 v7, 0x0

    .line 704
    .local v7, "reservedSize":J
    const-wide/16 v9, 0x0

    .line 705
    .local v9, "protectedSize":J
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move-object v15, v11

    .line 708
    .local v15, "protectedSizeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v11, v1, Lcom/sleepycat/je/cleaner/FileProtector;->reservedFiles:Ljava/util/NavigableMap;

    invoke-interface {v11}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-wide/from16 v16, v7

    move-wide/from16 v18, v9

    .end local v7    # "reservedSize":J
    .end local v9    # "protectedSize":J
    .local v16, "reservedSize":J
    .local v18, "protectedSize":J
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 710
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 711
    .local v8, "file":Ljava/lang/Long;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;

    .line 712
    .local v9, "info":Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;
    iget-wide v12, v9, Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;->size:J

    add-long v16, v16, v12

    .line 713
    const/4 v10, 0x0

    .line 715
    .local v10, "isProtected":Z
    iget-object v12, v1, Lcom/sleepycat/je/cleaner/FileProtector;->protectedFileSets:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;

    .line 717
    .local v13, "pfs":Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;
    iget-object v14, v1, Lcom/sleepycat/je/cleaner/FileProtector;->vlsnIndexRange:Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;

    if-eq v13, v14, :cond_4

    invoke-virtual {v13, v8, v9}, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;->isProtected(Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 718
    move-object/from16 v20, v0

    goto :goto_4

    .line 721
    :cond_3
    const/4 v10, 0x1

    .line 723
    nop

    .line 724
    invoke-static {v13}, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;->access$000(Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v20, v0

    .end local v0    # "activeFiles":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local v20, "activeFiles":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    new-instance v0, Lcom/sleepycat/je/cleaner/FileProtector$$ExternalSyntheticLambda0;

    invoke-direct {v0, v9}, Lcom/sleepycat/je/cleaner/FileProtector$$ExternalSyntheticLambda0;-><init>(Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;)V

    .line 723
    invoke-interface {v15, v14, v0}, Ljava/util/Map;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 726
    move-object/from16 v0, v20

    .end local v13    # "pfs":Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;
    goto :goto_3

    .line 717
    .end local v20    # "activeFiles":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v0    # "activeFiles":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v13    # "pfs":Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;
    :cond_4
    move-object/from16 v20, v0

    .line 715
    .end local v0    # "activeFiles":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v13    # "pfs":Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;
    .restart local v20    # "activeFiles":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    :goto_4
    move-object/from16 v0, v20

    goto :goto_3

    .line 728
    .end local v20    # "activeFiles":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v0    # "activeFiles":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_5
    move-object/from16 v20, v0

    .end local v0    # "activeFiles":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v20    # "activeFiles":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    if-eqz v10, :cond_6

    .line 729
    iget-wide v12, v9, Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;->size:J

    add-long v18, v18, v12

    .line 731
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;>;"
    .end local v8    # "file":Ljava/lang/Long;
    .end local v9    # "info":Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;
    .end local v10    # "isProtected":Z
    :cond_6
    move-object/from16 v0, v20

    goto :goto_2

    .line 733
    .end local v20    # "activeFiles":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v0    # "activeFiles":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_7
    move-object/from16 v20, v0

    .end local v0    # "activeFiles":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v20    # "activeFiles":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    new-instance v0, Lcom/sleepycat/je/cleaner/FileProtector$LogSizeStats;

    move-object v7, v0

    move-wide v8, v2

    move-wide/from16 v10, v16

    move-wide/from16 v12, v18

    move-object v14, v15

    invoke-direct/range {v7 .. v14}, Lcom/sleepycat/je/cleaner/FileProtector$LogSizeStats;-><init>(JJJLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 683
    .end local v2    # "activeSize":J
    .end local v4    # "lastFileNum":J
    .end local v6    # "lastFile":Ljava/io/File;
    .end local v15    # "protectedSizeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v16    # "reservedSize":J
    .end local v18    # "protectedSize":J
    .end local v20    # "activeFiles":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getNActiveFiles()I
    .locals 6

    monitor-enter p0

    .line 454
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/FileProtector;->getActiveFiles()Ljava/util/NavigableMap;

    move-result-object v0

    .line 455
    .local v0, "activeFiles":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/NavigableMap;->size()I

    move-result v1

    .line 457
    .local v1, "count":I
    invoke-interface {v0}, Ljava/util/NavigableMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 458
    invoke-interface {v0}, Ljava/util/NavigableMap;->lastKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sleepycat/je/cleaner/FileProtector;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 459
    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/log/FileManager;->getCurrentFileNum()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 460
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileProtector;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 463
    :cond_1
    monitor-exit p0

    return v1

    .line 453
    .end local v0    # "activeFiles":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v1    # "count":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getNReservedFiles()I
    .locals 1

    monitor-enter p0

    .line 470
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProtector;->reservedFiles:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 470
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileProtector;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getProtectedFileMap(Ljava/util/SortedSet;)Ljava/util/NavigableMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .local p1, "files":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Long;>;"
    monitor-enter p0

    .line 630
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 632
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/SortedSet<Ljava/lang/Long;>;>;"
    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 633
    .local v2, "file":Ljava/lang/Long;
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/FileProtector;->reservedFiles:Ljava/util/NavigableMap;

    invoke-interface {v3, v2}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;

    .line 635
    .local v3, "info":Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;
    iget-object v4, p0, Lcom/sleepycat/je/cleaner/FileProtector;->protectedFileSets:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;

    .line 637
    .local v5, "pfs":Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;
    invoke-virtual {v5, v2, v3}, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;->isProtected(Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 638
    goto :goto_1

    .line 641
    :cond_0
    invoke-static {v5}, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;->access$000(Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/SortedSet;

    .line 642
    .local v6, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Long;>;"
    if-nez v6, :cond_1

    .line 643
    new-instance v7, Ljava/util/TreeSet;

    invoke-direct {v7}, Ljava/util/TreeSet;-><init>()V

    move-object v6, v7

    .line 645
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileProtector;
    :cond_1
    invoke-interface {v6, v2}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 647
    invoke-static {v5}, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;->access$000(Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    nop

    .end local v5    # "pfs":Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;
    .end local v6    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Long;>;"
    goto :goto_1

    .line 649
    .end local v2    # "file":Ljava/lang/Long;
    .end local v3    # "info":Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;
    :cond_2
    goto :goto_0

    .line 651
    :cond_3
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 653
    .local v1, "mapResult":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 654
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/SortedSet<Ljava/lang/Long;>;>;"
    nop

    .line 655
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/SortedSet;

    invoke-static {v5}, Lcom/sleepycat/utilint/FormatUtil;->asHexString(Ljava/util/SortedSet;)Ljava/lang/String;

    move-result-object v5

    .line 654
    invoke-interface {v1, v4, v5}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    nop

    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/SortedSet<Ljava/lang/Long;>;>;"
    goto :goto_2

    .line 658
    :cond_4
    monitor-exit p0

    return-object v1

    .line 629
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/SortedSet<Ljava/lang/Long;>;>;"
    .end local v1    # "mapResult":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p1    # "files":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Long;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getReservedFileInfo()Lcom/sleepycat/je/utilint/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sleepycat/je/utilint/Pair<",
            "Ljava/lang/Long;",
            "Ljava/util/NavigableSet<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 477
    const-wide/16 v0, 0x0

    .line 478
    .local v0, "size":J
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/FileProtector;->reservedFiles:Ljava/util/NavigableMap;

    invoke-interface {v2}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;

    .line 479
    .local v3, "info":Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;
    iget-wide v4, v3, Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;->size:J

    add-long/2addr v0, v4

    .line 480
    .end local v3    # "info":Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;
    goto :goto_0

    .line 481
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileProtector;
    :cond_0
    new-instance v2, Lcom/sleepycat/je/utilint/Pair;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Ljava/util/TreeSet;

    iget-object v5, p0, Lcom/sleepycat/je/cleaner/FileProtector;->reservedFiles:Ljava/util/NavigableMap;

    invoke-interface {v5}, Ljava/util/NavigableMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, v3, v4}, Lcom/sleepycat/je/utilint/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 476
    .end local v0    # "size":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getReservedFileLastVLSN(Ljava/lang/Long;)Lcom/sleepycat/je/utilint/VLSN;
    .locals 2
    .param p1, "file"    # Ljava/lang/Long;

    monitor-enter p0

    .line 509
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProtector;->reservedFiles:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;

    .line 510
    .local v0, "info":Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;->endVLSN:Lcom/sleepycat/je/utilint/VLSN;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v1

    .line 508
    .end local v0    # "info":Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileProtector;
    .end local p1    # "file":Ljava/lang/Long;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getVLSNIndexStartFile()J
    .locals 2

    .line 854
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProtector;->vlsnIndexRange:Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;

    if-eqz v0, :cond_0

    .line 855
    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;->getRangeStart()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v0, 0xffffffffL

    .line 854
    :goto_0
    return-wide v0
.end method

.method public declared-synchronized isActiveOrNewFile(Ljava/lang/Long;)Z
    .locals 5
    .param p1, "file"    # Ljava/lang/Long;

    monitor-enter p0

    .line 491
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/FileProtector;->getActiveFiles()Ljava/util/NavigableMap;

    move-result-object v0

    .line 493
    .local v0, "activeFiles":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/NavigableMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 494
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0}, Ljava/util/NavigableMap;->lastKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    .line 495
    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileProtector;
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 493
    :goto_1
    monitor-exit p0

    return v1

    .line 490
    .end local v0    # "activeFiles":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local p1    # "file":Ljava/lang/Long;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isReservedFile(Ljava/lang/Long;)Z
    .locals 1
    .param p1, "file"    # Ljava/lang/Long;

    monitor-enter p0

    .line 502
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProtector;->reservedFiles:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 502
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileProtector;
    .end local p1    # "file":Ljava/lang/Long;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized protectActiveFiles(Ljava/lang/String;)Lcom/sleepycat/je/cleaner/FileProtector$ProtectedActiveFileSet;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 295
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/sleepycat/je/cleaner/FileProtector;->protectActiveFiles(Ljava/lang/String;IZ)Lcom/sleepycat/je/cleaner/FileProtector$ProtectedActiveFileSet;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 295
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileProtector;
    .end local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized protectActiveFiles(Ljava/lang/String;IZ)Lcom/sleepycat/je/cleaner/FileProtector$ProtectedActiveFileSet;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nReservedFiles"    # I
    .param p3, "protectNewFiles"    # Z

    monitor-enter p0

    .line 316
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/FileProtector;->getActiveFiles()Ljava/util/NavigableMap;

    move-result-object v0

    .line 318
    .local v0, "activeFiles":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    new-instance v1, Ljava/util/TreeSet;

    .line 319
    invoke-interface {v0}, Ljava/util/NavigableMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 321
    .local v1, "protectedFiles":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<Ljava/lang/Long;>;"
    if-lez p2, :cond_1

    .line 322
    move v2, p2

    .line 323
    .local v2, "n":I
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/FileProtector;->reservedFiles:Ljava/util/NavigableMap;

    invoke-interface {v3}, Ljava/util/NavigableMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 324
    .local v4, "file":Ljava/lang/Long;
    invoke-interface {v1, v4}, Ljava/util/NavigableSet;->add(Ljava/lang/Object;)Z

    .line 325
    add-int/lit8 v2, v2, -0x1

    .line 326
    if-gtz v2, :cond_0

    .line 327
    goto :goto_1

    .line 329
    .end local v4    # "file":Ljava/lang/Long;
    :cond_0
    goto :goto_0

    .line 332
    .end local v2    # "n":I
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileProtector;
    :cond_1
    :goto_1
    if-eqz p3, :cond_3

    .line 333
    invoke-interface {v1}, Ljava/util/NavigableSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-interface {v1}, Ljava/util/NavigableSet;->last()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    :goto_2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    .line 336
    .local v2, "rangeStart":Ljava/lang/Long;
    :goto_3
    new-instance v3, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedActiveFileSet;

    invoke-direct {v3, p1, v1, v2}, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedActiveFileSet;-><init>(Ljava/lang/String;Ljava/util/NavigableSet;Ljava/lang/Long;)V

    .line 339
    .local v3, "pfs":Lcom/sleepycat/je/cleaner/FileProtector$ProtectedActiveFileSet;
    invoke-direct {p0, v3}, Lcom/sleepycat/je/cleaner/FileProtector;->addFileProtection(Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    monitor-exit p0

    return-object v3

    .line 315
    .end local v0    # "activeFiles":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v1    # "protectedFiles":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<Ljava/lang/Long;>;"
    .end local v2    # "rangeStart":Ljava/lang/Long;
    .end local v3    # "pfs":Lcom/sleepycat/je/cleaner/FileProtector$ProtectedActiveFileSet;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "nReservedFiles":I
    .end local p3    # "protectNewFiles":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized protectFileRange(Ljava/lang/String;J)Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "rangeStart"    # J

    monitor-enter p0

    .line 259
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/cleaner/FileProtector;->protectFileRange(Ljava/lang/String;JZZ)Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 259
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileProtector;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "rangeStart":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized protectFileRange(Ljava/lang/String;JZZ)Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "rangeStart"    # J
    .param p4, "protectVlsnIndex"    # Z
    .param p5, "protectBarrenFiles"    # Z

    monitor-enter p0

    .line 281
    :try_start_0
    new-instance v6, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;-><init>(Ljava/lang/String;JZZ)V

    move-object v0, v6

    .line 284
    .local v0, "fileRange":Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;
    invoke-direct {p0, v0}, Lcom/sleepycat/je/cleaner/FileProtector;->addFileProtection(Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    monitor-exit p0

    return-object v0

    .line 280
    .end local v0    # "fileRange":Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileProtector;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "rangeStart":J
    .end local p4    # "protectVlsnIndex":Z
    .end local p5    # "protectBarrenFiles":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized putBackCondemnedFile(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 2
    .param p1, "file"    # Ljava/lang/Long;
    .param p2, "size"    # Ljava/lang/Long;

    monitor-enter p0

    .line 604
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProtector;->condemnedFiles:Ljava/util/NavigableMap;

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    .local v0, "oldSize":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 606
    monitor-exit p0

    return-void

    .line 605
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 603
    .end local v0    # "oldSize":Ljava/lang/Long;
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileProtector;
    .end local p1    # "file":Ljava/lang/Long;
    .end local p2    # "size":Ljava/lang/Long;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized reactivateReservedFile(Ljava/lang/Long;J)V
    .locals 2
    .param p1, "file"    # Ljava/lang/Long;
    .param p2, "size"    # J

    monitor-enter p0

    .line 431
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProtector;->reservedFiles:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/FileProtector;->getActiveFiles()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    monitor-exit p0

    return-void

    .line 430
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileProtector;
    .end local p1    # "file":Ljava/lang/Long;
    .end local p2    # "size":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeFileProtection(Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;)V
    .locals 3
    .param p1, "pfs"    # Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;

    monitor-enter p0

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProtector;->protectedFileSets:Ljava/util/Map;

    .line 238
    invoke-static {p1}, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;->access$000(Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    .local v0, "oldPfs":Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;
    if-eqz v0, :cond_1

    .line 245
    if-ne v0, p1, :cond_0

    .line 249
    monitor-exit p0

    return-void

    .line 246
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProtectedFileSet mismatch name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 247
    invoke-static {p1}, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;->access$000(Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1

    .line 241
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileProtector;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProtectedFileSet not found name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 242
    invoke-static {p1}, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;->access$000(Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    .end local v0    # "oldPfs":Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;
    .end local p1    # "pfs":Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized reserveFile(Ljava/lang/Long;Lcom/sleepycat/je/utilint/VLSN;)V
    .locals 6
    .param p1, "file"    # Ljava/lang/Long;
    .param p2, "endVLSN"    # Lcom/sleepycat/je/utilint/VLSN;

    monitor-enter p0

    .line 408
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/FileProtector;->getActiveFiles()Ljava/util/NavigableMap;

    move-result-object v0

    .line 410
    .local v0, "activeFiles":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 412
    .local v1, "size":Ljava/lang/Long;
    if-eqz v1, :cond_1

    .line 422
    new-instance v2, Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4, p2}, Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;-><init>(JLcom/sleepycat/je/utilint/VLSN;)V

    .line 423
    .local v2, "info":Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/FileProtector;->reservedFiles:Ljava/util/NavigableMap;

    invoke-interface {v3, p1, v2}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    .local v3, "prevInfo":Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;
    if-nez v3, :cond_0

    .line 425
    monitor-exit p0

    return-void

    .line 424
    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 413
    .end local v2    # "info":Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;
    .end local v3    # "prevInfo":Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileProtector;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only active files (not the last file) may be cleaned/reserved file=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 415
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exists="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/cleaner/FileProtector;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 416
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sleepycat/je/log/FileManager;->isFileValid(J)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reserved="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/cleaner/FileProtector;->reservedFiles:Ljava/util/NavigableMap;

    .line 417
    invoke-interface {v3, p1}, Ljava/util/NavigableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nextLsn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/cleaner/FileProtector;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 419
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/log/FileManager;->getNextLsn()J

    move-result-wide v3

    .line 418
    invoke-static {v3, v4}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 413
    invoke-static {v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 407
    .end local v0    # "activeFiles":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v1    # "size":Ljava/lang/Long;
    .end local p1    # "file":Ljava/lang/Long;
    .end local p2    # "endVLSN":Lcom/sleepycat/je/utilint/VLSN;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setVLSNIndexProtectedFileRange(Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;)V
    .locals 0
    .param p1, "pfs"    # Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;

    .line 747
    iput-object p1, p0, Lcom/sleepycat/je/cleaner/FileProtector;->vlsnIndexRange:Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;

    .line 748
    return-void
.end method

.method declared-synchronized takeCondemnedFile(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 4
    .param p1, "file"    # Ljava/lang/Long;

    monitor-enter p0

    .line 567
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProtector;->condemnedFiles:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    .local v0, "condemnedSize":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 570
    monitor-exit p0

    return-object v0

    .line 573
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/FileProtector;->reservedFiles:Ljava/util/NavigableMap;

    invoke-interface {v1, p1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;

    .line 575
    .local v1, "info":Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;
    if-eqz v1, :cond_1

    invoke-direct {p0, p1, v1}, Lcom/sleepycat/je/cleaner/FileProtector;->isProtected(Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 576
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/FileProtector;->reservedFiles:Ljava/util/NavigableMap;

    invoke-interface {v2, p1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    iget-wide v2, v1, Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;->size:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 580
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileProtector;
    :cond_1
    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    .line 566
    .end local v0    # "condemnedSize":Ljava/lang/Long;
    .end local v1    # "info":Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;
    .end local p1    # "file":Ljava/lang/Long;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized takeNextCondemnedFile(J)Lcom/sleepycat/je/utilint/Pair;
    .locals 7
    .param p1, "fromFile"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/sleepycat/je/utilint/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 527
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProtector;->condemnedFiles:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProtector;->condemnedFiles:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 529
    .local v0, "file":Ljava/lang/Long;
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/FileProtector;->condemnedFiles:Ljava/util/NavigableMap;

    invoke-interface {v1, v0}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 530
    .local v1, "size":Ljava/lang/Long;
    new-instance v2, Lcom/sleepycat/je/utilint/Pair;

    invoke-direct {v2, v0, v1}, Lcom/sleepycat/je/utilint/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 533
    .end local v0    # "file":Ljava/lang/Long;
    .end local v1    # "size":Ljava/lang/Long;
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileProtector;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProtector;->reservedFiles:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->isEmpty()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 534
    monitor-exit p0

    return-object v1

    .line 538
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProtector;->reservedFiles:Ljava/util/NavigableMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 540
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 541
    .local v3, "file":Ljava/lang/Long;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;

    .line 543
    .local v4, "info":Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;
    invoke-direct {p0, v3, v4}, Lcom/sleepycat/je/cleaner/FileProtector;->isProtected(Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 544
    goto :goto_0

    .line 547
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProtector;->reservedFiles:Ljava/util/NavigableMap;

    invoke-interface {v0, v3}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    new-instance v0, Lcom/sleepycat/je/utilint/Pair;

    iget-wide v5, v4, Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;->size:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/sleepycat/je/utilint/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 551
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;>;"
    .end local v3    # "file":Ljava/lang/Long;
    .end local v4    # "info":Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;
    :cond_3
    monitor-exit p0

    return-object v1

    .line 526
    .end local p1    # "fromFile":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized verifyFileSizes()V
    .locals 15

    monitor-enter p0

    .line 1050
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/FileProtector;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v0

    .line 1051
    .local v0, "fm":Lcom/sleepycat/je/log/FileManager;
    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileManager;->getAllFileNumbers()[Ljava/lang/Long;

    move-result-object v1

    .line 1052
    .local v1, "numArray":[Ljava/lang/Long;
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/FileProtector;->getActiveFiles()Ljava/util/NavigableMap;

    move-result-object v2

    .line 1053
    .local v2, "activeFiles":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_4

    .line 1054
    aget-object v4, v1, v3

    .line 1055
    .local v4, "n":Ljava/lang/Long;
    new-instance v6, Ljava/io/File;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcom/sleepycat/je/log/FileManager;->getFullFileName(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 1056
    .local v6, "trueSize":J
    invoke-interface {v2, v4}, Ljava/util/NavigableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x2

    if-eqz v8, :cond_1

    .line 1057
    invoke-interface {v2, v4}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 1058
    .local v12, "activeSize":J
    cmp-long v8, v12, v6

    if-eqz v8, :cond_0

    .line 1059
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "active file %,d size %,d but true size %,d %n"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v10

    .line 1061
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v9, v11

    .line 1059
    invoke-virtual {v8, v14, v9}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1063
    .end local v12    # "activeSize":J
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileProtector;
    :cond_0
    goto :goto_1

    :cond_1
    iget-object v8, p0, Lcom/sleepycat/je/cleaner/FileProtector;->reservedFiles:Ljava/util/NavigableMap;

    invoke-interface {v8, v4}, Ljava/util/NavigableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1064
    iget-object v8, p0, Lcom/sleepycat/je/cleaner/FileProtector;->reservedFiles:Ljava/util/NavigableMap;

    invoke-interface {v8, v4}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;

    iget-wide v12, v8, Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;->size:J

    .line 1065
    .local v12, "reservedSize":J
    cmp-long v8, v12, v6

    if-eqz v8, :cond_2

    .line 1066
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "reserved file %,d size %,d but true size %,d %n"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v10

    .line 1068
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v9, v11

    .line 1066
    invoke-virtual {v8, v14, v9}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1070
    .end local v12    # "reservedSize":J
    :cond_2
    goto :goto_1

    .line 1071
    :cond_3
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "true file %x size %,d missing in FileProtector%n"

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v4, v11, v10

    .line 1073
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v11, v5

    .line 1071
    invoke-virtual {v8, v9, v11}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1053
    .end local v4    # "n":Ljava/lang/Long;
    .end local v6    # "trueSize":J
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1076
    .end local v3    # "i":I
    :cond_4
    monitor-exit p0

    return-void

    .line 1049
    .end local v0    # "fm":Lcom/sleepycat/je/log/FileManager;
    .end local v1    # "numArray":[Ljava/lang/Long;
    .end local v2    # "activeFiles":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
