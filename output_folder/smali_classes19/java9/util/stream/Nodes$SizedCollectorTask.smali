.class abstract Ljava9/util/stream/Nodes$SizedCollectorTask;
.super Ljava9/util/concurrent/CountedCompleter;
.source "Nodes.java"

# interfaces
.implements Ljava9/util/stream/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SizedCollectorTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/stream/Nodes$SizedCollectorTask$OfDouble;,
        Ljava9/util/stream/Nodes$SizedCollectorTask$OfLong;,
        Ljava9/util/stream/Nodes$SizedCollectorTask$OfInt;,
        Ljava9/util/stream/Nodes$SizedCollectorTask$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        "T_SINK::",
        "Ljava9/util/stream/Sink<",
        "TP_OUT;>;K:",
        "Ljava9/util/stream/Nodes$SizedCollectorTask<",
        "TP_IN;TP_OUT;TT_SINK;TK;>;>",
        "Ljava9/util/concurrent/CountedCompleter<",
        "Ljava/lang/Void;",
        ">;",
        "Ljava9/util/stream/Sink<",
        "TP_OUT;>;"
    }
.end annotation


# instance fields
.field protected fence:I

.field protected final helper:Ljava9/util/stream/PipelineHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/stream/PipelineHelper<",
            "TP_OUT;>;"
        }
    .end annotation
.end field

.field protected index:I

.field protected length:J

.field protected offset:J

.field protected final spliterator:Ljava9/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/Spliterator<",
            "TP_IN;>;"
        }
    .end annotation
.end field

.field protected final targetSize:J


# direct methods
.method constructor <init>(Ljava9/util/Spliterator;Ljava9/util/stream/PipelineHelper;I)V
    .locals 2
    .param p3, "arrayLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;",
            "Ljava9/util/stream/PipelineHelper<",
            "TP_OUT;>;I)V"
        }
    .end annotation

    .line 1795
    .local p0, "this":Ljava9/util/stream/Nodes$SizedCollectorTask;, "Ljava9/util/stream/Nodes$SizedCollectorTask<TP_IN;TP_OUT;TT_SINK;TK;>;"
    .local p1, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    .local p2, "helper":Ljava9/util/stream/PipelineHelper;, "Ljava9/util/stream/PipelineHelper<TP_OUT;>;"
    invoke-direct {p0}, Ljava9/util/concurrent/CountedCompleter;-><init>()V

    .line 1797
    iput-object p1, p0, Ljava9/util/stream/Nodes$SizedCollectorTask;->spliterator:Ljava9/util/Spliterator;

    .line 1798
    iput-object p2, p0, Ljava9/util/stream/Nodes$SizedCollectorTask;->helper:Ljava9/util/stream/PipelineHelper;

    .line 1799
    invoke-interface {p1}, Ljava9/util/Spliterator;->estimateSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava9/util/stream/AbstractTask;->suggestTargetSize(J)J

    move-result-wide v0

    iput-wide v0, p0, Ljava9/util/stream/Nodes$SizedCollectorTask;->targetSize:J

    .line 1800
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava9/util/stream/Nodes$SizedCollectorTask;->offset:J

    .line 1801
    int-to-long v0, p3

    iput-wide v0, p0, Ljava9/util/stream/Nodes$SizedCollectorTask;->length:J

    .line 1802
    return-void
.end method

