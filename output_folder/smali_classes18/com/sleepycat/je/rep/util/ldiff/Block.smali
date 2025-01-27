.class public Lcom/sleepycat/je/rep/util/ldiff/Block;
.super Ljava/lang/Object;
.source "Block.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x18d66f7bb0f9b25L


# instance fields
.field private beginData:[B

.field private beginKey:[B

.field private final blockId:I

.field private md5Hash:[B

.field numRecords:I

.field private rollingChksum:J


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "blockId"    # I

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/sleepycat/je/rep/util/ldiff/Block;->blockId:I

    .line 51
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 99
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 100
    return v0

    .line 102
    :cond_0
    instance-of v1, p1, Lcom/sleepycat/je/rep/util/ldiff/Block;

    if-nez v1, :cond_1

    .line 103
    return v0

    .line 105
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/sleepycat/je/rep/util/ldiff/Block;

    .line 106
    .local v1, "other":Lcom/sleepycat/je/rep/util/ldiff/Block;
    iget v2, p0, Lcom/sleepycat/je/rep/util/ldiff/Block;->blockId:I

    iget v3, v1, Lcom/sleepycat/je/rep/util/ldiff/Block;->blockId:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/sleepycat/je/rep/util/ldiff/Block;->numRecords:I

    iget v3, v1, Lcom/sleepycat/je/rep/util/ldiff/Block;->numRecords:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/sleepycat/je/rep/util/ldiff/Block;->beginKey:[B

    iget-object v3, v1, Lcom/sleepycat/je/rep/util/ldiff/Block;->beginKey:[B

    .line 108
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sleepycat/je/rep/util/ldiff/Block;->beginData:[B

    iget-object v3, v1, Lcom/sleepycat/je/rep/util/ldiff/Block;->beginData:[B

    .line 109
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/sleepycat/je/rep/util/ldiff/Block;->rollingChksum:J

    iget-wide v4, v1, Lcom/sleepycat/je/rep/util/ldiff/Block;->rollingChksum:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sleepycat/je/rep/util/ldiff/Block;->md5Hash:[B

    iget-object v3, v1, Lcom/sleepycat/je/rep/util/ldiff/Block;->md5Hash:[B

    .line 111
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 106
    :goto_0
    return v0
.end method

.method getBeginData()[B
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Block;->beginData:[B

    return-object v0
.end method

.method getBeginKey()[B
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Block;->beginKey:[B

    return-object v0
.end method

.method getBlockId()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Block;->blockId:I

    return v0
.end method

.method getMd5Hash()[B
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Block;->md5Hash:[B

    return-object v0
.end method

.method getNumRecords()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Block;->numRecords:I

    return v0
.end method

.method getRollingChksum()J
    .locals 2

    .line 82
    iget-wide v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Block;->rollingChksum:J

    return-wide v0
.end method

.method public setBeginData([B)V
    .locals 0
    .param p1, "beginData"    # [B

    .line 78
    iput-object p1, p0, Lcom/sleepycat/je/rep/util/ldiff/Block;->beginData:[B

    .line 79
    return-void
.end method

.method public setBeginKey([B)V
    .locals 0
    .param p1, "beginKey"    # [B

    .line 70
    iput-object p1, p0, Lcom/sleepycat/je/rep/util/ldiff/Block;->beginKey:[B

    .line 71
    return-void
.end method

.method public setMd5Hash([B)V
    .locals 0
    .param p1, "md5Hash"    # [B

    .line 94
    iput-object p1, p0, Lcom/sleepycat/je/rep/util/ldiff/Block;->md5Hash:[B

    .line 95
    return-void
.end method

.method public setNumRecords(I)V
    .locals 0
    .param p1, "numRecords"    # I

    .line 62
    iput p1, p0, Lcom/sleepycat/je/rep/util/ldiff/Block;->numRecords:I

    .line 63
    return-void
.end method

.method public setRollingChksum(J)V
    .locals 0
    .param p1, "rollingChksum"    # J

    .line 86
    iput-wide p1, p0, Lcom/sleepycat/je/rep/util/ldiff/Block;->rollingChksum:J

    .line 87
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 116
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 117
    .local v0, "fmt":Ljava/util/Formatter;
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/sleepycat/je/rep/util/ldiff/Block;->blockId:I

    .line 118
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/sleepycat/je/rep/util/ldiff/Block;->rollingChksum:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sleepycat/je/rep/util/ldiff/Block;->md5Hash:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/sleepycat/je/rep/util/ldiff/Block;->numRecords:I

    .line 119
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 117
    const-string v2, "Block %d: rollingChksum=%x md5Hash=%s numRecords=%d"

    invoke-virtual {v0, v2, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 120
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
