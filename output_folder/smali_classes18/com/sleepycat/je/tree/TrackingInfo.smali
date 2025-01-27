.class public Lcom/sleepycat/je/tree/TrackingInfo;
.super Ljava/lang/Object;
.source "TrackingInfo.java"


# instance fields
.field public final entries:I

.field public index:I

.field public final lsn:J

.field public final nodeId:J


# direct methods
.method constructor <init>(JJI)V
    .locals 0
    .param p1, "lsn"    # J
    .param p3, "nodeId"    # J
    .param p5, "entries"    # I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lcom/sleepycat/je/tree/TrackingInfo;->lsn:J

    .line 29
    iput-wide p3, p0, Lcom/sleepycat/je/tree/TrackingInfo;->nodeId:J

    .line 30
    iput p5, p0, Lcom/sleepycat/je/tree/TrackingInfo;->entries:I

    .line 31
    return-void
.end method

.method public constructor <init>(JJII)V
    .locals 0
    .param p1, "lsn"    # J
    .param p3, "nodeId"    # J
    .param p5, "entries"    # I
    .param p6, "index"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p1, p0, Lcom/sleepycat/je/tree/TrackingInfo;->lsn:J

    .line 35
    iput-wide p3, p0, Lcom/sleepycat/je/tree/TrackingInfo;->nodeId:J

    .line 36
    iput p5, p0, Lcom/sleepycat/je/tree/TrackingInfo;->entries:I

    .line 37
    iput p6, p0, Lcom/sleepycat/je/tree/TrackingInfo;->index:I

    .line 38
    return-void
.end method


# virtual methods
.method setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .line 41
    iput p1, p0, Lcom/sleepycat/je/tree/TrackingInfo;->index:I

    .line 42
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lsn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/tree/TrackingInfo;->lsn:J

    invoke-static {v1, v2}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " node="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/tree/TrackingInfo;->nodeId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " entries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/je/tree/TrackingInfo;->entries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/je/tree/TrackingInfo;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