.method constructor <init>(Ljava9/util/stream/Nodes$SizedCollectorTask;Ljava9/util/Spliterator;JJI)V
    .locals 4
    .param p3, "offset"    # J
    .param p5, "length"    # J
    .param p7, "arrayLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;JJI)V"
        }
    .end annotation

    .line 1806
    .local p0, "this":Ljava9/util/stream/Nodes$SizedCollectorTask;, "Ljava9/util/stream/Nodes$SizedCollectorTask<TP_IN;TP_OUT;TT_SINK;TK;>;"
    .local p1, "parent":Ljava9/util/stream/Nodes$SizedCollectorTask;, "TK;"
    .local p2, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1}, Ljava9/util/concurrent/CountedCompleter;-><init>(Ljava9/util/concurrent/CountedCompleter;)V

    .line 1808
    iput-object p2, p0, Ljava9/util/stream/Nodes$SizedCollectorTask;->spliterator:Ljava9/util/Spliterator;

    .line 1809
    iget-object v0, p1, Ljava9/util/stream/Nodes$SizedCollectorTask;->helper:Ljava9/util/stream/PipelineHelper;

    iput-object v0, p0, Ljava9/util/stream/Nodes$SizedCollectorTask;->helper:Ljava9/util/stream/PipelineHelper;

    .line 1810
    iget-wide v0, p1, Ljava9/util/stream/Nodes$SizedCollectorTask;->targetSize:J

    iput-wide v0, p0, Ljava9/util/stream/Nodes$SizedCollectorTask;->targetSize:J

    .line 1811
    iput-wide p3, p0, Ljava9/util/stream/Nodes$SizedCollectorTask;->offset:J

    .line 1812
    iput-wide p5, p0, Ljava9/util/stream/Nodes$SizedCollectorTask;->length:J

    .line 1814
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_0

    cmp-long v0, p5, v0

    if-ltz v0, :cond_0

    add-long v0, p3, p5

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    int-to-long v2, p7

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1820
    return-void

    .line 1815
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1817
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1816
    const-string v2, "offset and length interval [%d, %d + %d) is not within array size interval [0, %d)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public begin(J)V
    .locals 4
    .param p1, "size"    # J

    .line 1846
    .local p0, "this":Ljava9/util/stream/Nodes$SizedCollectorTask;, "Ljava9/util/stream/Nodes$SizedCollectorTask<TP_IN;TP_OUT;TT_SINK;TK;>;"
    iget-wide v0, p0, Ljava9/util/stream/Nodes$SizedCollectorTask;->length:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 1851
    iget-wide v2, p0, Ljava9/util/stream/Nodes$SizedCollectorTask;->offset:J

    long-to-int v2, v2

    iput v2, p0, Ljava9/util/stream/Nodes$SizedCollectorTask;->index:I

    .line 1852
    long-to-int v0, v0

    add-int/2addr v2, v0

    iput v2, p0, Ljava9/util/stream/Nodes$SizedCollectorTask;->fence:I

    .line 1853
    return-void

    .line 1847
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size passed to Sink.begin exceeds array length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compute()V
    .locals 17

    .line 1824
    .local p0, "this":Ljava9/util/stream/Nodes$SizedCollectorTask;, "Ljava9/util/stream/Nodes$SizedCollectorTask<TP_IN;TP_OUT;TT_SINK;TK;>;"
    move-object/from16 v0, p0

    .line 1825
    .local v0, "task":Ljava9/util/stream/Nodes$SizedCollectorTask;, "Ljava9/util/stream/Nodes$SizedCollectorTask<TP_IN;TP_OUT;TT_SINK;TK;>;"
    move-object/from16 v1, p0

    iget-object v8, v1, Ljava9/util/stream/Nodes$SizedCollectorTask;->spliterator:Ljava9/util/Spliterator;

    .line 1826
    .local v8, "rightSplit":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    :goto_0
    invoke-interface {v8}, Ljava9/util/Spliterator;->estimateSize()J

    move-result-wide v2

    iget-wide v4, v0, Ljava9/util/stream/Nodes$SizedCollectorTask;->targetSize:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1827
    invoke-interface {v8}, Ljava9/util/Spliterator;->trySplit()Ljava9/util/Spliterator;

    move-result-object v2

    move-object v10, v2

    .local v10, "leftSplit":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    if-eqz v2, :cond_0

    .line 1828
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava9/util/stream/Nodes$SizedCollectorTask;->setPendingCount(I)V

    .line 1829
    invoke-interface {v10}, Ljava9/util/Spliterator;->estimateSize()J

    move-result-wide v15

    .line 1830
    .local v15, "leftSplitSize":J
    iget-wide v11, v0, Ljava9/util/stream/Nodes$SizedCollectorTask;->offset:J

    move-object v9, v0

    move-wide v13, v15

    invoke-virtual/range {v9 .. v14}, Ljava9/util/stream/Nodes$SizedCollectorTask;->makeChild(Ljava9/util/Spliterator;JJ)Ljava9/util/stream/Nodes$SizedCollectorTask;

    move-result-object v2

    invoke-virtual {v2}, Ljava9/util/stream/Nodes$SizedCollectorTask;->fork()Ljava9/util/concurrent/ForkJoinTask;

    .line 1831
    iget-wide v2, v0, Ljava9/util/stream/Nodes$SizedCollectorTask;->offset:J

    add-long v4, v2, v15

    iget-wide v2, v0, Ljava9/util/stream/Nodes$SizedCollectorTask;->length:J

    sub-long v6, v2, v15

    move-object v2, v0

    move-object v3, v8

    invoke-virtual/range {v2 .. v7}, Ljava9/util/stream/Nodes$SizedCollectorTask;->makeChild(Ljava9/util/Spliterator;JJ)Ljava9/util/stream/Nodes$SizedCollectorTask;

    move-result-object v0

    .line 1833
    .end local v10    # "leftSplit":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    .end local v15    # "leftSplitSize":J
    goto :goto_0

    .line 1837
    :cond_0
    move-object v2, v0

    .line 1838
    .local v2, "sink":Ljava9/util/stream/Sink;, "TT_SINK;"
    iget-object v3, v0, Ljava9/util/stream/Nodes$SizedCollectorTask;->helper:Ljava9/util/stream/PipelineHelper;

    invoke-virtual {v3, v2, v8}, Ljava9/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava9/util/stream/Sink;Ljava9/util/Spliterator;)Ljava9/util/stream/Sink;

    .line 1839
    invoke-virtual {v0}, Ljava9/util/stream/Nodes$SizedCollectorTask;->propagateCompletion()V

    .line 1840
    return-void
.end method

.method abstract makeChild(Ljava9/util/Spliterator;JJ)Ljava9/util/stream/Nodes$SizedCollectorTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;JJ)TK;"
        }
    .end annotation
.end method
