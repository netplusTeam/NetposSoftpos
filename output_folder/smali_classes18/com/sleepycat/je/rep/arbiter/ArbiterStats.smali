.class public Lcom/sleepycat/je/rep/arbiter/ArbiterStats;
.super Ljava/lang/Object;
.source "ArbiterStats.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x675b7986L


# instance fields
.field private final arbStats:Lcom/sleepycat/je/utilint/StatGroup;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;)V
    .locals 3
    .param p1, "arbGrp"    # Lcom/sleepycat/je/utilint/StatGroup;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-eqz p1, :cond_0

    .line 47
    iput-object p1, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterStats;->arbStats:Lcom/sleepycat/je/utilint/StatGroup;

    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "Arbiter"

    const-string v2, "Arbiter statistics"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterStats;->arbStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 52
    :goto_0
    return-void
.end method


# virtual methods
.method public getAcks()J
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterStats;->arbStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterStatDefinition;->ARB_N_ACKS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDTVLSN()J
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterStats;->arbStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterStatDefinition;->ARB_DTVLSN:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFSyncs()J
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterStats;->arbStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterStatDefinition;->ARB_N_FSYNCS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaster()Ljava/lang/String;
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterStats;->arbStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterStatDefinition;->ARB_MASTER:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getString(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReplayQueueOverflow()J
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterStats;->arbStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterStatDefinition;->ARB_N_REPLAY_QUEUE_OVERFLOW:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getState()Ljava/lang/String;
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterStats;->arbStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterStatDefinition;->ARB_STATE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getString(Lcom/sleepycat/je/utilint/StatDefinition;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVLSN()J
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterStats;->arbStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterStatDefinition;->ARB_VLSN:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWrites()J
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/ArbiterStats;->arbStats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterStatDefinition;->ARB_N_WRITES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method
