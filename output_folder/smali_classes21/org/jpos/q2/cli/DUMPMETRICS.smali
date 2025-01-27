.class public Lorg/jpos/q2/cli/DUMPMETRICS;
.super Ljava/lang/Object;
.source "DUMPMETRICS.java"

# interfaces
.implements Lorg/jpos/q2/CLICommand;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dumpMetrics(Ljava/io/File;)V
    .locals 2
    .param p1, "dir"    # Ljava/io/File;

    .line 45
    invoke-static {}, Lorg/jpos/util/NameRegistrar;->getAsMap()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lorg/jpos/q2/cli/DUMPMETRICS$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/jpos/q2/cli/DUMPMETRICS$$ExternalSyntheticLambda0;-><init>(Ljava/io/File;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 51
    return-void
.end method

.method static synthetic lambda$dumpMetrics$0(Ljava/io/File;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 46
    instance-of v0, p2, Lorg/jpos/util/MetricsProvider;

    if-eqz v0, :cond_0

    .line 47
    move-object v0, p2

    check-cast v0, Lorg/jpos/util/MetricsProvider;

    invoke-interface {v0}, Lorg/jpos/util/MetricsProvider;->getMetrics()Lorg/jpos/util/Metrics;

    move-result-object v0

    .line 48
    .local v0, "metrics":Lorg/jpos/util/Metrics;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/jpos/util/Metrics;->dumpHistograms(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    .end local v0    # "metrics":Lorg/jpos/util/Metrics;
    :cond_0
    return-void
.end method


# virtual methods
.method public exec(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)V
    .locals 3
    .param p1, "ctx"    # Lorg/jpos/q2/CLIContext;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    array-length v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 33
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v2, p2, v1

    aput-object v2, v0, v1

    const-string v1, "Usage: %s<path-to-dump-directory>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 34
    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/io/File;

    aget-object v1, p2, v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_1

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to write "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 39
    return-void

    .line 41
    :cond_1
    invoke-direct {p0, v0}, Lorg/jpos/q2/cli/DUMPMETRICS;->dumpMetrics(Ljava/io/File;)V

    .line 42
    return-void
.end method
