.class public final Lcom/sleepycat/je/utilint/LongMaxMapStat;
.super Lcom/sleepycat/je/utilint/MapStat;
.source "LongMaxMapStat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/je/utilint/MapStat<",
        "Ljava/lang/Long;",
        "Lcom/sleepycat/je/utilint/LongMax;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 22
    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/je/utilint/LongMaxMapStat;)V
    .locals 0
    .param p1, "other"    # Lcom/sleepycat/je/utilint/LongMaxMapStat;

    .line 45
    invoke-direct {p0, p1}, Lcom/sleepycat/je/utilint/MapStat;-><init>(Lcom/sleepycat/je/utilint/MapStat;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V
    .locals 3
    .param p1, "group"    # Lcom/sleepycat/je/utilint/StatGroup;
    .param p2, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/utilint/MapStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 37
    invoke-virtual {p2}, Lcom/sleepycat/je/utilint/StatDefinition;->getType()Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->INCREMENTAL:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    if-ne v0, v1, :cond_0

    .line 42
    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The stat type must be INCREMENTAL, found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 40
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
.method public computeInterval(Lcom/sleepycat/je/utilint/Stat;)Lcom/sleepycat/je/utilint/LongMaxMapStat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/Stat<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sleepycat/je/utilint/LongMaxMapStat;"
        }
    .end annotation

    .line 69
    .local p1, "base":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongMaxMapStat;->copy()Lcom/sleepycat/je/utilint/LongMaxMapStat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic computeInterval(Lcom/sleepycat/je/utilint/Stat;)Lcom/sleepycat/je/utilint/Stat;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/utilint/LongMaxMapStat;->computeInterval(Lcom/sleepycat/je/utilint/Stat;)Lcom/sleepycat/je/utilint/LongMaxMapStat;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/BaseStat;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongMaxMapStat;->copy()Lcom/sleepycat/je/utilint/LongMaxMapStat;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/sleepycat/je/utilint/LongMaxMapStat;
    .locals 1

    .line 63
    new-instance v0, Lcom/sleepycat/je/utilint/LongMaxMapStat;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/utilint/LongMaxMapStat;-><init>(Lcom/sleepycat/je/utilint/LongMaxMapStat;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/Stat;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongMaxMapStat;->copy()Lcom/sleepycat/je/utilint/LongMaxMapStat;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized createStat(Ljava/lang/String;)Lcom/sleepycat/je/utilint/LongMax;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    monitor-enter p0

    .line 55
    if-eqz p1, :cond_0

    .line 56
    :try_start_0
    new-instance v0, Lcom/sleepycat/je/utilint/LongMax;

    invoke-direct {v0}, Lcom/sleepycat/je/utilint/LongMax;-><init>()V

    .line 57
    .local v0, "stat":Lcom/sleepycat/je/utilint/LongMax;
    iget-object v1, p0, Lcom/sleepycat/je/utilint/LongMaxMapStat;->statMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-object v0

    .line 54
    .end local v0    # "stat":Lcom/sleepycat/je/utilint/LongMax;
    .end local p0    # "this":Lcom/sleepycat/je/utilint/LongMaxMapStat;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 55
    .restart local p1    # "key":Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .end local p1    # "key":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized negate()V
    .locals 0

    monitor-enter p0

    .line 74
    monitor-exit p0

    return-void
.end method
