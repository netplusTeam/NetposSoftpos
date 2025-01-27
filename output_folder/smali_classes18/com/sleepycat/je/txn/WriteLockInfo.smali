.class public Lcom/sleepycat/je/txn/WriteLockInfo;
.super Ljava/lang/Object;
.source "WriteLockInfo.java"


# static fields
.field static final basicWriteLockInfo:Lcom/sleepycat/je/txn/WriteLockInfo;


# instance fields
.field private abortData:[B

.field private abortExpiration:I

.field private abortKey:[B

.field private abortKnownDeleted:Z

.field private abortLogSize:I

.field private abortLsn:J

.field private abortVLSN:J

.field private db:Lcom/sleepycat/je/dbi/DatabaseImpl;

.field private neverLocked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 105
    new-instance v0, Lcom/sleepycat/je/txn/WriteLockInfo;

    invoke-direct {v0}, Lcom/sleepycat/je/txn/WriteLockInfo;-><init>()V

    sput-object v0, Lcom/sleepycat/je/txn/WriteLockInfo;->basicWriteLockInfo:Lcom/sleepycat/je/txn/WriteLockInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/txn/WriteLockInfo;->abortVLSN:J

    .line 109
    iput-wide v0, p0, Lcom/sleepycat/je/txn/WriteLockInfo;->abortLsn:J

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/txn/WriteLockInfo;->abortKnownDeleted:Z

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/txn/WriteLockInfo;->neverLocked:Z

    .line 112
    return-void
.end method


# virtual methods
.method public copyAllInfo(Lcom/sleepycat/je/txn/WriteLockInfo;)V
    .locals 2
    .param p1, "source"    # Lcom/sleepycat/je/txn/WriteLockInfo;

    .line 194
    iget-wide v0, p1, Lcom/sleepycat/je/txn/WriteLockInfo;->abortLsn:J

    iput-wide v0, p0, Lcom/sleepycat/je/txn/WriteLockInfo;->abortLsn:J

    .line 195
    iget-boolean v0, p1, Lcom/sleepycat/je/txn/WriteLockInfo;->abortKnownDeleted:Z

    iput-boolean v0, p0, Lcom/sleepycat/je/txn/WriteLockInfo;->abortKnownDeleted:Z

    .line 196
    iget-object v0, p1, Lcom/sleepycat/je/txn/WriteLockInfo;->abortKey:[B

    iput-object v0, p0, Lcom/sleepycat/je/txn/WriteLockInfo;->abortKey:[B

    .line 197
    iget-object v0, p1, Lcom/sleepycat/je/txn/WriteLockInfo;->abortData:[B

    iput-object v0, p0, Lcom/sleepycat/je/txn/WriteLockInfo;->abortData:[B

    .line 198
    iget-wide v0, p1, Lcom/sleepycat/je/txn/WriteLockInfo;->abortVLSN:J

    iput-wide v0, p0, Lcom/sleepycat/je/txn/WriteLockInfo;->abortVLSN:J

    .line 199
    iget v0, p1, Lcom/sleepycat/je/txn/WriteLockInfo;->abortLogSize:I

    iput v0, p0, Lcom/sleepycat/je/txn/WriteLockInfo;->abortLogSize:I

    .line 200
    iget v0, p1, Lcom/sleepycat/je/txn/WriteLockInfo;->abortExpiration:I

    iput v0, p0, Lcom/sleepycat/je/txn/WriteLockInfo;->abortExpiration:I

    .line 201
    iget-object v0, p1, Lcom/sleepycat/je/txn/WriteLockInfo;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;

    iput-object v0, p0, Lcom/sleepycat/je/txn/WriteLockInfo;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 202
    iget-boolean v0, p1, Lcom/sleepycat/je/txn/WriteLockInfo;->neverLocked:Z

    iput-boolean v0, p0, Lcom/sleepycat/je/txn/WriteLockInfo;->neverLocked:Z

    .line 203
    return-void
.end method

.method public getAbortData()[B
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/sleepycat/je/txn/WriteLockInfo;->abortData:[B

    return-object v0
.end method

.method public getAbortExpiration()I
    .locals 1

    .line 167
    iget v0, p0, Lcom/sleepycat/je/txn/WriteLockInfo;->abortExpiration:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public getAbortKey()[B
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/sleepycat/je/txn/WriteLockInfo;->abortKey:[B

    return-object v0
.end method

.method public getAbortKnownDeleted()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/sleepycat/je/txn/WriteLockInfo;->abortKnownDeleted:Z

    return v0
.end method

.method public getAbortLogSize()I
    .locals 1

    .line 155
    iget v0, p0, Lcom/sleepycat/je/txn/WriteLockInfo;->abortLogSize:I

    return v0
.end method

.method public getAbortLsn()J
    .locals 2

    .line 123
    iget-wide v0, p0, Lcom/sleepycat/je/txn/WriteLockInfo;->abortLsn:J

    return-wide v0
.end method

.method public getAbortVLSN()J
    .locals 2

    .line 147
    iget-wide v0, p0, Lcom/sleepycat/je/txn/WriteLockInfo;->abortVLSN:J

    return-wide v0
.end method

.method public getDb()Lcom/sleepycat/je/dbi/DatabaseImpl;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/sleepycat/je/txn/WriteLockInfo;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;

    return-object v0
.end method

.method public getNeverLocked()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcom/sleepycat/je/txn/WriteLockInfo;->neverLocked:Z

    return v0
.end method

.method public isAbortExpirationInHours()Z
    .locals 1

    .line 171
    iget v0, p0, Lcom/sleepycat/je/txn/WriteLockInfo;->abortExpiration:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAbortData([B)V
    .locals 0
    .param p1, "v"    # [B

    .line 143
    iput-object p1, p0, Lcom/sleepycat/je/txn/WriteLockInfo;->abortData:[B

    .line 144
    return-void
.end method

.method public setAbortExpiration(IZ)V
    .locals 1
    .param p1, "expiration"    # I
    .param p2, "expirationInHours"    # Z

    .line 163
    if-eqz p2, :cond_0

    neg-int v0, p1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iput v0, p0, Lcom/sleepycat/je/txn/WriteLockInfo;->abortExpiration:I

    .line 164
    return-void
.end method

.method public setAbortKey([B)V
    .locals 0
    .param p1, "v"    # [B

    .line 135
    iput-object p1, p0, Lcom/sleepycat/je/txn/WriteLockInfo;->abortKey:[B

    .line 136
    return-void
.end method

.method public setAbortKnownDeleted(Z)V
    .locals 0
    .param p1, "v"    # Z

    .line 119
    iput-boolean p1, p0, Lcom/sleepycat/je/txn/WriteLockInfo;->abortKnownDeleted:Z

    .line 120
    return-void
.end method

.method public setAbortLogSize(I)V
    .locals 0
    .param p1, "logSize"    # I

    .line 159
    iput p1, p0, Lcom/sleepycat/je/txn/WriteLockInfo;->abortLogSize:I

    .line 160
    return-void
.end method

.method public setAbortLsn(J)V
    .locals 0
    .param p1, "abortLsn"    # J

    .line 127
    iput-wide p1, p0, Lcom/sleepycat/je/txn/WriteLockInfo;->abortLsn:J

    .line 128
    return-void
.end method

.method public setAbortVLSN(J)V
    .locals 0
    .param p1, "v"    # J

    .line 151
    iput-wide p1, p0, Lcom/sleepycat/je/txn/WriteLockInfo;->abortVLSN:J

    .line 152
    return-void
.end method

.method public setDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 0
    .param p1, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 179
    iput-object p1, p0, Lcom/sleepycat/je/txn/WriteLockInfo;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 180
    return-void
.end method

.method public setNeverLocked(Z)V
    .locals 0
    .param p1, "neverLocked"    # Z

    .line 187
    iput-boolean p1, p0, Lcom/sleepycat/je/txn/WriteLockInfo;->neverLocked:Z

    .line 188
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "abortLsn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/txn/WriteLockInfo;->abortLsn:J

    .line 208
    invoke-static {v1, v2}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " abortKnownDeleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/txn/WriteLockInfo;->abortKnownDeleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " abortKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/txn/WriteLockInfo;->abortKey:[B

    .line 210
    invoke-static {v1}, Lcom/sleepycat/je/tree/Key;->getNoFormatString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " abortData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/txn/WriteLockInfo;->abortData:[B

    .line 211
    invoke-static {v1}, Lcom/sleepycat/je/tree/Key;->getNoFormatString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " abortLogSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/je/txn/WriteLockInfo;->abortLogSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " abortVLSN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/sleepycat/je/txn/WriteLockInfo;->abortVLSN:J

    .line 213
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%,d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " abortExpiration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 214
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/WriteLockInfo;->getAbortExpiration()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " abortExpirationInHours="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 215
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/WriteLockInfo;->isAbortExpirationInHours()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " neverLocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/txn/WriteLockInfo;->neverLocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    return-object v0
.end method
