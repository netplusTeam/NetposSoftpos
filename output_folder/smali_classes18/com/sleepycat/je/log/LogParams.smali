.class public Lcom/sleepycat/je/log/LogParams;
.super Ljava/lang/Object;
.source "LogParams.java"


# instance fields
.field public auxOldLsn:J

.field public backgroundIO:Z

.field public entry:Lcom/sleepycat/je/log/entry/LogEntry;

.field expirationTrackerCompleted:Lcom/sleepycat/je/cleaner/ExpirationTracker;

.field expirationTrackerToUse:Lcom/sleepycat/je/cleaner/ExpirationTracker;

.field public flushRequired:Z

.field public forceNewLogFile:Z

.field public fsyncRequired:Z

.field public nodeDb:Lcom/sleepycat/je/dbi/DatabaseImpl;

.field public obsoleteDupsAllowed:Z

.field public obsoleteWriteLockInfo:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/sleepycat/je/txn/WriteLockInfo;",
            ">;"
        }
    .end annotation
.end field

.field public oldLsn:J

.field public oldSize:I

.field public packedObsoleteInfo:Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;

.field public provisional:Lcom/sleepycat/je/log/Provisional;

.field public repContext:Lcom/sleepycat/je/log/ReplicationContext;

.field switchedLogBuffer:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/log/LogParams;->nodeDb:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 42
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sleepycat/je/log/LogParams;->flushRequired:Z

    .line 48
    iput-boolean v1, p0, Lcom/sleepycat/je/log/LogParams;->forceNewLogFile:Z

    .line 53
    iput-boolean v1, p0, Lcom/sleepycat/je/log/LogParams;->fsyncRequired:Z

    .line 59
    iput-boolean v1, p0, Lcom/sleepycat/je/log/LogParams;->backgroundIO:Z

    .line 66
    iput-object v0, p0, Lcom/sleepycat/je/log/LogParams;->obsoleteWriteLockInfo:Ljava/util/Collection;

    .line 74
    iput-object v0, p0, Lcom/sleepycat/je/log/LogParams;->packedObsoleteInfo:Lcom/sleepycat/je/cleaner/PackedObsoleteInfo;

    .line 98
    iput-boolean v1, p0, Lcom/sleepycat/je/log/LogParams;->obsoleteDupsAllowed:Z

    .line 103
    iput-object v0, p0, Lcom/sleepycat/je/log/LogParams;->entry:Lcom/sleepycat/je/log/entry/LogEntry;

    .line 109
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/sleepycat/je/log/LogParams;->oldLsn:J

    .line 115
    iput v1, p0, Lcom/sleepycat/je/log/LogParams;->oldSize:I

    .line 121
    iput-wide v2, p0, Lcom/sleepycat/je/log/LogParams;->auxOldLsn:J

    .line 126
    iput-object v0, p0, Lcom/sleepycat/je/log/LogParams;->provisional:Lcom/sleepycat/je/log/Provisional;

    .line 131
    iput-object v0, p0, Lcom/sleepycat/je/log/LogParams;->repContext:Lcom/sleepycat/je/log/ReplicationContext;

    .line 134
    iput-boolean v1, p0, Lcom/sleepycat/je/log/LogParams;->switchedLogBuffer:Z

    .line 135
    iput-object v0, p0, Lcom/sleepycat/je/log/LogParams;->expirationTrackerToUse:Lcom/sleepycat/je/cleaner/ExpirationTracker;

    .line 136
    iput-object v0, p0, Lcom/sleepycat/je/log/LogParams;->expirationTrackerCompleted:Lcom/sleepycat/je/cleaner/ExpirationTracker;

    return-void
.end method
