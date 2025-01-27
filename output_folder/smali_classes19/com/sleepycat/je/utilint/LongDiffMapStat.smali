.class public final Lcom/sleepycat/je/utilint/LongDiffMapStat;
.super Lcom/sleepycat/je/utilint/MapStat;
.source "LongDiffMapStat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/je/utilint/MapStat<",
        "Ljava/lang/Long;",
        "Lcom/sleepycat/je/utilint/LongDiffStat;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final validityMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 23
    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/je/utilint/LongDiffMapStat;)V
    .locals 2
    .param p1, "other"    # Lcom/sleepycat/je/utilint/LongDiffMapStat;

    .line 51
    invoke-direct {p0, p1}, Lcom/sleepycat/je/utilint/MapStat;-><init>(Lcom/sleepycat/je/utilint/MapStat;)V

    .line 52
    iget-wide v0, p1, Lcom/sleepycat/je/utilint/LongDiffMapStat;->validityMillis:J

    iput-wide v0, p0, Lcom/sleepycat/je/utilint/LongDiffMapStat;->validityMillis:J

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V
    .locals 2
    .param p1, "group"    # Lcom/sleepycat/je/utilint/StatGroup;
    .param p2, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;
    .param p3, "validityMillis"    # J

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/utilint/MapStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 45
    invoke-virtual {p2}, Lcom/sleepycat/je/utilint/StatDefinition;->getType()Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    if-ne v0, v1, :cond_1

    .line 46
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    .line 47
    iput-wide p3, p0, Lcom/sleepycat/je/utilint/LongDiffMapStat;->validityMillis:J

    .line 48
    return-void

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 45
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public computeInterval(Lcom/sleepycat/je/utilint/Stat;)Lcom/sleepycat/je/utilint/LongDiffMapStat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/Stat<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sleepycat/je/utilint/LongDiffMapStat;"
        }
    .end annotation

    .line 77
    .local p1, "base":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongDiffMapStat;->copy()Lcom/sleepycat/je/utilint/LongDiffMapStat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic computeInterval(Lcom/sleepycat/je/utilint/Stat;)Lcom/sleepycat/je/utilint/Stat;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/utilint/LongDiffMapStat;->computeInterval(Lcom/sleepycat/je/utilint/Stat;)Lcom/sleepycat/je/utilint/LongDiffMapStat;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/BaseStat;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongDiffMapStat;->copy()Lcom/sleepycat/je/utilint/LongDiffMapStat;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/sleepycat/je/utilint/LongDiffMapStat;
    .locals 1

    .line 71
    new-instance v0, Lcom/sleepycat/je/utilint/LongDiffMapStat;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/utilint/LongDiffMapStat;-><init>(Lcom/sleepycat/je/utilint/LongDiffMapStat;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/sleepycat/je/utilint/Stat;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/LongDiffMapStat;->copy()Lcom/sleepycat/je/utilint/LongDiffMapStat;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized createStat(Ljava/lang/String;Lcom/sleepycat/je/utilint/Stat;)Lcom/sleepycat/je/utilint/LongDiffStat;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/utilint/Stat<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/sleepycat/je/utilint/LongDiffStat;"
        }
    .end annotation

    .local p2, "base":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Ljava/lang/Long;>;"
    monitor-enter p0

    .line 64
    :try_start_0
    new-instance v0, Lcom/sleepycat/je/utilint/LongDiffStat;

    iget-wide v1, p0, Lcom/sleepycat/je/utilint/LongDiffMapStat;->validityMillis:J

    invoke-direct {v0, p2, v1, v2}, Lcom/sleepycat/je/utilint/LongDiffStat;-><init>(Lcom/sleepycat/je/utilint/Stat;J)V

    .line 65
    .local v0, "stat":Lcom/sleepycat/je/utilint/LongDiffStat;
    iget-object v1, p0, Lcom/sleepycat/je/utilint/LongDiffMapStat;->statMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-object v0

    .line 63
    .end local v0    # "stat":Lcom/sleepycat/je/utilint/LongDiffStat;
    .end local p0    # "this":Lcom/sleepycat/je/utilint/LongDiffMapStat;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "base":Lcom/sleepycat/je/utilint/Stat;, "Lcom/sleepycat/je/utilint/Stat<Ljava/lang/Long;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized negate()V
    .locals 0

    monitor-enter p0

    .line 82
    monitor-exit p0

    return-void
.end method
