.class public Lorg/jpos/util/Metrics;
.super Ljava/lang/Object;
.source "Metrics.java"

# interfaces
.implements Lorg/jpos/util/Loggeable;


# instance fields
.field private metrics:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/HdrHistogram/Histogram;",
            ">;"
        }
    .end annotation
.end field

.field private template:Lorg/HdrHistogram/Histogram;


# direct methods
.method public constructor <init>(Lorg/HdrHistogram/Histogram;)V
    .locals 1
    .param p1, "template"    # Lorg/HdrHistogram/Histogram;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jpos/util/Metrics;->metrics:Ljava/util/Map;

    .line 34
    iput-object p1, p0, Lorg/jpos/util/Metrics;->template:Lorg/HdrHistogram/Histogram;

    .line 35
    return-void
.end method

.method private dumpHistogram(Ljava/io/File;Ljava/lang/String;Lorg/HdrHistogram/Histogram;)V
    .locals 4
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "h"    # Lorg/HdrHistogram/Histogram;

    .line 95
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".hgrm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Lorg/HdrHistogram/Histogram;->outputPercentileDistribution(Ljava/io/PrintStream;Ljava/lang/Double;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 99
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 95
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v1

    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .end local p1    # "dir":Ljava/io/File;
    .end local p2    # "key":Ljava/lang/String;
    .end local p3    # "h":Lorg/HdrHistogram/Histogram;
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 97
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local p1    # "dir":Ljava/io/File;
    .restart local p2    # "key":Ljava/lang/String;
    .restart local p3    # "h":Lorg/HdrHistogram/Histogram;
    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    :try_start_5
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "dir":Ljava/io/File;
    .end local p2    # "key":Ljava/lang/String;
    .end local p3    # "h":Lorg/HdrHistogram/Histogram;
    :goto_0
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local p1    # "dir":Ljava/io/File;
    .restart local p2    # "key":Ljava/lang/String;
    .restart local p3    # "h":Lorg/HdrHistogram/Histogram;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 100
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method private dumpPercentiles(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Lorg/HdrHistogram/Histogram;)V
    .locals 3
    .param p1, "ps"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "h"    # Lorg/HdrHistogram/Histogram;

    .line 78
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 81
    invoke-virtual {p4}, Lorg/HdrHistogram/Histogram;->getMinValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 82
    invoke-virtual {p4}, Lorg/HdrHistogram/Histogram;->getMaxValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 83
    invoke-virtual {p4}, Lorg/HdrHistogram/Histogram;->getMean()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 84
    invoke-virtual {p4}, Lorg/HdrHistogram/Histogram;->getStdDeviation()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 85
    const-wide v1, 0x4056800000000000L    # 90.0

    invoke-virtual {p4, v1, v2}, Lorg/HdrHistogram/Histogram;->getValueAtPercentile(D)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 86
    const-wide v1, 0x4058c00000000000L    # 99.0

    invoke-virtual {p4, v1, v2}, Lorg/HdrHistogram/Histogram;->getValueAtPercentile(D)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 87
    const-wide v1, 0x4058f9999999999aL    # 99.9

    invoke-virtual {p4, v1, v2}, Lorg/HdrHistogram/Histogram;->getValueAtPercentile(D)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 88
    const-wide v1, 0x4058ff5c28f5c28fL    # 99.99

    invoke-virtual {p4, v1, v2}, Lorg/HdrHistogram/Histogram;->getValueAtPercentile(D)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 89
    invoke-virtual {p4}, Lorg/HdrHistogram/Histogram;->getTotalCount()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 90
    invoke-virtual {p4}, Lorg/HdrHistogram/Histogram;->getEstimatedFootprintInBytes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 78
    const-string v1, "%s%s min=%d, max=%d, mean=%.4f stddev=%.4f 90%%=%d, 99%%=%d, 99.9%%=%d, 99.99%%=%d tot=%d size=%d%n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 92
    return-void
.end method

.method private getHistogram(Ljava/lang/String;)Lorg/HdrHistogram/Histogram;
    .locals 3
    .param p1, "p"    # Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lorg/jpos/util/Metrics;->metrics:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/HdrHistogram/Histogram;

    .line 61
    .local v0, "h":Lorg/HdrHistogram/Histogram;
    if-nez v0, :cond_0

    .line 62
    new-instance v1, Lorg/HdrHistogram/Histogram;

    iget-object v2, p0, Lorg/jpos/util/Metrics;->template:Lorg/HdrHistogram/Histogram;

    invoke-direct {v1, v2}, Lorg/HdrHistogram/Histogram;-><init>(Lorg/HdrHistogram/AbstractHistogram;)V

    .line 63
    .local v1, "hist":Lorg/HdrHistogram/Histogram;
    invoke-virtual {v1, p1}, Lorg/HdrHistogram/Histogram;->setTag(Ljava/lang/String;)V

    .line 64
    iget-object v2, p0, Lorg/jpos/util/Metrics;->metrics:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v2, p0, Lorg/jpos/util/Metrics;->metrics:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/HdrHistogram/Histogram;

    .line 67
    .end local v1    # "hist":Lorg/HdrHistogram/Histogram;
    :cond_0
    return-object v0
