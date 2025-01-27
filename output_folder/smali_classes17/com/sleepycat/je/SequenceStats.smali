.class public Lcom/sleepycat/je/SequenceStats;
.super Ljava/lang/Object;
.source "SequenceStats.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private stats:Lcom/sleepycat/je/utilint/StatGroup;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;)V
    .locals 0
    .param p1, "stats"    # Lcom/sleepycat/je/utilint/StatGroup;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/sleepycat/je/SequenceStats;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 43
    return-void
.end method


# virtual methods
.method public getCacheSize()I
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/sleepycat/je/SequenceStats;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/SequenceStatDefinition;->SEQUENCE_CACHE_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    return v0
.end method

.method public getCurrent()J
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/sleepycat/je/SequenceStats;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/SequenceStatDefinition;->SEQUENCE_STORED_VALUE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastValue()J
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/sleepycat/je/SequenceStats;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/SequenceStatDefinition;->SEQUENCE_CACHE_LAST:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMax()J
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/sleepycat/je/SequenceStats;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/SequenceStatDefinition;->SEQUENCE_RANGE_MAX:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMin()J
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/sleepycat/je/SequenceStats;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/SequenceStatDefinition;->SEQUENCE_RANGE_MIN:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNCachedGets()I
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/sleepycat/je/SequenceStats;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/SequenceStatDefinition;->SEQUENCE_CACHED_GETS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    return v0
.end method

.method public getNGets()I
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/sleepycat/je/SequenceStats;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/SequenceStatDefinition;->SEQUENCE_GETS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getInt(Lcom/sleepycat/je/utilint/StatDefinition;)I

    move-result v0

    return v0
.end method

.method public getValue()J
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/sleepycat/je/SequenceStats;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    sget-object v1, Lcom/sleepycat/je/dbi/SequenceStatDefinition;->SEQUENCE_CACHE_VALUE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/sleepycat/je/SequenceStats;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/StatGroup;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringVerbose()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/sleepycat/je/SequenceStats;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/StatGroup;->toStringVerbose()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
