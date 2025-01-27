.class abstract Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "UnorderedSliceSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;,
        Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;,
        Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;,
        Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;,
        Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;,
        Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava9/util/Spliterator<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final CHUNK_SIZE:I = 0x80


# instance fields
.field protected final chunkSize:I

.field private final permits:Ljava/util/concurrent/atomic/AtomicLong;

.field protected final s:Ljava9/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_SP",
            "LITR;"
        }
    .end annotation
.end field

.field private final skipThreshold:J

.field protected final unlimited:Z


# direct methods
.method constructor <init>(Ljava9/util/Spliterator;JJ)V
    .locals 8
    .param p2, "skip"    # J
    .param p4, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "JJ)V"
        }
    .end annotation

    .line 913
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;, "Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>;"
    .local p1, "s":Ljava9/util/Spliterator;, "TT_SPLITR;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 914
    iput-object p1, p0, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljava9/util/Spliterator;

    .line 915
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    .line 916
    cmp-long v2, p4, v0

    if-ltz v2, :cond_1

    move-wide v2, p4

    goto :goto_1

    :cond_1
    move-wide v2, v0

    :goto_1
    iput-wide v2, p0, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->skipThreshold:J

    .line 917
    cmp-long v2, p4, v0

    if-ltz v2, :cond_2

    const-wide/16 v2, 0x80

    add-long v4, p2, p4

    .line 918
    invoke-static {}, Ljava9/util/stream/AbstractTask;->getLeafTarget()I

    move-result v6

    int-to-long v6, v6

    div-long/2addr v4, v6

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 917
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    goto :goto_2

    :cond_2
    const/16 v2, 0x80

    :goto_2
    iput v2, p0, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->chunkSize:I

    .line 919
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    cmp-long v0, p4, v0

    if-ltz v0, :cond_3

    add-long v0, p2, p4

    goto :goto_3

    :cond_3
    move-wide v0, p2

    :goto_3
    invoke-direct {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    .line 920
    return-void
.end method

.method constructor <init>(Ljava9/util/Spliterator;Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator<",
            "TT;TT_SP",
            "LITR;",
            ">;)V"
        }
    .end annotation

    .line 923
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;, "Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>;"
    .local p1, "s":Ljava9/util/Spliterator;, "TT_SPLITR;"
    .local p2, "parent":Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;, "Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 924
    iput-object p1, p0, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljava9/util/Spliterator;

    .line 925
    iget-boolean v0, p2, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    iput-boolean v0, p0, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    .line 926
    iget-object v0, p2, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object v0, p0, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    .line 927
    iget-wide v0, p2, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->skipThreshold:J

    iput-wide v0, p0, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->skipThreshold:J

    .line 928
    iget v0, p2, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->chunkSize:I

    iput v0, p0, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->chunkSize:I

    .line 929
    return-void
.end method


# virtual methods
.method protected final acquirePermits(J)J
    .locals 9
    .param p1, "numElements"    # J

    .line 950
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;, "Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>;"
    :cond_0
    iget-object v0, p0, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 951
    .local v0, "remainingPermits":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 952
    iget-boolean v4, p0, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    if-eqz v4, :cond_1

    move-wide v2, p1

    :cond_1
    return-wide v2

    .line 953
    :cond_2
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 954
    .local v4, "grabbing":J
    cmp-long v6, v4, v2

    if-lez v6, :cond_3

    iget-object v6, p0, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    sub-long v7, v0, v4

    .line 955
    invoke-virtual {v6, v0, v1, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 957
    :cond_3
    iget-boolean v6, p0, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    if-eqz v6, :cond_4

    .line 958
    sub-long v6, p1, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2

    .line 959
    :cond_4
    iget-wide v6, p0, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->skipThreshold:J

    cmp-long v8, v0, v6

    if-lez v8, :cond_5

    .line 960
    sub-long v6, v0, v6

    sub-long v6, v4, v6

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2

    .line 962
    :cond_5
    return-wide v4
.end method

.method public final characteristics()I
    .locals 1

    .line 991
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;, "Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>;"
    iget-object v0, p0, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljava9/util/Spliterator;

    invoke-interface {v0}, Ljava9/util/Spliterator;->characteristics()I

    move-result v0

    and-int/lit16 v0, v0, -0x4051

    return v0
.end method

.method public final estimateSize()J
    .locals 2

    .line 987
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;, "Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>;"
    iget-object v0, p0, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljava9/util/Spliterator;

    invoke-interface {v0}, Ljava9/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract makeSpliterator(Ljava9/util/Spliterator;)Ljava9/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            ")TT_SP",
            "LITR;"
        }
    .end annotation
.end method

.method protected final permitStatus()Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;
    .locals 4

    .line 969
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;, "Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>;"
    iget-object v0, p0, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 970
    sget-object v0, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->MAYBE_MORE:Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    return-object v0

    .line 972
    :cond_0
    iget-boolean v0, p0, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    if-eqz v0, :cond_1

    sget-object v0, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->UNLIMITED:Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->NO_MORE:Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    :goto_0
    return-object v0
.end method

.method public final trySplit()Ljava9/util/Spliterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_SP",
            "LITR;"
        }
    .end annotation

    .line 977
    .local p0, "this":Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;, "Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator<TT;TT_SPLITR;>;"
    iget-object v0, p0, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 978
    return-object v1

    .line 980
    :cond_0
    iget-object v0, p0, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljava9/util/Spliterator;

    invoke-interface {v0}, Ljava9/util/Spliterator;->trySplit()Ljava9/util/Spliterator;

    move-result-object v0

    .line 981
    .local v0, "split":Ljava9/util/Spliterator;, "TT_SPLITR;"
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Ljava9/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->makeSpliterator(Ljava9/util/Spliterator;)Ljava9/util/Spliterator;

    move-result-object v1

    :goto_0
    return-object v1
.end method
