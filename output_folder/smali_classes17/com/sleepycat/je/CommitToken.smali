.class public Lcom/sleepycat/je/CommitToken;
.super Ljava/lang/Object;
.source "CommitToken.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/sleepycat/je/CommitToken;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final repenvUUID:Ljava/util/UUID;

.field private final vlsn:J


# direct methods
.method public constructor <init>(Ljava/util/UUID;J)V
    .locals 2
    .param p1, "repenvUUID"    # Ljava/util/UUID;
    .param p2, "vlsn"    # J

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-eqz p1, :cond_1

    .line 53
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 58
    iput-object p1, p0, Lcom/sleepycat/je/CommitToken;->repenvUUID:Ljava/util/UUID;

    .line 59
    iput-wide p2, p0, Lcom/sleepycat/je/CommitToken;->vlsn:J

    .line 60
    return-void

    .line 54
    :cond_0
    nop

    .line 55
    const-string v0, "The vlsn must not be null"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 49
    :cond_1
    nop

    .line 50
    const-string v0, "The UUID must not be null"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public compareTo(Lcom/sleepycat/je/CommitToken;)I
    .locals 5
    .param p1, "other"    # Lcom/sleepycat/je/CommitToken;

    .line 117
    iget-object v0, p0, Lcom/sleepycat/je/CommitToken;->repenvUUID:Ljava/util/UUID;

    iget-object v1, p1, Lcom/sleepycat/je/CommitToken;->repenvUUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    iget-wide v0, p0, Lcom/sleepycat/je/CommitToken;->vlsn:J

    iget-wide v2, p1, Lcom/sleepycat/je/CommitToken;->vlsn:J

    sub-long/2addr v0, v2

    .line 124
    .local v0, "compare":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 118
    .end local v0    # "compare":J
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Comparisons across environments are not meaningful. This environment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/CommitToken;->repenvUUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " other environment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 121
    invoke-virtual {p1}, Lcom/sleepycat/je/CommitToken;->getRepenvUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 32
    check-cast p1, Lcom/sleepycat/je/CommitToken;

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/CommitToken;->compareTo(Lcom/sleepycat/je/CommitToken;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 82
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 83
    return v0

    .line 85
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 86
    return v1

    .line 88
    :cond_1
    instance-of v2, p1, Lcom/sleepycat/je/CommitToken;

    if-nez v2, :cond_2

    .line 89
    return v1

    .line 91
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/sleepycat/je/CommitToken;

    .line 92
    .local v2, "other":Lcom/sleepycat/je/CommitToken;
    iget-object v3, p0, Lcom/sleepycat/je/CommitToken;->repenvUUID:Ljava/util/UUID;

    if-nez v3, :cond_3

    .line 93
    iget-object v3, v2, Lcom/sleepycat/je/CommitToken;->repenvUUID:Ljava/util/UUID;

    if-eqz v3, :cond_4

    .line 94
    return v1

    .line 96
    :cond_3
    iget-object v4, v2, Lcom/sleepycat/je/CommitToken;->repenvUUID:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 97
    return v1

    .line 99
    :cond_4
    iget-wide v3, p0, Lcom/sleepycat/je/CommitToken;->vlsn:J

    iget-wide v5, v2, Lcom/sleepycat/je/CommitToken;->vlsn:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    .line 100
    return v1

    .line 102
    :cond_5
    return v0
.end method

.method public getRepenvUUID()Ljava/util/UUID;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/sleepycat/je/CommitToken;->repenvUUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getVLSN()J
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/sleepycat/je/CommitToken;->vlsn:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .line 72
    const/16 v0, 0x1f

    .line 73
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 74
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sleepycat/je/CommitToken;->repenvUUID:Ljava/util/UUID;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {v3}, Ljava/util/UUID;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 76
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-wide v3, p0, Lcom/sleepycat/je/CommitToken;->vlsn:J

    const/16 v5, 0x20

    ushr-long v5, v3, v5

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v1, v3

    .line 77
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UUID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/CommitToken;->repenvUUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " VLSN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/CommitToken;->vlsn:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
