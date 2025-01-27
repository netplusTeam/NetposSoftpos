.class public Lcom/sleepycat/je/utilint/LongAvgStat;
.super Lcom/sleepycat/je/utilint/StatWithValueType;
.source "LongAvgStat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/je/utilint/StatWithValueType<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final avg:Lcom/sleepycat/je/utilint/LongAvg;


# direct methods
.method private constructor <init>(Lcom/sleepycat/je/utilint/LongAvgStat;)V
    .locals 2
    .param p1, "other"    # Lcom/sleepycat/je/utilint/LongAvgStat;

    .line 45
    iget-object v0, p1, Lcom/sleepycat/je/utilint/LongAvgStat;->definition:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v1, p1, Lcom/sleepycat/je/utilint/LongAvgStat;->avg:Lcom/sleepycat/je/utilint/LongAvg;

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/utilint/LongAvgStat;-><init>(Lcom/sleepycat/je/utilint/StatDefinition;Lcom/sleepycat/je/utilint/LongAvg;)V

    .line 46
    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/je/utilint/StatDefinition;Lcom/sleepycat/je/utilint/LongAvg;)V
    .locals 1
    .param p1, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;
    .param p2, "avg"    # Lcom/sleepycat/je/utilint/LongAvg;

    .line 49
    invoke-direct {p0, p1}, Lcom/sleepycat/je/utilint/StatWithValueType;-><init>(Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 50
    invoke-virtual {p2}, Lcom/sleepycat/je/utilint/LongAvg;->copy()Lcom/sleepycat/je/utilint/LongAvg;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/utilint/LongAvgStat;->avg:Lcom/sleepycat/je/utilint/LongAvg;

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V
    .locals 3
    .param p1, "group"    # Lcom/sleepycat/je/utilint/StatGroup;
    .param p2, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/utilint/StatWithValueType;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 36
    invoke-virtual {p2}, Lcom/sleepycat/je/utilint/StatDefinition;->getType()Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->INCREMENTAL:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    if-ne v0, v1, :cond_0

    .line 41
    new-instance v0, Lcom/sleepycat/je/utilint/LongAvg;

    invoke-direct {v0}, Lcom/sleepycat/je/utilint/LongAvg;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/utilint/LongAvgStat;->avg:Lcom/sleepycat/je/utilint/LongAvg;

    .line 42
    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The stat type must be INCREMENTAL, found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 39
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
    .param p1, "value"    # J

    .line 59
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongAvgStat;->avg:Lcom/sleepycat/je/utilint/LongAvg;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/utilint/LongAvg;->add(J)V

    .line 60
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

    .line 83
    .local p1, "other":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Ljava/lang/Long;>;"
    instance-of v0, p1, Lcom/sleepycat/je/utilint/LongAvgStat;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongAvgStat;->avg:Lcom/sleepycat/je/utilint/LongAvg;

    move-object v1, p1

    check-cast v1, Lcom/sleepycat/je/utilint/LongAvgStat;

    iget-object v1, v1, Lcom/sleepycat/je/utilint/LongAvgStat;->avg:Lcom/sleepycat/je/utilint/LongAvg;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/LongAvg;->add(Lcom/sleepycat/je/utilint/LongAvg;)V

    .line 88
    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Other stat must be a LongAvgStat, found: "

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

    .line 126
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongAvgStat;->avg:Lcom/sleepycat/je/utilint/LongAvg;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongAvg;->clear()V

    .line 127
    return-void
.end method

.method public computeInterval(Lcom/sleepycat/je/utilint/Stat;)Lcom/sleepycat/je/utilint/Stat;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/Stat<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/sleepycat/je/utilint/Stat<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 97
    .local p1, "base":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Ljava/lang/Long;>;"
    instance-of v0, p1, Lcom/sleepycat/je/utilint/LongAvgStat;

    if-eqz v0, :cond_0

    .line 101
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/utilint/LongAvgStat;

    .line 102
    .local v0, "baseAvg":Lcom/sleepycat/je/utilint/LongAvgStat;
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongAvgStat;->copy()Lcom/sleepycat/je/utilint/LongAvgStat;

    move-result-object v1

    .line 103
    .local v1, "result":Lcom/sleepycat/je/utilint/LongAvgStat;
    iget-object v2, v1, Lcom/sleepycat/je/utilint/LongAvgStat;->avg:Lcom/sleepycat/je/utilint/LongAvg;

    iget-object v3, v0, Lcom/sleepycat/je/utilint/LongAvgStat;->avg:Lcom/sleepycat/je/utilint/LongAvg;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/utilint/LongAvg;->updateInterval(Lcom/sleepycat/je/utilint/LongAvg;)V

    .line 104
    return-object v1

    .line 98
    .end local v0    # "baseAvg":Lcom/sleepycat/je/utilint/LongAvgStat;
    .end local v1    # "result":Lcom/sleepycat/je/utilint/LongAvgStat;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Other stat must be a LongAvgStat, found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/BaseStat;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongAvgStat;->copy()Lcom/sleepycat/je/utilint/LongAvgStat;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/sleepycat/je/utilint/LongAvgStat;
    .locals 1

    .line 114
    new-instance v0, Lcom/sleepycat/je/utilint/LongAvgStat;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/utilint/LongAvgStat;-><init>(Lcom/sleepycat/je/utilint/LongAvgStat;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/Stat;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongAvgStat;->copy()Lcom/sleepycat/je/utilint/LongAvgStat;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/Long;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongAvgStat;->avg:Lcom/sleepycat/je/utilint/LongAvg;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongAvg;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongAvgStat;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected getFormattedValue()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongAvgStat;->avg:Lcom/sleepycat/je/utilint/LongAvg;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongAvg;->getFormattedValue()Ljava/lang/String;

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

    .line 66
    const-class v0, Ljava/lang/Long;

    return-object v0
.end method

.method public isNotSet()Z
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongAvgStat;->avg:Lcom/sleepycat/je/utilint/LongAvg;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongAvg;->isNotSet()Z

    move-result v0

    return v0
.end method

.method public negate()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongAvgStat;->avg:Lcom/sleepycat/je/utilint/LongAvg;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongAvg;->negate()V

    .line 110
    return-void
.end method

.method public set(Ljava/lang/Long;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Long;

    .line 78
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/utilint/LongAvgStat;->set(Ljava/lang/Long;)V

    return-void
.end method
