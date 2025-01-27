.class public Lcom/sleepycat/je/tree/TreeLocation;
.super Ljava/lang/Object;
.source "TreeLocation.java"


# instance fields
.field public bin:Lcom/sleepycat/je/tree/BIN;

.field public childLoggedSize:I

.field public childLsn:J

.field public index:I

.field public isEmbedded:Z

.field public isKD:Z

.field public lnKey:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/tree/TreeLocation;->childLsn:J

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/tree/TreeLocation;->isKD:Z

    .line 30
    iput-boolean v0, p0, Lcom/sleepycat/je/tree/TreeLocation;->isEmbedded:Z

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/tree/TreeLocation;->bin:Lcom/sleepycat/je/tree/BIN;

    .line 34
    const/4 v1, -0x1

    iput v1, p0, Lcom/sleepycat/je/tree/TreeLocation;->index:I

    .line 35
    iput-object v0, p0, Lcom/sleepycat/je/tree/TreeLocation;->lnKey:[B

    .line 36
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/tree/TreeLocation;->childLsn:J

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/tree/TreeLocation;->childLoggedSize:I

    .line 38
    iput-boolean v0, p0, Lcom/sleepycat/je/tree/TreeLocation;->isKD:Z

    .line 39
    iput-boolean v0, p0, Lcom/sleepycat/je/tree/TreeLocation;->isEmbedded:Z

    .line 40
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<TreeLocation bin=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/sleepycat/je/tree/TreeLocation;->bin:Lcom/sleepycat/je/tree/BIN;

    if-nez v1, :cond_0

    .line 46
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/BIN;->getNodeId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50
    :goto_0
    const-string v1, "\" index=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget v1, p0, Lcom/sleepycat/je/tree/TreeLocation;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, "\" lnKey=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object v1, p0, Lcom/sleepycat/je/tree/TreeLocation;->lnKey:[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sleepycat/je/tree/Key;->dumpString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, "\" childLsn=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-wide v1, p0, Lcom/sleepycat/je/tree/TreeLocation;->childLsn:J

    invoke-static {v1, v2}, Lcom/sleepycat/je/utilint/DbLsn;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, "\" childLoggedSize=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget v1, p0, Lcom/sleepycat/je/tree/TreeLocation;->childLoggedSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    const-string v1, "\" isKD=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-boolean v1, p0, Lcom/sleepycat/je/tree/TreeLocation;->isKD:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, "\" isEmbedded=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-boolean v1, p0, Lcom/sleepycat/je/tree/TreeLocation;->isEmbedded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
