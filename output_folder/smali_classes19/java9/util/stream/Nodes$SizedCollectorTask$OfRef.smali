.class final Ljava9/util/stream/Nodes$SizedCollectorTask$OfRef;
.super Ljava9/util/stream/Nodes$SizedCollectorTask;
.source "Nodes.java"

# interfaces
.implements Ljava9/util/stream/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/Nodes$SizedCollectorTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/stream/Nodes$SizedCollectorTask<",
        "TP_IN;TP_OUT;",
        "Ljava9/util/stream/Sink<",
        "TP_OUT;>;",
        "Ljava9/util/stream/Nodes$SizedCollectorTask$OfRef<",
        "TP_IN;TP_OUT;>;>;",
        "Ljava9/util/stream/Sink<",
        "TP_OUT;>;"
    }
.end annotation


# instance fields
.field private final array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TP_OUT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava9/util/Spliterator;Ljava9/util/stream/PipelineHelper;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;",
            "Ljava9/util/stream/PipelineHelper<",
            "TP_OUT;>;[TP_OUT;)V"
        }
    .end annotation

    .line 1861
    .local p0, "this":Ljava9/util/stream/Nodes$SizedCollectorTask$OfRef;, "Ljava9/util/stream/Nodes$SizedCollectorTask$OfRef<TP_IN;TP_OUT;>;"
    .local p1, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    .local p2, "helper":Ljava9/util/stream/PipelineHelper;, "Ljava9/util/stream/PipelineHelper<TP_OUT;>;"
    .local p3, "array":[Ljava/lang/Object;, "[TP_OUT;"
    array-length v0, p3

    invoke-direct {p0, p1, p2, v0}, Ljava9/util/stream/Nodes$SizedCollectorTask;-><init>(Ljava9/util/Spliterator;Ljava9/util/stream/PipelineHelper;I)V

    .line 1862
    iput-object p3, p0, Ljava9/util/stream/Nodes$SizedCollectorTask$OfRef;->array:[Ljava/lang/Object;

    .line 1863
    return-void
.end method

.method constructor <init>(Ljava9/util/stream/Nodes$SizedCollectorTask$OfRef;Ljava9/util/Spliterator;JJ)V
    .locals 9
    .param p3, "offset"    # J
    .param p5, "length"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/stream/Nodes$SizedCollectorTask$OfRef<",
            "TP_IN;TP_OUT;>;",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;JJ)V"
        }
    .end annotation

    .line 1867
    .local p0, "this":Ljava9/util/stream/Nodes$SizedCollectorTask$OfRef;, "Ljava9/util/stream/Nodes$SizedCollectorTask$OfRef<TP_IN;TP_OUT;>;"
    .local p1, "parent":Ljava9/util/stream/Nodes$SizedCollectorTask$OfRef;, "Ljava9/util/stream/Nodes$SizedCollectorTask$OfRef<TP_IN;TP_OUT;>;"
    .local p2, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    iget-object v0, p1, Ljava9/util/stream/Nodes$SizedCollectorTask$OfRef;->array:[Ljava/lang/Object;

    array-length v8, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Ljava9/util/stream/Nodes$SizedCollectorTask;-><init>(Ljava9/util/stream/Nodes$SizedCollectorTask;Ljava9/util/Spliterator;JJI)V

    .line 1868
    iget-object v0, p1, Ljava9/util/stream/Nodes$SizedCollectorTask$OfRef;->array:[Ljava/lang/Object;

    iput-object v0, p0, Ljava9/util/stream/Nodes$SizedCollectorTask$OfRef;->array:[Ljava/lang/Object;

    .line 1869
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP_OUT;)V"
        }
    .end annotation

    .line 1879
    .local p0, "this":Ljava9/util/stream/Nodes$SizedCollectorTask$OfRef;, "Ljava9/util/stream/Nodes$SizedCollectorTask$OfRef<TP_IN;TP_OUT;>;"
    .local p1, "value":Ljava/lang/Object;, "TP_OUT;"
    iget v0, p0, Ljava9/util/stream/Nodes$SizedCollectorTask$OfRef;->index:I

    iget v1, p0, Ljava9/util/stream/Nodes$SizedCollectorTask$OfRef;->fence:I

    if-ge v0, v1, :cond_0

    .line 1882
    iget-object v0, p0, Ljava9/util/stream/Nodes$SizedCollectorTask$OfRef;->array:[Ljava/lang/Object;

    iget v1, p0, Ljava9/util/stream/Nodes$SizedCollectorTask$OfRef;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava9/util/stream/Nodes$SizedCollectorTask$OfRef;->index:I

    aput-object p1, v0, v1

    .line 1883
    return-void

    .line 1880
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    iget v1, p0, Ljava9/util/stream/Nodes$SizedCollectorTask$OfRef;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method makeChild(Ljava9/util/Spliterator;JJ)Ljava9/util/stream/Nodes$SizedCollectorTask$OfRef;
    .locals 8
    .param p2, "offset"    # J
    .param p4, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;JJ)",
            "Ljava9/util/stream/Nodes$SizedCollectorTask$OfRef<",
            "TP_IN;TP_OUT;>;"
        }
    .end annotation

    .line 1874
    .local p0, "this":Ljava9/util/stream/Nodes$SizedCollectorTask$OfRef;, "Ljava9/util/stream/Nodes$SizedCollectorTask$OfRef<TP_IN;TP_OUT;>;"
    .local p1, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    new-instance v7, Ljava9/util/stream/Nodes$SizedCollectorTask$OfRef;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Ljava9/util/stream/Nodes$SizedCollectorTask$OfRef;-><init>(Ljava9/util/stream/Nodes$SizedCollectorTask$OfRef;Ljava9/util/Spliterator;JJ)V

    return-object v7
.end method

.method bridge synthetic makeChild(Ljava9/util/Spliterator;JJ)Ljava9/util/stream/Nodes$SizedCollectorTask;
    .locals 0

    .line 1855
    .local p0, "this":Ljava9/util/stream/Nodes$SizedCollectorTask$OfRef;, "Ljava9/util/stream/Nodes$SizedCollectorTask$OfRef<TP_IN;TP_OUT;>;"
    invoke-virtual/range {p0 .. p5}, Ljava9/util/stream/Nodes$SizedCollectorTask$OfRef;->makeChild(Ljava9/util/Spliterator;JJ)Ljava9/util/stream/Nodes$SizedCollectorTask$OfRef;

    move-result-object p1

    return-object p1
.end method
