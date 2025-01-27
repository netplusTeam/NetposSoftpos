.class public Lcom/sleepycat/je/dbi/BackupManager;
.super Ljava/lang/Object;
.source "BackupManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/dbi/BackupManager$LatestSnapshotInfo;,
        Lcom/sleepycat/je/dbi/BackupManager$CopyThread;,
        Lcom/sleepycat/je/dbi/BackupManager$SnapshotInfo;,
        Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;,
        Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final INITIAL_RETRY_WAIT_MS:J = 0x3e8L

.field private static final MAX_RETRY_WAIT_MS:J = 0x36ee80L

.field private static final SNAPSHOT_COMPLETE:Ljava/lang/String; = "snapComplete"

.field private static final SNAPSHOT_INFO:Ljava/lang/String; = "snapInfo.properties"

.field public static final SNAPSHOT_MANIFEST:Ljava/lang/String; = "manifest.json"

.field static final SNAPSHOT_PATTERN:Ljava/util/regex/Pattern;

.field private static final SNAPSHOT_SUBDIRECTORY:Ljava/lang/String; = "snapshots"

.field private static final SOFT_SHUTDOWN_WAIT_MS:I = 0xbb8

.field static volatile copySnapshotFileHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Lcom/sleepycat/je/dbi/SnapshotManifest;",
            ">;"
        }
    .end annotation
.end field

.field static volatile createSnapshotHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field private static final dateFormat:Ljava/text/SimpleDateFormat;

.field static volatile saveManifestHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile timeMultiplier:J

.field private static final utcCalendar:Ljava/util/Calendar;

.field static volatile writeSnapshotInfoHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile backupCopy:Lcom/sleepycat/je/BackupFileCopy;

.field private volatile backupCopyClass:Ljava/lang/String;

.field private volatile backupCopyConfig:Ljava/io/File;

.field private volatile backupLocation:Lcom/sleepycat/je/BackupArchiveLocation;

.field private volatile backupLocationClass:Ljava/lang/String;

.field private volatile backupLocationConfig:Ljava/io/File;

.field private volatile backupSchedule:Ljava/lang/String;

.field private volatile copyThread:Lcom/sleepycat/je/dbi/BackupManager$CopyThread;

.field private final envHomeDir:Ljava/nio/file/Path;

.field private final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private final logger:Ljava/util/logging/Logger;

.field private final nodeName:Ljava/lang/String;

.field private volatile runBackup:Z

.field private volatile shutdownRequested:Z

.field private volatile snapshotThread:Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;

.field private volatile snapshotTimeInfo:Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 109
    nop

    .line 137
    const-wide/16 v0, 0x0

    .line 138
    const-string v2, "com.sleepycat.je.test.timeMultiplier"

    invoke-static {v2, v0, v1}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/sleepycat/je/dbi/BackupManager;->timeMultiplier:J

    .line 146
    const/4 v0, 0x0

    sput-object v0, Lcom/sleepycat/je/dbi/BackupManager;->createSnapshotHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 154
    sput-object v0, Lcom/sleepycat/je/dbi/BackupManager;->saveManifestHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 161
    sput-object v0, Lcom/sleepycat/je/dbi/BackupManager;->writeSnapshotInfoHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 168
    sput-object v0, Lcom/sleepycat/je/dbi/BackupManager;->copySnapshotFileHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 187
    nop

    .line 188
    const-string v0, "\\d\\d[01][0-9][0-3][0-9][0-2]\\d"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/dbi/BackupManager;->SNAPSHOT_PATTERN:Ljava/util/regex/Pattern;

    .line 215
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/BackupManager;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 218
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 225
    nop

    .line 226
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/dbi/BackupManager;->utcCalendar:Ljava/util/Calendar;

    .line 225
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 2
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p1, p0, Lcom/sleepycat/je/dbi/BackupManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 268
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getEnvironmentHome()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->envHomeDir:Ljava/nio/file/Path;

    .line 269
    invoke-static {p1}, Lcom/sleepycat/je/dbi/BackupManager;->getNodeName(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->nodeName:Ljava/lang/String;

    .line 270
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->logger:Ljava/util/logging/Logger;

    .line 271
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/BackupManager;->init()V

    .line 272
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/dbi/BackupManager;)Ljava/util/logging/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/BackupManager;

    .line 109
    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sleepycat/je/dbi/BackupManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/BackupManager;

    .line 109
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->shutdownRequested:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sleepycat/je/dbi/BackupManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/BackupManager;
    .param p1, "x1"    # Z

    .line 109
    iput-boolean p1, p0, Lcom/sleepycat/je/dbi/BackupManager;->shutdownRequested:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sleepycat/je/dbi/BackupManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/BackupManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/BackupManager;->createNextSnapshot()V

    return-void
.end method

