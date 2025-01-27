.class public Lcom/sleepycat/je/utilint/BitMap;
.super Ljava/lang/Object;
.source "BitMap.java"


# static fields
.field private static final SEGMENT_MASK:I = 0xffff

.field private static final SEGMENT_SIZE:I = 0x10


# instance fields
.field private bitSegments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/utilint/BitMap;->bitSegments:Ljava/util/Map;

    .line 47
    return-void
.end method

.method private getBitSet(JZ)Ljava/util/BitSet;
    .locals 3
    .param p1, "index"    # J
    .param p3, "allowCreate"    # Z

    .line 98
    const/16 v0, 0x10

    shr-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 100
    .local v0, "segmentId":Ljava/lang/Long;
    iget-object v1, p0, Lcom/sleepycat/je/utilint/BitMap;->bitSegments:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    .line 101
    .local v1, "bitset":Ljava/util/BitSet;
    if-eqz p3, :cond_0

    .line 102
    if-nez v1, :cond_0

    .line 103
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    move-object v1, v2

    .line 104
    iget-object v2, p0, Lcom/sleepycat/je/utilint/BitMap;->bitSegments:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_0
    return-object v1
.end method

.method private getIntIndex(J)I
    .locals 2
    .param p1, "index"    # J

    .line 112
    const-wide/32 v0, 0xffff

    and-long/2addr v0, p1

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method cardinality()I
    .locals 4

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "count":I
    iget-object v1, p0, Lcom/sleepycat/je/utilint/BitMap;->bitSegments:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 127
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/BitSet;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/BitSet;

    .line 129
    .local v2, "b":Ljava/util/BitSet;
    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v3

    add-int/2addr v0, v3

    .line 130
    .end local v2    # "b":Ljava/util/BitSet;
    goto :goto_0

    .line 131
    :cond_0
    return v0
.end method

.method public get(J)Z
    .locals 3
    .param p1, "index"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 74
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/je/utilint/BitMap;->getBitSet(JZ)Ljava/util/BitSet;

    move-result-object v1

    .line 79
    .local v1, "bitset":Ljava/util/BitSet;
    if-nez v1, :cond_0

    .line 80
    return v0

    .line 83
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/utilint/BitMap;->getIntIndex(J)I

    move-result v0

    .line 84
    .local v0, "useIndex":I
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    return v2

    .line 75
    .end local v0    # "useIndex":I
    .end local v1    # "bitset":Ljava/util/BitSet;
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is negative."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getNumSegments()I
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/sleepycat/je/utilint/BitMap;->bitSegments:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public set(J)V
    .locals 3
    .param p1, "index"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 55
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/je/utilint/BitMap;->getBitSet(JZ)Ljava/util/BitSet;

    move-result-object v0

    .line 60
    .local v0, "bitset":Ljava/util/BitSet;
    if-eqz v0, :cond_0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/utilint/BitMap;->getIntIndex(J)I

    move-result v1

    .line 65
    .local v1, "useIndex":I
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 66
    return-void

    .line 61
    .end local v1    # "useIndex":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of bounds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1

    .line 56
    .end local v0    # "bitset":Ljava/util/BitSet;
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is negative."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
