.class Lcom/sleepycat/je/log/FileDeletionDetector;
.super Ljava/lang/Object;
.source "FileDeletionDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/log/FileDeletionDetector$FileDeleteDetectTask;
    }
.end annotation


# instance fields
.field private final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private final fileDeletionTask:Lcom/sleepycat/je/log/FileDeletionDetector$FileDeleteDetectTask;

.field private final fileDeletionTimer:Ljava/util/Timer;

.field private fileDeletionWatchKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/nio/file/WatchKey;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final fileDeletionWatcher:Ljava/nio/file/WatchService;

.field private final filesDeletedByJE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/io/File;[Ljava/io/File;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 10
    .param p1, "dbEnvHome"    # Ljava/io/File;
    .param p2, "dbEnvDataDirs"    # [Ljava/io/File;
    .param p3, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p3, p0, Lcom/sleepycat/je/log/FileDeletionDetector;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/log/FileDeletionDetector;->filesDeletedByJE:Ljava/util/Set;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/log/FileDeletionDetector;->fileDeletionWatchKeys:Ljava/util/Map;

    .line 84
    nop

    .line 85
    :try_start_0
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->newWatchService()Ljava/nio/file/WatchService;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/log/FileDeletionDetector;->fileDeletionWatcher:Ljava/nio/file/WatchService;

    .line 126
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 127
    array-length v0, p2

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, p2, v3

    .line 128
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/log/FileDeletionDetector;->fileDeletionWatcher:Ljava/nio/file/WatchService;

    new-array v7, v2, [Ljava/nio/file/WatchEvent$Kind;

    sget-object v8, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_DELETE:Ljava/nio/file/WatchEvent$Kind;

    aput-object v8, v7, v1

    new-array v8, v2, [Ljava/nio/file/WatchEvent$Modifier;

    sget-object v9, Lcom/sun/nio/file/SensitivityWatchEventModifier;->HIGH:Lcom/sun/nio/file/SensitivityWatchEventModifier;

    aput-object v9, v8, v1

    invoke-interface {v5, v6, v7, v8}, Ljava/nio/file/Path;->register(Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchKey;

    move-result-object v5

    .line 132
    .local v5, "key":Ljava/nio/file/WatchKey;
    iget-object v6, p0, Lcom/sleepycat/je/log/FileDeletionDetector;->fileDeletionWatchKeys:Ljava/util/Map;

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    nop

    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "key":Ljava/nio/file/WatchKey;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    new-array v4, v2, [Ljava/nio/file/WatchEvent$Kind;

    sget-object v5, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_DELETE:Ljava/nio/file/WatchEvent$Kind;

    aput-object v5, v4, v1

    new-array v5, v2, [Ljava/nio/file/WatchEvent$Modifier;

    sget-object v6, Lcom/sun/nio/file/SensitivityWatchEventModifier;->HIGH:Lcom/sun/nio/file/SensitivityWatchEventModifier;

    aput-object v6, v5, v1

    invoke-interface {v3, v0, v4, v5}, Ljava/nio/file/Path;->register(Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchKey;

    move-result-object v0

    .line 139
    .local v0, "key":Ljava/nio/file/WatchKey;
    iget-object v1, p0, Lcom/sleepycat/je/log/FileDeletionDetector;->fileDeletionWatchKeys:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v0    # "key":Ljava/nio/file/WatchKey;
    :cond_1
    nop

    .line 150
    invoke-virtual {p3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    .line 151
    .local v0, "configManager":Lcom/sleepycat/je/dbi/DbConfigManager;
    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_DETECT_FILE_DELETE_INTERVAL:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v1

    .line 154
    .local v1, "interval":I
    new-instance v3, Ljava/util/Timer;

    .line 155
    const-string v4, "FileDeletionDetector"

    invoke-virtual {p3, v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->makeDaemonThreadName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v3, p0, Lcom/sleepycat/je/log/FileDeletionDetector;->fileDeletionTimer:Ljava/util/Timer;

    .line 158
    new-instance v4, Lcom/sleepycat/je/log/FileDeletionDetector$FileDeleteDetectTask;

    const/4 v2, 0x0

    invoke-direct {v4, p0, v2}, Lcom/sleepycat/je/log/FileDeletionDetector$FileDeleteDetectTask;-><init>(Lcom/sleepycat/je/log/FileDeletionDetector;Lcom/sleepycat/je/log/FileDeletionDetector$1;)V

    iput-object v4, p0, Lcom/sleepycat/je/log/FileDeletionDetector;->fileDeletionTask:Lcom/sleepycat/je/log/FileDeletionDetector$FileDeleteDetectTask;

    .line 159
    const-wide/16 v5, 0x0

    int-to-long v7, v1

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 160
    return-void

    .line 141
    .end local v0    # "configManager":Lcom/sleepycat/je/dbi/DbConfigManager;
    .end local v1    # "interval":I
    :catch_0
    move-exception v0

    .line 142
    .local v0, "ie":Ljava/io/IOException;
    new-instance v1, Lcom/sleepycat/je/EnvironmentFailureException;

    sget-object v2, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->UNEXPECTED_EXCEPTION:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not register "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 145
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " or its sub-directories to WatchService."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p3, v2, v3, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$100(Lcom/sleepycat/je/log/FileDeletionDetector;)V
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/log/FileDeletionDetector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lcom/sleepycat/je/log/FileDeletionDetector;->processLogFileDeleteEvents()V

    return-void
.end method

.method static synthetic access$200(Lcom/sleepycat/je/log/FileDeletionDetector;)Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/log/FileDeletionDetector;

    .line 42
    iget-object v0, p0, Lcom/sleepycat/je/log/FileDeletionDetector;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sleepycat/je/log/FileDeletionDetector;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/log/FileDeletionDetector;
    .param p1, "x1"    # Ljava/lang/Thread;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/log/FileDeletionDetector;->handleUnexpectedThrowable(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method private handleUnexpectedThrowable(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 223
    iget-object v0, p0, Lcom/sleepycat/je/log/FileDeletionDetector;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 224
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/log/FileDeletionDetector;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 223
    invoke-static {v0, v1, p1, p2}, Lcom/sleepycat/je/utilint/StoppableThread;->handleUncaughtException(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 225
    return-void
.end method

.method private processLogFileDeleteEvents()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 239
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/log/FileDeletionDetector;->fileDeletionWatcher:Ljava/nio/file/WatchService;

    invoke-interface {v0}, Ljava/nio/file/WatchService;->poll()Ljava/nio/file/WatchKey;

    move-result-object v0

    .line 240
    .local v0, "key":Ljava/nio/file/WatchKey;
    if-nez v0, :cond_2

    .line 245
    iget-object v1, p0, Lcom/sleepycat/je/log/FileDeletionDetector;->fileDeletionWatchKeys:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 246
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 252
    .end local v2    # "file":Ljava/io/File;
    goto :goto_1

    .line 247
    .restart local v2    # "file":Ljava/io/File;
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "dir":Ljava/lang/String;
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Directory "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not exist now. Something abnormal may happen."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 253
    .end local v1    # "dir":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    :cond_1
    nop

    .line 302
    .end local v0    # "key":Ljava/nio/file/WatchKey;
    return-void

    .line 256
    .restart local v0    # "key":Ljava/nio/file/WatchKey;
    :cond_2
    invoke-interface {v0}, Ljava/nio/file/WatchKey;->pollEvents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/WatchEvent;

    .line 257
    .local v2, "event":Ljava/nio/file/WatchEvent;, "Ljava/nio/file/WatchEvent<*>;"
    invoke-interface {v2}, Ljava/nio/file/WatchEvent;->kind()Ljava/nio/file/WatchEvent$Kind;

    move-result-object v3

    .line 258
    .local v3, "kind":Ljava/nio/file/WatchEvent$Kind;
    sget-object v4, Ljava/nio/file/StandardWatchEventKinds;->OVERFLOW:Ljava/nio/file/WatchEvent$Kind;

    if-ne v3, v4, :cond_3

    .line 259
    goto :goto_2

    .line 263
    :cond_3
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/log/FileDeletionDetector;->cast(Ljava/nio/file/WatchEvent;)Ljava/nio/file/WatchEvent;

    move-result-object v4

    .line 264
    .local v4, "ev":Ljava/nio/file/WatchEvent;, "Ljava/nio/file/WatchEvent<Ljava/nio/file/Path;>;"
    invoke-interface {v4}, Ljava/nio/file/WatchEvent;->context()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/file/Path;

    invoke-interface {v5}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v5

    .line 265
    .local v5, "fileName":Ljava/lang/String;
    const-string v6, ".jdb"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 266
    iget-object v6, p0, Lcom/sleepycat/je/log/FileDeletionDetector;->filesDeletedByJE:Ljava/util/Set;

    monitor-enter v6

    .line 267
    :try_start_0
    iget-object v7, p0, Lcom/sleepycat/je/log/FileDeletionDetector;->filesDeletedByJE:Ljava/util/Set;

    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 276
    iget-object v7, p0, Lcom/sleepycat/je/log/FileDeletionDetector;->filesDeletedByJE:Ljava/util/Set;

    invoke-interface {v7, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 277
    monitor-exit v6

    goto :goto_3

    .line 269
    :cond_4
    new-instance v1, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v7, p0, Lcom/sleepycat/je/log/FileDeletionDetector;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v8, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_UNEXPECTED_FILE_DELETION:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Log file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " was deleted unexpectedly."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v7, v8, v9}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;)V

    .end local v0    # "key":Ljava/nio/file/WatchKey;
    .end local v2    # "event":Ljava/nio/file/WatchEvent;, "Ljava/nio/file/WatchEvent<*>;"
    .end local v3    # "kind":Ljava/nio/file/WatchEvent$Kind;
    .end local v4    # "ev":Ljava/nio/file/WatchEvent;, "Ljava/nio/file/WatchEvent<Ljava/nio/file/Path;>;"
    .end local v5    # "fileName":Ljava/lang/String;
    throw v1

    .line 277
    .restart local v0    # "key":Ljava/nio/file/WatchKey;
    .restart local v2    # "event":Ljava/nio/file/WatchEvent;, "Ljava/nio/file/WatchEvent<*>;"
    .restart local v3    # "kind":Ljava/nio/file/WatchEvent$Kind;
    .restart local v4    # "ev":Ljava/nio/file/WatchEvent;, "Ljava/nio/file/WatchEvent<Ljava/nio/file/Path;>;"
    .restart local v5    # "fileName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 279
    .end local v2    # "event":Ljava/nio/file/WatchEvent;, "Ljava/nio/file/WatchEvent<*>;"
    .end local v3    # "kind":Ljava/nio/file/WatchEvent$Kind;
    .end local v4    # "ev":Ljava/nio/file/WatchEvent;, "Ljava/nio/file/WatchEvent<Ljava/nio/file/Path;>;"
    .end local v5    # "fileName":Ljava/lang/String;
    :cond_5
    :goto_3
    goto :goto_2

    .line 281
    :cond_6
    invoke-interface {v0}, Ljava/nio/file/WatchKey;->reset()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 301
    .end local v0    # "key":Ljava/nio/file/WatchKey;
    goto/16 :goto_0

    .line 295
    .restart local v0    # "key":Ljava/nio/file/WatchKey;
    :cond_7
    iget-object v1, p0, Lcom/sleepycat/je/log/FileDeletionDetector;->fileDeletionWatchKeys:Ljava/util/Map;

    .line 296
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 297
    .restart local v1    # "dir":Ljava/lang/String;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Watch Key corresponding to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " return false when reset. Something abnormal may happen."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method addDeletedFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .line 305
    iget-object v0, p0, Lcom/sleepycat/je/log/FileDeletionDetector;->filesDeletedByJE:Ljava/util/Set;

    monitor-enter v0

    .line 306
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/log/FileDeletionDetector;->filesDeletedByJE:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 307
    monitor-exit v0

    .line 308
    return-void

    .line 307
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method cast(Ljava/nio/file/WatchEvent;)Ljava/nio/file/WatchEvent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/file/WatchEvent<",
            "*>;)",
            "Ljava/nio/file/WatchEvent<",
            "TT;>;"
        }
    .end annotation

    .line 320
    .local p1, "event":Ljava/nio/file/WatchEvent;, "Ljava/nio/file/WatchEvent<*>;"
    return-object p1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/sleepycat/je/log/FileDeletionDetector;->fileDeletionTask:Lcom/sleepycat/je/log/FileDeletionDetector$FileDeleteDetectTask;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileDeletionDetector$FileDeleteDetectTask;->cancel()Z

    .line 312
    iget-object v0, p0, Lcom/sleepycat/je/log/FileDeletionDetector;->fileDeletionTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 313
    iget-object v0, p0, Lcom/sleepycat/je/log/FileDeletionDetector;->fileDeletionWatcher:Ljava/nio/file/WatchService;

    monitor-enter v0

    .line 314
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/log/FileDeletionDetector;->fileDeletionWatcher:Ljava/nio/file/WatchService;

    invoke-interface {v1}, Ljava/nio/file/WatchService;->close()V

    .line 315
    monitor-exit v0

    .line 316
    return-void

    .line 315
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