.method static synthetic access$300(Lcom/sleepycat/je/dbi/BackupManager;)Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/BackupManager;

    .line 109
    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->snapshotTimeInfo:Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sleepycat/je/dbi/BackupManager;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/BackupManager;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .line 109
    invoke-direct {p0, p1}, Lcom/sleepycat/je/dbi/BackupManager;->getExceptionStringForLogging(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/sleepycat/je/dbi/BackupManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/BackupManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/BackupManager;->copyLatestSnapshot()V

    return-void
.end method

.method public static checksumToHex([B)Ljava/lang/String;
    .locals 5
    .param p0, "checksum"    # [B

    .line 1973
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1974
    .local v0, "value":Ljava/lang/String;
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1975
    .local v1, "zeros":I
    if-nez v1, :cond_0

    .line 1976
    return-object v0

    .line 1978
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1979
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1980
    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1979
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1982
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1983
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static computeWaitTimeMs(J)J
    .locals 4
    .param p0, "waitTimeMs"    # J

    .line 1938
    sget-wide v0, Lcom/sleepycat/je/dbi/BackupManager;->timeMultiplier:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    move-wide v0, p0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    sget-wide v2, Lcom/sleepycat/je/dbi/BackupManager;->timeMultiplier:J

    div-long v2, p0, v2

    .line 1940
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1938
    :goto_0
    return-wide v0
.end method

.method private copyFile(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "snapshot"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1584
    invoke-static {p1}, Lcom/sleepycat/je/dbi/BackupManager;->getFileNameString(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/sleepycat/je/dbi/BackupManager;->copyFile(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private copyFile(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "archiveFileName"    # Ljava/lang/String;
    .param p3, "snapshot"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1603
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/BackupManager;->getBackupLocation()Lcom/sleepycat/je/BackupArchiveLocation;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sleepycat/je/BackupArchiveLocation;->getArchiveLocation(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 1605
    .local v0, "archiveFile":Ljava/net/URL;
    const-wide/16 v1, 0x3e8

    .line 1608
    .local v1, "retryWait":J
    :goto_0
    nop

    .line 1609
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/BackupManager;->getBackupCopy()Lcom/sleepycat/je/BackupFileCopy;

    move-result-object v3

    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lcom/sleepycat/je/BackupFileCopy;->copy(Ljava/io/File;Ljava/net/URL;)[B

    move-result-object v3

    .line 1610
    .local v3, "checksum":[B
    invoke-static {v3}, Lcom/sleepycat/je/dbi/BackupManager;->checksumToHex([B)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 1614
    .end local v3    # "checksum":[B
    :catch_0
    move-exception v3

    .line 1615
    .local v3, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/sleepycat/je/dbi/BackupManager;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/dbi/BackupManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem copying snapshot file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", retrying in: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms, exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1619
    invoke-direct {p0, v3}, Lcom/sleepycat/je/dbi/BackupManager;->getExceptionStringForLogging(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1615
    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1621
    invoke-static {v1, v2}, Lcom/sleepycat/je/dbi/BackupManager;->sleepMs(J)V

    .line 1622
    const-wide/16 v4, 0x2

    mul-long/2addr v4, v1

    const-wide/32 v6, 0x36ee80

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 1623
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 1611
    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v3

    .line 1613
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_1
    throw v3
.end method

.method private copyLatestSnapshot()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1151
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/BackupManager;->getLatestSnapshotInfo()Lcom/sleepycat/je/dbi/BackupManager$LatestSnapshotInfo;

    move-result-object v0

    .line 1152
    .local v0, "info":Lcom/sleepycat/je/dbi/BackupManager$LatestSnapshotInfo;
    iget-object v1, v0, Lcom/sleepycat/je/dbi/BackupManager$LatestSnapshotInfo;->snapshotDir:Ljava/nio/file/Path;

    iget-object v2, v0, Lcom/sleepycat/je/dbi/BackupManager$LatestSnapshotInfo;->parentSnapshotDir:Ljava/nio/file/Path;

    iget-object v3, v0, Lcom/sleepycat/je/dbi/BackupManager$LatestSnapshotInfo;->parent:Lcom/sleepycat/je/dbi/SnapshotManifest;

    invoke-direct {p0, v1, v2, v3}, Lcom/sleepycat/je/dbi/BackupManager;->copySnapshot(Ljava/nio/file/Path;Ljava/nio/file/Path;Lcom/sleepycat/je/dbi/SnapshotManifest;)V

    .line 1153
    return-void
.end method

.method private copyLogFile(Ljava/nio/file/Path;Lcom/sleepycat/je/dbi/SnapshotManifest;)Lcom/sleepycat/je/dbi/SnapshotManifest;
    .locals 12
    .param p1, "logFilePath"    # Ljava/nio/file/Path;
    .param p2, "base"    # Lcom/sleepycat/je/dbi/SnapshotManifest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1535
    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/dbi/BackupManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Copying snapshot log file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1537
    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1535
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1539
    new-instance v0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;

    invoke-direct {v0, p2}, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;-><init>(Lcom/sleepycat/je/dbi/SnapshotManifest;)V

    .line 1541
    .local v0, "newManifest":Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;
    invoke-static {}, Lcom/sleepycat/je/dbi/BackupManager;->currentTimeMs()J

    move-result-wide v1

    .line 1542
    .local v1, "copyStartTimeMs":J
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/SnapshotManifest;->getSnapshot()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/sleepycat/je/dbi/BackupManager;->copyFile(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1543
    .local v3, "checksum":Ljava/lang/String;
    invoke-static {}, Lcom/sleepycat/je/dbi/BackupManager;->currentTimeMs()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->setLastFileCopiedTimeMs(J)Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;

    .line 1544
    invoke-static {p1}, Lcom/sleepycat/je/dbi/BackupManager;->fileLastModifiedTimeMs(Ljava/nio/file/Path;)J

    move-result-wide v4

    .line 1545
    .local v4, "logFileModifyTimeMs":J
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/SnapshotManifest;->getStartTimeMs()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 1546
    .local v6, "isErased":Z
    :goto_0
    invoke-static {p1}, Lcom/sleepycat/je/dbi/BackupManager;->getFileNameString(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v7

    .line 1547
    .local v7, "logFile":Ljava/lang/String;
    new-instance v8, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;

    invoke-direct {v8, v3, v1, v2, p2}, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;-><init>(Ljava/lang/String;JLcom/sleepycat/je/dbi/SnapshotManifest;)V

    .line 1549
    .local v8, "logFileInfo":Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;
    if-eqz v6, :cond_1

    .line 1555
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Detected erasure during copy of log file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", log file modify time: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1557
    invoke-static {v4, v5}, Lcom/sleepycat/je/dbi/BackupManager;->formatTime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", snapshot start time: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1558
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/SnapshotManifest;->getStartTimeMs()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/sleepycat/je/dbi/BackupManager;->formatTime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1559
    .local v9, "msg":Ljava/lang/String;
    iget-object v10, p0, Lcom/sleepycat/je/dbi/BackupManager;->logger:Ljava/util/logging/Logger;

    iget-object v11, p0, Lcom/sleepycat/je/dbi/BackupManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v10, v11, v9}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1560
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->getErasedFiles()Ljava/util/SortedMap;

    move-result-object v10

    invoke-interface {v10, v7, v8}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1561
    .end local v9    # "msg":Ljava/lang/String;
    goto :goto_1

    .line 1567
    :cond_1
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->getSnapshotFiles()Ljava/util/SortedMap;

    move-result-object v9

    invoke-interface {v9, v7, v8}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1569
    :goto_1
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->build()Lcom/sleepycat/je/dbi/SnapshotManifest;

    move-result-object v9

    return-object v9
.end method

.method private copySnapshot(Ljava/nio/file/Path;Ljava/nio/file/Path;Lcom/sleepycat/je/dbi/SnapshotManifest;)V
    .locals 5
    .param p1, "snapshotDir"    # Ljava/nio/file/Path;
    .param p2, "parentSnapshotDir"    # Ljava/nio/file/Path;
    .param p3, "parent"    # Lcom/sleepycat/je/dbi/SnapshotManifest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1280
    if-eqz p1, :cond_4

    invoke-direct {p0, p1}, Lcom/sleepycat/je/dbi/BackupManager;->isSnapshotComplete(Ljava/nio/file/Path;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1284
    :cond_0
    invoke-direct {p0, p1}, Lcom/sleepycat/je/dbi/BackupManager;->getManifest(Ljava/nio/file/Path;)Lcom/sleepycat/je/dbi/SnapshotManifest;

    move-result-object v0

    .line 1285
    .local v0, "base":Lcom/sleepycat/je/dbi/SnapshotManifest;
    if-nez v0, :cond_1

    .line 1286
    invoke-direct {p0, p1, p3}, Lcom/sleepycat/je/dbi/BackupManager;->createNewSnapshotManifest(Ljava/nio/file/Path;Lcom/sleepycat/je/dbi/SnapshotManifest;)Lcom/sleepycat/je/dbi/SnapshotManifest;

    move-result-object v0

    .line 1287
    invoke-direct {p0, v0, p1}, Lcom/sleepycat/je/dbi/BackupManager;->saveManifest(Lcom/sleepycat/je/dbi/SnapshotManifest;Ljava/nio/file/Path;)V

    .line 1288
    if-eqz p2, :cond_3

    .line 1289
    invoke-direct {p0, p2}, Lcom/sleepycat/je/dbi/BackupManager;->deleteSnapshot(Ljava/nio/file/Path;)V

    goto :goto_0

    .line 1291
    :cond_1
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/SnapshotManifest;->getIsComplete()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1292
    iget-object v1, p0, Lcom/sleepycat/je/dbi/BackupManager;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/dbi/BackupManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Latest snapshot is already complete: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1294
    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1292
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->finer(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1301
    if-eqz p2, :cond_2

    .line 1302
    invoke-direct {p0, p2}, Lcom/sleepycat/je/dbi/BackupManager;->deleteSnapshot(Ljava/nio/file/Path;)V

    .line 1304
    :cond_2
    return-void

    .line 1306
    :cond_3
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/sleepycat/je/dbi/BackupManager;->copySnapshotFiles(Lcom/sleepycat/je/dbi/SnapshotManifest;Ljava/nio/file/Path;)V

    .line 1307
    return-void

    .line 1281
    .end local v0    # "base":Lcom/sleepycat/je/dbi/SnapshotManifest;
    :cond_4
    :goto_1
    return-void
.end method

.method private copySnapshotFiles(Lcom/sleepycat/je/dbi/SnapshotManifest;Ljava/nio/file/Path;)V
    .locals 17
    .param p1, "base"    # Lcom/sleepycat/je/dbi/SnapshotManifest;
    .param p2, "snapshotDir"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1389
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/sleepycat/je/dbi/BackupManager;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1390
    iget-object v2, v0, Lcom/sleepycat/je/dbi/BackupManager;->logger:Ljava/util/logging/Logger;

    iget-object v3, v0, Lcom/sleepycat/je/dbi/BackupManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Copying snapshot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1391
    invoke-interface/range {p2 .. p2}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", now: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1392
    invoke-static {}, Lcom/sleepycat/je/dbi/BackupManager;->currentTimeMs()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/sleepycat/je/dbi/BackupManager;->formatTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1390
    invoke-static {v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1394
    :cond_0
    const/4 v2, 0x0

    .line 1395
    .local v2, "copied":I
    const/4 v3, 0x0

    .line 1396
    .local v3, "erased":I
    const/4 v4, 0x0

    .line 1397
    .local v4, "cannotComplete":Z
    invoke-static {}, Lcom/sleepycat/je/dbi/BackupManager;->currentTimeMs()J

    move-result-wide v5

    .line 1399
    .local v5, "startTimeMs":J
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/dbi/SnapshotManifest;->getSnapshotFiles()Ljava/util/SortedMap;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v4

    move v4, v3

    move v3, v2

    move-object/from16 v2, p1

    .end local p1    # "base":Lcom/sleepycat/je/dbi/SnapshotManifest;
    .local v2, "base":Lcom/sleepycat/je/dbi/SnapshotManifest;
    .local v3, "copied":I
    .local v4, "erased":I
    .local v8, "cannotComplete":Z
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 1400
    .local v9, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1401
    .local v10, "logFile":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;

    .line 1402
    .local v11, "info":Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;
    invoke-interface {v1, v10}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v12

    .line 1404
    .local v12, "logFilePath":Ljava/nio/file/Path;
    sget-object v13, Lcom/sleepycat/je/dbi/BackupManager;->copySnapshotFileHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v13, v2}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1413
    invoke-virtual {v11}, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->getIsCopied()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1414
    const/4 v13, 0x0

    new-array v13, v13, [Ljava/nio/file/LinkOption;

    invoke-static {v12, v13}, Ljava/nio/file/Files;->notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1415
    goto :goto_0

    .line 1417
    :cond_1
    invoke-static {v12}, Lcom/sleepycat/je/dbi/BackupManager;->fileLastModifiedTimeMs(Ljava/nio/file/Path;)J

    move-result-wide v13

    .line 1418
    invoke-virtual {v11}, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->getCopyStartTimeMs()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-gez v13, :cond_2

    .line 1419
    invoke-static {v12}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V

    .line 1420
    goto :goto_0

    .line 1429
    :cond_2
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/SnapshotManifest;->getErasedFiles()Ljava/util/SortedMap;

    move-result-object v13

    invoke-interface {v13, v10}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;

    .line 1430
    .local v13, "erasedInfo":Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->getIsCopied()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1431
    invoke-static {v12}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    .line 1432
    goto :goto_0

    .line 1439
    :cond_3
    invoke-direct {v0, v12, v2}, Lcom/sleepycat/je/dbi/BackupManager;->copyLogFile(Ljava/nio/file/Path;Lcom/sleepycat/je/dbi/SnapshotManifest;)Lcom/sleepycat/je/dbi/SnapshotManifest;

    move-result-object v2

    .line 1440
    add-int/lit8 v3, v3, 0x1

    .line 1441
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/SnapshotManifest;->getErasedFiles()Ljava/util/SortedMap;

    move-result-object v14

    invoke-interface {v14, v10}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1442
    add-int/lit8 v4, v4, 0x1

    .line 1444
    :cond_4
    nop

    .line 1445
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/SnapshotManifest;->getSnapshotFiles()Ljava/util/SortedMap;

    move-result-object v14

    invoke-interface {v14, v10}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;

    .line 1446
    .local v14, "snapshotInfo":Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->getIsCopied()Z

    move-result v15

    if-nez v15, :cond_6

    .line 1453
    :cond_5
    const/4 v8, 0x1

    .line 1455
    :cond_6
    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/dbi/BackupManager;->saveManifest(Lcom/sleepycat/je/dbi/SnapshotManifest;Ljava/nio/file/Path;)V

    .line 1456
    invoke-static {v12}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V

    .line 1457
    .end local v9    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;>;"
    .end local v10    # "logFile":Ljava/lang/String;
    .end local v11    # "info":Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;
    .end local v12    # "logFilePath":Ljava/nio/file/Path;
    .end local v13    # "erasedInfo":Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;
    .end local v14    # "snapshotInfo":Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;
    goto/16 :goto_0

    .line 1404
    .restart local v9    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;>;"
    .restart local v10    # "logFile":Ljava/lang/String;
    .restart local v11    # "info":Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;
    .restart local v12    # "logFilePath":Ljava/nio/file/Path;
    :cond_7
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1458
    .end local v9    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;>;"
    .end local v10    # "logFile":Ljava/lang/String;
    .end local v11    # "info":Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;
    .end local v12    # "logFilePath":Ljava/nio/file/Path;
    :cond_8
    if-nez v8, :cond_9

    .line 1459
    new-instance v7, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;

    invoke-direct {v7, v2}, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;-><init>(Lcom/sleepycat/je/dbi/SnapshotManifest;)V

    .line 1461
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->setIsComplete(Z)Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;

    move-result-object v7

    .line 1462
    invoke-virtual {v7}, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->build()Lcom/sleepycat/je/dbi/SnapshotManifest;

    move-result-object v7

    .line 1463
    .local v7, "newManifest":Lcom/sleepycat/je/dbi/SnapshotManifest;
    invoke-direct {v0, v7, v1}, Lcom/sleepycat/je/dbi/BackupManager;->saveManifest(Lcom/sleepycat/je/dbi/SnapshotManifest;Ljava/nio/file/Path;)V

    .line 1465
    .end local v7    # "newManifest":Lcom/sleepycat/je/dbi/SnapshotManifest;
    :cond_9
    invoke-static {}, Lcom/sleepycat/je/dbi/BackupManager;->currentTimeMs()J

    move-result-wide v9

    sub-long/2addr v9, v5

    .line 1466
    .local v9, "copyTimeMs":J
    iget-object v7, v0, Lcom/sleepycat/je/dbi/BackupManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v7, v9, v10}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->noteBackupCopyFilesMs(J)V

    .line 1467
    iget-object v7, v0, Lcom/sleepycat/je/dbi/BackupManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v7, v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->noteBackupCopyFilesCount(I)V

    .line 1468
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Done copying snapshot: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1469
    invoke-interface/range {p2 .. p2}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ", complete: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    xor-int/lit8 v11, v8, 0x1

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ", copied files: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ", erased files: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ", copy time: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " ms"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1474
    .local v7, "msg":Ljava/lang/String;
    iget-object v11, v0, Lcom/sleepycat/je/dbi/BackupManager;->logger:Ljava/util/logging/Logger;

    iget-object v12, v0, Lcom/sleepycat/je/dbi/BackupManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v11, v12, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1475
    return-void
.end method

.method private createNewSnapshotManifest(Ljava/nio/file/Path;Lcom/sleepycat/je/dbi/SnapshotManifest;)Lcom/sleepycat/je/dbi/SnapshotManifest;
    .locals 10
    .param p1, "snapshotDir"    # Ljava/nio/file/Path;
    .param p2, "parent"    # Lcom/sleepycat/je/dbi/SnapshotManifest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1488
    new-instance v0, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;

    invoke-direct {v0}, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;-><init>()V

    .line 1490
    .local v0, "newManifest":Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;
    invoke-direct {p0, p1}, Lcom/sleepycat/je/dbi/BackupManager;->readSnapshotInfo(Ljava/nio/file/Path;)Lcom/sleepycat/je/dbi/BackupManager$SnapshotInfo;

    move-result-object v7

    .line 1491
    .local v7, "snapshotInfo":Lcom/sleepycat/je/dbi/BackupManager$SnapshotInfo;
    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 1492
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/SnapshotManifest;->getSequence()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->setSequence(I)Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;

    move-result-object v1

    .line 1493
    invoke-static {p1}, Lcom/sleepycat/je/dbi/BackupManager;->getSnapshotName(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->setSnapshot(Ljava/lang/String;)Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;

    move-result-object v1

    iget-wide v2, v7, Lcom/sleepycat/je/dbi/BackupManager$SnapshotInfo;->startTimeMs:J

    .line 1494
    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->setStartTimeMs(J)Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/dbi/BackupManager;->nodeName:Ljava/lang/String;

    .line 1495
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->setNodeName(Ljava/lang/String;)Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;

    move-result-object v1

    iget-wide v2, v7, Lcom/sleepycat/je/dbi/BackupManager$SnapshotInfo;->endOfLog:J

    .line 1496
    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->setEndOfLog(J)Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;

    move-result-object v1

    iget-boolean v2, v7, Lcom/sleepycat/je/dbi/BackupManager$SnapshotInfo;->isMaster:Z

    .line 1497
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->setIsMaster(Z)Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;

    .line 1498
    if-eqz p2, :cond_1

    .line 1499
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/SnapshotManifest;->getSnapshotFiles()Ljava/util/SortedMap;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move-object v5, v1

    .line 1500
    .local v5, "parentSnapshotFiles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;>;"
    nop

    .line 1501
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->getSnapshotFiles()Ljava/util/SortedMap;

    move-result-object v8

    .line 1502
    .local v8, "snapshotFiles":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;>;"
    new-instance v9, Lcom/sleepycat/je/dbi/BackupManager$$ExternalSyntheticLambda4;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v8

    move-object v4, p1

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/dbi/BackupManager$$ExternalSyntheticLambda4;-><init>(Lcom/sleepycat/je/dbi/BackupManager;Ljava/util/SortedMap;Ljava/nio/file/Path;Ljava/util/Map;Lcom/sleepycat/je/dbi/BackupManager$SnapshotInfo;)V

    invoke-static {p1, v9}, Lcom/sleepycat/je/dbi/BackupManager;->withLogFiles(Ljava/nio/file/Path;Ljava/util/function/Consumer;)V

    .line 1517
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/SnapshotManifest$Builder;->build()Lcom/sleepycat/je/dbi/SnapshotManifest;

    move-result-object v1

    return-object v1
.end method

.method private createNextSnapshot()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 702
    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->envHomeDir:Ljava/nio/file/Path;

    const-string/jumbo v1, "snapshots"

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 703
    .local v0, "snapshotsSubdir":Ljava/nio/file/Path;
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 704
    new-array v1, v1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 706
    :cond_0
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/BackupManager;->updateSnapshotTimeInfo()V

    .line 707
    iget-object v1, p0, Lcom/sleepycat/je/dbi/BackupManager;->snapshotTimeInfo:Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;

    iget-wide v1, v1, Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;->previous:J

    invoke-direct {p0, v1, v2}, Lcom/sleepycat/je/dbi/BackupManager;->getSnapshotDir(J)Ljava/nio/file/Path;

    move-result-object v1

    .line 708
    .local v1, "snapshotDir":Ljava/nio/file/Path;
    invoke-direct {p0, v1}, Lcom/sleepycat/je/dbi/BackupManager;->isSnapshotComplete(Ljava/nio/file/Path;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 709
    invoke-direct {p0, v1}, Lcom/sleepycat/je/dbi/BackupManager;->deleteSnapshot(Ljava/nio/file/Path;)V

    .line 710
    invoke-direct {p0, v1}, Lcom/sleepycat/je/dbi/BackupManager;->createSnapshot(Ljava/nio/file/Path;)V

    .line 712
    :cond_1
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/BackupManager;->wakeUpCopyThread()V

    .line 713
    return-void
.end method

.method private createSnapshot(Ljava/nio/file/Path;)V
    .locals 14
    .param p1, "snapshotDir"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 828
    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/dbi/BackupManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating snapshot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 831
    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", now: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 832
    invoke-static {}, Lcom/sleepycat/je/dbi/BackupManager;->currentTimeMs()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/sleepycat/je/dbi/BackupManager;->formatTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 829
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 835
    :cond_0
    invoke-static {}, Lcom/sleepycat/je/dbi/BackupManager;->currentTimeMs()J

    move-result-wide v0

    .line 837
    .local v0, "startTimeMs":J
    sget-object v2, Lcom/sleepycat/je/dbi/BackupManager;->createSnapshotHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v2, p1}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 838
    sget-object v2, Lcom/sleepycat/je/dbi/BackupManager;->createSnapshotHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v2}, Lcom/sleepycat/je/utilint/TestHookExecute;->doIOHookIfSet(Lcom/sleepycat/je/utilint/TestHook;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 841
    const/4 v2, 0x0

    :try_start_0
    new-array v3, v2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p1, v3}, Ljava/nio/file/Files;->createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/nio/file/FileAlreadyExistsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 846
    nop

    .line 848
    new-instance v3, Lcom/sleepycat/je/util/DbBackup;

    iget-object v4, p0, Lcom/sleepycat/je/dbi/BackupManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {v3, v4}, Lcom/sleepycat/je/util/DbBackup;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 849
    .local v3, "dbBackup":Lcom/sleepycat/je/util/DbBackup;
    invoke-virtual {v3}, Lcom/sleepycat/je/util/DbBackup;->startBackup()V

    .line 864
    :try_start_1
    invoke-static {}, Lcom/sleepycat/je/dbi/BackupManager;->currentTimeMs()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    add-long/2addr v4, v6

    .line 865
    .local v4, "backupStartTimeMs":J
    invoke-direct {p0, v4, v5, p1}, Lcom/sleepycat/je/dbi/BackupManager;->writeSnapshotInfo(JLjava/nio/file/Path;)V

    .line 868
    invoke-virtual {v3}, Lcom/sleepycat/je/util/DbBackup;->getLogFilesInSnapshot()[Ljava/lang/String;

    move-result-object v6

    .line 869
    .local v6, "logFiles":[Ljava/lang/String;
    array-length v7, v6

    move v8, v2

    :goto_0
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    .line 876
    .local v9, "logFile":Ljava/lang/String;
    new-array v10, v2, [Ljava/lang/String;

    invoke-static {v9, v10}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v10

    .line 877
    .local v10, "logFilePath":Ljava/nio/file/Path;
    nop

    .line 878
    invoke-interface {v10}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v11

    invoke-interface {p1, v11}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v11

    iget-object v12, p0, Lcom/sleepycat/je/dbi/BackupManager;->envHomeDir:Ljava/nio/file/Path;

    .line 879
    invoke-interface {v12, v10}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v12

    .line 877
    invoke-static {v11, v12}, Ljava/nio/file/Files;->createLink(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 869
    nop

    .end local v9    # "logFile":Ljava/lang/String;
    .end local v10    # "logFilePath":Ljava/nio/file/Path;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 886
    :cond_1
    invoke-static {p1}, Lcom/sleepycat/je/dbi/BackupManager;->forceFile(Ljava/nio/file/Path;)V

    .line 887
    const-string/jumbo v7, "snapComplete"

    invoke-interface {p1, v7}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v7

    new-array v2, v2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v7, v2}, Ljava/nio/file/Files;->createFile(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 893
    invoke-static {p1}, Lcom/sleepycat/je/dbi/BackupManager;->forceFile(Ljava/nio/file/Path;)V

    .line 902
    nop

    .line 903
    invoke-static {}, Lcom/sleepycat/je/dbi/BackupManager;->currentTimeMs()J

    move-result-wide v7

    sub-long v7, v4, v7

    const-wide/16 v9, 0x0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 904
    .local v7, "startWaitTime":J
    cmp-long v2, v7, v9

    if-lez v2, :cond_2

    .line 905
    invoke-static {v7, v8}, Lcom/sleepycat/je/dbi/BackupManager;->sleepMs(J)V

    .line 908
    :cond_2
    invoke-static {}, Lcom/sleepycat/je/dbi/BackupManager;->currentTimeMs()J

    move-result-wide v9

    sub-long/2addr v9, v0

    .line 909
    .local v9, "creationTimeMs":J
    iget-object v2, p0, Lcom/sleepycat/je/dbi/BackupManager;->logger:Ljava/util/logging/Logger;

    iget-object v11, p0, Lcom/sleepycat/je/dbi/BackupManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Created snapshot: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 910
    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", number of log files: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v6

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", creation time: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ms, start wait time: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 909
    invoke-static {v2, v11, v12}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/nio/file/FileAlreadyExistsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 920
    .end local v4    # "backupStartTimeMs":J
    .end local v6    # "logFiles":[Ljava/lang/String;
    .end local v7    # "startWaitTime":J
    .end local v9    # "creationTimeMs":J
    invoke-virtual {v3}, Lcom/sleepycat/je/util/DbBackup;->endBackup()V

    .line 921
    nop

    .line 922
    return-void

    .line 920
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 914
    :catch_0
    move-exception v2

    .line 915
    .local v2, "e":Ljava/nio/file/FileAlreadyExistsException;
    :try_start_2
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Snapshot directory should not already contain file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 917
    invoke-virtual {v2}, Ljava/nio/file/FileAlreadyExistsException;->getFile()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "startTimeMs":J
    .end local v3    # "dbBackup":Lcom/sleepycat/je/util/DbBackup;
    .end local p1    # "snapshotDir":Ljava/nio/file/Path;
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 920
    .end local v2    # "e":Ljava/nio/file/FileAlreadyExistsException;
    .restart local v0    # "startTimeMs":J
    .restart local v3    # "dbBackup":Lcom/sleepycat/je/util/DbBackup;
    .restart local p1    # "snapshotDir":Ljava/nio/file/Path;
    :goto_1
    invoke-virtual {v3}, Lcom/sleepycat/je/util/DbBackup;->endBackup()V

    throw v2

    .line 842
    .end local v3    # "dbBackup":Lcom/sleepycat/je/util/DbBackup;
    :catch_1
    move-exception v2

    .line 843
    .restart local v2    # "e":Ljava/nio/file/FileAlreadyExistsException;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Snapshot directory should not already exist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 838
    .end local v2    # "e":Ljava/nio/file/FileAlreadyExistsException;
    :cond_3
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 837
    :cond_4
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public static createSnapshotScheduleParser(Ljava/lang/String;)Lcom/sleepycat/je/utilint/CronScheduleParser;
    .locals 3
    .param p0, "cronSchedule"    # Ljava/lang/String;

    .line 680
    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    sget-object v0, Lcom/sleepycat/je/dbi/BackupManager;->utcCalendar:Ljava/util/Calendar;

    monitor-enter v0

    .line 685
    :try_start_0
    invoke-static {}, Lcom/sleepycat/je/dbi/BackupManager;->currentTimeMs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 686
    new-instance v1, Lcom/sleepycat/je/utilint/CronScheduleParser;

    invoke-direct {v1, p0, v0}, Lcom/sleepycat/je/utilint/CronScheduleParser;-><init>(Ljava/lang/String;Ljava/util/Calendar;)V

    monitor-exit v0

    return-object v1

    .line 687
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 681
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Schedule must start with \'0\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static currentTimeMs()J
    .locals 6

    .line 1908
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1909
    .local v0, "now":J
    sget-wide v2, Lcom/sleepycat/je/dbi/BackupManager;->timeMultiplier:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move-wide v2, v0

    goto :goto_0

    :cond_0
    sget-wide v2, Lcom/sleepycat/je/dbi/BackupManager;->timeMultiplier:J

    mul-long/2addr v2, v0

    :goto_0
    return-wide v2
.end method

.method private deleteSnapshot(Ljava/nio/file/Path;)V
    .locals 5
    .param p1, "snapshotDir"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1785
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v1}, Ljava/nio/file/Files;->notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1786
    return-void

    .line 1789
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/dbi/BackupManager;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/dbi/BackupManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting snapshot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1790
    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1789
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1798
    const-string/jumbo v1, "snapComplete"

    invoke-interface {p1, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 1799
    .local v1, "snapshotComplete":Ljava/nio/file/Path;
    new-array v2, v0, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1800
    invoke-static {v1}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V

    .line 1801
    invoke-static {p1}, Lcom/sleepycat/je/dbi/BackupManager;->forceFile(Ljava/nio/file/Path;)V

    .line 1805
    :cond_1
    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Lcom/sleepycat/je/dbi/BackupManager$$ExternalSyntheticLambda5;

    invoke-direct {v3, p1}, Lcom/sleepycat/je/dbi/BackupManager$$ExternalSyntheticLambda5;-><init>(Ljava/nio/file/Path;)V

    new-array v0, v0, [Ljava/nio/file/FileVisitOption;

    invoke-static {p1, v2, v3, v0}, Ljava/nio/file/Files;->find(Ljava/nio/file/Path;ILjava/util/function/BiPredicate;[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UncheckedIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1807
    .local v0, "filesStream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/nio/file/Path;>;"
    :try_start_1
    new-instance v2, Lcom/sleepycat/je/dbi/BackupManager$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/sleepycat/je/dbi/BackupManager$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1814
    invoke-static {p1}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1815
    if-eqz v0, :cond_2

    :try_start_2
    invoke-interface {v0}, Ljava/util/stream/Stream;->close()V
    :try_end_2
    .catch Ljava/io/UncheckedIOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1817
    .end local v0    # "filesStream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/nio/file/Path;>;"
    :cond_2
    nop

    .line 1818
    return-void

    .line 1805
    .restart local v0    # "filesStream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/nio/file/Path;>;"
    :catchall_0
    move-exception v2

    .end local v0    # "filesStream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/nio/file/Path;>;"
    .end local v1    # "snapshotComplete":Ljava/nio/file/Path;
    .end local p1    # "snapshotDir":Ljava/nio/file/Path;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1815
    .restart local v0    # "filesStream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/nio/file/Path;>;"
    .restart local v1    # "snapshotComplete":Ljava/nio/file/Path;
    .restart local p1    # "snapshotDir":Ljava/nio/file/Path;
    :catchall_1
    move-exception v3

    if-eqz v0, :cond_3

    :try_start_4
    invoke-interface {v0}, Ljava/util/stream/Stream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    :try_start_5
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "snapshotComplete":Ljava/nio/file/Path;
    .end local p1    # "snapshotDir":Ljava/nio/file/Path;
    :cond_3
    :goto_0
    throw v3
    :try_end_5
    .catch Ljava/io/UncheckedIOException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v0    # "filesStream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/nio/file/Path;>;"
    .restart local v1    # "snapshotComplete":Ljava/nio/file/Path;
    .restart local p1    # "snapshotDir":Ljava/nio/file/Path;
    :catch_0
    move-exception v0

    .line 1816
    .local v0, "e":Ljava/io/UncheckedIOException;
    invoke-virtual {v0}, Ljava/io/UncheckedIOException;->getCause()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method static fileLastModifiedTimeMs(Ljava/nio/file/Path;)J
    .locals 7
    .param p0, "file"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1368
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v0

    .line 1369
    .local v0, "modTime":J
    sget-wide v2, Lcom/sleepycat/je/dbi/BackupManager;->timeMultiplier:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const-wide/16 v3, 0x3e8

    if-nez v2, :cond_0

    add-long/2addr v3, v0

    goto :goto_0

    :cond_0
    sget-wide v5, Lcom/sleepycat/je/dbi/BackupManager;->timeMultiplier:J

    mul-long/2addr v5, v0

    add-long/2addr v3, v5

    :goto_0
    return-wide v3
.end method

.method public static forceFile(Ljava/nio/file/Path;)V
    .locals 4
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 938
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v0}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 939
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 940
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 941
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    :cond_0
    return-void

    .line 938
    .restart local v0    # "channel":Ljava/nio/channels/FileChannel;
    :catchall_0
    move-exception v1

    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local p0    # "path":Ljava/nio/file/Path;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 940
    .restart local v0    # "channel":Ljava/nio/channels/FileChannel;
    .restart local p0    # "path":Ljava/nio/file/Path;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method static formatTime(J)Ljava/lang/String;
    .locals 2
    .param p0, "millis"    # J

    .line 2062
    sget-object v0, Lcom/sleepycat/je/dbi/BackupManager;->dateFormat:Ljava/text/SimpleDateFormat;

    monitor-enter v0

    .line 2063
    :try_start_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2064
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private declared-synchronized getBackupCopy()Lcom/sleepycat/je/BackupFileCopy;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->backupCopy:Lcom/sleepycat/je/BackupFileCopy;

    if-nez v0, :cond_0

    .line 326
    const-class v0, Lcom/sleepycat/je/BackupFileCopy;

    iget-object v1, p0, Lcom/sleepycat/je/dbi/BackupManager;->backupCopyClass:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/BackupManager;->getImplementationInstance(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/BackupFileCopy;

    .line 328
    .local v0, "inst":Lcom/sleepycat/je/BackupFileCopy;
    iget-object v1, p0, Lcom/sleepycat/je/dbi/BackupManager;->backupCopyConfig:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/sleepycat/je/BackupFileCopy;->initialize(Ljava/io/File;)V

    .line 329
    iput-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->backupCopy:Lcom/sleepycat/je/BackupFileCopy;

    .line 331
    .end local v0    # "inst":Lcom/sleepycat/je/BackupFileCopy;
    .end local p0    # "this":Lcom/sleepycat/je/dbi/BackupManager;
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->backupCopy:Lcom/sleepycat/je/BackupFileCopy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getBackupLocation()Lcom/sleepycat/je/BackupArchiveLocation;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->backupLocation:Lcom/sleepycat/je/BackupArchiveLocation;

    if-nez v0, :cond_0

    .line 347
    const-class v0, Lcom/sleepycat/je/BackupArchiveLocation;

    iget-object v1, p0, Lcom/sleepycat/je/dbi/BackupManager;->backupLocationClass:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sleepycat/je/dbi/BackupManager;->getImplementationInstance(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/BackupArchiveLocation;

    .line 349
    .local v0, "inst":Lcom/sleepycat/je/BackupArchiveLocation;
    iget-object v1, p0, Lcom/sleepycat/je/dbi/BackupManager;->nodeName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sleepycat/je/dbi/BackupManager;->backupLocationConfig:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lcom/sleepycat/je/BackupArchiveLocation;->initialize(Ljava/lang/String;Ljava/io/File;)V

    .line 350
    iput-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->backupLocation:Lcom/sleepycat/je/BackupArchiveLocation;

    .line 352
    .end local v0    # "inst":Lcom/sleepycat/je/BackupArchiveLocation;
    .end local p0    # "this":Lcom/sleepycat/je/dbi/BackupManager;
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->backupLocation:Lcom/sleepycat/je/BackupArchiveLocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getExceptionStringForLogging(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 2072
    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2073
    invoke-static {p1}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2074
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2072
    :goto_0
    return-object v0
.end method

.method private static getFileNameString(Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;

    .line 2034
    invoke-interface {p0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImplementationClassConstructor(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Constructor;
    .locals 5
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TC;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "+TC;>;"
        }
    .end annotation

    .line 1836
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TC;>;"
    const-string v0, "Class "

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1842
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1850
    .local v1, "classType":Ljava/lang/Class;, "Ljava/lang/Class<+TC;>;"
    nop

    .line 1851
    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1856
    const/4 v2, 0x0

    :try_start_1
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 1857
    :catch_0
    move-exception v2

    .line 1858
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " does not provide a public no-arguments constructor"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1852
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class must not be abstract: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1846
    .end local v1    # "classType":Ljava/lang/Class;, "Ljava/lang/Class<+TC;>;"
    :catch_1
    move-exception v1

    .line 1847
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " must implement "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1848
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1843
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :catch_2
    move-exception v0

    .line 1844
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1837
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type must be an interface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1838
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getImplementationInstance(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TC;>;",
            "Ljava/lang/String;",
            ")TC;"
        }
    .end annotation

    .line 1882
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TC;>;"
    const-string v0, "Class "

    .line 1883
    invoke-static {p0, p1}, Lcom/sleepycat/je/dbi/BackupManager;->getImplementationClassConstructor(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 1886
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+TC;>;"
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1897
    .local v0, "instance":Ljava/lang/Object;, "TC;"
    nop

    .line 1898
    return-object v0

    .line 1893
    .end local v0    # "instance":Ljava/lang/Object;, "TC;"
    :catch_0
    move-exception v2

    .line 1894
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " constructor failed: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1895
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1890
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v2

    .line 1891
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " must not be abstract"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1887
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v2

    .line 1888
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " must be accessible"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private getLatestSnapshotInfo()Lcom/sleepycat/je/dbi/BackupManager$LatestSnapshotInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1174
    new-instance v0, Lcom/sleepycat/je/dbi/BackupManager$LatestSnapshotInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sleepycat/je/dbi/BackupManager$LatestSnapshotInfo;-><init>(Lcom/sleepycat/je/dbi/BackupManager$1;)V

    .line 1175
    .local v0, "info":Lcom/sleepycat/je/dbi/BackupManager$LatestSnapshotInfo;
    new-instance v1, Lcom/sleepycat/je/dbi/BackupManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/sleepycat/je/dbi/BackupManager$$ExternalSyntheticLambda0;-><init>(Lcom/sleepycat/je/dbi/BackupManager;Lcom/sleepycat/je/dbi/BackupManager$LatestSnapshotInfo;)V

    invoke-direct {p0, v1}, Lcom/sleepycat/je/dbi/BackupManager;->withSnapshots(Ljava/util/function/Consumer;)V

    .line 1229
    return-object v0
.end method

.method private getLogFileInfo(Ljava/lang/String;Ljava/nio/file/Path;Ljava/util/Map;J)Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;
    .locals 6
    .param p1, "logFile"    # Ljava/lang/String;
    .param p2, "snapshotDir"    # Ljava/nio/file/Path;
    .param p4, "startTimeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/file/Path;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;",
            ">;J)",
            "Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1327
    .local p3, "parentSnapshotFiles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;>;"
    if-eqz p3, :cond_0

    .line 1328
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1337
    .local v0, "parentInfo":Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;->getIsCopied()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1338
    nop

    .line 1339
    invoke-interface {p2, p1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/je/dbi/BackupManager;->fileLastModifiedTimeMs(Ljava/nio/file/Path;)J

    move-result-wide v1

    .line 1340
    .local v1, "logFileModTimeMs":J
    cmp-long v3, v1, p4

    if-gez v3, :cond_1

    .line 1341
    return-object v0

    .line 1343
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Detected erasure since last copy of log file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", log file modify time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1345
    invoke-static {v1, v2}, Lcom/sleepycat/je/dbi/BackupManager;->formatTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", snapshot start time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1346
    invoke-static {p4, p5}, Lcom/sleepycat/je/dbi/BackupManager;->formatTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1347
    .local v3, "msg":Ljava/lang/String;
    iget-object v4, p0, Lcom/sleepycat/je/dbi/BackupManager;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/dbi/BackupManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v4, v5, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1351
    .end local v1    # "logFileModTimeMs":J
    .end local v3    # "msg":Ljava/lang/String;
    :cond_2
    new-instance v1, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;

    invoke-static {p2}, Lcom/sleepycat/je/dbi/BackupManager;->getSnapshotName(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/dbi/BackupManager;->nodeName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private getManifest(Ljava/nio/file/Path;)Lcom/sleepycat/je/dbi/SnapshotManifest;
    .locals 8
    .param p1, "snapshotDir"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1739
    const-string v0, "manifest.json"

    invoke-interface {p1, v0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 1740
    .local v0, "path":Ljava/nio/file/Path;
    const-string v1, "manifest.json.old"

    invoke-interface {p1, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 1741
    .local v1, "oldPath":Ljava/nio/file/Path;
    const-string v2, "manifest.json.new"

    invoke-interface {p1, v2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    .line 1742
    .local v2, "newPath":Ljava/nio/file/Path;
    const/4 v3, 0x0

    new-array v4, v3, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v4}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1743
    iget-object v4, p0, Lcom/sleepycat/je/dbi/BackupManager;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/dbi/BackupManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing incomplete snapshot manifest: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->finer(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1746
    invoke-static {v2}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V

    .line 1748
    :cond_0
    new-array v4, v3, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v4}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1749
    new-array v3, v3, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v3}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1750
    iget-object v3, p0, Lcom/sleepycat/je/dbi/BackupManager;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/dbi/BackupManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing obsolete snapshot manifest: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->finer(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1753
    invoke-static {v1}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V

    goto :goto_0

    .line 1755
    :cond_1
    new-array v4, v3, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v4}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1756
    iget-object v4, p0, Lcom/sleepycat/je/dbi/BackupManager;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/dbi/BackupManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Restoring old snapshot manifest: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->finer(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1758
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/nio/file/CopyOption;

    sget-object v5, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    aput-object v5, v4, v3

    invoke-static {v1, v0, v4}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 1762
    :cond_2
    :goto_0
    invoke-static {v0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/sleepycat/je/dbi/SnapshotManifest;->deserialize([B)Lcom/sleepycat/je/dbi/SnapshotManifest;

    move-result-object v3

    return-object v3

    .line 1760
    :cond_3
    const/4 v3, 0x0

    return-object v3
.end method

.method private static getNodeName(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Ljava/lang/String;
    .locals 2
    .param p0, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 2042
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 2043
    .local v0, "nodeName":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private getSnapshotDir(J)Ljava/nio/file/Path;
    .locals 1
    .param p1, "timeMs"    # J

    .line 741
    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->envHomeDir:Ljava/nio/file/Path;

    invoke-static {p1, p2, v0}, Lcom/sleepycat/je/dbi/BackupManager;->getSnapshotDir(JLjava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method static getSnapshotDir(JLjava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 7
    .param p0, "timeMs"    # J
    .param p2, "envHomeDir"    # Ljava/nio/file/Path;

    .line 747
    sget-object v0, Lcom/sleepycat/je/dbi/BackupManager;->utcCalendar:Ljava/util/Calendar;

    monitor-enter v0

    .line 748
    :try_start_0
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 749
    const-string v1, "%02d%02d%02d%02d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 750
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    rem-int/lit8 v4, v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 751
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v6, 0x5

    .line 752
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    const/4 v4, 0x3

    const/16 v6, 0xb

    .line 753
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    .line 749
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 754
    .local v1, "snap":Ljava/lang/String;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 755
    const-string/jumbo v0, "snapshots"

    new-array v2, v3, [Ljava/lang/String;

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0

    .line 754
    .end local v1    # "snap":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static getSnapshotName(Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 4
    .param p0, "snapshotDir"    # Ljava/nio/file/Path;

    .line 2052
    invoke-static {p0}, Lcom/sleepycat/je/dbi/BackupManager;->getFileNameString(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v0

    .line 2053
    .local v0, "fileName":Ljava/lang/String;
    sget-object v1, Lcom/sleepycat/je/dbi/BackupManager;->SNAPSHOT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2057
    return-object v0

    .line 2054
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad snapshot directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static getSnapshotTimeMs(Ljava/lang/String;)J
    .locals 10
    .param p0, "snapshot"    # Ljava/lang/String;

    .line 766
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 770
    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 771
    .local v0, "year":I
    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 772
    .local v4, "month":I
    const/4 v5, 0x6

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 773
    .local v3, "day":I
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 774
    .local v1, "hour":I
    sget-object v5, Lcom/sleepycat/je/dbi/BackupManager;->utcCalendar:Ljava/util/Calendar;

    monitor-enter v5

    .line 775
    :try_start_0
    invoke-static {}, Lcom/sleepycat/je/dbi/BackupManager;->currentTimeMs()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 776
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    div-int/lit8 v7, v7, 0x64
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/lit8 v7, v7, 0x64

    .line 778
    .local v7, "century":I
    add-int v8, v0, v7

    :try_start_1
    invoke-virtual {v5, v6, v8}, Ljava/util/Calendar;->set(II)V

    .line 779
    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v5, v2, v6}, Ljava/util/Calendar;->set(II)V

    .line 780
    const/4 v2, 0x5

    invoke-virtual {v5, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 781
    const/16 v2, 0xb

    invoke-virtual {v5, v2, v1}, Ljava/util/Calendar;->set(II)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 787
    nop

    .line 788
    :try_start_2
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    monitor-exit v5

    return-wide v8

    .line 782
    :catch_0
    move-exception v2

    .line 783
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad format for snapshot: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\': "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 785
    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "year":I
    .end local v1    # "hour":I
    .end local v3    # "day":I
    .end local v4    # "month":I
    .end local p0    # "snapshot":Ljava/lang/String;
    throw v6

    .line 789
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v7    # "century":I
    .restart local v0    # "year":I
    .restart local v1    # "hour":I
    .restart local v3    # "day":I
    .restart local v4    # "month":I
    .restart local p0    # "snapshot":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 767
    .end local v0    # "year":I
    .end local v1    # "hour":I
    .end local v3    # "day":I
    .end local v4    # "month":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong length for snapshot: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized init()V
    .locals 6

    monitor-enter p0

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    .line 282
    .local v0, "configManager":Lcom/sleepycat/je/dbi/DbConfigManager;
    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_RUN_BACKUP:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sleepycat/je/dbi/BackupManager;->runBackup:Z

    .line 283
    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->BACKUP_SCHEDULE:Lcom/sleepycat/je/config/ConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/dbi/BackupManager;->backupSchedule:Ljava/lang/String;

    .line 285
    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->BACKUP_COPY_CLASS:Lcom/sleepycat/je/config/ConfigParam;

    .line 286
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/dbi/BackupManager;->backupCopyClass:Ljava/lang/String;

    .line 287
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->BACKUP_COPY_CONFIG:Lcom/sleepycat/je/config/ConfigParam;

    .line 288
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sleepycat/je/dbi/BackupManager;->backupCopyConfig:Ljava/io/File;

    .line 290
    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->BACKUP_LOCATION_CLASS:Lcom/sleepycat/je/config/ConfigParam;

    .line 291
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/dbi/BackupManager;->backupLocationClass:Ljava/lang/String;

    .line 292
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->BACKUP_LOCATION_CONFIG:Lcom/sleepycat/je/config/ConfigParam;

    .line 294
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sleepycat/je/dbi/BackupManager;->backupLocationConfig:Ljava/io/File;

    .line 296
    sget-wide v1, Lcom/sleepycat/je/dbi/BackupManager;->timeMultiplier:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/sleepycat/je/dbi/BackupManager;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/dbi/BackupManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating snapshots using time multiplier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/sleepycat/je/dbi/BackupManager;->timeMultiplier:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    .end local p0    # "this":Lcom/sleepycat/je/dbi/BackupManager;
    :cond_0
    monitor-exit p0

    return-void

    .line 280
    .end local v0    # "configManager":Lcom/sleepycat/je/dbi/DbConfigManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isSnapshotComplete(Ljava/nio/file/Path;)Z
    .locals 2
    .param p1, "snapshotDir"    # Ljava/nio/file/Path;

    .line 794
    const-string/jumbo v0, "snapComplete"

    invoke-interface {p1, v0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$deleteSnapshot$4(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Z
    .locals 1
    .param p0, "snapshotDir"    # Ljava/nio/file/Path;
    .param p1, "p"    # Ljava/nio/file/Path;
    .param p2, "a"    # Ljava/nio/file/attribute/BasicFileAttributes;

    .line 1806
    invoke-interface {p1, p0}, Ljava/nio/file/Path;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$deleteSnapshot$5(Ljava/nio/file/Path;)V
    .locals 2
    .param p0, "p"    # Ljava/nio/file/Path;

    .line 1809
    :try_start_0
    invoke-static {p0}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1812
    nop

    .line 1813
    return-void

    .line 1810
    :catch_0
    move-exception v0

    .line 1811
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/UncheckedIOException;

    invoke-direct {v1, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method static synthetic lambda$withLogFiles$7(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Z
    .locals 2
    .param p0, "p"    # Ljava/nio/file/Path;
    .param p1, "a"    # Ljava/nio/file/attribute/BasicFileAttributes;

    .line 2025
    invoke-static {p0}, Lcom/sleepycat/je/dbi/BackupManager;->getFileNameString(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jdb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$withSnapshots$6(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Z
    .locals 1
    .param p0, "snapshotsSubdir"    # Ljava/nio/file/Path;
    .param p1, "p"    # Ljava/nio/file/Path;
    .param p2, "a"    # Ljava/nio/file/attribute/BasicFileAttributes;

    .line 2001
    invoke-interface {p0, p1}, Ljava/nio/file/Path;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private readSnapshotInfo(Ljava/nio/file/Path;)Lcom/sleepycat/je/dbi/BackupManager$SnapshotInfo;
    .locals 1
    .param p1, "snapshotDir"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1001
    nop

    .line 1002
    const-string/jumbo v0, "snapInfo.properties"

    invoke-interface {p1, v0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v0

    .line 1001
    invoke-static {v0}, Lcom/sleepycat/je/dbi/BackupManager$SnapshotInfo;->deserialize([B)Lcom/sleepycat/je/dbi/BackupManager$SnapshotInfo;

    move-result-object v0

    return-object v0
.end method

.method private saveManifest(Lcom/sleepycat/je/dbi/SnapshotManifest;Ljava/nio/file/Path;)V
    .locals 10
    .param p1, "manifest"    # Lcom/sleepycat/je/dbi/SnapshotManifest;
    .param p2, "snapshotDir"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1670
    sget-object v0, Lcom/sleepycat/je/dbi/BackupManager;->saveManifestHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v0, p2}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1671
    sget-object v0, Lcom/sleepycat/je/dbi/BackupManager;->saveManifestHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v0}, Lcom/sleepycat/je/utilint/TestHookExecute;->doIOHookIfSet(Lcom/sleepycat/je/utilint/TestHook;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1673
    const-string v0, "manifest.json"

    invoke-interface {p2, v0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 1674
    .local v1, "path":Ljava/nio/file/Path;
    const-string v2, "manifest.json.new"

    invoke-interface {p2, v2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    .line 1675
    .local v2, "newPath":Ljava/nio/file/Path;
    const-string v3, "manifest.json.old"

    invoke-interface {p2, v3}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    .line 1676
    .local v3, "oldPath":Ljava/nio/file/Path;
    const/4 v4, 0x0

    new-array v5, v4, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v5}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1677
    iget-object v5, p0, Lcom/sleepycat/je/dbi/BackupManager;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/dbi/BackupManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing incomplete snapshot manifest: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->finer(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1680
    invoke-static {v2}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V

    .line 1682
    :cond_0
    new-array v5, v4, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v5}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 1683
    new-array v5, v4, [Ljava/nio/file/LinkOption;

    invoke-static {v3, v5}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1684
    iget-object v5, p0, Lcom/sleepycat/je/dbi/BackupManager;->logger:Ljava/util/logging/Logger;

    iget-object v7, p0, Lcom/sleepycat/je/dbi/BackupManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removing obsolete snapshot manifest: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->finer(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1687
    invoke-static {v3}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V

    .line 1689
    :cond_1
    new-array v5, v6, [Ljava/nio/file/CopyOption;

    sget-object v7, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    aput-object v7, v5, v4

    invoke-static {v1, v3, v5}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 1690
    invoke-static {p2}, Lcom/sleepycat/je/dbi/BackupManager;->forceFile(Ljava/nio/file/Path;)V

    .line 1692
    :cond_2
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/SnapshotManifest;->serialize()[B

    move-result-object v5

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/nio/file/OpenOption;

    sget-object v8, Ljava/nio/file/StandardOpenOption;->SYNC:Ljava/nio/file/StandardOpenOption;

    aput-object v8, v7, v4

    sget-object v8, Ljava/nio/file/StandardOpenOption;->CREATE_NEW:Ljava/nio/file/StandardOpenOption;

    aput-object v8, v7, v6

    invoke-static {v2, v5, v7}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;

    .line 1694
    invoke-static {v2}, Lcom/sleepycat/je/dbi/BackupManager;->forceFile(Ljava/nio/file/Path;)V

    .line 1695
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/SnapshotManifest;->getSnapshot()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v0, v5}, Lcom/sleepycat/je/dbi/BackupManager;->copyFile(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1696
    new-array v0, v6, [Ljava/nio/file/CopyOption;

    sget-object v5, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    aput-object v5, v0, v4

    invoke-static {v2, v1, v0}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 1697
    invoke-static {p2}, Lcom/sleepycat/je/dbi/BackupManager;->forceFile(Ljava/nio/file/Path;)V

    .line 1698
    new-array v0, v4, [Ljava/nio/file/LinkOption;

    invoke-static {v3, v0}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1699
    invoke-static {v3}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V

    .line 1701
    :cond_3
    return-void

    .line 1671
    .end local v1    # "path":Ljava/nio/file/Path;
    .end local v2    # "newPath":Ljava/nio/file/Path;
    .end local v3    # "oldPath":Ljava/nio/file/Path;
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1670
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static sleepMs(J)V
    .locals 6
    .param p0, "timeMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1954
    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    .line 1958
    invoke-static {p0, p1}, Lcom/sleepycat/je/dbi/BackupManager;->computeWaitTimeMs(J)J

    move-result-wide v0

    .line 1959
    .local v0, "wait":J
    invoke-static {}, Lcom/sleepycat/je/dbi/BackupManager;->currentTimeMs()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 1961
    .local v2, "until":J
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 1962
    invoke-static {}, Lcom/sleepycat/je/dbi/BackupManager;->currentTimeMs()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 1963
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    .line 1964
    return-void

    .line 1955
    .end local v0    # "wait":J
    .end local v2    # "until":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timeMs is too small: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized updateSnapshotTimeInfo()V
    .locals 2

    monitor-enter p0

    .line 721
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->snapshotTimeInfo:Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;

    iget-object v1, p0, Lcom/sleepycat/je/dbi/BackupManager;->backupSchedule:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .end local p0    # "this":Lcom/sleepycat/je/dbi/BackupManager;
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->snapshotTimeInfo:Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;

    iget-object v1, p0, Lcom/sleepycat/je/dbi/BackupManager;->backupSchedule:Ljava/lang/String;

    .line 723
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;->update(Ljava/lang/String;)Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->snapshotTimeInfo:Lcom/sleepycat/je/dbi/BackupManager$SnapshotTimeInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 724
    monitor-exit p0

    return-void

    .line 720
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static waitMs(Ljava/lang/Object;J)V
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "timeMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1924
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 1928
    invoke-static {p1, p2}, Lcom/sleepycat/je/dbi/BackupManager;->computeWaitTimeMs(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 1929
    return-void

    .line 1925
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timeMs is too small: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized wakeUpCopyThread()V
    .locals 3

    monitor-enter p0

    .line 949
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->shutdownRequested:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 950
    monitor-exit p0

    return-void

    .line 952
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/dbi/BackupManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const-string v2, "Waking up snapshot copy thread"

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 953
    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->copyThread:Lcom/sleepycat/je/dbi/BackupManager$CopyThread;

    if-nez v0, :cond_1

    .line 954
    new-instance v0, Lcom/sleepycat/je/dbi/BackupManager$CopyThread;

    iget-object v1, p0, Lcom/sleepycat/je/dbi/BackupManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {v0, p0, v1}, Lcom/sleepycat/je/dbi/BackupManager$CopyThread;-><init>(Lcom/sleepycat/je/dbi/BackupManager;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->copyThread:Lcom/sleepycat/je/dbi/BackupManager$CopyThread;

    .line 955
    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->copyThread:Lcom/sleepycat/je/dbi/BackupManager$CopyThread;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/BackupManager$CopyThread;->start()V

    goto :goto_0

    .line 957
    .end local p0    # "this":Lcom/sleepycat/je/dbi/BackupManager;
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->copyThread:Lcom/sleepycat/je/dbi/BackupManager$CopyThread;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/BackupManager$CopyThread;->wakeUp()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 959
    :goto_0
    monitor-exit p0

    return-void

    .line 948
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static withLogFiles(Ljava/nio/file/Path;Ljava/util/function/Consumer;)V
    .locals 4
    .param p0, "snapshotDir"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/stream/Stream<",
            "Ljava/nio/file/Path;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2023
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/stream/Stream<Ljava/nio/file/Path;>;>;"
    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Lcom/sleepycat/je/dbi/BackupManager$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/sleepycat/je/dbi/BackupManager$$ExternalSyntheticLambda7;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/FileVisitOption;

    invoke-static {p0, v0, v1, v2}, Ljava/nio/file/Files;->find(Ljava/nio/file/Path;ILjava/util/function/BiPredicate;[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UncheckedIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2026
    .local v0, "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/nio/file/Path;>;"
    :try_start_1
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2027
    if-eqz v0, :cond_0

    :try_start_2
    invoke-interface {v0}, Ljava/util/stream/Stream;->close()V
    :try_end_2
    .catch Ljava/io/UncheckedIOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2029
    .end local v0    # "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/nio/file/Path;>;"
    :cond_0
    nop

    .line 2030
    return-void

    .line 2023
    .restart local v0    # "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/nio/file/Path;>;"
    :catchall_0
    move-exception v1

    .end local v0    # "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/nio/file/Path;>;"
    .end local p0    # "snapshotDir":Ljava/nio/file/Path;
    .end local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/stream/Stream<Ljava/nio/file/Path;>;>;"
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2027
    .restart local v0    # "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/nio/file/Path;>;"
    .restart local p0    # "snapshotDir":Ljava/nio/file/Path;
    .restart local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/stream/Stream<Ljava/nio/file/Path;>;>;"
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_4
    invoke-interface {v0}, Ljava/util/stream/Stream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    :try_start_5
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "snapshotDir":Ljava/nio/file/Path;
    .end local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/stream/Stream<Ljava/nio/file/Path;>;>;"
    :cond_1
    :goto_0
    throw v2
    :try_end_5
    .catch Ljava/io/UncheckedIOException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v0    # "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/nio/file/Path;>;"
    .restart local p0    # "snapshotDir":Ljava/nio/file/Path;
    .restart local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/stream/Stream<Ljava/nio/file/Path;>;>;"
    :catch_0
    move-exception v0

    .line 2028
    .local v0, "e":Ljava/io/UncheckedIOException;
    invoke-virtual {v0}, Ljava/io/UncheckedIOException;->getCause()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method private withSnapshots(Ljava/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/stream/Stream<",
            "Ljava/nio/file/Path;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1999
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/stream/Stream<Ljava/nio/file/Path;>;>;"
    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->envHomeDir:Ljava/nio/file/Path;

    const-string/jumbo v1, "snapshots"

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 2000
    .local v0, "snapshotsSubdir":Ljava/nio/file/Path;
    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Lcom/sleepycat/je/dbi/BackupManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/sleepycat/je/dbi/BackupManager$$ExternalSyntheticLambda1;-><init>(Ljava/nio/file/Path;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/FileVisitOption;

    invoke-static {v0, v1, v2, v3}, Ljava/nio/file/Files;->find(Ljava/nio/file/Path;ILjava/util/function/BiPredicate;[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UncheckedIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2002
    .local v1, "snapshots":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/nio/file/Path;>;"
    :try_start_1
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2003
    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Ljava/util/stream/Stream;->close()V
    :try_end_2
    .catch Ljava/io/UncheckedIOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2005
    .end local v1    # "snapshots":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/nio/file/Path;>;"
    :cond_0
    nop

    .line 2006
    return-void

    .line 2000
    .restart local v1    # "snapshots":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/nio/file/Path;>;"
    :catchall_0
    move-exception v2

    .end local v0    # "snapshotsSubdir":Ljava/nio/file/Path;
    .end local v1    # "snapshots":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/nio/file/Path;>;"
    .end local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/stream/Stream<Ljava/nio/file/Path;>;>;"
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2003
    .restart local v0    # "snapshotsSubdir":Ljava/nio/file/Path;
    .restart local v1    # "snapshots":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/nio/file/Path;>;"
    .restart local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/stream/Stream<Ljava/nio/file/Path;>;>;"
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_1

    :try_start_4
    invoke-interface {v1}, Ljava/util/stream/Stream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    :try_start_5
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "snapshotsSubdir":Ljava/nio/file/Path;
    .end local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/stream/Stream<Ljava/nio/file/Path;>;>;"
    :cond_1
    :goto_0
    throw v3
    :try_end_5
    .catch Ljava/io/UncheckedIOException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v1    # "snapshots":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/nio/file/Path;>;"
    .restart local v0    # "snapshotsSubdir":Ljava/nio/file/Path;
    .restart local p1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/stream/Stream<Ljava/nio/file/Path;>;>;"
    :catch_0
    move-exception v1

    .line 2004
    .local v1, "e":Ljava/io/UncheckedIOException;
    invoke-virtual {v1}, Ljava/io/UncheckedIOException;->getCause()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method private writeSnapshotInfo(JLjava/nio/file/Path;)V
    .locals 7
    .param p1, "backupStartTimeMs"    # J
    .param p3, "snapshotDir"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 979
    new-instance v6, Lcom/sleepycat/je/dbi/BackupManager$SnapshotInfo;

    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 980
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getEndOfLog()J

    move-result-wide v3

    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 981
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getIsMaster()Z

    move-result v5

    move-object v0, v6

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/dbi/BackupManager$SnapshotInfo;-><init>(JJZ)V

    .line 982
    .local v0, "info":Lcom/sleepycat/je/dbi/BackupManager$SnapshotInfo;
    sget-object v1, Lcom/sleepycat/je/dbi/BackupManager;->writeSnapshotInfoHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v1}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 983
    const-string/jumbo v1, "snapInfo.properties"

    invoke-interface {p3, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 984
    .local v1, "snapshotInfo":Ljava/nio/file/Path;
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/BackupManager$SnapshotInfo;->serialize()[B

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    const/4 v4, 0x0

    sget-object v5, Ljava/nio/file/StandardOpenOption;->CREATE_NEW:Ljava/nio/file/StandardOpenOption;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;

    .line 986
    invoke-static {v1}, Lcom/sleepycat/je/dbi/BackupManager;->forceFile(Ljava/nio/file/Path;)V

    .line 987
    return-void

    .line 982
    .end local v1    # "snapshotInfo":Ljava/nio/file/Path;
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method


# virtual methods
.method getCopyThread()Lcom/sleepycat/je/utilint/StoppableThread;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->copyThread:Lcom/sleepycat/je/dbi/BackupManager$CopyThread;

    return-object v0
.end method

.method getShutdownRequested()Z
    .locals 1

    .line 383
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->shutdownRequested:Z

    return v0
.end method

.method getSnapshotThread()Lcom/sleepycat/je/utilint/StoppableThread;
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->snapshotThread:Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;

    return-object v0
.end method

.method initiateSoftShutdown()V
    .locals 1

    .line 356
    monitor-enter p0

    .line 357
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->shutdownRequested:Z

    if-eqz v0, :cond_0

    .line 358
    monitor-exit p0

    return-void

    .line 360
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->shutdownRequested:Z

    .line 361
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->snapshotThread:Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->snapshotThread:Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;->initiateSoftShutdown()I

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->copyThread:Lcom/sleepycat/je/dbi/BackupManager$CopyThread;

    if-eqz v0, :cond_2

    .line 366
    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->copyThread:Lcom/sleepycat/je/dbi/BackupManager$CopyThread;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/BackupManager$CopyThread;->initiateSoftShutdown()I

    .line 368
    :cond_2
    return-void

    .line 361
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method synthetic lambda$createNewSnapshotManifest$3$com-sleepycat-je-dbi-BackupManager(Ljava/util/SortedMap;Ljava/nio/file/Path;Ljava/util/Map;Lcom/sleepycat/je/dbi/BackupManager$SnapshotInfo;Ljava/util/stream/Stream;)V
    .locals 7
    .param p1, "snapshotFiles"    # Ljava/util/SortedMap;
    .param p2, "snapshotDir"    # Ljava/nio/file/Path;
    .param p3, "parentSnapshotFiles"    # Ljava/util/Map;
    .param p4, "snapshotInfo"    # Lcom/sleepycat/je/dbi/BackupManager$SnapshotInfo;
    .param p5, "s"    # Ljava/util/stream/Stream;

    .line 1504
    new-instance v6, Lcom/sleepycat/je/dbi/BackupManager$$ExternalSyntheticLambda3;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/dbi/BackupManager$$ExternalSyntheticLambda3;-><init>(Lcom/sleepycat/je/dbi/BackupManager;Ljava/util/SortedMap;Ljava/nio/file/Path;Ljava/util/Map;Lcom/sleepycat/je/dbi/BackupManager$SnapshotInfo;)V

    invoke-interface {p5, v6}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method synthetic lambda$getLatestSnapshotInfo$1$com-sleepycat-je-dbi-BackupManager(Lcom/sleepycat/je/dbi/BackupManager$LatestSnapshotInfo;Ljava/util/stream/Stream;)V
    .locals 2
    .param p1, "info"    # Lcom/sleepycat/je/dbi/BackupManager$LatestSnapshotInfo;
    .param p2, "s"    # Ljava/util/stream/Stream;

    .line 1176
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sleepycat/je/dbi/BackupManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/sleepycat/je/dbi/BackupManager$$ExternalSyntheticLambda2;-><init>(Lcom/sleepycat/je/dbi/BackupManager;Lcom/sleepycat/je/dbi/BackupManager$LatestSnapshotInfo;)V

    .line 1177
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1176
    return-void
.end method

.method synthetic lambda$null$0$com-sleepycat-je-dbi-BackupManager(Lcom/sleepycat/je/dbi/BackupManager$LatestSnapshotInfo;Ljava/nio/file/Path;)V
    .locals 2
    .param p1, "info"    # Lcom/sleepycat/je/dbi/BackupManager$LatestSnapshotInfo;
    .param p2, "p"    # Ljava/nio/file/Path;

    .line 1182
    :try_start_0
    iget-object v0, p1, Lcom/sleepycat/je/dbi/BackupManager$LatestSnapshotInfo;->snapshotDir:Ljava/nio/file/Path;

    if-nez v0, :cond_0

    .line 1183
    iput-object p2, p1, Lcom/sleepycat/je/dbi/BackupManager$LatestSnapshotInfo;->snapshotDir:Ljava/nio/file/Path;

    .line 1184
    return-void

    .line 1193
    :cond_0
    invoke-direct {p0, p2}, Lcom/sleepycat/je/dbi/BackupManager;->isSnapshotComplete(Ljava/nio/file/Path;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1194
    invoke-direct {p0, p2}, Lcom/sleepycat/je/dbi/BackupManager;->deleteSnapshot(Ljava/nio/file/Path;)V

    .line 1195
    return-void

    .line 1198
    :cond_1
    invoke-direct {p0, p2}, Lcom/sleepycat/je/dbi/BackupManager;->getManifest(Ljava/nio/file/Path;)Lcom/sleepycat/je/dbi/SnapshotManifest;

    move-result-object v0

    .line 1199
    .local v0, "manifest":Lcom/sleepycat/je/dbi/SnapshotManifest;
    if-nez v0, :cond_2

    .line 1205
    invoke-direct {p0, p2}, Lcom/sleepycat/je/dbi/BackupManager;->deleteSnapshot(Ljava/nio/file/Path;)V

    goto :goto_0

    .line 1206
    :cond_2
    iget-object v1, p1, Lcom/sleepycat/je/dbi/BackupManager$LatestSnapshotInfo;->parentSnapshotDir:Ljava/nio/file/Path;

    if-nez v1, :cond_3

    .line 1214
    iput-object p2, p1, Lcom/sleepycat/je/dbi/BackupManager$LatestSnapshotInfo;->parentSnapshotDir:Ljava/nio/file/Path;

    .line 1215
    iput-object v0, p1, Lcom/sleepycat/je/dbi/BackupManager$LatestSnapshotInfo;->parent:Lcom/sleepycat/je/dbi/SnapshotManifest;

    goto :goto_0

    .line 1223
    :cond_3
    invoke-direct {p0, p2}, Lcom/sleepycat/je/dbi/BackupManager;->deleteSnapshot(Ljava/nio/file/Path;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1227
    .end local v0    # "manifest":Lcom/sleepycat/je/dbi/SnapshotManifest;
    :goto_0
    nop

    .line 1228
    return-void

    .line 1225
    :catch_0
    move-exception v0

    .line 1226
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/UncheckedIOException;

    invoke-direct {v1, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method synthetic lambda$null$2$com-sleepycat-je-dbi-BackupManager(Ljava/util/SortedMap;Ljava/nio/file/Path;Ljava/util/Map;Lcom/sleepycat/je/dbi/BackupManager$SnapshotInfo;Ljava/nio/file/Path;)V
    .locals 7
    .param p1, "snapshotFiles"    # Ljava/util/SortedMap;
    .param p2, "snapshotDir"    # Ljava/nio/file/Path;
    .param p3, "parentSnapshotFiles"    # Ljava/util/Map;
    .param p4, "snapshotInfo"    # Lcom/sleepycat/je/dbi/BackupManager$SnapshotInfo;
    .param p5, "p"    # Ljava/nio/file/Path;

    .line 1506
    invoke-static {p5}, Lcom/sleepycat/je/dbi/BackupManager;->getFileNameString(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v6

    .line 1508
    .local v6, "logFile":Ljava/lang/String;
    :try_start_0
    iget-wide v4, p4, Lcom/sleepycat/je/dbi/BackupManager$SnapshotInfo;->startTimeMs:J

    .line 1510
    move-object v0, p0

    move-object v1, v6

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/dbi/BackupManager;->getLogFileInfo(Ljava/lang/String;Ljava/nio/file/Path;Ljava/util/Map;J)Lcom/sleepycat/je/dbi/SnapshotManifest$LogFileInfo;

    move-result-object v0

    .line 1508
    invoke-interface {p1, v6, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1515
    nop

    .line 1516
    return-void

    .line 1513
    :catch_0
    move-exception v0

    .line 1514
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/UncheckedIOException;

    invoke-direct {v1, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method shutdownThreads()V
    .locals 1

    .line 371
    monitor-enter p0

    .line 372
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->shutdownRequested:Z

    .line 373
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->snapshotThread:Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->snapshotThread:Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;->shutdown()V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->copyThread:Lcom/sleepycat/je/dbi/BackupManager$CopyThread;

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->copyThread:Lcom/sleepycat/je/dbi/BackupManager$CopyThread;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/BackupManager$CopyThread;->shutdown()V

    .line 380
    :cond_1
    return-void

    .line 373
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized startThreads()V
    .locals 2

    monitor-enter p0

    .line 307
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->runBackup:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->snapshotThread:Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;

    iget-object v1, p0, Lcom/sleepycat/je/dbi/BackupManager;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {v0, p0, v1}, Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;-><init>(Lcom/sleepycat/je/dbi/BackupManager;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->snapshotThread:Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;

    .line 309
    iget-object v0, p0, Lcom/sleepycat/je/dbi/BackupManager;->snapshotThread:Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/BackupManager$SnapshotThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    .end local p0    # "this":Lcom/sleepycat/je/dbi/BackupManager;
    :cond_0
    monitor-exit p0

    return-void

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
