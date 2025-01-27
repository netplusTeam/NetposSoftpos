.class public Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;
.super Ljava/lang/Object;
.source "Checkpointer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/recovery/Checkpointer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlushStats"
.end annotation


# instance fields
.field public nDeltaINFlush:J

.field nDeltaINFlushThisRun:J

.field public nFullBINFlush:J

.field nFullBINFlushThisRun:J

.field public nFullINFlush:J

.field nFullINFlushThisRun:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method resetPerRunCounters()V
    .locals 2

    .line 1674
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;->nFullINFlushThisRun:J

    .line 1675
    iput-wide v0, p0, Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;->nFullBINFlushThisRun:J

    .line 1676
    iput-wide v0, p0, Lcom/sleepycat/je/recovery/Checkpointer$FlushStats;->nDeltaINFlushThisRun:J

    .line 1678
    return-void
.end method
