.class public Lcom/sleepycat/je/rep/util/ldiff/Record;
.super Ljava/lang/Object;
.source "Record.java"


# instance fields
.field private final data:[B

.field private final key:[B

.field mix:[B

.field private final vlsn:Lcom/sleepycat/je/utilint/VLSN;


# direct methods
.method public constructor <init>([B[BLcom/sleepycat/je/utilint/VLSN;)V
    .locals 0
    .param p1, "key"    # [B
    .param p2, "data"    # [B
    .param p3, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/sleepycat/je/rep/util/ldiff/Record;->key:[B

    .line 32
    iput-object p2, p0, Lcom/sleepycat/je/rep/util/ldiff/Record;->data:[B

    .line 33
    iput-object p3, p0, Lcom/sleepycat/je/rep/util/ldiff/Record;->vlsn:Lcom/sleepycat/je/utilint/VLSN;

    .line 34
    return-void
.end method

.method private generateMix()V
    .locals 5

    .line 41
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Record;->key:[B

    array-length v1, v0

    iget-object v2, p0, Lcom/sleepycat/je/rep/util/ldiff/Record;->data:[B

    array-length v2, v2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/sleepycat/je/rep/util/ldiff/Record;->mix:[B

    .line 42
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Record;->data:[B

    iget-object v1, p0, Lcom/sleepycat/je/rep/util/ldiff/Record;->mix:[B

    iget-object v2, p0, Lcom/sleepycat/je/rep/util/ldiff/Record;->key:[B

    array-length v2, v2

    array-length v4, v0

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 60
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 61
    return v0

    .line 63
    :cond_0
    instance-of v1, p1, Lcom/sleepycat/je/rep/util/ldiff/Record;

    if-nez v1, :cond_1

    .line 64
    return v0

    .line 67
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/sleepycat/je/rep/util/ldiff/Record;

    .line 69
    .local v1, "record":Lcom/sleepycat/je/rep/util/ldiff/Record;
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/util/ldiff/Record;->getKey()[B

    move-result-object v2

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/util/ldiff/Record;->getKey()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 70
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/util/ldiff/Record;->getData()[B

    move-result-object v2

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/util/ldiff/Record;->getData()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 69
    :goto_0
    return v0
.end method

.method public getData()[B
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Record;->data:[B

    return-object v0
.end method

.method public getKey()[B
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Record;->key:[B

    return-object v0
.end method

.method public getVLSN()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Record;->vlsn:Lcom/sleepycat/je/utilint/VLSN;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Record;->mix:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Record;->key:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Record;->data:[B

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/sleepycat/je/rep/util/ldiff/Record;->generateMix()V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/Record;->mix:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method
