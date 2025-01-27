.class public Lcom/sleepycat/je/utilint/NoClearAtomicLongStat;
.super Lcom/sleepycat/je/utilint/AtomicLongStat;
.source "NoClearAtomicLongStat.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>(Lcom/sleepycat/je/utilint/StatDefinition;J)V
    .locals 0
    .param p1, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;
    .param p2, "value"    # J

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V
    .locals 0
    .param p1, "group"    # Lcom/sleepycat/je/utilint/StatGroup;
    .param p2, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 25
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 33
    return-void
.end method

.method public copy()Lcom/sleepycat/je/utilint/AtomicLongStat;
    .locals 4

    .line 37
    new-instance v0, Lcom/sleepycat/je/utilint/NoClearAtomicLongStat;

    iget-object v1, p0, Lcom/sleepycat/je/utilint/NoClearAtomicLongStat;->definition:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/NoClearAtomicLongStat;->get()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/utilint/NoClearAtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatDefinition;J)V

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/BaseStat;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/NoClearAtomicLongStat;->copy()Lcom/sleepycat/je/utilint/AtomicLongStat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/Stat;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/NoClearAtomicLongStat;->copy()Lcom/sleepycat/je/utilint/AtomicLongStat;

    move-result-object v0

    return-object v0
.end method

.method public copyAndClear()Lcom/sleepycat/je/utilint/AtomicLongStat;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/NoClearAtomicLongStat;->copy()Lcom/sleepycat/je/utilint/AtomicLongStat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copyAndClear()Lcom/sleepycat/je/utilint/Stat;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/NoClearAtomicLongStat;->copyAndClear()Lcom/sleepycat/je/utilint/AtomicLongStat;

    move-result-object v0

    return-object v0
.end method
