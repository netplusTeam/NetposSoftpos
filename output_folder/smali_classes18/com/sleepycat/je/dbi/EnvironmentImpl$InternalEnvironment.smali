.class Lcom/sleepycat/je/dbi/EnvironmentImpl$InternalEnvironment;
.super Lcom/sleepycat/je/Environment;
.source "EnvironmentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/EnvironmentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalEnvironment"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 1
    .param p1, "envHome"    # Ljava/io/File;
    .param p2, "configuration"    # Lcom/sleepycat/je/EnvironmentConfig;
    .param p3, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/EnvironmentNotFoundException;,
            Lcom/sleepycat/je/EnvironmentLockedException;,
            Lcom/sleepycat/je/VersionMismatchException;,
            Lcom/sleepycat/je/DatabaseException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3567
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/sleepycat/je/Environment;-><init>(Ljava/io/File;Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/dbi/RepConfigProxy;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 3568
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 3577
    :try_start_0
    const-string v0, "close() not permitted on an internal environment handle"

    .line 3578
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3576
    .end local p0    # "this":Lcom/sleepycat/je/dbi/EnvironmentImpl$InternalEnvironment;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected isInternalHandle()Z
    .locals 1

    .line 3572
    const/4 v0, 0x1

    return v0
.end method
