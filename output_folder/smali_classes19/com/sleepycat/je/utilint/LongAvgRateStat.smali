.class public Lcom/sleepycat/je/utilint/LongAvgRateStat;
.super Lcom/sleepycat/je/utilint/StatWithValueType;
.source "LongAvgRateStat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/je/utilint/StatWithValueType<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final avg:Lcom/sleepycat/je/utilint/LongAvgRate;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 24
    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/je/utilint/StatDefinition;Lcom/sleepycat/je/utilint/LongAvgRate;)V
    .locals 0
    .param p1, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;
    .param p2, "avg"    # Lcom/sleepycat/je/utilint/LongAvgRate;

    .line 50
    invoke-direct {p0, p1}, Lcom/sleepycat/je/utilint/StatWithValueType;-><init>(Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 51
    iput-object p2, p0, Lcom/sleepycat/je/utilint/LongAvgRateStat;->avg:Lcom/sleepycat/je/utilint/LongAvgRate;

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .param p1, "group"    # Lcom/sleepycat/je/utilint/StatGroup;
    .param p2, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;
    .param p3, "periodMillis"    # J
    .param p5, "reportTimeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/utilint/StatWithValueType;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 44
    invoke-virtual {p2}, Lcom/sleepycat/je/utilint/StatDefinition;->getType()Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->INCREMENTAL:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    if-ne v0, v1, :cond_0

    .line 45
    new-instance v0, Lcom/sleepycat/je/utilint/LongAvgRate;

    .line 46
    invoke-virtual {p2}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3, p4, p5}, Lcom/sleepycat/je/utilint/LongAvgRate;-><init>(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    iput-object v0, p0, Lcom/sleepycat/je/utilint/LongAvgRateStat;->avg:Lcom/sleepycat/je/utilint/LongAvgRate;

    .line 47
    return-void

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public add(JJ)V
    .locals 1
    .param p1, "value"    # J
    .param p3, "time"    # J

    .line 61
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongAvgRateStat;->avg:Lcom/sleepycat/je/utilint/LongAvgRate;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sleepycat/je/utilint/LongAvgRate;->add(JJ)V

    .line 62
    return-void
.end method

.method public add(Lcom/sleepycat/je/utilint/Stat;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/Stat<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 103
    .local p1, "other":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Ljava/lang/Long;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongAvgRateStat;->avg:Lcom/sleepycat/je/utilint/LongAvgRate;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongAvgRate;->clear()V

    .line 77
    return-void
.end method

.method public computeInterval(Lcom/sleepycat/je/utilint/Stat;)Lcom/sleepycat/je/utilint/LongAvgRateStat;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/Stat<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/sleepycat/je/utilint/LongAvgRateStat;"
        }
    .end annotation

    .line 114
    .local p1, "base":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Ljava/lang/Long;>;"
    instance-of v0, p1, Lcom/sleepycat/je/utilint/LongAvgRateStat;

    if-eqz v0, :cond_0

    .line 115
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/utilint/LongAvgRateStat;

    iget-object v0, v0, Lcom/sleepycat/je/utilint/LongAvgRateStat;->avg:Lcom/sleepycat/je/utilint/LongAvgRate;

    .line 116
    .local v0, "baseAvg":Lcom/sleepycat/je/utilint/LongAvgRate;
    new-instance v1, Lcom/sleepycat/je/utilint/LongAvgRateStat;

    iget-object v2, p0, Lcom/sleepycat/je/utilint/LongAvgRateStat;->definition:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v3, p0, Lcom/sleepycat/je/utilint/LongAvgRateStat;->avg:Lcom/sleepycat/je/utilint/LongAvgRate;

    invoke-virtual {v3, v0}, Lcom/sleepycat/je/utilint/LongAvgRate;->copyLatest(Lcom/sleepycat/je/utilint/LongAvgRate;)Lcom/sleepycat/je/utilint/LongAvgRate;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/utilint/LongAvgRateStat;-><init>(Lcom/sleepycat/je/utilint/StatDefinition;Lcom/sleepycat/je/utilint/LongAvgRate;)V

    return-object v1

    .line 114
    .end local v0    # "baseAvg":Lcom/sleepycat/je/utilint/LongAvgRate;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic computeInterval(Lcom/sleepycat/je/utilint/Stat;)Lcom/sleepycat/je/utilint/Stat;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/utilint/LongAvgRateStat;->computeInterval(Lcom/sleepycat/je/utilint/Stat;)Lcom/sleepycat/je/utilint/LongAvgRateStat;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/BaseStat;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongAvgRateStat;->copy()Lcom/sleepycat/je/utilint/LongAvgRateStat;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/sleepycat/je/utilint/LongAvgRateStat;
    .locals 3

    .line 81
    new-instance v0, Lcom/sleepycat/je/utilint/LongAvgRateStat;

    iget-object v1, p0, Lcom/sleepycat/je/utilint/LongAvgRateStat;->definition:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v2, p0, Lcom/sleepycat/je/utilint/LongAvgRateStat;->avg:Lcom/sleepycat/je/utilint/LongAvgRate;

    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/LongAvgRate;->copy()Lcom/sleepycat/je/utilint/LongAvgRate;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/LongAvgRateStat;-><init>(Lcom/sleepycat/je/utilint/StatDefinition;Lcom/sleepycat/je/utilint/LongAvgRate;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/Stat;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongAvgRateStat;->copy()Lcom/sleepycat/je/utilint/LongAvgRateStat;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/Long;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongAvgRateStat;->avg:Lcom/sleepycat/je/utilint/LongAvgRate;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongAvgRate;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongAvgRateStat;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected getFormattedValue()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongAvgRateStat;->avg:Lcom/sleepycat/je/utilint/LongAvgRate;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongAvgRate;->getFormattedValue()Ljava/lang/String;

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

    .line 91
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongAvgRateStat;->avg:Lcom/sleepycat/je/utilint/LongAvgRate;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongAvgRate;->isNotSet()Z

    move-result v0

    return v0
.end method

.method public negate()V
    .locals 0

    .line 121
    return-void
.end method

.method public set(Ljava/lang/Long;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Long;

    .line 97
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/utilint/LongAvgRateStat;->set(Ljava/lang/Long;)V

    return-void
.end method
