.class Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;
.super Ljava/lang/Object;
.source "DiskOrderedScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/DiskOrderedScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DBContext"
.end annotation


# instance fields
.field binKey:[B

.field checkLevel2Keys:Z

.field final dbIdx:I

.field final dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

.field done:Z

.field lastBinLsn:J

.field newEndingKey:[B

.field parent:Lcom/sleepycat/je/tree/IN;

.field parentIsLatched:Z

.field pidx:I

.field pkey:[B

.field plsn:J

.field prevEndingKey:[B

.field reuseBin:Z

.field safeToUseCachedDelta:Z


# direct methods
.method constructor <init>(ILcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 4
    .param p1, "dbIdx"    # I
    .param p2, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->done:Z

    .line 203
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->prevEndingKey:[B

    .line 204
    iput-object v1, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->newEndingKey:[B

    .line 206
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->lastBinLsn:J

    .line 207
    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->safeToUseCachedDelta:Z

    .line 209
    iput-object v1, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->parent:Lcom/sleepycat/je/tree/IN;

    .line 211
    iput v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->pidx:I

    .line 215
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->checkLevel2Keys:Z

    .line 218
    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->reuseBin:Z

    .line 221
    iput p1, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->dbIdx:I

    .line 222
    iput-object p2, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DBContext;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 223
    return-void
.end method
