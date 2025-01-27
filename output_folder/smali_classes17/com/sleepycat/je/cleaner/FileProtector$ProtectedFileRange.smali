.class public Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;
.super Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;
.source "FileProtector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/cleaner/FileProtector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProtectedFileRange"
.end annotation


# instance fields
.field private final protectBarrenFiles:Z

.field private volatile rangeStart:J


# direct methods
.method constructor <init>(Ljava/lang/String;JZZ)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "rangeStart"    # J
    .param p4, "protectVlsnIndex"    # Z
    .param p5, "protectBarrenFiles"    # Z

    .line 931
    const/4 v0, 0x0

    invoke-direct {p0, p1, p4, v0}, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;-><init>(Ljava/lang/String;ZLcom/sleepycat/je/cleaner/FileProtector$1;)V

    .line 932
    iput-wide p2, p0, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;->rangeStart:J

    .line 933
    iput-boolean p5, p0, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;->protectBarrenFiles:Z

    .line 934
    return-void
.end method


# virtual methods
.method public declared-synchronized advanceRange(J)V
    .locals 3
    .param p1, "rangeStart"    # J

    monitor-enter p0

    .line 961
    :try_start_0
    iget-wide v0, p0, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;->rangeStart:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 969
    iput-wide p1, p0, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;->rangeStart:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 970
    monitor-exit p0

    return-void

    .line 962
    .end local p0    # "this":Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to advance to a new rangeStart=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 964
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " that precedes the old rangeStart=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;->rangeStart:J

    .line 966
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 962
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 960
    .end local p1    # "rangeStart":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getRangeStart()J
    .locals 2

    .line 952
    iget-wide v0, p0, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;->rangeStart:J

    return-wide v0
.end method

.method isProtected(Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;)Z
    .locals 4
    .param p1, "file"    # Ljava/lang/Long;
    .param p2, "info"    # Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;

    .line 940
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;->rangeStart:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-boolean v0, p0, Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileRange;->protectBarrenFiles:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/sleepycat/je/cleaner/FileProtector$ReservedFileInfo;->endVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 943
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->isNull()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 940
    :goto_0
    return v0
.end method
