.class public Lcom/sleepycat/je/utilint/LongStat;
.super Lcom/sleepycat/je/utilint/StatWithValueType;
.source "LongStat.java"


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
.field protected counter:J


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V
    .locals 0
    .param p1, "group"    # Lcom/sleepycat/je/utilint/StatGroup;
    .param p2, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/utilint/StatWithValueType;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V
    .locals 0
    .param p1, "group"    # Lcom/sleepycat/je/utilint/StatGroup;
    .param p2, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;
    .param p3, "counter"    # J

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/utilint/StatWithValueType;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 33
    iput-wide p3, p0, Lcom/sleepycat/je/utilint/LongStat;->counter:J

    .line 34
    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 2
    .param p1, "count"    # J

    .line 56
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/LongStat;->counter:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/LongStat;->counter:J

    .line 57
    return-void
.end method

.method public add(Lcom/sleepycat/je/utilint/Stat;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/Stat<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 67
    .local p1, "other":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Ljava/lang/Long;>;"
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/LongStat;->counter:J

    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/Stat;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/LongStat;->counter:J

    .line 68
    return-void
.end method

.method public clear()V
    .locals 2

    .line 88
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/LongStat;->counter:J

    .line 89
    return-void
.end method

.method public computeInterval(Lcom/sleepycat/je/utilint/Stat;)Lcom/sleepycat/je/utilint/Stat;
    .locals 5
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

    .line 72
    .local p1, "base":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongStat;->copy()Lcom/sleepycat/je/utilint/Stat;

    move-result-object v0

    .line 73
    .local v0, "ret":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/sleepycat/je/utilint/LongStat;->definition:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/StatDefinition;->getType()Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->INCREMENTAL:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    if-ne v1, v2, :cond_0

    .line 74
    iget-wide v1, p0, Lcom/sleepycat/je/utilint/LongStat;->counter:J

    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/Stat;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/Stat;->set(Ljava/lang/Object;)V

    .line 76
    :cond_0
    return-object v0
.end method

.method public get()Ljava/lang/Long;
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/LongStat;->counter:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongStat;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected getFormattedValue()Ljava/lang/String;
    .locals 3

    .line 93
    invoke-static {}, Lcom/sleepycat/utilint/FormatUtil;->decimalScale0()Ljava/text/DecimalFormat;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/utilint/LongStat;->counter:J

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

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

    .line 38
    const-class v0, Ljava/lang/Long;

    return-object v0
.end method

.method public increment()V
    .locals 4

    .line 52
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/LongStat;->counter:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/LongStat;->counter:J

    .line 53
    return-void
.end method

.method public isNotSet()Z
    .locals 4

    .line 98
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/LongStat;->counter:J

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

.method public max(J)V
    .locals 2
    .param p1, "count"    # J

    .line 60
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/LongStat;->counter:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 61
    iget-wide p1, p0, Lcom/sleepycat/je/utilint/LongStat;->counter:J

    .line 63
    :cond_0
    return-void
.end method

.method public negate()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LongStat;->definition:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/StatDefinition;->getType()Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->INCREMENTAL:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    if-ne v0, v1, :cond_0

    .line 82
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/LongStat;->counter:J

    neg-long v0, v0

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/LongStat;->counter:J

    .line 84
    :cond_0
    return-void
.end method

.method public set(Ljava/lang/Long;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Long;

    .line 48
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/LongStat;->counter:J

    .line 49
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/utilint/LongStat;->set(Ljava/lang/Long;)V

    return-void
.end method
