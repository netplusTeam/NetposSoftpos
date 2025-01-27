.class public Lcom/sleepycat/je/tree/SearchResult;
.super Ljava/lang/Object;
.source "SearchResult.java"


# instance fields
.field public childNotResident:Z

.field public exactParentFound:Z

.field public index:I

.field public parent:Lcom/sleepycat/je/tree/IN;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/SearchResult;->reset()V

    .line 32
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/tree/SearchResult;->exactParentFound:Z

    .line 36
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    .line 37
    const/4 v1, -0x1

    iput v1, p0, Lcom/sleepycat/je/tree/SearchResult;->index:I

    .line 38
    iput-boolean v0, p0, Lcom/sleepycat/je/tree/SearchResult;->childNotResident:Z

    .line 39
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exactParentFound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/tree/SearchResult;->exactParentFound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/tree/SearchResult;->parent:Lcom/sleepycat/je/tree/IN;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/je/tree/SearchResult;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " childNotResident="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/tree/SearchResult;->childNotResident:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    return-object v0
.end method
