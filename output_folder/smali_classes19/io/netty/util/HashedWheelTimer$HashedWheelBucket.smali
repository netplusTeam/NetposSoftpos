.class final Lio/netty/util/HashedWheelTimer$HashedWheelBucket;
.super Ljava/lang/Object;
.source "HashedWheelTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/HashedWheelTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HashedWheelBucket"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private head:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

.field private tail:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 715
    const-class v0, Lio/netty/util/HashedWheelTimer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/util/HashedWheelTimer$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/util/HashedWheelTimer$1;

    .line 715
    invoke-direct {p0}, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;-><init>()V

    return-void
.end method

.method private pollTimeout()Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;
    .locals 3

    .line 809
    iget-object v0, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->head:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 810
    .local v0, "head":Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 811
    return-object v1

    .line 813
    :cond_0
    iget-object v2, v0, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->next:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 814
    .local v2, "next":Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;
    if-nez v2, :cond_1

    .line 815
    iput-object v1, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->head:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    iput-object v1, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->tail:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    goto :goto_0

    .line 817
    :cond_1
    iput-object v2, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->head:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 818
    iput-object v1, v2, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->prev:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 822
    :goto_0
    iput-object v1, v0, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->next:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 823
    iput-object v1, v0, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->prev:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 824
    iput-object v1, v0, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->bucket:Lio/netty/util/HashedWheelTimer$HashedWheelBucket;

    .line 825
    return-object v0
.end method


# virtual methods
.method public addTimeout(Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;)V
    .locals 1
    .param p1, "timeout"    # Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 724
    iget-object v0, p1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->bucket:Lio/netty/util/HashedWheelTimer$HashedWheelBucket;

    if-nez v0, :cond_1

    .line 725
    iput-object p0, p1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->bucket:Lio/netty/util/HashedWheelTimer$HashedWheelBucket;

    .line 726
    iget-object v0, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->head:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    if-nez v0, :cond_0

    .line 727
    iput-object p1, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->tail:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    iput-object p1, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->head:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    goto :goto_0

    .line 729
    :cond_0
    iget-object v0, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->tail:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    iput-object p1, v0, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->next:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 730
    iget-object v0, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->tail:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    iput-object v0, p1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->prev:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 731
    iput-object p1, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->tail:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 733
    :goto_0
    return-void

    .line 724
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public clearTimeouts(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lio/netty/util/Timeout;",
            ">;)V"
        }
    .end annotation

    .line 797
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Lio/netty/util/Timeout;>;"
    :cond_0
    :goto_0
    invoke-direct {p0}, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->pollTimeout()Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    move-result-object v0

    .line 798
    .local v0, "timeout":Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;
    if-nez v0, :cond_1

    .line 799
    return-void

    .line 801
    :cond_1
    invoke-virtual {v0}, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->isExpired()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 802
    goto :goto_0

    .line 804
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 805
    .end local v0    # "timeout":Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;
    goto :goto_0
.end method

.method public expireTimeouts(J)V
    .locals 7
    .param p1, "deadline"    # J

    .line 739
    iget-object v0, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->head:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 742
    .local v0, "timeout":Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;
    :goto_0
    if-eqz v0, :cond_3

    .line 743
    iget-object v1, v0, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->next:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 744
    .local v1, "next":Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;
    iget-wide v2, v0, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->remainingRounds:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 745
    invoke-virtual {p0, v0}, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->remove(Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;)Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    move-result-object v1

    .line 746
    invoke-static {v0}, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->access$800(Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;)J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-gtz v2, :cond_0

    .line 747
    invoke-virtual {v0}, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->expire()V

    goto :goto_1

    .line 750
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 751
    invoke-static {v0}, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->access$800(Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 750
    const-string v4, "timeout.deadline (%d) > deadline (%d)"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 753
    :cond_1
    invoke-virtual {v0}, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 754
    invoke-virtual {p0, v0}, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->remove(Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;)Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    move-result-object v1

    goto :goto_1

    .line 756
    :cond_2
    iget-wide v2, v0, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->remainingRounds:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->remainingRounds:J

    .line 758
    :goto_1
    move-object v0, v1

    .line 759
    .end local v1    # "next":Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;
    goto :goto_0

    .line 760
    :cond_3
    return-void
.end method

.method public remove(Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;)Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;
    .locals 3
    .param p1, "timeout"    # Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 763
    iget-object v0, p1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->next:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 765
    .local v0, "next":Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;
    iget-object v1, p1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->prev:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    if-eqz v1, :cond_0

    .line 766
    iget-object v1, p1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->prev:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    iput-object v0, v1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->next:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 768
    :cond_0
    iget-object v1, p1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->next:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    if-eqz v1, :cond_1

    .line 769
    iget-object v1, p1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->next:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    iget-object v2, p1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->prev:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    iput-object v2, v1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->prev:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 772
    :cond_1
    iget-object v1, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->head:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_3

    .line 774
    iget-object v1, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->tail:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    if-ne p1, v1, :cond_2

    .line 775
    iput-object v2, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->tail:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 776
    iput-object v2, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->head:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    goto :goto_0

    .line 778
    :cond_2
    iput-object v0, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->head:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    goto :goto_0

    .line 780
    :cond_3
    iget-object v1, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->tail:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    if-ne p1, v1, :cond_4

    .line 782
    iget-object v1, p1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->prev:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    iput-object v1, p0, Lio/netty/util/HashedWheelTimer$HashedWheelBucket;->tail:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 785
    :cond_4
    :goto_0
    iput-object v2, p1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->prev:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 786
    iput-object v2, p1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->next:Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;

    .line 787
    iput-object v2, p1, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->bucket:Lio/netty/util/HashedWheelTimer$HashedWheelBucket;

    .line 788
    invoke-static {p1}, Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;->access$1200(Lio/netty/util/HashedWheelTimer$HashedWheelTimeout;)Lio/netty/util/HashedWheelTimer;

    move-result-object v1

    invoke-static {v1}, Lio/netty/util/HashedWheelTimer;->access$1100(Lio/netty/util/HashedWheelTimer;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 789
    return-object v0
.end method
