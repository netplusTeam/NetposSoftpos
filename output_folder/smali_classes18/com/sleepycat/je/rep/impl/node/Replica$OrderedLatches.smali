.class abstract Lcom/sleepycat/je/rep/impl/node/Replica$OrderedLatches;
.super Ljava/lang/Object;
.source "Replica.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/node/Replica;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "OrderedLatches"
.end annotation


# instance fields
.field final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field final latchMap:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/node/Replica;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/impl/node/Replica;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 0
    .param p2, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1607
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/Replica$OrderedLatches;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1602
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/Replica$OrderedLatches;->latchMap:Ljava/util/SortedMap;

    .line 1608
    iput-object p2, p0, Lcom/sleepycat/je/rep/impl/node/Replica$OrderedLatches;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1609
    return-void
.end method


# virtual methods
.method declared-synchronized getOrCreate(Ljava/lang/Long;)Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;
    .locals 4
    .param p1, "key"    # Ljava/lang/Long;

    monitor-enter p0

    .line 1612
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$OrderedLatches;->latchMap:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;

    .line 1613
    .local v0, "latch":Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;
    if-nez v0, :cond_0

    .line 1614
    new-instance v1, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Replica$OrderedLatches;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;I)V

    move-object v0, v1

    .line 1615
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica$OrderedLatches;->latchMap:Ljava/util/SortedMap;

    invoke-interface {v1, p1, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1617
    .end local p0    # "this":Lcom/sleepycat/je/rep/impl/node/Replica$OrderedLatches;
    :cond_0
    monitor-exit p0

    return-object v0

    .line 1611
    .end local v0    # "latch":Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;
    .end local p1    # "key":Ljava/lang/Long;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized trip(JLcom/sleepycat/je/DatabaseException;)V
    .locals 3
    .param p1, "tripValue"    # J
    .param p3, "exception"    # Lcom/sleepycat/je/DatabaseException;

    monitor-enter p0

    .line 1629
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$OrderedLatches;->latchMap:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1630
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$OrderedLatches;->latchMap:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1631
    .local v0, "key":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/sleepycat/je/rep/impl/node/Replica$OrderedLatches;->tripPredicate(JJ)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1633
    monitor-exit p0

    return-void

    .line 1636
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica$OrderedLatches;->latchMap:Ljava/util/SortedMap;

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;

    .line 1637
    .local v1, "latch":Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;
    invoke-virtual {v1, p3}, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;->releaseAwait(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1638
    .end local v0    # "key":Ljava/lang/Long;
    .end local v1    # "latch":Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;
    goto :goto_0

    .line 1639
    .end local p0    # "this":Lcom/sleepycat/je/rep/impl/node/Replica$OrderedLatches;
    :cond_1
    monitor-exit p0

    return-void

    .line 1628
    .end local p1    # "tripValue":J
    .end local p3    # "exception":Lcom/sleepycat/je/DatabaseException;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method abstract tripPredicate(JJ)Z
.end method
