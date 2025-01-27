.class public Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;
.super Ljava/lang/Object;
.source "MatchpointSearchResults.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PassedTxnInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final durableCommit:Z

.field public final id:J

.field public final lsn:J

.field public final time:Lcom/sleepycat/je/utilint/Timestamp;

.field public final vlsn:Lcom/sleepycat/je/utilint/VLSN;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/utilint/Timestamp;JLcom/sleepycat/je/utilint/VLSN;JZ)V
    .locals 0
    .param p1, "time"    # Lcom/sleepycat/je/utilint/Timestamp;
    .param p2, "id"    # J
    .param p4, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p5, "lsn"    # J
    .param p7, "durableCommit"    # Z

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;->time:Lcom/sleepycat/je/utilint/Timestamp;

    .line 316
    iput-wide p2, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;->id:J

    .line 317
    iput-object p4, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;->vlsn:Lcom/sleepycat/je/utilint/VLSN;

    .line 318
    iput-wide p5, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;->lsn:J

    .line 319
    iput-boolean p7, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;->durableCommit:Z

    .line 320
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;->time:Lcom/sleepycat/je/utilint/Timestamp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " vlsn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;->vlsn:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lsn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;->lsn:J

    .line 327
    invoke-static {v1, v2}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " durable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults$PassedTxnInfo;->durableCommit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    return-object v0
.end method
