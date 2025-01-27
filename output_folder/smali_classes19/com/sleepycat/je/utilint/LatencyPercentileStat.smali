.class public Lcom/sleepycat/je/utilint/LatencyPercentileStat;
.super Lcom/sleepycat/je/utilint/StatWithValueType;
.source "LatencyPercentileStat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/je/utilint/StatWithValueType<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_TRACKED_LATENCY_MILLIS:I = 0x3e8

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final latency:Lcom/sleepycat/je/utilint/LatencyPercentile;


# direct methods
.method private constructor <init>(Lcom/sleepycat/je/utilint/StatDefinition;Lcom/sleepycat/je/utilint/LatencyPercentile;)V
    .locals 1
    .param p1, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;
    .param p2, "latency"    # Lcom/sleepycat/je/utilint/LatencyPercentile;

    .line 85
    invoke-direct {p0, p1}, Lcom/sleepycat/je/utilint/StatWithValueType;-><init>(Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 86
    invoke-virtual {p2}, Lcom/sleepycat/je/utilint/LatencyPercentile;->copy()Lcom/sleepycat/je/utilint/LatencyPercentile;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/utilint/LatencyPercentileStat;->latency:Lcom/sleepycat/je/utilint/LatencyPercentile;

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;F)V
    .locals 1
    .param p1, "group"    # Lcom/sleepycat/je/utilint/StatGroup;
    .param p2, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;
    .param p3, "percentile"    # F

    .line 53
    const/16 v0, 0x3e8

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sleepycat/je/utilint/LatencyPercentileStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;FI)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;FI)V
    .locals 3
    .param p1, "group"    # Lcom/sleepycat/je/utilint/StatGroup;
    .param p2, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;
    .param p3, "percentile"    # F
    .param p4, "maxTrackedLatencyMillis"    # I

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/utilint/StatWithValueType;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 73
    invoke-virtual {p2}, Lcom/sleepycat/je/utilint/StatDefinition;->getType()Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->INCREMENTAL:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    if-ne v0, v1, :cond_0

    .line 78
    new-instance v0, Lcom/sleepycat/je/utilint/LatencyPercentile;

    .line 79
    invoke-virtual {p2}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3, p4}, Lcom/sleepycat/je/utilint/LatencyPercentile;-><init>(Ljava/lang/String;FI)V

    iput-object v0, p0, Lcom/sleepycat/je/utilint/LatencyPercentileStat;->latency:Lcom/sleepycat/je/utilint/LatencyPercentile;

    .line 80
    return-void

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The stat type must be INCREMENTAL, found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 76
    invoke-virtual {p2}, Lcom/sleepycat/je/utilint/StatDefinition;->getType()Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(J)V
    .locals 1
    .param p1, "latencyMillis"    # J

    .line 94
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LatencyPercentileStat;->latency:Lcom/sleepycat/je/utilint/LatencyPercentile;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/utilint/LatencyPercentile;->add(J)V

    .line 95
    return-void
.end method

