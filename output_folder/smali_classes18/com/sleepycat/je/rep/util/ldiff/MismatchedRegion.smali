.class public Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;
.super Ljava/lang/Object;
.source "MismatchedRegion.java"


# instance fields
.field private localBeginData:[B

.field private localBeginKey:[B

.field private localDiffSize:J

.field private remoteBeginData:[B

.field private remoteBeginKey:[B

.field private remoteDiffSize:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocalBeginData()[B
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->localBeginData:[B

    return-object v0
.end method

.method public getLocalBeginKey()[B
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->localBeginKey:[B

    return-object v0
.end method

.method public getLocalDiffSize()J
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->localDiffSize:J

    return-wide v0
.end method

.method public getRemoteBeginData()[B
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->remoteBeginData:[B

    return-object v0
.end method

.method public getRemoteBeginKey()[B
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->remoteBeginKey:[B

    return-object v0
.end method

.method public getRemoteDiffSize()J
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->remoteDiffSize:J

    return-wide v0
.end method

.method public isLocalAdditional()Z
    .locals 4

    .line 94
    iget-wide v0, p0, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->remoteDiffSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNull()Z
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->remoteBeginKey:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->remoteBeginData:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->localBeginKey:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->localBeginData:[B

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->localDiffSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->remoteDiffSize:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRemoteAdditional()Z
    .locals 4

    .line 86
    iget-wide v0, p0, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->localDiffSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setLocalBeginData([B)V
    .locals 0
    .param p1, "localBeginData"    # [B

    .line 50
    iput-object p1, p0, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->localBeginData:[B

    .line 51
    return-void
.end method

.method public setLocalBeginKey([B)V
    .locals 0
    .param p1, "localBeginKey"    # [B

    .line 46
    iput-object p1, p0, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->localBeginKey:[B

    .line 47
    return-void
.end method

.method public setLocalDiffSize(J)V
    .locals 0
    .param p1, "localDiffSize"    # J

    .line 54
    iput-wide p1, p0, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->localDiffSize:J

    .line 55
    return-void
.end method

.method public setRemoteBeginData([B)V
    .locals 0
    .param p1, "remoteBeginData"    # [B

    .line 38
    iput-object p1, p0, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->remoteBeginData:[B

    .line 39
    return-void
.end method

.method public setRemoteBeginKey([B)V
    .locals 0
    .param p1, "remoteBeginKey"    # [B

    .line 34
    iput-object p1, p0, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->remoteBeginKey:[B

    .line 35
    return-void
.end method

.method public setRemoteDiffSize(J)V
    .locals 0
    .param p1, "remoteDiffSize"    # J

    .line 42
    iput-wide p1, p0, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->remoteDiffSize:J

    .line 43
    return-void
.end method