.end method

.method static synthetic lambda$metrics$0(Ljava/util/Map$Entry;)Lorg/HdrHistogram/Histogram;
    .locals 1
    .param p0, "e"    # Ljava/util/Map$Entry;

    .line 41
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/HdrHistogram/Histogram;

    invoke-virtual {v0}, Lorg/HdrHistogram/Histogram;->copy()Lorg/HdrHistogram/Histogram;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$metrics$1(Ljava/lang/String;Ljava/util/Map$Entry;)Z
    .locals 1
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/util/Map$Entry;

    .line 47
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$metrics$2(Ljava/util/Map$Entry;)Lorg/HdrHistogram/Histogram;
    .locals 1
    .param p0, "e"    # Ljava/util/Map$Entry;

    .line 49
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/HdrHistogram/Histogram;

    invoke-virtual {v0}, Lorg/HdrHistogram/Histogram;->copy()Lorg/HdrHistogram/Histogram;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "ps"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lorg/jpos/util/Metrics;->metrics:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    .line 73
    invoke-static {}, Ljava/util/Map$Entry;->comparingByKey()Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/jpos/util/Metrics$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lorg/jpos/util/Metrics$$ExternalSyntheticLambda0;-><init>(Lorg/jpos/util/Metrics;Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 74
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 75
    return-void
.end method

.method public dumpHistograms(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lorg/jpos/util/Metrics;->metrics:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 104
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    .line 105
    invoke-static {}, Ljava/util/Map$Entry;->comparingByKey()Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/jpos/util/Metrics$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lorg/jpos/util/Metrics$$ExternalSyntheticLambda1;-><init>(Lorg/jpos/util/Metrics;Ljava/io/File;Ljava/lang/String;)V

    .line 106
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 107
    return-void
.end method

.method synthetic lambda$dump$3$org-jpos-util-Metrics(Ljava/io/PrintStream;Ljava/lang/String;Ljava/util/Map$Entry;)V
    .locals 2
    .param p1, "ps"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/util/Map$Entry;

    .line 74
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/HdrHistogram/Histogram;

    invoke-virtual {v1}, Lorg/HdrHistogram/Histogram;->copy()Lorg/HdrHistogram/Histogram;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jpos/util/Metrics;->dumpPercentiles(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Lorg/HdrHistogram/Histogram;)V

    return-void
.end method

.method synthetic lambda$dumpHistograms$4$org-jpos-util-Metrics(Ljava/io/File;Ljava/lang/String;Ljava/util/Map$Entry;)V
    .locals 2
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/util/Map$Entry;

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/HdrHistogram/Histogram;

    invoke-virtual {v1}, Lorg/HdrHistogram/Histogram;->copy()Lorg/HdrHistogram/Histogram;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/jpos/util/Metrics;->dumpHistogram(Ljava/io/File;Ljava/lang/String;Lorg/HdrHistogram/Histogram;)V

    return-void
.end method

.method public metrics()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/HdrHistogram/Histogram;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lorg/jpos/util/Metrics;->metrics:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 39
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    .line 40
    invoke-static {}, Ljava/util/Map$Entry;->comparingByKey()Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda20;

    invoke-direct {v1}, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda20;-><init>()V

    new-instance v2, Lorg/jpos/util/Metrics$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lorg/jpos/util/Metrics$$ExternalSyntheticLambda4;-><init>()V

    .line 41
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 38
    return-object v0
.end method

.method public metrics(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/HdrHistogram/Histogram;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lorg/jpos/util/Metrics;->metrics:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 46
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/jpos/util/Metrics$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lorg/jpos/util/Metrics$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 48
    invoke-static {}, Ljava/util/Map$Entry;->comparingByKey()Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda20;

    invoke-direct {v1}, Lorg/jline/console/impl/ConsoleEngineImpl$$ExternalSyntheticLambda20;-><init>()V

    new-instance v2, Lorg/jpos/util/Metrics$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lorg/jpos/util/Metrics$$ExternalSyntheticLambda3;-><init>()V

    .line 49
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 45
    return-object v0
.end method

.method public record(Ljava/lang/String;J)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsed"    # J

    .line 53
    invoke-direct {p0, p1}, Lorg/jpos/util/Metrics;->getHistogram(Ljava/lang/String;)Lorg/HdrHistogram/Histogram;

    move-result-object v0

    .line 54
    .local v0, "h":Lorg/HdrHistogram/Histogram;
    invoke-virtual {v0}, Lorg/HdrHistogram/Histogram;->getHighestTrackableValue()J

    move-result-wide v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 55
    .local v1, "l":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 56
    invoke-virtual {v0, v1, v2}, Lorg/HdrHistogram/Histogram;->recordValue(J)V

    .line 57
    :cond_0
    return-void
.end method
