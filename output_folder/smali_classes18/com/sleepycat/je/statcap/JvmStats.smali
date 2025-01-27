.class Lcom/sleepycat/je/statcap/JvmStats;
.super Ljava/lang/Object;
.source "JvmStats.java"


# static fields
.field public static final HEAP_MEMORY_USAGE:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final LOAD_AVERAGE:Lcom/sleepycat/je/utilint/StatDefinition;


# instance fields
.field private final GC_COLLECTION_TIME_DESC:Ljava/lang/String;

.field private final GC_COUNT_DESC:Ljava/lang/String;

.field private final GC_COUNT_NAME_SUFFIX:Ljava/lang/String;

.field private final GC_TIME_NAME_SUFFIX:Ljava/lang/String;

.field private final GROUPDEF:Ljava/lang/String;

.field private final GROUPNAME:Ljava/lang/String;

.field private final gcBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/management/GarbageCollectorMXBean;",
            ">;"
        }
    .end annotation
.end field

.field private final memoryBean:Ljava/lang/management/MemoryMXBean;

.field private prev:Lcom/sleepycat/je/utilint/StatGroup;

.field private final statdefmap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/utilint/StatDefinition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 45
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "loadAverage"

    const-string v3, "Average JVM system load."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/statcap/JvmStats;->LOAD_AVERAGE:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 50
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "heap"

    const-string v3, "Heap memory usage."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/statcap/JvmStats;->HEAP_MEMORY_USAGE:Lcom/sleepycat/je/utilint/StatDefinition;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    nop

    .line 34
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getGarbageCollectorMXBeans()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/statcap/JvmStats;->gcBeans:Ljava/util/List;

    .line 36
    nop

    .line 37
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getMemoryMXBean()Ljava/lang/management/MemoryMXBean;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/statcap/JvmStats;->memoryBean:Ljava/lang/management/MemoryMXBean;

    .line 38
    const-string v1, "Jvm"

    iput-object v1, p0, Lcom/sleepycat/je/statcap/JvmStats;->GROUPNAME:Ljava/lang/String;

    .line 39
    const-string v1, "Statistics capture jvm statistics."

    iput-object v1, p0, Lcom/sleepycat/je/statcap/JvmStats;->GROUPDEF:Ljava/lang/String;

    .line 40
    const-string v1, "GC collection count."

    iput-object v1, p0, Lcom/sleepycat/je/statcap/JvmStats;->GC_COUNT_DESC:Ljava/lang/String;

    .line 41
    const-string v2, "GC collection time."

    iput-object v2, p0, Lcom/sleepycat/je/statcap/JvmStats;->GC_COLLECTION_TIME_DESC:Ljava/lang/String;

    .line 42
    const-string v3, ".count"

    iput-object v3, p0, Lcom/sleepycat/je/statcap/JvmStats;->GC_COUNT_NAME_SUFFIX:Ljava/lang/String;

    .line 43
    const-string v4, ".time"

    iput-object v4, p0, Lcom/sleepycat/je/statcap/JvmStats;->GC_TIME_NAME_SUFFIX:Ljava/lang/String;

    .line 55
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sleepycat/je/statcap/JvmStats;->prev:Lcom/sleepycat/je/utilint/StatGroup;

    .line 57
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/sleepycat/je/statcap/JvmStats;->statdefmap:Ljava/util/Map;

    .line 61
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/management/GarbageCollectorMXBean;

    .line 62
    .local v5, "gcBean":Ljava/lang/management/GarbageCollectorMXBean;
    invoke-interface {v5}, Ljava/lang/management/GarbageCollectorMXBean;->getName()Ljava/lang/String;

    move-result-object v6

    .line 63
    .local v6, "name":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 64
    .local v7, "statname":Ljava/lang/String;
    new-instance v8, Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v8, v7, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .local v8, "sd":Lcom/sleepycat/je/utilint/StatDefinition;
    iget-object v9, p0, Lcom/sleepycat/je/statcap/JvmStats;->statdefmap:Ljava/util/Map;

    invoke-interface {v9, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 67
    new-instance v9, Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v9, v7, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v9

    .line 68
    iget-object v9, p0, Lcom/sleepycat/je/statcap/JvmStats;->statdefmap:Ljava/util/Map;

    invoke-interface {v9, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .end local v5    # "gcBean":Ljava/lang/management/GarbageCollectorMXBean;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "statname":Ljava/lang/String;
    .end local v8    # "sd":Lcom/sleepycat/je/utilint/StatDefinition;
    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/statcap/JvmStats;->statdefmap:Ljava/util/Map;

    sget-object v1, Lcom/sleepycat/je/statcap/JvmStats;->LOAD_AVERAGE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/sleepycat/je/statcap/JvmStats;->statdefmap:Ljava/util/Map;

    sget-object v1, Lcom/sleepycat/je/statcap/JvmStats;->HEAP_MEMORY_USAGE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method


# virtual methods
.method public addVMStatDefs(Ljava/util/SortedSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 101
    .local p1, "projections":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sleepycat/je/statcap/JvmStats;->gcBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "Jvm:"

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/management/GarbageCollectorMXBean;

    .line 102
    .local v1, "gcBean":Ljava/lang/management/GarbageCollectorMXBean;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 103
    invoke-interface {v1}, Ljava/lang/management/GarbageCollectorMXBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".count"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 102
    invoke-interface {p1, v3}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 105
    invoke-interface {v1}, Ljava/lang/management/GarbageCollectorMXBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-interface {p1, v2}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 106
    .end local v1    # "gcBean":Ljava/lang/management/GarbageCollectorMXBean;
    goto :goto_0

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/statcap/JvmStats;->LOAD_AVERAGE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/statcap/JvmStats;->HEAP_MEMORY_USAGE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/StatDefinition;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public loadStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;
    .locals 9
    .param p1, "sc"    # Lcom/sleepycat/je/StatsConfig;

    .line 77
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "Jvm"

    const-string v2, "Statistics capture jvm statistics."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .local v0, "sg":Lcom/sleepycat/je/utilint/StatGroup;
    iget-object v1, p0, Lcom/sleepycat/je/statcap/JvmStats;->gcBeans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/management/GarbageCollectorMXBean;

    .line 79
    .local v2, "gcBean":Ljava/lang/management/GarbageCollectorMXBean;
    invoke-interface {v2}, Ljava/lang/management/GarbageCollectorMXBean;->getName()Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".count"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, "statname":Ljava/lang/String;
    new-instance v5, Lcom/sleepycat/je/utilint/LongStat;

    iget-object v6, p0, Lcom/sleepycat/je/statcap/JvmStats;->statdefmap:Ljava/util/Map;

    .line 82
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-interface {v2}, Ljava/lang/management/GarbageCollectorMXBean;->getCollectionCount()J

    move-result-wide v7

    invoke-direct {v5, v0, v6, v7, v8}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 83
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".time"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 84
    new-instance v5, Lcom/sleepycat/je/utilint/LongStat;

    iget-object v6, p0, Lcom/sleepycat/je/statcap/JvmStats;->statdefmap:Ljava/util/Map;

    .line 85
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-interface {v2}, Ljava/lang/management/GarbageCollectorMXBean;->getCollectionTime()J

    move-result-wide v7

    invoke-direct {v5, v0, v6, v7, v8}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 86
    .end local v2    # "gcBean":Ljava/lang/management/GarbageCollectorMXBean;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "statname":Ljava/lang/String;
    goto :goto_0

    .line 87
    :cond_0
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/statcap/JvmStats;->LOAD_AVERAGE:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-static {}, Lcom/sleepycat/je/utilint/JVMSystemUtils;->getSystemLoad()D

    move-result-wide v3

    double-to-long v3, v3

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 88
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/statcap/JvmStats;->HEAP_MEMORY_USAGE:Lcom/sleepycat/je/utilint/StatDefinition;

    iget-object v3, p0, Lcom/sleepycat/je/statcap/JvmStats;->memoryBean:Ljava/lang/management/MemoryMXBean;

    .line 89
    invoke-interface {v3}, Ljava/lang/management/MemoryMXBean;->getHeapMemoryUsage()Ljava/lang/management/MemoryUsage;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/management/MemoryUsage;->getUsed()J

    move-result-wide v3

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;J)V

    .line 91
    iget-object v1, p0, Lcom/sleepycat/je/statcap/JvmStats;->prev:Lcom/sleepycat/je/utilint/StatGroup;

    if-eqz v1, :cond_1

    .line 92
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->computeInterval(Lcom/sleepycat/je/utilint/StatGroup;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v1

    .local v1, "retgroup":Lcom/sleepycat/je/utilint/StatGroup;
    goto :goto_1

    .line 94
    .end local v1    # "retgroup":Lcom/sleepycat/je/utilint/StatGroup;
    :cond_1
    move-object v1, v0

    .line 96
    .restart local v1    # "retgroup":Lcom/sleepycat/je/utilint/StatGroup;
    :goto_1
    iput-object v0, p0, Lcom/sleepycat/je/statcap/JvmStats;->prev:Lcom/sleepycat/je/utilint/StatGroup;

    .line 97
    return-object v1
.end method