.method public add(Lcom/sleepycat/je/utilint/Stat;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/Stat<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 124
    .local p1, "other":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Ljava/lang/Long;>;"
    instance-of v0, p1, Lcom/sleepycat/je/utilint/LatencyPercentileStat;

    if-eqz v0, :cond_0

    .line 128
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/utilint/LatencyPercentileStat;

    .line 130
    .local v0, "otherPercentile":Lcom/sleepycat/je/utilint/LatencyPercentileStat;
    iget-object v1, p0, Lcom/sleepycat/je/utilint/LatencyPercentileStat;->latency:Lcom/sleepycat/je/utilint/LatencyPercentile;

    iget-object v2, v0, Lcom/sleepycat/je/utilint/LatencyPercentileStat;->latency:Lcom/sleepycat/je/utilint/LatencyPercentile;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/utilint/LatencyPercentile;->add(Lcom/sleepycat/je/utilint/LatencyPercentile;)V

    .line 131
    return-void

    .line 125
    .end local v0    # "otherPercentile":Lcom/sleepycat/je/utilint/LatencyPercentileStat;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Other stat must be a LatencyPercentileStat, found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LatencyPercentileStat;->latency:Lcom/sleepycat/je/utilint/LatencyPercentile;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LatencyPercentile;->clear()V

    .line 166
    return-void
.end method

.method public computeInterval(Lcom/sleepycat/je/utilint/Stat;)Lcom/sleepycat/je/utilint/LatencyPercentileStat;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/Stat<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/sleepycat/je/utilint/LatencyPercentileStat;"
        }
    .end annotation

    .line 141
    .local p1, "base":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Ljava/lang/Long;>;"
    instance-of v0, p1, Lcom/sleepycat/je/utilint/LatencyPercentileStat;

    if-eqz v0, :cond_0

    .line 145
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/utilint/LatencyPercentileStat;

    .line 146
    .local v0, "baseStat":Lcom/sleepycat/je/utilint/LatencyPercentileStat;
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LatencyPercentileStat;->copy()Lcom/sleepycat/je/utilint/LatencyPercentileStat;

    move-result-object v1

    .line 147
    .local v1, "result":Lcom/sleepycat/je/utilint/LatencyPercentileStat;
    iget-object v2, v1, Lcom/sleepycat/je/utilint/LatencyPercentileStat;->latency:Lcom/sleepycat/je/utilint/LatencyPercentile;

    iget-object v3, v0, Lcom/sleepycat/je/utilint/LatencyPercentileStat;->latency:Lcom/sleepycat/je/utilint/LatencyPercentile;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/utilint/LatencyPercentile;->updateInterval(Lcom/sleepycat/je/utilint/LatencyPercentile;)V

    .line 148
    return-object v1

    .line 142
    .end local v0    # "baseStat":Lcom/sleepycat/je/utilint/LatencyPercentileStat;
    .end local v1    # "result":Lcom/sleepycat/je/utilint/LatencyPercentileStat;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Base stat must be a LatencyPercentileStat, found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic computeInterval(Lcom/sleepycat/je/utilint/Stat;)Lcom/sleepycat/je/utilint/Stat;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/utilint/LatencyPercentileStat;->computeInterval(Lcom/sleepycat/je/utilint/Stat;)Lcom/sleepycat/je/utilint/LatencyPercentileStat;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/BaseStat;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LatencyPercentileStat;->copy()Lcom/sleepycat/je/utilint/LatencyPercentileStat;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/sleepycat/je/utilint/LatencyPercentileStat;
    .locals 3

    .line 170
    new-instance v0, Lcom/sleepycat/je/utilint/LatencyPercentileStat;

    iget-object v1, p0, Lcom/sleepycat/je/utilint/LatencyPercentileStat;->definition:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v2, p0, Lcom/sleepycat/je/utilint/LatencyPercentileStat;->latency:Lcom/sleepycat/je/utilint/LatencyPercentile;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/LatencyPercentileStat;-><init>(Lcom/sleepycat/je/utilint/StatDefinition;Lcom/sleepycat/je/utilint/LatencyPercentile;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/Stat;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LatencyPercentileStat;->copy()Lcom/sleepycat/je/utilint/LatencyPercentileStat;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/Long;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LatencyPercentileStat;->latency:Lcom/sleepycat/je/utilint/LatencyPercentile;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LatencyPercentile;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LatencyPercentileStat;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedValue()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LatencyPercentileStat;->latency:Lcom/sleepycat/je/utilint/LatencyPercentile;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LatencyPercentile;->getFormattedValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 101
    const-class v0, Ljava/lang/Long;

    return-object v0
.end method

.method public isNotSet()Z
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LatencyPercentileStat;->latency:Lcom/sleepycat/je/utilint/LatencyPercentile;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LatencyPercentile;->isNotSet()Z

    move-result v0

    return v0
.end method

.method public negate()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LatencyPercentileStat;->latency:Lcom/sleepycat/je/utilint/LatencyPercentile;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LatencyPercentile;->negate()V

    .line 154
    return-void
.end method

.method public set(Ljava/lang/Long;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Long;

    .line 113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/utilint/LatencyPercentileStat;->set(Ljava/lang/Long;)V

    return-void
.end method
